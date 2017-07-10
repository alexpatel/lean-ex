
import system.io
variable [io.interface]
open nat io

/-
McCarthy 91 formal verification test case
see https://en.wikipedia.org/wiki/McCarthy_91_function
-/
meta def mninetyone : ℕ → ℕ 
| n := if n > 100 then n - 10 else mninetyone (mninetyone (n + 11))

#eval mninetyone 1
#eval mninetyone 49
#eval mninetyone 100
#eval mninetyone 1000
#print axioms mninetyone