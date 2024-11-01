defmodule CA.AT do
  @moduledoc "CA CSR Attributes OIDs."
  def oid(x) do
      case :lists.keyfind(x, 2, algorithms()) do
           {val,_} -> val
           false -> CA.ALG.oid(x)
      end
  end
  def algorithms() do
    [
      {:dstu7564,                                     {1, 2, 804, 2, 1, 1, 1, 1, 2, 2}},
      {:"dstu7564-256",                               {1, 2, 804, 2, 1, 1, 1, 1, 2, 2, 1}},
      {:"dstu7564-384",                               {1, 2, 804, 2, 1, 1, 1, 1, 2, 2, 2}},
      {:"dstu7564-512",                               {1, 2, 804, 2, 1, 1, 1, 1, 2, 2, 3}},
      {:"dstu7564mac-256",                            {1, 2, 804, 2, 1, 1, 1, 1, 2, 2, 4}},
      {:"dstu7564mac-384",                            {1, 2, 804, 2, 1, 1, 1, 1, 2, 2, 5}},
      {:"dstu7564mac-512",                            {1, 2, 804, 2, 1, 1, 1, 1, 2, 2, 6}},
      {:"dstu4145WithDstu7564-256-pb",                {1, 2, 804, 2, 1, 1, 1, 1, 3, 6, 1, 1}},
      {:"dstu4145WithDstu7564-256-SpecialCurves-PB",  {1, 2, 804, 2, 1, 1, 1, 1, 3, 6, 1, 1, 1}},
      {:"dstu4145WithDstu7564-256-keyFormat-PB",      {1, 2, 804, 2, 1, 1, 1, 1, 3, 6, 1, 1, 1, 1}},
      {:"dstu4145WithDstu7564-256-NamedCurves-PB",    {1, 2, 804, 2, 1, 1, 1, 1, 3, 6, 1, 1, 2}},
      {:"dstu4145WithDstu7564-256-NamedCurves-PB",    {1, 2, 804, 2, 1, 1, 1, 1, 3, 6, 1, 1, 2}},
      {:"dstu4145WithDstu7564-256-m163-PB",           {1, 2, 804, 2, 1, 1, 1, 1, 3, 6, 1, 1, 2, 0}},
      {:"dstu4145WithDstu7564-256-m167-PB",           {1, 2, 804, 2, 1, 1, 1, 1, 3, 6, 1, 1, 2, 1}},
      {:"dstu4145WithDstu7564-256-m173-PB",           {1, 2, 804, 2, 1, 1, 1, 1, 3, 6, 1, 1, 2, 2}},
      {:"dstu4145WithDstu7564-256-m179-PB",           {1, 2, 804, 2, 1, 1, 1, 1, 3, 6, 1, 1, 2, 3}},
      {:"dstu4145WithDstu7564-256-m191-PB",           {1, 2, 804, 2, 1, 1, 1, 1, 3, 6, 1, 1, 2, 4}},
      {:"dstu4145WithDstu7564-256-m233-PB",           {1, 2, 804, 2, 1, 1, 1, 1, 3, 6, 1, 1, 2, 5}},
      {:"dstu4145WithDstu7564-256-m257-PB",           {1, 2, 804, 2, 1, 1, 1, 1, 3, 6, 1, 1, 2, 6}},
      {:"dstu4145WithDstu7564-256-m307-PB",           {1, 2, 804, 2, 1, 1, 1, 1, 3, 6, 1, 1, 2, 7}},
      {:"dstu4145WithDstu7564-256-m367-PB",           {1, 2, 804, 2, 1, 1, 1, 1, 3, 6, 1, 1, 2, 8}},
      {:"dstu4145WithDstu7564-256-m431-PB",           {1, 2, 804, 2, 1, 1, 1, 1, 3, 6, 1, 1, 2, 9}},
      {:rsaEncryption,                                {1, 2, 840, 113549, 1, 1, 1}},
      {:md2WithRSAEncryption,                         {1, 2, 840, 113549, 1, 1, 2}},
      {:md4withRSAEncryption,                         {1, 2, 840, 113549, 1, 1, 3}},
      {:md5WithRSAEncryption,                         {1, 2, 840, 113549, 1, 1, 4}},
      {:sha1WithRSAEncryption,                        {1, 2, 840, 113549, 1, 1, 5}},
      {:rsaOAEPEncryptionSET,                         {1, 2, 840, 113549, 1, 1, 6}},
      {"id-RSAES-OAEP",                               {1, 2, 840, 113549, 1, 1, 7}},
      {"id-mgf1",                                     {1, 2, 840, 113549, 1, 1, 8}},
      {"id-pSpecified",                               {1, 2, 840, 113549, 1, 1, 9}},
      {"rsassa-pss",                                  {1, 2, 840, 113549, 1, 1, 10}},
      {:sha256WithRSAEncryption,                      {1, 2, 840, 113549, 1, 1, 11}},
      {:sha384WithRSAEncryption,                      {1, 2, 840, 113549, 1, 1, 12}},
      {:sha512WithRSAEncryption,                      {1, 2, 840, 113549, 1, 1, 13}},
      {:sha224WithRSAEncryption,                      {1, 2, 840, 113549, 1, 1, 14}},
      {:"sha512-224WithRSAEncryption",                {1, 2, 840, 113549, 1, 1, 15}},
      {:"sha512-256WithRSAEncryption",                {1, 2, 840, 113549, 1, 1, 16}},
      {:"PKCS-7",                                     {1, 2, 840, 113549, 1, 7}},
      {:data,                                         {1, 2, 840, 113549, 1, 7, 1}},
      {:signedData,                                   {1, 2, 840, 113549, 1, 7, 2}},
      {:envelopedData,                                {1, 2, 840, 113549, 1, 7, 3}},
      {:signedAndEnvelopedData,                       {1, 2, 840, 113549, 1, 7, 4}},
      {:digestedData,                                 {1, 2, 840, 113549, 1, 7, 5}},
      {:encryptedData,                                {1, 2, 840, 113549, 1, 7, 6}},
      {:dataWithAttributes,                           {1, 2, 840, 113549, 1, 7, 7}},
      {:encryptedPrivateKeyInfo,                      {1, 2, 840, 113549, 1, 7, 8}},
      {:"id-at-dhKeyAgreement",                       {1, 2, 840, 113549, 1, 3, 1}},
      {:"id-at-emailAddress",                         {1, 2, 840, 113549, 1, 9, 1}},
      {:"id-at-unstructuredName",                     {1, 2, 840, 113549, 1, 9, 2}},
      {:"id-at-contentType",                          {1, 2, 840, 113549, 1, 9, 3}},
      {:"id-at-messageDigest",                        {1, 2, 840, 113549, 1, 9, 4}},
      {:"id-at-signingTime",                          {1, 2, 840, 113549, 1, 9, 5}},
      {:"id-at-counterSignature",                     {1, 2, 840, 113549, 1, 9, 6}},
      {:"id-at-challengePassword",                    {1, 2, 840, 113549, 1, 9, 7}},
      {:"id-at-unstructuredAddress",                  {1, 2, 840, 113549, 1, 9, 8}},
      {:"id-at-extendedCertificateAttributes",        {1, 2, 840, 113549, 1, 9, 9}},
      {:"id-at-issuerAndSerialNumber",                {1, 2, 840, 113549, 1, 9, 10}},
      {:"id-at-passwordCheck",                        {1, 2, 840, 113549, 1, 9, 11}},
      {:"id-at-publicKey",                            {1, 2, 840, 113549, 1, 9, 12}},
      {:"id-at-signingDescription",                   {1, 2, 840, 113549, 1, 9, 13}},
      {:"id-at-extensionRequest",                     {1, 2, 840, 113549, 1, 9, 14}},
      {:"id-at-smimeCapabilities",                    {1, 2, 840, 113549, 1, 9, 15}},
      {:"id-at-smime",                                {1, 2, 840, 113549, 1, 9, 16}},
      {:"id-aa",                                      {1, 2, 840, 113549, 1, 9, 16, 2}},
      {:"id-aa-timeStampToken",                       {1, 2, 840, 113549, 1, 9, 16, 2, 14}},
      {:"id-aa-ets-signerAttr",                       {1, 2, 840, 113549, 1, 9, 16, 2, 18}},
      {:"id-aa-ets-otherSigCert",                     {1, 2, 840, 113549, 1, 9, 16, 2, 19}},
      {:"id-aa-20",                                   {1, 2, 840, 113549, 1, 9, 16, 2, 20}},
      {:"id-aa-ets-CertificateRefs",                  {1, 2, 840, 113549, 1, 9, 16, 2, 21}},
      {:"id-aa-ets-revocationRefs",                   {1, 2, 840, 113549, 1, 9, 16, 2, 22}},
      {:"id-aa-ets-certValues",                       {1, 2, 840, 113549, 1, 9, 16, 2, 23}},
      {:"id-aa-ets-revocationValues",                 {1, 2, 840, 113549, 1, 9, 16, 2, 24}},
      {:"id-aa-signingCertificateV2",                 {1, 2, 840, 113549, 1, 9, 16, 2, 47}},
      {:"id-at-pgpKeyID",                             {1, 2, 840, 113549, 1, 9, 17}},
    ]
  end
end