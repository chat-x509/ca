%% Generated by the Erlang ASN.1 BER compiler. Version: 5.0.21
%% Purpose: Encoding and decoding of the types in CMS-AES-CCM-and-AES-GCM-2009.

-module('CMS-AES-CCM-and-AES-GCM-2009').
-compile(nowarn_unused_vars).
-dialyzer(no_improper_lists).
-dialyzer(no_match).
-include_lib("ca/include/CMS-AES-CCM-and-AES-GCM-2009.hrl").
-asn1_info([{vsn,'5.0.21'},
            {module,'CMS-AES-CCM-and-AES-GCM-2009'},
            {options,[warnings,ber,errors,
 {cwd,"/Users/maxim/depot/synrc/ca/priv/cms"},
 {outdir,"/Users/maxim/depot/synrc/ca/priv/cms"},
 {i,"."},
 {i,"/Users/maxim/depot/synrc/ca/priv/cms"}]}]).

-export([encoding_rule/0,maps/0,bit_string_format/0,
         legacy_erlang_types/0]).
-export(['dialyzer-suppressions'/1]).
-export([
enc_CCMParameters/2,
'enc_AES-CCM-ICVlen'/2,
enc_GCMParameters/2,
'enc_AES-GCM-ICVlen'/2
]).

-export([
dec_CCMParameters/2,
'dec_AES-CCM-ICVlen'/2,
dec_GCMParameters/2,
'dec_AES-GCM-ICVlen'/2
]).

-export([
'enc_cea-aes128-CCM'/3,
'enc_cea-aes192-CCM'/3,
'enc_cea-aes256-CCM'/3,
'enc_cea-aes128-GCM'/3,
'enc_cea-aes192-GCM'/3,
'enc_cea-aes256-GCM'/3,
'enc_cea-aes256-GCM_smimeCaps'/3,
'enc_cea-aes192-GCM_smimeCaps'/3,
'enc_cea-aes128-GCM_smimeCaps'/3,
'enc_cea-aes256-CCM_smimeCaps'/3,
'enc_cea-aes192-CCM_smimeCaps'/3,
'enc_cea-aes128-CCM_smimeCaps'/3
]).

-export([
'dec_cea-aes128-CCM'/3,
'dec_cea-aes192-CCM'/3,
'dec_cea-aes256-CCM'/3,
'dec_cea-aes128-GCM'/3,
'dec_cea-aes192-GCM'/3,
'dec_cea-aes256-GCM'/3,
'dec_cea-aes256-GCM_smimeCaps'/3,
'dec_cea-aes192-GCM_smimeCaps'/3,
'dec_cea-aes128-GCM_smimeCaps'/3,
'dec_cea-aes256-CCM_smimeCaps'/3,
'dec_cea-aes192-CCM_smimeCaps'/3,
'dec_cea-aes128-CCM_smimeCaps'/3
]).

-export([
getenc_SMimeCaps/1
]).

-export([
getdec_SMimeCaps/1
]).

-export([
aes/0,
'id-aes128-CCM'/0,
'id-aes192-CCM'/0,
'id-aes256-CCM'/0,
'id-aes128-GCM'/0,
'id-aes192-GCM'/0,
'id-aes256-GCM'/0
]).

-export([info/0]).

-export([encode/2,decode/2]).

encoding_rule() -> ber.

maps() -> false.

bit_string_format() -> bitstring.

legacy_erlang_types() -> false.

encode(Type, Data) ->
try iolist_to_binary(element(1, encode_disp(Type, Data))) of
  Bytes ->
    {ok,Bytes}
  catch
    Class:Exception:Stk when Class =:= error; Class =:= exit ->
      case Exception of
        {error,{asn1,Reason}} ->
          {error,{asn1,{Reason,Stk}}};
        Reason ->
         {error,{asn1,{Reason,Stk}}}
      end
end.

decode(Type, Data) ->
try
   Result = decode_disp(Type, element(1, ber_decode_nif(Data))),
   {ok,Result}
  catch
    Class:Exception:Stk when Class =:= error; Class =:= exit ->
      case Exception of
        {error,{asn1,Reason}} ->
          {error,{asn1,{Reason,Stk}}};
        Reason ->
         {error,{asn1,{Reason,Stk}}}
      end
end.

encode_disp('CCMParameters', Data) -> enc_CCMParameters(Data);
encode_disp('AES-CCM-ICVlen', Data) -> 'enc_AES-CCM-ICVlen'(Data);
encode_disp('GCMParameters', Data) -> enc_GCMParameters(Data);
encode_disp('AES-GCM-ICVlen', Data) -> 'enc_AES-GCM-ICVlen'(Data);
encode_disp(Type, _Data) -> exit({error,{asn1,{undefined_type,Type}}}).

decode_disp('CCMParameters', Data) -> dec_CCMParameters(Data);
decode_disp('AES-CCM-ICVlen', Data) -> 'dec_AES-CCM-ICVlen'(Data);
decode_disp('GCMParameters', Data) -> dec_GCMParameters(Data);
decode_disp('AES-GCM-ICVlen', Data) -> 'dec_AES-GCM-ICVlen'(Data);
decode_disp(Type, _Data) -> exit({error,{asn1,{undefined_type,Type}}}).

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


%%================================
%%  CCMParameters
%%================================
enc_CCMParameters(Val) ->
    enc_CCMParameters(Val, [<<48>>]).

enc_CCMParameters(Val, TagIn) ->
{_,Cindex1,Cindex2} = Val,

%%-------------------------------------------------
%% attribute aes-nonce(1) with type OCTET STRING
%%-------------------------------------------------
   {EncBytes1,EncLen1} = encode_restricted_string(Cindex1, [<<4>>]),

%%-------------------------------------------------
%% attribute aes-ICVlen(2) with type INTEGER DEFAULT = 12
%%-------------------------------------------------
   {EncBytes2,EncLen2} =  case Cindex2 of
         asn1_DEFAULT ->
            {<<>>,0};
         _ when Cindex2 =:= 12 ->
            {<<>>,0};
         _ ->
            encode_integer(Cindex2, [<<2>>])
       end,

   BytesSoFar = [EncBytes1, EncBytes2],
LenSoFar = EncLen1 + EncLen2,
encode_tags(TagIn, BytesSoFar, LenSoFar).


dec_CCMParameters(Tlv) ->
   dec_CCMParameters(Tlv, [16]).

dec_CCMParameters(Tlv, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
Tlv1 = match_tags(Tlv, TagIn),

%%-------------------------------------------------
%% attribute aes-nonce(1) with type OCTET STRING
%%-------------------------------------------------
[V1|Tlv2] = Tlv1, 
Term1 = begin
Val1 = decode_octet_string(V1, [4]),
C1 = byte_size(Val1),
if 7 =< C1, C1 =< 13 ->
Val1;
true ->
exit({error,{asn1,bad_range}})
end
end,

%%-------------------------------------------------
%% attribute aes-ICVlen(2) with type INTEGER DEFAULT = 12
%%-------------------------------------------------
{Term2,Tlv3} = case Tlv2 of
[{2,V2}|TempTlv3] ->
    {begin
Val2 = decode_integer(V2, []),
if 4 =< Val2, Val2 =< 16 ->
Val2;
true ->
exit({error,{asn1,bad_range}})
end
end, TempTlv3};
    _ ->
        {12,Tlv2}
end,

case Tlv3 of
[] -> true;_ -> exit({error,{asn1, {unexpected,Tlv3}}}) % extra fields not allowed
end,
Res1 = {'CCMParameters',Term1,Term2},
Res1.


%%================================
%%  AES-CCM-ICVlen
%%================================
'enc_AES-CCM-ICVlen'(Val) ->
    'enc_AES-CCM-ICVlen'(Val, [<<2>>]).

'enc_AES-CCM-ICVlen'(Val, TagIn) ->
encode_integer(Val, TagIn).


'dec_AES-CCM-ICVlen'(Tlv) ->
   'dec_AES-CCM-ICVlen'(Tlv, [2]).

'dec_AES-CCM-ICVlen'(Tlv, TagIn) ->
begin
Val1 = decode_integer(Tlv, TagIn),
if 4 =< Val1, Val1 =< 16 ->
Val1;
true ->
exit({error,{asn1,bad_range}})
end
end.



%%================================
%%  GCMParameters
%%================================
enc_GCMParameters(Val) ->
    enc_GCMParameters(Val, [<<48>>]).

enc_GCMParameters(Val, TagIn) ->
{_,Cindex1,Cindex2} = Val,

%%-------------------------------------------------
%% attribute aes-nonce(1) with type OCTET STRING
%%-------------------------------------------------
   {EncBytes1,EncLen1} = encode_restricted_string(Cindex1, [<<4>>]),

%%-------------------------------------------------
%% attribute aes-ICVlen(2) with type INTEGER DEFAULT = 12
%%-------------------------------------------------
   {EncBytes2,EncLen2} =  case Cindex2 of
         asn1_DEFAULT ->
            {<<>>,0};
         _ when Cindex2 =:= 12 ->
            {<<>>,0};
         _ ->
            encode_integer(Cindex2, [<<2>>])
       end,

   BytesSoFar = [EncBytes1, EncBytes2],
LenSoFar = EncLen1 + EncLen2,
encode_tags(TagIn, BytesSoFar, LenSoFar).


dec_GCMParameters(Tlv) ->
   dec_GCMParameters(Tlv, [16]).

dec_GCMParameters(Tlv, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
Tlv1 = match_tags(Tlv, TagIn),

%%-------------------------------------------------
%% attribute aes-nonce(1) with type OCTET STRING
%%-------------------------------------------------
[V1|Tlv2] = Tlv1, 
Term1 = decode_octet_string(V1, [4]),

%%-------------------------------------------------
%% attribute aes-ICVlen(2) with type INTEGER DEFAULT = 12
%%-------------------------------------------------
{Term2,Tlv3} = case Tlv2 of
[{2,V2}|TempTlv3] ->
    {begin
Val1 = decode_integer(V2, []),
if 12 =< Val1, Val1 =< 16 ->
Val1;
true ->
exit({error,{asn1,bad_range}})
end
end, TempTlv3};
    _ ->
        {12,Tlv2}
end,

case Tlv3 of
[] -> true;_ -> exit({error,{asn1, {unexpected,Tlv3}}}) % extra fields not allowed
end,
Res1 = {'GCMParameters',Term1,Term2},
Res1.


%%================================
%%  AES-GCM-ICVlen
%%================================
'enc_AES-GCM-ICVlen'(Val) ->
    'enc_AES-GCM-ICVlen'(Val, [<<2>>]).

'enc_AES-GCM-ICVlen'(Val, TagIn) ->
encode_integer(Val, TagIn).


'dec_AES-GCM-ICVlen'(Tlv) ->
   'dec_AES-GCM-ICVlen'(Tlv, [2]).

'dec_AES-GCM-ICVlen'(Tlv, TagIn) ->
begin
Val1 = decode_integer(Tlv, TagIn),
if 12 =< Val1, Val1 =< 16 ->
Val1;
true ->
exit({error,{asn1,bad_range}})
end
end.

aes() ->
{2,16,840,1,101,3,4,1}.

'id-aes128-CCM'() ->
{2,16,840,1,101,3,4,1,7}.

'id-aes192-CCM'() ->
{2,16,840,1,101,3,4,1,27}.

'id-aes256-CCM'() ->
{2,16,840,1,101,3,4,1,47}.

'id-aes128-GCM'() ->
{2,16,840,1,101,3,4,1,6}.

'id-aes192-GCM'() ->
{2,16,840,1,101,3,4,1,26}.

'id-aes256-GCM'() ->
{2,16,840,1,101,3,4,1,46}.




%%================================
%%  cea-aes128-CCM
%%================================
'enc_cea-aes128-CCM'('Params', Val, _RestPrimFieldName) ->
   enc_CCMParameters(Val, [<<48>>]);
'enc_cea-aes128-CCM'(smimeCaps,  Val, [H|T]) ->
   'enc_cea-aes128-CCM_smimeCaps'(H, Val, T).


'dec_cea-aes128-CCM'('Params', Bytes,_) ->
  Tlv = tlv_format(Bytes),
   dec_CCMParameters(Tlv, [16]);
'dec_cea-aes128-CCM'(smimeCaps, Bytes,[H|T]) ->
   'dec_cea-aes128-CCM_smimeCaps'(H, Bytes, T).

tlv_format(Bytes) when is_binary(Bytes) ->
  {Tlv,_} = ber_decode_nif(Bytes),
  Tlv;
tlv_format(Bytes) ->
  Bytes.



%%================================
%%  cea-aes192-CCM
%%================================
'enc_cea-aes192-CCM'('Params', Val, _RestPrimFieldName) ->
   enc_CCMParameters(Val, [<<48>>]);
'enc_cea-aes192-CCM'(smimeCaps,  Val, [H|T]) ->
   'enc_cea-aes192-CCM_smimeCaps'(H, Val, T).


'dec_cea-aes192-CCM'('Params', Bytes,_) ->
  Tlv = tlv_format(Bytes),
   dec_CCMParameters(Tlv, [16]);
'dec_cea-aes192-CCM'(smimeCaps, Bytes,[H|T]) ->
   'dec_cea-aes192-CCM_smimeCaps'(H, Bytes, T).




%%================================
%%  cea-aes256-CCM
%%================================
'enc_cea-aes256-CCM'('Params', Val, _RestPrimFieldName) ->
   enc_CCMParameters(Val, [<<48>>]);
'enc_cea-aes256-CCM'(smimeCaps,  Val, [H|T]) ->
   'enc_cea-aes256-CCM_smimeCaps'(H, Val, T).


'dec_cea-aes256-CCM'('Params', Bytes,_) ->
  Tlv = tlv_format(Bytes),
   dec_CCMParameters(Tlv, [16]);
'dec_cea-aes256-CCM'(smimeCaps, Bytes,[H|T]) ->
   'dec_cea-aes256-CCM_smimeCaps'(H, Bytes, T).




%%================================
%%  cea-aes128-GCM
%%================================
'enc_cea-aes128-GCM'('Params', Val, _RestPrimFieldName) ->
   enc_GCMParameters(Val, [<<48>>]);
'enc_cea-aes128-GCM'(smimeCaps,  Val, [H|T]) ->
   'enc_cea-aes128-GCM_smimeCaps'(H, Val, T).


'dec_cea-aes128-GCM'('Params', Bytes,_) ->
  Tlv = tlv_format(Bytes),
   dec_GCMParameters(Tlv, [16]);
'dec_cea-aes128-GCM'(smimeCaps, Bytes,[H|T]) ->
   'dec_cea-aes128-GCM_smimeCaps'(H, Bytes, T).




%%================================
%%  cea-aes192-GCM
%%================================
'enc_cea-aes192-GCM'('Params', Val, _RestPrimFieldName) ->
   enc_GCMParameters(Val, [<<48>>]);
'enc_cea-aes192-GCM'(smimeCaps,  Val, [H|T]) ->
   'enc_cea-aes192-GCM_smimeCaps'(H, Val, T).


'dec_cea-aes192-GCM'('Params', Bytes,_) ->
  Tlv = tlv_format(Bytes),
   dec_GCMParameters(Tlv, [16]);
'dec_cea-aes192-GCM'(smimeCaps, Bytes,[H|T]) ->
   'dec_cea-aes192-GCM_smimeCaps'(H, Bytes, T).




%%================================
%%  cea-aes256-GCM
%%================================
'enc_cea-aes256-GCM'('Params', Val, _RestPrimFieldName) ->
   enc_GCMParameters(Val, [<<48>>]);
'enc_cea-aes256-GCM'(smimeCaps,  Val, [H|T]) ->
   'enc_cea-aes256-GCM_smimeCaps'(H, Val, T).


'dec_cea-aes256-GCM'('Params', Bytes,_) ->
  Tlv = tlv_format(Bytes),
   dec_GCMParameters(Tlv, [16]);
'dec_cea-aes256-GCM'(smimeCaps, Bytes,[H|T]) ->
   'dec_cea-aes256-GCM_smimeCaps'(H, Bytes, T).




%%================================
%%  cea-aes256-GCM_smimeCaps
%%================================
'enc_cea-aes256-GCM_smimeCaps'('Type', Val, _RestPrimFieldName) ->
   {Val,0}.


'dec_cea-aes256-GCM_smimeCaps'('Type',  Bytes,_) ->
   Bytes.




%%================================
%%  cea-aes192-GCM_smimeCaps
%%================================
'enc_cea-aes192-GCM_smimeCaps'('Type', Val, _RestPrimFieldName) ->
   {Val,0}.


'dec_cea-aes192-GCM_smimeCaps'('Type',  Bytes,_) ->
   Bytes.




%%================================
%%  cea-aes128-GCM_smimeCaps
%%================================
'enc_cea-aes128-GCM_smimeCaps'('Type', Val, _RestPrimFieldName) ->
   {Val,0}.


'dec_cea-aes128-GCM_smimeCaps'('Type',  Bytes,_) ->
   Bytes.




%%================================
%%  cea-aes256-CCM_smimeCaps
%%================================
'enc_cea-aes256-CCM_smimeCaps'('Type', Val, _RestPrimFieldName) ->
   {Val,0}.


'dec_cea-aes256-CCM_smimeCaps'('Type',  Bytes,_) ->
   Bytes.




%%================================
%%  cea-aes192-CCM_smimeCaps
%%================================
'enc_cea-aes192-CCM_smimeCaps'('Type', Val, _RestPrimFieldName) ->
   {Val,0}.


'dec_cea-aes192-CCM_smimeCaps'('Type',  Bytes,_) ->
   Bytes.




%%================================
%%  cea-aes128-CCM_smimeCaps
%%================================
'enc_cea-aes128-CCM_smimeCaps'('Type', Val, _RestPrimFieldName) ->
   {Val,0}.


'dec_cea-aes128-CCM_smimeCaps'('Type',  Bytes,_) ->
   Bytes.




%%================================
%%  SMimeCaps
%%================================
getenc_SMimeCaps({2,16,840,1,101,3,4,1,6}) ->
   fun(Type, Val, _RestPrimFieldName) ->
      case Type of
         'Type' ->
           case Val of
             {asn1_OPENTYPE,Bin} when is_binary(Bin) ->
               {Bin,byte_size(Bin)}
           end
      end
   end;
getenc_SMimeCaps({2,16,840,1,101,3,4,1,7}) ->
   fun(Type, Val, _RestPrimFieldName) ->
      case Type of
         'Type' ->
           case Val of
             {asn1_OPENTYPE,Bin} when is_binary(Bin) ->
               {Bin,byte_size(Bin)}
           end
      end
   end;
getenc_SMimeCaps({2,16,840,1,101,3,4,1,26}) ->
   fun(Type, Val, _RestPrimFieldName) ->
      case Type of
         'Type' ->
           case Val of
             {asn1_OPENTYPE,Bin} when is_binary(Bin) ->
               {Bin,byte_size(Bin)}
           end
      end
   end;
getenc_SMimeCaps({2,16,840,1,101,3,4,1,27}) ->
   fun(Type, Val, _RestPrimFieldName) ->
      case Type of
         'Type' ->
           case Val of
             {asn1_OPENTYPE,Bin} when is_binary(Bin) ->
               {Bin,byte_size(Bin)}
           end
      end
   end;
getenc_SMimeCaps({2,16,840,1,101,3,4,1,46}) ->
   fun(Type, Val, _RestPrimFieldName) ->
      case Type of
         'Type' ->
           case Val of
             {asn1_OPENTYPE,Bin} when is_binary(Bin) ->
               {Bin,byte_size(Bin)}
           end
      end
   end;
getenc_SMimeCaps({2,16,840,1,101,3,4,1,47}) ->
   fun(Type, Val, _RestPrimFieldName) ->
      case Type of
         'Type' ->
           case Val of
             {asn1_OPENTYPE,Bin} when is_binary(Bin) ->
               {Bin,byte_size(Bin)}
           end
      end
   end;
getenc_SMimeCaps(_) ->
  fun(_, Val, _RestPrimFieldName) ->
    case Val of
      {asn1_OPENTYPE,Bin} when is_binary(Bin) ->
        {Bin,byte_size(Bin)}
    end
  end.

'getdec_SMimeCaps'({2,16,840,1,101,3,4,1,6}) ->
   fun(Type, Bytes, _RestPrimFieldName) ->
      case Type of
         'Type' ->
           case Bytes of
             Bin when is_binary(Bin) -> 
               {asn1_OPENTYPE,Bin};
             _ ->
               {asn1_OPENTYPE,ber_encode(Bytes)}
           end
      end
   end;
'getdec_SMimeCaps'({2,16,840,1,101,3,4,1,7}) ->
   fun(Type, Bytes, _RestPrimFieldName) ->
      case Type of
         'Type' ->
           case Bytes of
             Bin when is_binary(Bin) -> 
               {asn1_OPENTYPE,Bin};
             _ ->
               {asn1_OPENTYPE,ber_encode(Bytes)}
           end
      end
   end;
'getdec_SMimeCaps'({2,16,840,1,101,3,4,1,26}) ->
   fun(Type, Bytes, _RestPrimFieldName) ->
      case Type of
         'Type' ->
           case Bytes of
             Bin when is_binary(Bin) -> 
               {asn1_OPENTYPE,Bin};
             _ ->
               {asn1_OPENTYPE,ber_encode(Bytes)}
           end
      end
   end;
'getdec_SMimeCaps'({2,16,840,1,101,3,4,1,27}) ->
   fun(Type, Bytes, _RestPrimFieldName) ->
      case Type of
         'Type' ->
           case Bytes of
             Bin when is_binary(Bin) -> 
               {asn1_OPENTYPE,Bin};
             _ ->
               {asn1_OPENTYPE,ber_encode(Bytes)}
           end
      end
   end;
'getdec_SMimeCaps'({2,16,840,1,101,3,4,1,46}) ->
   fun(Type, Bytes, _RestPrimFieldName) ->
      case Type of
         'Type' ->
           case Bytes of
             Bin when is_binary(Bin) -> 
               {asn1_OPENTYPE,Bin};
             _ ->
               {asn1_OPENTYPE,ber_encode(Bytes)}
           end
      end
   end;
'getdec_SMimeCaps'({2,16,840,1,101,3,4,1,47}) ->
   fun(Type, Bytes, _RestPrimFieldName) ->
      case Type of
         'Type' ->
           case Bytes of
             Bin when is_binary(Bin) -> 
               {asn1_OPENTYPE,Bin};
             _ ->
               {asn1_OPENTYPE,ber_encode(Bytes)}
           end
      end
   end;
getdec_SMimeCaps(_) ->
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

collect_parts(TlvList) ->
    collect_parts(TlvList, []).

collect_parts([{_, L} | Rest], Acc) when is_list(L) ->
    collect_parts(Rest, [collect_parts(L) | Acc]);
collect_parts([{3, <<Unused,Bits/binary>>} | Rest], _Acc) ->
    collect_parts_bit(Rest, [Bits], Unused);
collect_parts([{_T, V} | Rest], Acc) ->
    collect_parts(Rest, [V | Acc]);
collect_parts([], Acc) ->
    list_to_binary(lists:reverse(Acc)).

collect_parts_bit([{3, <<Unused,Bits/binary>>} | Rest], Acc, Uacc) ->
    collect_parts_bit(Rest, [Bits | Acc], Unused + Uacc);
collect_parts_bit([], Acc, Uacc) ->
    list_to_binary([Uacc | lists:reverse(Acc)]).

decode_integer(Tlv, TagIn) ->
    Bin = match_tags(Tlv, TagIn),
    Len = byte_size(Bin),
    <<Int:Len/signed-unit:8>> = Bin,
    Int.

decode_octet_string(Tlv, TagsIn) ->
    Bin = match_and_collect(Tlv, TagsIn),
    binary:copy(Bin).

encode_integer(Val) ->
    Bytes =
        if
            Val >= 0 ->
                encode_integer_pos(Val, []);
            true ->
                encode_integer_neg(Val, [])
        end,
    {Bytes, length(Bytes)}.

encode_integer(Val, Tag) when is_integer(Val) ->
    encode_tags(Tag, encode_integer(Val));
encode_integer(Val, _Tag) ->
    exit({error, {asn1, {encode_integer, Val}}}).

encode_integer_neg(-1, [B1 | _T] = L) when B1 > 127 ->
    L;
encode_integer_neg(N, Acc) ->
    encode_integer_neg(N bsr 8, [N band 255 | Acc]).

encode_integer_pos(0, [B | _Acc] = L) when B < 128 ->
    L;
encode_integer_pos(N, Acc) ->
    encode_integer_pos(N bsr 8, [N band 255 | Acc]).

encode_length(L) when L =< 127 ->
    {[L], 1};
encode_length(L) ->
    Oct = minimum_octets(L),
    Len = length(Oct),
    if
        Len =< 126 ->
            {[128 bor Len | Oct], Len + 1};
        true ->
            exit({error, {asn1, too_long_length_oct, Len}})
    end.

encode_restricted_string(OctetList, TagIn) when is_binary(OctetList) ->
    encode_tags(TagIn, OctetList, byte_size(OctetList));
encode_restricted_string(OctetList, TagIn) when is_list(OctetList) ->
    encode_tags(TagIn, OctetList, length(OctetList)).

encode_tags(TagIn, {BytesSoFar, LenSoFar}) ->
    encode_tags(TagIn, BytesSoFar, LenSoFar).

encode_tags([Tag | Trest], BytesSoFar, LenSoFar) ->
    {Bytes2, L2} = encode_length(LenSoFar),
    encode_tags(Trest,
                [Tag, Bytes2 | BytesSoFar],
                LenSoFar + byte_size(Tag) + L2);
encode_tags([], BytesSoFar, LenSoFar) ->
    {BytesSoFar, LenSoFar}.

match_and_collect(Tlv, TagsIn) ->
    Val = match_tags(Tlv, TagsIn),
    case Val of
        [_ | _] = PartList ->
            collect_parts(PartList);
        Bin when is_binary(Bin) ->
            Bin
    end.

match_tags({T, V}, [T]) ->
    V;
match_tags({T, V}, [T | Tt]) ->
    match_tags(V, Tt);
match_tags([{T, V}], [T | Tt]) ->
    match_tags(V, Tt);
match_tags([{T, _V} | _] = Vlist, [T]) ->
    Vlist;
match_tags(Tlv, []) ->
    Tlv;
match_tags({Tag, _V} = Tlv, [T | _Tt]) ->
    exit({error, {asn1, {wrong_tag, {{expected, T}, {got, Tag, Tlv}}}}}).

minimum_octets(0, Acc) ->
    Acc;
minimum_octets(Val, Acc) ->
    minimum_octets(Val bsr 8, [Val band 255 | Acc]).

minimum_octets(Val) ->
    minimum_octets(Val, []).
