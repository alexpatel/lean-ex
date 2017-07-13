
-- http://page.mi.fu-berlin.de/cbenzmueller/papers/C44.pdf

namespace main
  -- α is type of individuals, β is type of worlds
  variables (i u : Type)  

  -- accessibility relation
  variable (r : i → i → Prop)  

  -- type of modal propositions
  constant o : i → Prop

  -- modal connectives
  /-
  def mnot (p : o) (w : i) : Prop := p w
  def mand (p q : o) (w : i) : Prop := p w ∧ q w
  def mor (p q : o) (w : i) : Prop := p w ∨ q w
  def mimplies (p q : o) (w : i) : Prop : (p w) → (q w)
  def mimplies (p q : o) (w : i) : Prop : (p w) ↔ (q w)
  def mequal (x y : u) (w : i) : Prop : x = y
  -/

  -- modal quantifiers
  -- def A
  -- def E

  -- modal operators
  -- def box
  -- def diamond

  -- validity
  -- def V

  -- tactics
  -- box_i - introduce box - from p infer box p
  -- box_elim - eliminate box - from box p infer p
  -- dia_e - eliminate diamond
  -- dia_i - reduces diam p to p and enforce that world is reachable
  -- mv - modal validity - replaces goal V p with a goal of form (p w)

  -- lemmas
  -- theorem mp_dia - modus ponens with modal operators
  -- theorem not_dia_box_not - push negations inside modalities

  -- working with K
  -- theorem K
  -- axiom reflexivity
  -- axiom symmetry
  -- axiom transitivity
  -- theorem T
  -- theorem collapse (in S5, dia dia box p to box p)
end main