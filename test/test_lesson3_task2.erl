%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023
%%% @doc
%%% Returns the very first word.
%%% @end
%%% Created : 15 Sep 2023 1:16 PM
%%%-------------------------------------------------------------------
-module(test_lesson3_task2).
-author("alex").

%% API
-export([]).
-import(lesson3_task2, [words/1]).

-include_lib("eunit/include/eunit.hrl").

-ifdef(TEST).
last_test_() -> [
  ?_assert(words(<<" qwe">>) =:= [<<"qwe">>]),
  ?_assert(words(<<" asd ">>) =:= [<<"asd">>]),
  ?_assert(words(<<" asd zxc">>) =:= [<<"asd">>, <<"zxc">>]),
  ?_assert(words(<<" asd zxc ">>) =:= [<<"asd">>, <<"zxc">>]),
  ?_assert(words(<<" Й Є Г Ї "/utf8>>) =:= [<<208, 153>>, <<208, 132>>, <<208, 147>>, <<208, 135>>]),
  ?_assert(words(<<"">>) =:= []),
  ?_assert(words(<<>>) =:= [])
].
-endif.