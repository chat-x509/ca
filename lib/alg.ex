defmodule CA.ALG do
   @moduledoc "CA algorithms definitions."

   def lookup(oid), do: :lists.keyfind(oid, 2, algorithms())
   def algorithms() do
       [
         {:'id-PasswordBasedMac', {1,2,840,113533,7,66,13}},
         {:'id-DHBasedMac',       {1,2,840,113533,7,66,30}},
         {:'id-gost28147-ofb',    {1,2,804,2,1,1,1,1,1,1,2}},
         {:'id-gost28147-cfb',    {1,2,804,2,1,1,1,1,1,1,3}},
         {:'id-gost28147-wrap',   {1,2,804,2,1,1,1,1,1,1,5}},
         {:'id-Dstu7624cfb-x256', {1,2,804,2,1,1,1,1,1,3,3,2}},
         {:'id-Dstu7624ofb-x256', {1,2,804,2,1,1,1,1,1,3,6,2}},
         {:'id-ecPublicKey',      {1,2,840,10045,2,1}},
         {:secp192r1,             {1,2,840,10045,3,1,1}},
         {:secp256r1,             {1,2,840,10045,3,1,7}},
         {:'ecdsa-with-SHA224',   {1,2,840,10045,4,3,1}},
         {:'ecdsa-with-SHA256',   {1,2,840,10045,4,3,2}},
         {:'ecdsa-with-SHA384',   {1,2,840,10045,4,3,3}},
         {:'ecdsa-with-SHA512',   {1,2,840,10045,4,3,4}},
         {:'ecdsa-with-SHA1',     {1,2,840,10045,4,1}},
         {:'id-dsa',              {1,2,840,10040,4,1}},
         {:'dsa-with-sha1',       {1,2,840,10040,4,3}},
         {:rsaEncryption,         {1,2,840,113549,1,1,1}},
         {:md2WithRSAEncryption,  {1,2,840,113549,1,1,2}},
         {:md5WithRSAEncryption,  {1,2,840,113549,1,1,4}},
         {:sha1WithRSAEncryption, {1,2,840,113549,1,1,5}},
         {:'id-PBKDF2',           {1,2,840,113549,1,5,12}},
         {:'smime-alg',           {1,2,840,113549,1,9,16,3}},
         {:'id-alg-ESDH',         {1,2,840,113549,1,9,16,3,5}},
         {:'id-alg-SSDH',         {1,2,840,113549,1,9,16,3,10}},
         {:'id-alg-CMS3DESwrap',  {1,2,840,113549,1,9,16,3,6}},
         {:'id-alg-CMSRC2wrap',   {1,2,840,113549,1,9,16,3,7}},
         {:'id-md2',              {1,2,840,113549,2,2}},
         {:'id-md5',              {1,2,840,113549,2,5}},
         {:'id-hmacWithSHA224',   {1,2,840,113549,2,8}},
         {:'id-hmacWithSHA256',   {1,2,840,113549,2,9}},
         {:'id-hmacWithSHA384',   {1,2,840,113549,2,10}},
         {:'id-hmacWithSHA512',   {1,2,840,113549,2,11}},
         {:'rc2-cbc',             {1,2,840,113549,3,2}},
         {:'des-ede3-cbc',        {1,2,840,113549,3,7}},
         {:keyExchangeAlgorithm,  {2,16,840,1,101,2,1,1,22}},
         {:'id-aes128-ECB',       {2,16,840,1,101,3,4,1,1}},
         {:'id-aes128-CBC',       {2,16,840,1,101,3,4,1,2}},
         {:'id-aes128-wrap',      {2,16,840,1,101,3,4,1,5}},
         {:'id-aes128-GCM',       {2,16,840,1,101,3,4,1,6}},
         {:'id-aes128-CCM',       {2,16,840,1,101,3,4,1,7}},
         {:'id-aes128-wrap-pad',  {2,16,840,1,101,3,4,1,8}},
         {:'id-aes192-ECB',       {2,16,840,1,101,3,4,1,21}},
         {:'id-aes192-CBC',       {2,16,840,1,101,3,4,1,22}},
         {:'id-aes192-wrap',      {2,16,840,1,101,3,4,1,25}},
         {:'id-aes192-GCM',       {2,16,840,1,101,3,4,1,26}},
         {:'id-aes192-CCM',       {2,16,840,1,101,3,4,1,27}},
         {:'id-aes192-wrap-pad',  {2,16,840,1,101,3,4,1,28}},
         {:'id-aes256-ECB',       {2,16,840,1,101,3,4,1,41}},
         {:'id-aes256-CBC',       {2,16,840,1,101,3,4,1,42}},
         {:'id-aes256-OFB',       {2,16,840,1,101,3,4,1,43}},
         {:'id-aes256-CFB',       {2,16,840,1,101,3,4,1,44}},
         {:'id-aes256-wrap',      {2,16,840,1,101,3,4,1,45}},
         {:'id-aes256-GCM',       {2,16,840,1,101,3,4,1,46}},
         {:'id-aes256-CCM',       {2,16,840,1,101,3,4,1,47}},
         {:'id-aes256-wrap-pad',  {2,16,840,1,101,3,4,1,48}},
         {:sha256,                {2,16,840,1,101,3,4,2,1}},
         {:sha384,                {2,16,840,1,101,3,4,2,2}},
         {:sha512,                {2,16,840,1,101,3,4,2,3}},
         {:sha224,                {2,16,840,1,101,3,4,2,4}},
         {:'sha512-224',          {2,16,840,1,101,3,4,2,5}},
         {:'sha512-256',          {2,16,840,1,101,3,4,2,6}},
         {:shake128,              {2,16,840,1,101,3,4,2,11}},
         {:shake256,              {2,16,840,1,101,3,4,2,12}},
         {:'dsa-with-sha224',     {2,16,840,1,101,3,4,3,1}},
         {:'dsa-with-sha256',     {2,16,840,1,101,3,4,3,2}},
         {:'dhSinglePass-stdDH-hkdf-sha256-scheme',    {1,2,840,113549,1,9,16,3,19}},
         {:'dhSinglePass-stdDH-hkdf-sha384-scheme',    {1,2,840,113549,1,9,16,3,20}},
         {:'dhSinglePass-stdDH-hkdf-sha512-scheme',    {1,2,840,113549,1,9,16,3,21}},
         {:'hMAC-SHA1',                                {1,3,6,1,5,5,8,1,2}},
         {:'id-sha1',                                  {1,3,14,3,2,26}},
         {:sect163k1,                                  {1,3,132,0,1}},
         {:sect163r2,                                  {1,3,132,0,15}},
         {:secp224r1,                                  {1,3,132,0,33}},
         {:sect233k1,                                  {1,3,132,0,26}},
         {:sect233r1,                                  {1,3,132,0,27}},
         {:sect283k1,                                  {1,3,132,0,16}},
         {:sect283r1,                                  {1,3,132,0,17}},
         {:secp384r1,                                  {1,3,132,0,34}},
         {:sect409k1,                                  {1,3,132,0,36}},
         {:sect409r1,                                  {1,3,132,0,37}},
         {:secp521r1,                                  {1,3,132,0,35}},
         {:sect571k1,                                  {1,3,132,0,38}},
         {:sect571r1,                                  {1,3,132,0,39}},
         {:'secg-scheme',                              {1,3,132,1}},
         {:'dhSinglePass-stdDH-sha224kdf-scheme',      {1,3,132,1,11,0}},
         {:'dhSinglePass-stdDH-sha256kdf-scheme',      {1,3,132,1,11,1}},
         {:'dhSinglePass-stdDH-sha384kdf-scheme',      {1,3,132,1,11,2}},
         {:'dhSinglePass-stdDH-sha512kdf-scheme',      {1,3,132,1,11,3}},
         {:'id-ecDH',                                  {1,3,132,1,12}},
         {:'id-ecMQV',                                 {1,3,132,1,13}},
         {:'dhSinglePass-cofactorDH-sha224kdf-scheme', {1,3,132,1,14,0}},
         {:'dhSinglePass-cofactorDH-sha256kdf-scheme', {1,3,132,1,14,1}},
         {:'dhSinglePass-cofactorDH-sha384kdf-scheme', {1,3,132,1,14,2}},
         {:'dhSinglePass-cofactorDH-sha512kdf-scheme', {1,3,132,1,14,3}},
         {:'mqvSinglePass-sha224kdf-scheme',           {1,3,132,1,15,0}},
         {:'mqvSinglePass-sha256kdf-scheme',           {1,3,132,1,15,1}},
         {:'mqvSinglePass-sha384kdf-scheme',           {1,3,132,1,15,2}},
         {:'mqvSinglePass-sha512kdf-scheme',           {1,3,132,1,15,3}},
         {:'x9-63-scheme',                             {1,3,133,16,840,63,0}},
         {:'dhSinglePass-stdDH-sha1kdf-scheme',        {1,3,133,16,840,63,0,2}},
         {:'dhSinglePass-cofactorDH-sha1kdf-scheme',   {1,3,133,16,840,63,0,3}},
         {:'mqvSinglePass-sha1kdf-scheme',             {1,3,133,16,840,63,0,16}},
       ]
   end
end
