section useful
  variables (α β γ : Type)
  variables (j : α → β)
  def compose (g : α → β) (f : β → γ) (x : α) : γ := f (g x)
  #check γ
end useful

-- fails out of scope
-- #check γ 

namespace myspace
  variable γ : Type 
  variable f : ℕ → ℕ 
  #check f 
  #check γ 
end myspace

#check list
#check list.any
open list
#check any
