# 56 - Nim - Expressive Metaprogramming Module
import macros

macro expandArena(n: static[int]): untyped =
  result = newLit("[Nim] Expressive Metaprogramming Module expanded at compile time: " & $n)

echo expandArena(56)
