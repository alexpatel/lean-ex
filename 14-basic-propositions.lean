
namespace main 
  -- connectives
  constant and : Prop -> Prop -> Prop
  constant or :  Prop -> Prop -> Prop
  constant not : Prop -> Prop
  constant implies : Prop -> Prop -> Prop
  variables p q r : Prop
  #check and p q 
  #check or p (not q)
  #check not (implies p q)
  #check implies p (not (implies q (and r q)))

  -- proofs
  constant Proof : Prop -> Type
  variables s t : Prop
  constant and_comm : Π p q : Prop , Proof (implies (and p q) (and q p))
  constant or_comm : Π p q : Prop, Proof (implies (or p q) (or q p))
  #check and_comm s t
  #check or_comm s t

  -- modus ponens
  constant fmp : Π p q : Prop, Proof (implies (and (implies p q) p) q)
  constant modus_ponens (p q : Prop)  : (Proof p → Proof q) → Proof p → Proof q 
  #check fmp (implies s t) t
  #check modus_ponens 
end main