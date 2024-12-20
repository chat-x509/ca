defmodule CA.EST do
  @moduledoc "CA/EST/CMP HTTPS/HTTP server."
  @profiles  [ "secp256k1", "secp384r1", "secp521r1" ]
  @templates [ "ocsp", "ipsec", "bgp", "eap", "cap", "sip", "cmc", "scvp", "ssh", "tls" ]
  @classes   [ "ca", "pki", "server", "client", "human", "computer" ]

  use Plug.Router
  plug :match
  plug :dispatch
  plug Plug.Parsers, parsers: [:json], json_decoder: Jason

  def start_link(opt) do
      :logger.info "Classes: ~tp", [@classes]
      :logger.info "Templates: ~tp", [@templates]
      :logger.info "Profiles: ~tp", [@profiles]
      Bandit.start_link(opt)
  end

  def child_spec(opt) do
      %{
        id: EST,
        start: {CA.EST, :start_link, [opt]},
        type: :supervisor,
        restart: :permanent
      }
  end

  # Authority PKI X.509 CMP over HTTP  RFC 9483 6.1, 6.2
  # Authority PKI X.509 EST over HTTPS RFC 7030 3.2.2

  # [1] https://www.rfc-editor.org/rfc/rfc9483
  # [2] https://www.rfc-editor.org/rfc/rfc7030
  # [3] https://www.ietf.org/archive/id/draft-ietf-lamps-rfc7030-csrattrs-07.html

  get  "/.well-known/est/:operation"            do CA.EST.Get.get(conn,   "CA", [],             [],                action(operation)) end
  get  "/.well-known/est/:profile/:operation"   do CA.EST.Get.get(conn,   "CA", curve(profile), template(profile), action(operation)) end
  get  "/.well-known/cmp/p/:profile/:operation" do CA.EST.Get.get(conn,   "CA", curve(profile), template(profile), action(operation)) end
  post "/.well-known/est/:operation"            do CA.EST.Post.post(conn, "CA", [],             [],                action(operation)) end
  post "/.well-known/est/:profile/:operation"   do CA.EST.Post.post(conn, "CA", curve(profile), template(profile), action(operation)) end
  post "/.well-known/cmp/p/:profile/:operation" do CA.EST.Post.post(conn, "CA", curve(profile), template(profile), action(operation)) end

  def curve(profile) do
      case String.split(profile,"-") do
           [curve|_] when curve in @profiles -> curve
                   _ -> [] end
  end

  def template(profile) do
      case String.split(profile,"-") do
           [_,template|_] when template in @classes -> template
                   _ -> [] end
  end

  def action("ca")                  do "CA" end
  def action("cacerts")             do "CMS" end
  def action("csrattrs")            do "ABAC" end
  def action("simpleenroll")        do "ENROLL" end
  def action("simplereenroll")      do "RE-ENROLL" end
  def action("serverkeygen")        do "KEYGEN" end
  def action("fullcmc")             do "CMC" end

  def action("initialization")      do "INIT" end
  def action("certification")       do "CERT" end
  def action("keyupdate")           do "KEYUP" end
  def action("pkcs10")              do "PKCS-10" end
  def action("revocation")          do "REVOKE" end
  def action("getcacerts")          do "CMS" end
  def action("getrootupdate")       do "ROOT" end
  def action("getcertreqtemplate")  do "TEMPLATE" end
  def action("getcrls")             do "CRL" end
  def action("nested")              do "NESTED" end

  def action("ir")                  do "INIT" end
  def action("cr")                  do "CERT" end
  def action("kur")                 do "KEYUP" end
  def action("p10")                 do "PKCS-10" end
  def action("rr")                  do "REVOKE" end
  def action("crts")                do "CMS" end
  def action("rcu")                 do "ROOT" end
  def action("att")                 do "TEMPLATE" end
  def action("crls")                do "CRL" end
  def action("nest")                do "NESTED" end

  def csrattributes() do
      {:ok, bin} = :"EST".encode(:CsrAttrs, [
         oid: CA.AT.oid(:"id-at-challengePassword"),
         oid: CA.X962.oid(:"id-ds-ecdsa-with-SHA384"),
         attribute: {:Attribute, CA.X962.oid(:"id-kt-ecPublicKey"), [CA.CE.objectIdentifier(CA.ALG.oid(:secp384r1))] },
         attribute: {:Attribute, CA.AT.oid(:rsaEncryption), [CA.CE.integer(4096)]},
         attribute: {:Attribute, CA.AT.oid(:"id-at-extensionRequest"), [
                      CA.CE.extension({:Extension, CA.CE.oid(:"id-ce-keyUsage"), true, CA.CE.keyUsage([:digitalSignature, :keyCertSign, :cRLSign])}),
                      CA.CE.extension({:Extension, CA.CE.oid(:"id-ce-basicConstraints"), true, CA.CE.basicConstraints()}),
                      CA.CE.extension({:Extension, CA.CE.oid(:"id-ce-extKeyUsage"), false,
                          CA.CE.extendedKeyUsage([ CA.KP.oid(:"id-kp-serverAuth"),
                                                   CA.KP.oid(:"id-kp-clientAuth"),
                                                   CA.KP.oid(:"id-kp-codeSigning"),
                                                   CA.KP.oid(:"id-kp-emailProtection") ])})
                    ]}
      ])
      bin
  end

  match _ do send_resp(conn, 404, "Please refer to https://authority.erp.uno for more information.\n") end
  def encode(x) do
      case Jason.encode(x) do
           {:ok, bin} -> bin
           {:error, _} -> ""
      end |> Jason.Formatter.pretty_print
  end
end
