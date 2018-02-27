
import system.io
variable [io.interface]
open nat io

/-
McCarthy 91 formal verification test case
see https://en.wikipedia.org/wiki/McCarthy_91_function
-/
meta def mninetyone : ℕ → ℕ 
| n := if n > 100 then n - 10 else mninetyone (mninetyone (n + 11))

meta def print_mninetyones : ℕ → io unit
| 0 := return ()
| (succ n) := print_mninetyones n >> put_str ("m91(" ++ to_string n ++ ") = "
                                              ++ to_string (mninetyone n) ++ "\n")

#eval mninetyone 1
#eval mninetyone 49
#eval mninetyone 100
#eval mninetyone 1000
#eval print_mninetyones 150
#print axioms mninetyone
