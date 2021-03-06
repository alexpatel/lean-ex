constant mytype : Type 
constants a b : mytype
constant f : mytype → mytype
constant g : mytype → mytype → mytype

#check fun x : nat, x * 2
#check fun x : nat, if x > 2 then 1 else 0
#check λ x : mytype, x

#check λ x : mytype, λ y: mytype, g (f x) y 
constant j : mytype → ℕ 
#check λ x : mytype, j x
#check λ (x : mytype) (y : ℕ), j x
#check λ x y, g (f x) y

#check mytype
#check (λ x : mytype, x)
#reduce (λ x : mytype, x)

#reduce (ℕ, ℕ).1
#reduce (a, b).2
#reduce tt && tt
#reduce ff || ff

constant m : ℕ
#reduce m + 2
#eval 10 * 10