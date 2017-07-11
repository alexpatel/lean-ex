namespace myspace
  universe u
  variable α : Type 
  constant list : Type u → Type u 
  variable a : α
  variables l1 l2 l3 : list α 

  constant cons : Π {α : Type u}, α → list α → list α 
  constant nil : Π {α : Type u}, α

  #check nil
  #check cons
  #check l1
  #check list

  #check cons α nil

  def identity {α : Type u} (x : α) := x
  #check identity
  #check identity 0
  #eval identity 0
end myspace
