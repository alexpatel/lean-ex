# Questions for Ming

- Can you prove using type systems that "while 1 {continue;}" does not terminate?
- Dependent types - other than Pi and Sigma, what kinds of dependent types are
there?
  - think about dependent types list example as list > type rather than type > list
  - to prove a theorem, express theorem as a type, then say there is a proof
  which according to CH means you just have to write a program that
  inhabitsthe type of the theorem
  - operators can be declared beause of CoC 
- Can I do this all with OOP in Java - like C-H correspondence, proofs as types etc.?
  - have to implement your language to do this, it's only true over restricted subset
  - CIC/COC make it so that everything will reduce down into the core, things
  evaluate to a distinct type
- Can you do the kinds of things that are demonstrated in Lean in any functional
programming language?
  - no, have to be normalizing and have strongly dependent types
- Can you verify that a program doesn't divide by 0 using type systems?
  - you can, just not with the type system in TAPL
- What capabilities features can't be captured with this?
- What other formal methods than type systesm could be useful for barrelfish?
- I don't understand implicit arguments, why do {p : Prop} and p : Prop allow
for such different syntaxes?
- I kind of understand that \rightarrow and "implies" are equivalent by C-H
correspondence, but can you just explain this in your own words for this
example, specifically - like implies is a function of type Prop -> Prop and how
does instantiation come into play here?
- When I run lean, how much of what it is doing is type checking and how much is
general computation?
- In Coq, you compile to AST that is parsed by OCaml, it requires
interactivity, the CH correspondence has be used more explicitly
  - so you can very explicitly domain specific logics 
