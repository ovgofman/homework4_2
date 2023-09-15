%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023
%%% @doc
%%% Returns the very first word.
%%% @end
%%% Created : 15 Sep 2023 1:16 PM
%%%-------------------------------------------------------------------
-module(test_lesson3_task3).
-author("alex").

%% API
-export([]).
-import(lesson3_task3, [split/2]).

-include_lib("eunit/include/eunit.hrl").

-ifdef(TEST).
last_test_() -> [
  ?_assert(split(<<"Col1-:-Col2-:-Col3-:-Col4-:-Col5">>, <<"-:-">>) =:= [<<"Col1">>, <<"Col2">>, <<"Col3">>, <<"Col4">>, <<"Col5">>]),
  ?_assert(split(<<>>, <<>>) =:= []),
  ?_assert(split(<<"qwe">>, <<>>) =:= [<<"qwe">>]),
  ?_assert(split(<<"192.168.0.1">>, <<".">>) =:= [<<"192">>, <<"168">>, <<"0">>, <<"1">>]),
  ?_assert(split(<<"Ї==Є==І==Ж=="/utf8>>, <<"==">>) =:= [<<208, 135>>, <<208, 132>>, <<208, 134>>, <<208, 150>>])
].
-endif.