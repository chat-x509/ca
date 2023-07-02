%% Generated by the Erlang ASN.1 compiler. Version: 5.0.17
%% Purpose: Erlang record definitions for each named and unnamed
%% SEQUENCE and SET, and macro definitions for each value
%% definition in module CryptographicMessageSyntax-2009.

-ifndef(_CRYPTOGRAPHICMESSAGESYNTAX_2009_HRL_).
-define(_CRYPTOGRAPHICMESSAGESYNTAX_2009_HRL_, true).

-record('Attribute', {
  attrType,
  attrValues
}).

-record('ContentInfo', {
  contentType,
  content
}).

-record('SignedData', {
  version,
  digestAlgorithms,
  encapContentInfo,
  certificates = asn1_NOVALUE,
  crls = asn1_NOVALUE,
  signerInfos
}).

-record('EncapsulatedContentInfo', {
  eContentType,
  eContent = asn1_NOVALUE
}).

-record('SignerInfo', {
  version,
  sid,
  digestAlgorithm,
  signedAttrs = asn1_NOVALUE,
  signatureAlgorithm,
  signature,
  unsignedAttrs = asn1_NOVALUE
}).

-record('SignerInfo_unsignedAttrs_SETOF', {
  attrType,
  attrValues
}).

-record('SignedAttributes_SETOF', {
  attrType,
  attrValues
}).

-record('EnvelopedData', {
  version,
  originatorInfo = asn1_NOVALUE,
  recipientInfos,
  encryptedContentInfo,
  %% with extensions
  unprotectedAttrs = asn1_NOVALUE
}).

-record('EnvelopedData_unprotectedAttrs_SETOF', {
  attrType,
  attrValues
}).

-record('OriginatorInfo', {
  certs = asn1_NOVALUE,
  crls = asn1_NOVALUE
}).

-record('EncryptedContentInfo', {
  contentType,
  contentEncryptionAlgorithm,
  encryptedContent = asn1_NOVALUE
}).

-record('KeyTransRecipientInfo', {
  version,
  rid,
  keyEncryptionAlgorithm,
  encryptedKey
}).

-record('KeyTransRecipientInfo_keyEncryptionAlgorithm', {
  algorithm,
  parameters = asn1_NOVALUE
}).

-record('KeyAgreeRecipientInfo', {
  version,
  originator,
  ukm = asn1_NOVALUE,
  keyEncryptionAlgorithm,
  recipientEncryptedKeys
}).

-record('KeyAgreeRecipientInfo_keyEncryptionAlgorithm', {
  algorithm,
  parameters = asn1_NOVALUE
}).

-record('OriginatorPublicKey', {
  algorithm,
  publicKey
}).

-record('OriginatorPublicKey_algorithm', {
  algorithm,
  parameters = asn1_NOVALUE
}).

-record('RecipientEncryptedKey', {
  rid,
  encryptedKey
}).

-record('RecipientKeyIdentifier', {
  subjectKeyIdentifier,
  date = asn1_NOVALUE,
  other = asn1_NOVALUE
}).

-record('KEKRecipientInfo', {
  version,
  kekid,
  keyEncryptionAlgorithm,
  encryptedKey
}).

-record('KEKIdentifier', {
  keyIdentifier,
  date = asn1_NOVALUE,
  other = asn1_NOVALUE
}).

-record('PasswordRecipientInfo', {
  version,
  keyDerivationAlgorithm = asn1_NOVALUE,
  keyEncryptionAlgorithm,
  encryptedKey
}).

-record('OtherRecipientInfo', {
  oriType,
  oriValue
}).

-record('DigestedData', {
  version,
  digestAlgorithm,
  encapContentInfo,
  digest
  %% with extension mark
}).

-record('EncryptedData', {
  version,
  encryptedContentInfo,
  %% with extensions
  unprotectedAttrs = asn1_NOVALUE
}).

-record('EncryptedData_unprotectedAttrs_SETOF', {
  attrType,
  attrValues
}).

-record('AuthenticatedData', {
  version,
  originatorInfo = asn1_NOVALUE,
  recipientInfos,
  macAlgorithm,
  digestAlgorithm = asn1_NOVALUE,
  encapContentInfo,
  authAttrs = asn1_NOVALUE,
  mac,
  unauthAttrs = asn1_NOVALUE
}).

-record('AuthAttributes_SETOF', {
  attrType,
  attrValues
}).

-record('UnauthAttributes_SETOF', {
  attrType,
  attrValues
}).

-record('DigestAlgorithmIdentifier', {
  algorithm,
  parameters = asn1_NOVALUE
}).

-record('SignatureAlgorithmIdentifier', {
  algorithm,
  parameters = asn1_NOVALUE
}).

-record('KeyEncryptionAlgorithmIdentifier', {
  algorithm,
  parameters = asn1_NOVALUE
}).

-record('ContentEncryptionAlgorithmIdentifier', {
  algorithm,
  parameters = asn1_NOVALUE
}).

-record('MessageAuthenticationCodeAlgorithm', {
  algorithm,
  parameters = asn1_NOVALUE
}).

-record('KeyDerivationAlgorithmIdentifier', {
  algorithm,
  parameters = asn1_NOVALUE
}).

-record('OtherRevocationInfoFormat', {
  otherRevInfoFormat,
  otherRevInfo
}).

-record('OtherCertificateFormat', {
  otherCertFormat,
  otherCert
}).

-record('IssuerAndSerialNumber', {
  issuer,
  serialNumber
}).

-record('OtherKeyAttribute', {
  keyAttrId,
  keyAttr
}).

-record('ExtendedCertificate', {
  extendedCertificateInfo,
  signatureAlgorithm,
  signature
}).

-record('ExtendedCertificateInfo', {
  version,
  certificate,
  attributes
}).

-define('id-ct-contentInfo', {1,2,840,113549,1,9,16,1,6}).
-define('id-data', {1,2,840,113549,1,7,1}).
-define('id-signedData', {1,2,840,113549,1,7,2}).
-define('id-envelopedData', {1,2,840,113549,1,7,3}).
-define('id-digestedData', {1,2,840,113549,1,7,5}).
-define('id-encryptedData', {1,2,840,113549,1,7,6}).
-define('id-ct-authData', {1,2,840,113549,1,9,16,1,2}).
-define('id-contentType', {1,2,840,113549,1,9,3}).
-define('id-messageDigest', {1,2,840,113549,1,9,4}).
-define('id-signingTime', {1,2,840,113549,1,9,5}).
-define('id-countersignature', {1,2,840,113549,1,9,6}).
-endif. %% _CRYPTOGRAPHICMESSAGESYNTAX_2009_HRL_
