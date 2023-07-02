%% Generated by the Erlang ASN.1 compiler. Version: 5.0.17
%% Purpose: Erlang record definitions for each named and unnamed
%% SEQUENCE and SET, and macro definitions for each value
%% definition in module PKIX1Explicit-2009.

-ifndef(_PKIX1EXPLICIT_2009_HRL_).
-define(_PKIX1EXPLICIT_2009_HRL_, true).

-record('SIGNED', {
  toBeSigned,
  algorithmIdentifier,
  signature
}).

-record('SIGNED_algorithmIdentifier', {
  algorithm,
  parameters = asn1_NOVALUE
}).

-record('RelativeDistinguishedName_SETOF', {
  type,
  value
}).

-record('Certificate', {
  toBeSigned,
  algorithmIdentifier,
  signature
}).

-record('Certificate_algorithmIdentifier', {
  algorithm,
  parameters = asn1_NOVALUE
}).

-record('TBSCertificate', {
  version = asn1_DEFAULT,
  serialNumber,
  signature,
  issuer,
  validity,
  subject,
  subjectPublicKeyInfo,
  %% with extensions
  issuerUniqueID = asn1_NOVALUE,
  subjectUniqueID = asn1_NOVALUE,
  extensions = asn1_NOVALUE
  %% end of extensions
}).

-record('TBSCertificate_signature', {
  algorithm,
  parameters = asn1_NOVALUE
}).

-record('TBSCertificate_extensions_SEQOF', {
  extnID,
  critical = asn1_DEFAULT,
  extnValue
}).

-record('Validity', {
  notBefore,
  notAfter
}).

-record('SubjectPublicKeyInfo', {
  algorithm,
  subjectPublicKey
}).

-record('SubjectPublicKeyInfo_algorithm', {
  algorithm,
  parameters = asn1_NOVALUE
}).

-record('CertificateList', {
  toBeSigned,
  algorithmIdentifier,
  signature
}).

-record('CertificateList_algorithmIdentifier', {
  algorithm,
  parameters = asn1_NOVALUE
}).

-record('TBSCertList', {
  version = asn1_NOVALUE,
  signature,
  issuer,
  thisUpdate,
  nextUpdate = asn1_NOVALUE,
  revokedCertificates = asn1_NOVALUE,
  %% with extensions
  crlExtensions = asn1_NOVALUE
  %% end of extensions
}).

-record('TBSCertList_signature', {
  algorithm,
  parameters = asn1_NOVALUE
}).

-record('TBSCertList_revokedCertificates_SEQOF', {
  userCertificate,
  revocationDate,
  %% with extensions
  crlEntryExtensions = asn1_NOVALUE
  %% end of extensions
}).

-record('TBSCertList_revokedCertificates_SEQOF_crlEntryExtensions_SEQOF', {
  extnID,
  critical = asn1_DEFAULT,
  extnValue
}).

-record('TBSCertList_crlExtensions_SEQOF', {
  extnID,
  critical = asn1_DEFAULT,
  extnValue
}).

-define('id-pkix', {1,3,6,1,5,5,7}).
-define('id-pe', {1,3,6,1,5,5,7,1}).
-define('id-qt', {1,3,6,1,5,5,7,2}).
-define('id-kp', {1,3,6,1,5,5,7,3}).
-define('id-ad', {1,3,6,1,5,5,7,48}).
-define('id-qt-cps', {1,3,6,1,5,5,7,2,1}).
-define('id-qt-unotice', {1,3,6,1,5,5,7,2,2}).
-define('id-ad-ocsp', {1,3,6,1,5,5,7,48,1}).
-define('id-ad-caIssuers', {1,3,6,1,5,5,7,48,2}).
-define('id-ad-timeStamping', {1,3,6,1,5,5,7,48,3}).
-define('id-ad-caRepository', {1,3,6,1,5,5,7,48,5}).
-define('id-at', {2,5,4}).
-define('id-at-name', {2,5,4,41}).
-define('id-at-surname', {2,5,4,4}).
-define('id-at-givenName', {2,5,4,42}).
-define('id-at-initials', {2,5,4,43}).
-define('id-at-generationQualifier', {2,5,4,44}).
-define('id-at-commonName', {2,5,4,3}).
-define('id-at-localityName', {2,5,4,7}).
-define('id-at-stateOrProvinceName', {2,5,4,8}).
-define('id-at-organizationName', {2,5,4,10}).
-define('id-at-organizationalUnitName', {2,5,4,11}).
-define('id-at-title', {2,5,4,12}).
-define('id-at-dnQualifier', {2,5,4,46}).
-define('id-at-countryName', {2,5,4,6}).
-define('id-at-serialNumber', {2,5,4,5}).
-define('id-at-pseudonym', {2,5,4,65}).
-define('id-domainComponent', {0,9,2342,19200300,100,1,25}).
-define('pkcs-9', {1,2,840,113549,1,9}).
-define('id-emailAddress', {1,2,840,113549,1,9,1}).
-define('ub-state-name', 128).
-define('ub-organization-name', 64).
-define('ub-organizational-unit-name', 64).
-define('ub-title', 64).
-define('ub-serial-number', 64).
-define('ub-pseudonym', 128).
-define('ub-emailaddress-length', 255).
-define('ub-locality-name', 128).
-define('ub-common-name', 64).
-define('ub-name', 32768).
-endif. %% _PKIX1EXPLICIT_2009_HRL_
