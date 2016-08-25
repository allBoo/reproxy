%%%-------------------------------------------------------------------
%% @doc reproxy public API
%% @end
%%%-------------------------------------------------------------------

-module(reproxy_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    AppSup = reproxy_sup:start_link(),
    bootstrap:start(),

    AppSup.

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
