%% Generated by the Erlang ASN.1 BER compiler. Version: 5.0.21
%% Purpose: Encoding and decoding of the types in CMSECDHAlgs-2017.

-module('CMSECDHAlgs-2017').
-compile(nowarn_unused_vars).
-dialyzer(no_improper_lists).
-dialyzer(no_match).
-include("CMSECDHAlgs-2017.hrl").
-asn1_info([{vsn,'5.0.21'},
            {module,'CMSECDHAlgs-2017'},
            {options,[warnings,ber,errors,
 {cwd,"/Users/maxim/depot/synrc/ca/priv/cms"},
 {outdir,"/Users/maxim/depot/synrc/ca/priv/cms"},
 {i,"."},
 {i,"/Users/maxim/depot/synrc/ca/priv/cms"}]}]).

-export([encoding_rule/0,maps/0,bit_string_format/0,
         legacy_erlang_types/0]).
-export(['dialyzer-suppressions'/1]).
-export([
'enc_kaa-dhSinglePass-stdDH-hkdf-sha256-scheme'/3,
'enc_kaa-dhSinglePass-stdDH-hkdf-sha384-scheme'/3,
'enc_kaa-dhSinglePass-stdDH-hkdf-sha512-scheme'/3,
'enc_cap-kaa-dhSinglePass-stdDH-hkdf-sha256-scheme'/3,
'enc_cap-kaa-dhSinglePass-stdDH-hkdf-sha384-scheme'/3,
'enc_cap-kaa-dhSinglePass-stdDH-hkdf-sha512-scheme'/3
]).

-export([
'dec_kaa-dhSinglePass-stdDH-hkdf-sha256-scheme'/3,
'dec_kaa-dhSinglePass-stdDH-hkdf-sha384-scheme'/3,
'dec_kaa-dhSinglePass-stdDH-hkdf-sha512-scheme'/3,
'dec_cap-kaa-dhSinglePass-stdDH-hkdf-sha256-scheme'/3,
'dec_cap-kaa-dhSinglePass-stdDH-hkdf-sha384-scheme'/3,
'dec_cap-kaa-dhSinglePass-stdDH-hkdf-sha512-scheme'/3
]).

-export([
getenc_KeyAgreementAlgs/1,
getenc_SMimeCAPS/1
]).

-export([
getdec_KeyAgreementAlgs/1,
getdec_SMimeCAPS/1
]).

-export([
'smime-alg'/0,
'dhSinglePass-stdDH-hkdf-sha256-scheme'/0,
'dhSinglePass-stdDH-hkdf-sha384-scheme'/0,
'dhSinglePass-stdDH-hkdf-sha512-scheme'/0
]).

-export([info/0]).

encoding_rule() -> ber.

maps() -> false.

bit_string_format() -> bitstring.

legacy_erlang_types() -> false.

info() ->
   case ?MODULE:module_info(attributes) of
     Attributes when is_list(Attributes) ->
       case lists:keyfind(asn1_info, 1, Attributes) of
         {_,Info} when is_list(Info) ->
           Info;
         _ ->
           []
       end;
     _ ->
       []
   end.
'smime-alg'() ->
{1,2,840,113549,1,9,16,3}.

'dhSinglePass-stdDH-hkdf-sha256-scheme'() ->
{1,2,840,113549,1,9,16,3,19}.

'dhSinglePass-stdDH-hkdf-sha384-scheme'() ->
{1,2,840,113549,1,9,16,3,20}.

'dhSinglePass-stdDH-hkdf-sha512-scheme'() ->
{1,2,840,113549,1,9,16,3,21}.




%%================================
%%  kaa-dhSinglePass-stdDH-hkdf-sha256-scheme
%%================================
'enc_kaa-dhSinglePass-stdDH-hkdf-sha256-scheme'('Params', Val, _RestPrimFieldName) ->
   'CryptographicMessageSyntaxAlgorithms-2009':enc_KeyWrapAlgorithm(Val, [<<48>>]);
'enc_kaa-dhSinglePass-stdDH-hkdf-sha256-scheme'('Ukm', Val, _RestPrimFieldName) ->
   {Val,0};
'enc_kaa-dhSinglePass-stdDH-hkdf-sha256-scheme'(smimeCaps,  Val, [H|T]) ->
   'enc_cap-kaa-dhSinglePass-stdDH-hkdf-sha256-scheme'(H, Val, T).


'dec_kaa-dhSinglePass-stdDH-hkdf-sha256-scheme'('Params', Bytes,_) ->
  Tlv = tlv_format(Bytes),
   'CryptographicMessageSyntaxAlgorithms-2009':dec_KeyWrapAlgorithm(Tlv, [16]);
'dec_kaa-dhSinglePass-stdDH-hkdf-sha256-scheme'('Ukm',  Bytes,_) ->
   Bytes;
'dec_kaa-dhSinglePass-stdDH-hkdf-sha256-scheme'(smimeCaps, Bytes,[H|T]) ->
   'dec_cap-kaa-dhSinglePass-stdDH-hkdf-sha256-scheme'(H, Bytes, T).

tlv_format(Bytes) when is_binary(Bytes) ->
  {Tlv,_} = ber_decode_nif(Bytes),
  Tlv;
tlv_format(Bytes) ->
  Bytes.



%%================================
%%  kaa-dhSinglePass-stdDH-hkdf-sha384-scheme
%%================================
'enc_kaa-dhSinglePass-stdDH-hkdf-sha384-scheme'('Params', Val, _RestPrimFieldName) ->
   'CryptographicMessageSyntaxAlgorithms-2009':enc_KeyWrapAlgorithm(Val, [<<48>>]);
'enc_kaa-dhSinglePass-stdDH-hkdf-sha384-scheme'('Ukm', Val, _RestPrimFieldName) ->
   {Val,0};
'enc_kaa-dhSinglePass-stdDH-hkdf-sha384-scheme'(smimeCaps,  Val, [H|T]) ->
   'enc_cap-kaa-dhSinglePass-stdDH-hkdf-sha384-scheme'(H, Val, T).


'dec_kaa-dhSinglePass-stdDH-hkdf-sha384-scheme'('Params', Bytes,_) ->
  Tlv = tlv_format(Bytes),
   'CryptographicMessageSyntaxAlgorithms-2009':dec_KeyWrapAlgorithm(Tlv, [16]);
'dec_kaa-dhSinglePass-stdDH-hkdf-sha384-scheme'('Ukm',  Bytes,_) ->
   Bytes;
'dec_kaa-dhSinglePass-stdDH-hkdf-sha384-scheme'(smimeCaps, Bytes,[H|T]) ->
   'dec_cap-kaa-dhSinglePass-stdDH-hkdf-sha384-scheme'(H, Bytes, T).




%%================================
%%  kaa-dhSinglePass-stdDH-hkdf-sha512-scheme
%%================================
'enc_kaa-dhSinglePass-stdDH-hkdf-sha512-scheme'('Params', Val, _RestPrimFieldName) ->
   'CryptographicMessageSyntaxAlgorithms-2009':enc_KeyWrapAlgorithm(Val, [<<48>>]);
'enc_kaa-dhSinglePass-stdDH-hkdf-sha512-scheme'('Ukm', Val, _RestPrimFieldName) ->
   {Val,0};
'enc_kaa-dhSinglePass-stdDH-hkdf-sha512-scheme'(smimeCaps,  Val, [H|T]) ->
   'enc_cap-kaa-dhSinglePass-stdDH-hkdf-sha512-scheme'(H, Val, T).


'dec_kaa-dhSinglePass-stdDH-hkdf-sha512-scheme'('Params', Bytes,_) ->
  Tlv = tlv_format(Bytes),
   'CryptographicMessageSyntaxAlgorithms-2009':dec_KeyWrapAlgorithm(Tlv, [16]);
'dec_kaa-dhSinglePass-stdDH-hkdf-sha512-scheme'('Ukm',  Bytes,_) ->
   Bytes;
'dec_kaa-dhSinglePass-stdDH-hkdf-sha512-scheme'(smimeCaps, Bytes,[H|T]) ->
   'dec_cap-kaa-dhSinglePass-stdDH-hkdf-sha512-scheme'(H, Bytes, T).




%%================================
%%  cap-kaa-dhSinglePass-stdDH-hkdf-sha256-scheme
%%================================
'enc_cap-kaa-dhSinglePass-stdDH-hkdf-sha256-scheme'('Type', Val, _RestPrimFieldName) ->
   'CryptographicMessageSyntaxAlgorithms-2009':enc_KeyWrapAlgorithm(Val, [<<48>>]).


'dec_cap-kaa-dhSinglePass-stdDH-hkdf-sha256-scheme'('Type', Bytes,_) ->
  Tlv = tlv_format(Bytes),
   'CryptographicMessageSyntaxAlgorithms-2009':dec_KeyWrapAlgorithm(Tlv, [16]).




%%================================
%%  cap-kaa-dhSinglePass-stdDH-hkdf-sha384-scheme
%%================================
'enc_cap-kaa-dhSinglePass-stdDH-hkdf-sha384-scheme'('Type', Val, _RestPrimFieldName) ->
   'CryptographicMessageSyntaxAlgorithms-2009':enc_KeyWrapAlgorithm(Val, [<<48>>]).


'dec_cap-kaa-dhSinglePass-stdDH-hkdf-sha384-scheme'('Type', Bytes,_) ->
  Tlv = tlv_format(Bytes),
   'CryptographicMessageSyntaxAlgorithms-2009':dec_KeyWrapAlgorithm(Tlv, [16]).




%%================================
%%  cap-kaa-dhSinglePass-stdDH-hkdf-sha512-scheme
%%================================
'enc_cap-kaa-dhSinglePass-stdDH-hkdf-sha512-scheme'('Type', Val, _RestPrimFieldName) ->
   'CryptographicMessageSyntaxAlgorithms-2009':enc_KeyWrapAlgorithm(Val, [<<48>>]).


'dec_cap-kaa-dhSinglePass-stdDH-hkdf-sha512-scheme'('Type', Bytes,_) ->
  Tlv = tlv_format(Bytes),
   'CryptographicMessageSyntaxAlgorithms-2009':dec_KeyWrapAlgorithm(Tlv, [16]).




%%================================
%%  KeyAgreementAlgs
%%================================
getenc_KeyAgreementAlgs(Id) when Id =:= {1,3,132,1,11,1} ->
   fun(T,V,O) -> 'CMSECCAlgs-2009-02':'enc_kaa-dhSinglePass-stdDH-sha256kdf-scheme'(T,V,O) end;
getenc_KeyAgreementAlgs(Id) when Id =:= {1,3,132,1,11,2} ->
   fun(T,V,O) -> 'CMSECCAlgs-2009-02':'enc_kaa-dhSinglePass-stdDH-sha384kdf-scheme'(T,V,O) end;
getenc_KeyAgreementAlgs(Id) when Id =:= {1,3,132,1,11,3} ->
   fun(T,V,O) -> 'CMSECCAlgs-2009-02':'enc_kaa-dhSinglePass-stdDH-sha512kdf-scheme'(T,V,O) end;
getenc_KeyAgreementAlgs(Id) when Id =:= {1,2,840,113549,1,9,16,3,19} ->
    fun 'enc_kaa-dhSinglePass-stdDH-hkdf-sha256-scheme'/3;
getenc_KeyAgreementAlgs(Id) when Id =:= {1,2,840,113549,1,9,16,3,20} ->
    fun 'enc_kaa-dhSinglePass-stdDH-hkdf-sha384-scheme'/3;
getenc_KeyAgreementAlgs(Id) when Id =:= {1,2,840,113549,1,9,16,3,21} ->
    fun 'enc_kaa-dhSinglePass-stdDH-hkdf-sha512-scheme'/3;
getenc_KeyAgreementAlgs(_) ->
  fun(_, Val, _RestPrimFieldName) ->
    case Val of
      {asn1_OPENTYPE,Bin} when is_binary(Bin) ->
        {Bin,byte_size(Bin)}
    end
  end.

getdec_KeyAgreementAlgs(Id) when Id =:= {1,3,132,1,11,1} ->
   fun(T,V,O) -> 'CMSECCAlgs-2009-02':'dec_kaa-dhSinglePass-stdDH-sha256kdf-scheme'(T,V,O) end;
getdec_KeyAgreementAlgs(Id) when Id =:= {1,3,132,1,11,2} ->
   fun(T,V,O) -> 'CMSECCAlgs-2009-02':'dec_kaa-dhSinglePass-stdDH-sha384kdf-scheme'(T,V,O) end;
getdec_KeyAgreementAlgs(Id) when Id =:= {1,3,132,1,11,3} ->
   fun(T,V,O) -> 'CMSECCAlgs-2009-02':'dec_kaa-dhSinglePass-stdDH-sha512kdf-scheme'(T,V,O) end;
getdec_KeyAgreementAlgs(Id) when Id =:= {1,2,840,113549,1,9,16,3,19} ->
    fun 'dec_kaa-dhSinglePass-stdDH-hkdf-sha256-scheme'/3;
getdec_KeyAgreementAlgs(Id) when Id =:= {1,2,840,113549,1,9,16,3,20} ->
    fun 'dec_kaa-dhSinglePass-stdDH-hkdf-sha384-scheme'/3;
getdec_KeyAgreementAlgs(Id) when Id =:= {1,2,840,113549,1,9,16,3,21} ->
    fun 'dec_kaa-dhSinglePass-stdDH-hkdf-sha512-scheme'/3;
getdec_KeyAgreementAlgs(_) ->
  fun(_,Bytes, _RestPrimFieldName) ->
    case Bytes of
      Bin when is_binary(Bin) -> 
        {asn1_OPENTYPE,Bin};
      _ ->
        {asn1_OPENTYPE,ber_encode(Bytes)}
    end
  end.





%%================================
%%  SMimeCAPS
%%================================
getenc_SMimeCAPS({1,3,132,1,11,1}) ->
   fun(Type, Val, _RestPrimFieldName) ->
      case Type of
         'Type' ->
            'CMSECCAlgs-2009-02':'enc_KeyWrapAlgorithm'(Val, [<<48>>])
      end
   end;
getenc_SMimeCAPS({1,3,132,1,11,2}) ->
   fun(Type, Val, _RestPrimFieldName) ->
      case Type of
         'Type' ->
            'CMSECCAlgs-2009-02':'enc_KeyWrapAlgorithm'(Val, [<<48>>])
      end
   end;
getenc_SMimeCAPS({1,3,132,1,11,3}) ->
   fun(Type, Val, _RestPrimFieldName) ->
      case Type of
         'Type' ->
            'CMSECCAlgs-2009-02':'enc_KeyWrapAlgorithm'(Val, [<<48>>])
      end
   end;
getenc_SMimeCAPS({1,2,840,113549,1,9,16,3,19}) ->
   fun(Type, Val, _RestPrimFieldName) ->
      case Type of
         'Type' ->
            'CryptographicMessageSyntaxAlgorithms-2009':'enc_KeyWrapAlgorithm'(Val, [<<48>>])
      end
   end;
getenc_SMimeCAPS({1,2,840,113549,1,9,16,3,20}) ->
   fun(Type, Val, _RestPrimFieldName) ->
      case Type of
         'Type' ->
            'CryptographicMessageSyntaxAlgorithms-2009':'enc_KeyWrapAlgorithm'(Val, [<<48>>])
      end
   end;
getenc_SMimeCAPS({1,2,840,113549,1,9,16,3,21}) ->
   fun(Type, Val, _RestPrimFieldName) ->
      case Type of
         'Type' ->
            'CryptographicMessageSyntaxAlgorithms-2009':'enc_KeyWrapAlgorithm'(Val, [<<48>>])
      end
   end;
getenc_SMimeCAPS(_) ->
  fun(_, Val, _RestPrimFieldName) ->
    case Val of
      {asn1_OPENTYPE,Bin} when is_binary(Bin) ->
        {Bin,byte_size(Bin)}
    end
  end.

'getdec_SMimeCAPS'({1,3,132,1,11,1}) ->
   fun(Type, Bytes, _RestPrimFieldName) ->
      case Type of
         'Type' ->
            'CMSECCAlgs-2009-02':'dec_KeyWrapAlgorithm'(Bytes, [16])
      end
   end;
'getdec_SMimeCAPS'({1,3,132,1,11,2}) ->
   fun(Type, Bytes, _RestPrimFieldName) ->
      case Type of
         'Type' ->
            'CMSECCAlgs-2009-02':'dec_KeyWrapAlgorithm'(Bytes, [16])
      end
   end;
'getdec_SMimeCAPS'({1,3,132,1,11,3}) ->
   fun(Type, Bytes, _RestPrimFieldName) ->
      case Type of
         'Type' ->
            'CMSECCAlgs-2009-02':'dec_KeyWrapAlgorithm'(Bytes, [16])
      end
   end;
'getdec_SMimeCAPS'({1,2,840,113549,1,9,16,3,19}) ->
   fun(Type, Bytes, _RestPrimFieldName) ->
      case Type of
         'Type' ->
            'CryptographicMessageSyntaxAlgorithms-2009':'dec_KeyWrapAlgorithm'(Bytes, [16])
      end
   end;
'getdec_SMimeCAPS'({1,2,840,113549,1,9,16,3,20}) ->
   fun(Type, Bytes, _RestPrimFieldName) ->
      case Type of
         'Type' ->
            'CryptographicMessageSyntaxAlgorithms-2009':'dec_KeyWrapAlgorithm'(Bytes, [16])
      end
   end;
'getdec_SMimeCAPS'({1,2,840,113549,1,9,16,3,21}) ->
   fun(Type, Bytes, _RestPrimFieldName) ->
      case Type of
         'Type' ->
            'CryptographicMessageSyntaxAlgorithms-2009':'dec_KeyWrapAlgorithm'(Bytes, [16])
      end
   end;
getdec_SMimeCAPS(_) ->
  fun(_,Bytes, _RestPrimFieldName) ->
    case Bytes of
      Bin when is_binary(Bin) -> 
        {asn1_OPENTYPE,Bin};
      _ ->
        {asn1_OPENTYPE,ber_encode(Bytes)}
    end
  end.



%%%
%%% Run-time functions.
%%%

'dialyzer-suppressions'(Arg) ->
    ok.

ber_decode_nif(B) ->
    asn1rt_nif:decode_ber_tlv(B).

ber_encode([Tlv]) ->
    ber_encode(Tlv);
ber_encode(Tlv) when is_binary(Tlv) ->
    Tlv;
ber_encode(Tlv) ->
    asn1rt_nif:encode_ber_tlv(Tlv).