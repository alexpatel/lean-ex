constant f : ℕ → ℕ 
def foo : (ℕ → ℕ) → ℕ := λ f, f 0 
def foo' := λ f : ℕ → ℕ, f 0
#check foo
#print foo
#check foo'
#print foo'
#check foo f
#check foo' f 

def selfcompose := λ (f: ℕ → ℕ) (x : ℕ), f (f x)
#check selfcompose f 0 

def square : ℕ → ℕ := λ x, x * x
#check square 
#check square 2
#eval square 2
#reduce square 2

def compose (α β γ : Type) (x : β → α) (y : γ  → β) (z : γ) : α := x (y z)
#check compose

def t (x : ℕ) := let y := x + x in y * y 
#check t 4
#reduce t 4