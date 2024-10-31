%% Generated by the Erlang ASN.1 BER compiler. Version: 5.0.17
%% Purpose: Encoding and decoding of the types in PKIX-CommonTypes-2009.

-module('PKIX-CommonTypes-2009').
-compile(nowarn_unused_vars).
-dialyzer(no_improper_lists).
-dialyzer(no_match).
-include_lib("ca/include/PKIX-CommonTypes-2009.hrl").
-asn1_info([{vsn,'5.0.17'},
            {module,'PKIX-CommonTypes-2009'},
            {options,[warnings,ber,errors,
 {cwd,"/home/maxim/depot/arvo-computer/ca/priv/csr"},
 {outdir,"/home/maxim/depot/arvo-computer/ca/priv/csr"},
 {i,"."},
 {i,"/home/maxim/depot/arvo-computer/ca/priv/csr"}]}]).

-export([encoding_rule/0,maps/0,bit_string_format/0,
         legacy_erlang_types/0]).
-export(['dialyzer-suppressions'/1]).
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

%%%
%%% Run-time functions.
%%%

'dialyzer-suppressions'(Arg) ->
    ok.