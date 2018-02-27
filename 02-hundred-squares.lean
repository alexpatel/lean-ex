import system.io
variable [io.interface]
open io nat

/-
print square of every integer from n to 0
-/
def print_squares : ℕ → io unit
| 0 := return ()
| (succ n) := print_squares n >>
              put_str (to_string n ++ "^2 = " ++ to_string (n * n)
                       ++ "\n")

#eval print_squares 32
#print axioms print_squares
