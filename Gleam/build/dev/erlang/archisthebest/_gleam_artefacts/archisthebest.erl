-module(archisthebest).
-compile([no_auto_import, nowarn_unused_vars, nowarn_unused_function, nowarn_nomatch]).

-export([main/0]).

-spec main() -> nil.
main() ->
    gleam@io:println(<<"Arch is the best!"/utf8>>).
