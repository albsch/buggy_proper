-module(prop_ll).

-include_lib("proper/include/proper.hrl").
-include_lib("eunit/include/eunit.hrl").

-export([prop_bug/0]).

prop_bug() ->
  ?FORALL(L1, atom(), 
    ?EXISTS(L2, atom(), 
      L1 =:= L2
    )
  ).