%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023
%%% @doc
%%% Maps String to List of Words w/ Specified Delimiter
%%% @end
%%% Created : 05 Sep 2023 1:16 PM
%%%-------------------------------------------------------------------
-module(lesson3_task3).
-author("alex").

%% API
-export([
  split/2     % <<"Col1-:-Col2-:-Col3-:-Col4-:-Col5">> -> [<<"Col1">>, <<"Col2">>, <<"Col3">>, <<"Col4">>, <<"Col5">>]
]).

split(String, Delimiter) ->
  reverse(split(String, Delimiter, len(Delimiter), <<>>, [])).
split(<<>>, <<>>, _, _, _) -> [];
split(String, <<>>, _, _, _) -> [String];
split(<<>>, _, _, <<>>, Result_list) -> Result_list;
split(<<>>, _, _, Word, Result_list) -> [Word | Result_list];
split(String, D, DL, Word, Result_list) ->
  case String of
    <<X:DL/binary, Rest/binary>> when X =:= D, Word =:= <<>> -> split(Rest, D, DL, <<>>, Result_list);
    <<X:DL/binary, Rest/binary>> when X =:= D -> split(Rest, D, DL, <<>>, [Word | Result_list]);
    <<H, Rest/binary>> -> split(Rest, D, DL, <<Word/binary, H>>, Result_list);
    <<H>> -> split(<<>>, D, DL, <<>>, [H | Result_list])
  end.

reverse(L) ->
  reverse(L, []).
reverse(L, R) ->
  case L of
    [H | []] -> [H | R];
    [H | T] -> reverse(T, [H | R]);
    [] -> R
  end.

len(L) ->
  len(L, 0).
len(L, N) ->
  case L of
    <<_, T/binary>> -> len(T, N + 1);
    _ -> N
  end.