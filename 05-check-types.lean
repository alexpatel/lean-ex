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

#check a
#check c
#check (a + 0) * 100
#check ff && b && c
#check b || c

#check f
#check f'
#check f' (a, a)

#check g
#check g a a
#check g' a a
#check g'' a a

-- type mismatch
-- #check ff && a