-- a is a natural number
constant a : nat  

-- b and c are booleans
constants b c : bool

-- functions
constant f : ℕ → ℕ
constant f' : ℕ × ℕ → ℕ 

constant g : ℕ → nat → ℕ 
constant g' : (ℕ → nat) → ℕ 
constant g'' : ℕ → (nat → ℕ )

-- types
constants α β : Type 
constants γ : Type → Type 

-------------------------------

#check a
#check c
#check (a + 0) * 100
#check ff && b && c
#check b || c

-- type mismatch
-- #check ff && a

#check f
#check f'
#check f' (a, a)

#check g
#check g a a
#check g' a a
#check g'' a a

#check (a, a).1
#check (a, b).2

#check ℕ × ℕ → bool
#check bool → (ℕ → ℕ)

#check α
#check β 
#check γ α 
#check γ ℕ 

#check prod 
#check prod nat nat

#check list
#check list α
#check list ℕ

#check Type
#check Type 1
#check Type 2