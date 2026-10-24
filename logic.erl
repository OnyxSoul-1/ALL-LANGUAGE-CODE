%% 50 - Erlang - Fault-Tolerant Distributed Telecom Logic
-module(logic).
-export([start/0, ping/2]).

ping(0, Pid) -> Pid ! finished;
ping(N, Pid) -> Pid ! {ping, N}, ping(N - 1, Pid).

start() ->
    io:format("Erlang: Fault-Tolerant Distributed Telecom Logic online.~n"),
    Self = self(),
    spawn(fun() -> ping(2, Self) end),
    receive {ping, N} -> io:format("  received ping ~p~n", [N]) end,
    receive finished -> io:format("  telecom link stable.~n") end,
    ok.
