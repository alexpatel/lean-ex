namespace hidden
  universe u
  constant list : Type u → Type u 

  -- cons takes a type and a list of that type and adds an element to that list
  constant cons : Π α: Type u, (α → list α) → list α

  -- concatenate two list
  constant append : Π α : Type u, list α → list α → list α 

  -- get head of list
  constant head : Π α : Type u, list α → α 

  #check cons
  #check @cons

  #check append
  #check @append

  #check head
  #check @head
end hidden

open list
#check @head
#check @cons
#check @append

variables α : Type
variable β : α → Type
variable a : α 
variable b : β a
#check sigma.mk a b
#check (sigma.mk a b).1
#check (sigma.mk a b).2