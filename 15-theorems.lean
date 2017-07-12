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
  theorem t1'''' (hp : p) (hq : q) : p := hp
  #print t1''''
  #check t1''''

  -- declare that hp is witness of p => p is axiom
  axiom hp : p

  -- use an existing theorem in a new one
  theorem t2 : q → p := t1 hp
  theorem t2' : q → p := t1'''' hp
  #check t2
  #check t2'
  #print t2
end main