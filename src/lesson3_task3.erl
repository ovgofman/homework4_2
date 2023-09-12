%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023
%%% @doc
%%%
%%% @end
%%% Created : 05 Sep 2023 1:16 PM
%%%-------------------------------------------------------------------
-module(lesson3_task3).
-author("alex").

%% API
-export([
  split/2     % <<"Col1-:-Col2-:-Col3-:-Col4-:-Col5">> -> [<<"Col1">>, <<"Col2">>, <<"Col3">>, <<"Col4">>, <<"Col5">>]
]).


split(Text, Delimiter) ->
  loop(Text, Delimiter, []).

loop(T, Delimiter, R) ->
  case T of
    <<X:3/binary, T/binary>> when X =:= Delimiter -> X;
    _ -> 2
  end.


%% @spec 1. Returns the very last elem of the list
%%last(L) ->
%%  case L of
%%    [H | []] -> H;
%%    [_ | T] -> last(T);
%%    _ -> []
%%  end.
