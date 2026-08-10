# Roadmap: Galois groups of polynomials

This roadmap develops the permutation-theoretic and computational tools used to determine
the Galois group of a polynomial. Number-Field Arithmetic supplies Dedekind factorization
and Frobenius cycle types. This roadmap owns the root action, blocks, resolvents, transitive
group labels, certificate checking, and the realization of \(S_n\) over \(\mathbf Q\).

## Scope

This roadmap owns:

- the permutation action of `Polynomial.Gal` on roots and its orbit/factor dictionary
- blocks, imprimitivity, wreath products, and recognition theorems
- the intermediate-field interpretation of blocks and primitivity
- the discriminant square test outside characteristic \(2\)
- general orbit resolvents and the classical quartic and quintic resolvents
- factor-degree and Frobenius-cycle data consumed from Number-Field Arithmetic
- complete transitive-group labels through degree \(5\) and reference data through degree \(11\)
- a sound certificate checker
- the construction of polynomials with Galois group \(S_n\) over \(\mathbf Q\)

It does not own:

- Dedekind factorization, discriminant ideals, and ramification theory
- Chebotarev density
- completeness of transitive-group tables above degree \(5\)
- Hilbert irreducibility and general \(A_n\) realizations

## Dependencies and exported interfaces

The only roadmap dependency is Number-Field Arithmetic, which owns the factorization-type/Frobenius-cycle theorem.

| Supplier | Material consumed |
|---|---|
| Number-Field Arithmetic | Dedekind factorization and `exists_gal_fullCycleType_eq_factorizationType` |
| Mathlib | `Polynomial.Gal`, permutation groups, separability and discriminants |

The principal interfaces exported to later roadmaps are:

- `fullCycleType`, `factorDegrees`, and the Frobenius membership theorem
- block and resolvent constructions
- `TransitiveGroupLabel`, reference groups, and certificate soundness
- `exists_polynomial_gal_equiv_symmetricGroup`

## Layers

### Layer 0: the root permutation dictionary

Construct the root action, prove that orbits correspond to irreducible factors, and define
cycle type including fixed points. Prove functoriality under field and polynomial
isomorphisms.

**Dependencies.** Mathlib.

### Layer 1: blocks and imprimitivity

Develop blocks, block systems, wreath products, primitive actions, and Jordan-type
recognition theorems with sharp hypotheses and counterexamples.

**Dependencies.** Layer 0.

### Layer 2: blocks and intermediate fields

Relate blocks of the root action to intermediate fields in the splitting field and prove
that primitivity corresponds to the absence of an appropriate proper intermediate field.

**Dependencies.** Layers 0–1.

### Layer 3: the discriminant test

Prove the root-product formula and, in characteristic different from \(2\), the equivalence
between square discriminant and containment in \(A_n\). Record the failure in
characteristic \(2\).

**Dependencies.** Layer 0.

### Layer 4: resolvents

Define orbit resolvents for a polynomial invariant, prove their factorization and
stabilizer interpretation, and give complete decision tables for the quartic cubic
resolvent and the chosen quintic sextic resolvent.

**Dependencies.** Layers 0–3.

### Layer 5: Frobenius cycle types

Define the factor-degree carrier over finite fields and prove the finite-field orbit lemma.
Consume Number-Field Arithmetic's Dedekind theorem to show that unramified factorization
types occur as cycle types in the Galois group.

**Dependencies.** Layer 0 and Number-Field Arithmetic.

### Layer 6: transitive groups in degrees at most five

Construct and classify the transitive subgroups of \(S_n\) for \(n\le5\), with the `nTj`
labels and recognition predicates used by the certificate checker.

**Dependencies.** Layers 1–5.

### Layer 7: reference groups in degrees six to eleven

Store explicit permutation groups and label metadata. Make no completeness claim. A
certificate may use a reference group only after proving conjugacy to it.

**Dependencies.** Layers 1 and 6.

### Layer 8: certificate checking

Define certificate data, a Boolean or decidable checker, and a soundness theorem. Separate
soundness from existence and from termination of any search procedure.

**Dependencies.** Layers 3–7.

### Layer 9: \(S_n\) over \(\mathbf Q\)

Construct, for every \(n\), a polynomial over \(\mathbf Q\) whose reductions at selected
primes force a long cycle, a transposition, and a suitable prime cycle, and conclude that
the Galois group is \(S_n\).

**Dependencies.** Layers 1, 3, 5–6.

## Worked examples and acceptance checks

- the complete quartic resolvent decision table
- the degree-\(5\) transitive-group classification
- a certificate for a named \(S_5\)-quintic
- the three-prime construction of \(S_n\)

## References

- J.-P. Serre, *Topics in Galois Theory*
- H. Cohen, *A Course in Computational Algebraic Number Theory*
- B. L. van der Waerden, *Modern Algebra*
- L. Soicher and J. Cannon, computational permutation-group references
