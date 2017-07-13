namespace forall_conjunct_left
  variables (α : Type) (p q : α → Prop)
  example : (∀ x : α, p x ∧ q x) → ∀ y : α, p y :=
    assume h : ∀ x : α , p x ∧ q x,
    take k : α, 
    show p k, from (h k).left
end forall_conjunct_left

namespace forall_rel_trans
  variables (α : Type) (r : α → α → Prop)
  variable trans_r : ∀ x y z, r x y → r y z → r x z

  variables a b c : α 
  variables (hab : r a b) (hbc : r b c)

  #check trans_r
  #check trans_r a b c
  #check trans_r a b c hab 
  #check trans_r a b c hab hbc
end forall_rel_trans

namespace forall_rel_trans_impl
  variables (α : Type) (r : α → α → Prop)
  variable trans_r : ∀ {x y z}, r x y → r y z → r x z

  variables a b c : α 
  variables (hab : r a b) (hbc : r b c)

  #check trans_r
  #check trans_r hab 
  #check trans_r hab hbc
end forall_rel_trans_impl

namespace forall_equiv 
  variables (α : Type) (r : α → α → Prop)

  variable reflex_r : ∀ x, r x x
  variable symm_r : ∀ {x y}, r x y → r y x
  variable trans_r : ∀ {x y z}, r x y → r y z → r x z

  example (a b c d : α) (hab : r a b) (hcb : r c b) (hcd : r c d) : r a d :=
  trans_r (trans_r hab (symm_r hcb)) hcd
end forall_equiv