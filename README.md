# LEAN Prover examples

These are exercises for learning the [LEAN](https://leanprover.github.io/)
programming language originating from:
- [Programming in Lean](https://leanprover.github.io/programming_in_lean/programming_in_lean.pdf)
- [Logic and Proof](https://leanprover.github.io/logic_and_proof/logic_and_proof.pdf)
- [Theorem Proving in Lean](https://leanprover.github.io/theorem_proving_in_lean/theorem_proving_in_lean.pdf)

# hacking notes

7/10/17
- Use `brew install lean` to get LEAN on MacOS, it puts the executable in at
`/usr/local/bin/lean`.
- You need to use an IDE with support. If you don't already know emacs, LEAN
+ VS Code >>>>> LEAN + Emacs.
- `lean` executable doesn't print help string if you give it any arguments.
- *Programming in Lean* has one chapter with some basic LEAN examples, 4
blank chapters, and then only a completed chapter on monads. Lol, moving on.

7/11/17
- This is very different from imperative programming, which is about the
manipulation of data using data structures and algorithms built up from a
small set of instructions. If I am understanding correctly, programs are
expressed by the checking of the type of a dependent typed object, so instead
of having "variables" referencing data you have types, and then by defining
the dependence relations within the type hierarchy you can write computer
programs. Rad.