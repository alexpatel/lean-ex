import system.io
variable [io.interface]
open io

/-
print hello string
-/
def hello_world : io unit :=
put_str "hello world from lean\n"

#eval hello_world
#print axioms hello_world