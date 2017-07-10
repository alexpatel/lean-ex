import system.io
variable [io.interface]
open io

/-
recurse infinitely
-/
meta def smash : ℕ → ℕ 
| n := smash n * 2

#reduce smash
-- wowie
#eval smash 2