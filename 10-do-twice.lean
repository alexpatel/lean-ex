def do_twice (f : ℕ → ℕ) (x : ℕ ) : ℕ := f (f x)
def square (x : ℕ) : ℕ := x * x 

#check do_twice
#check do_twice square 
#check do_twice square 2
#eval do_twice square 2
#print axioms do_twice
#print axioms do_twice