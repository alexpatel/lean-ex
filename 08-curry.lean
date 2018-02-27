/-
Define the functions curry and uncurry , as described in Section 2.4
-/


--TODO:write curry
def curry (α β γ : Type) (f : α × β → γ) : α → β → γ := sorry

--TODO:write uncurry
def uncurry (α β γ : Type) (f : α → β → γ) : α × β → γ := sorry
