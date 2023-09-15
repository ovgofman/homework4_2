%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023
%%% @doc
%%% Returns the very first word.
%%% @end
%%% Created : 15 Sep 2023 1:16 PM
%%%-------------------------------------------------------------------
-module(test_lesson3_task1).
-author("alex").

%% API
-export([]).
-import(lesson3_task1, [first_word/1]).

-include_lib("eunit/include/eunit.hrl").

-ifdef(TEST).
last_test_() -> [
  ?_assert(first_word(<<"  qwe">>) =:= <<"qwe">>),
  ?_assert(first_word(<<" asd ">>) =:= <<"asd">>),
  ?_assert(first_word(<<"zxc ">>) =:= <<"zxc">>),
  ?_assert(first_word(<<"їхж ">>) =:= <<209, 151, 209, 133, 208, 182>>),
  ?_assert(first_word(<<" єжд ">>) =:= <<209, 148, 208, 182, 208, 180>>),
  ?_assert(first_word(<<"">>) =:= <<>>),
  ?_assert(first_word(<<>>) =:= <<>>)
].
-endif.