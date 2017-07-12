namespace main
  constants p q : Prop 

  -- from p, q infer p
  theorem t1 : p → q → p := λ hp : p, λ hq : q, hp
  #print t1
  #check t1

  -- use assume instead of parameters
  theorem t1' : p → q → p := 
  assume hp : p,
  assume hq : q,
  hp
  #print t1'
  #check t1'

  -- show .., from ..
  theorem t1'' : p → q → p :=
  assume hp : p,
  assume hq : q,
  show p, from hp
  #print t1''
  #check t1''

  -- move lambda before equality
  theorem t4 (hp : p) (hq : q) : p := hp
  #print t4
  #check t4

  -- declare that hp is witness of p => p is axiom
  axiom hp : p

  -- use an existing theorem in a new one
  theorem t2 : q → p := t1 hp
  theorem t2' : q → p := t4 hp
  #check t2
  #check t2'
  #print t2

  -- for all quantifier
  -- "for all propositions p, q, infer p -> q -> p"
  theorem t3 (p q : Prop) (hp : p) (hq : q) : p := hp 

  -- apply on various propositions
  variables r s : Prop 
  variables h : r → s
  #check t3 r s
  #check t3 (r → s) (s → r)
  #check t3 (r → s) (s → r) h
end main

-- composition
namespace comp
  variables p q r s : Prop
  theorem t2 (h₁ : r → s) (h₂ : p → r) : p → s := 
  assume h₃ : p,
  show s, from h₁ (h₂ h₃)
end comp