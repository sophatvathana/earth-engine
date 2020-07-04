-module(engine).
-behaviour(application).

-export([start/0, start_link/0, stop/0]).

start_link() ->
    {{application}}_sup:start_link().

start() ->
    application:start({{application}}).

stop() ->
    application:stop({{application}}).