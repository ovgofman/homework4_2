%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023
%%% @doc
%%%
%%% @end
%%% Created : 05 Sep 2023 1:16 PM
%%%-------------------------------------------------------------------
-module(lesson3_task4).
-author("alex").

%% API
-export([
  last/1  % [a,b] -> b
]).



%%decode(Json, To) -> erlang:error(not_implemented).



%% @spec 1. Returns the very last elem of the list
last(L) ->
  case L of
    [H | []] -> H;
    [_ | T] -> last(T);
    _ -> []
  end.
