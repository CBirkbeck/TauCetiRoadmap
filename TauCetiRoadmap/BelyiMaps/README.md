# Roadmap: Belyi maps and dessins d'enfants

This roadmap relates finite permutation triples, topological covers of the thrice-punctured
sphere, compact Riemann surfaces, algebraic covers, and the arithmetic Galois action. It
has three tracks—finite combinatorics, analytic/algebraic geometry, and arithmetic—and
states the interfaces between them explicitly.

General algebraic-curve theory, profinite group theory, and polynomial Galois computations
are consumed from their separate roadmaps.

## Scope

This roadmap owns:

- permutation triples, relabelling, monodromy groups, automorphisms, passports, and enumeration
- dessins as finite bipartite ribbon graphs and the triple/dessin dictionary
- triangle groups and their geometric trichotomy
- covers of the thrice-punctured sphere and the Riemann-existence correspondence
- topological compactification to branched covers and the induced complex structure
- algebraic Belyi pairs and the analytic–algebraic comparison
- Belyi's theorem and descent to a finite extension of the field of moduli
- the Galois action, branch-cycle classes, and the cyclotomic peripheral-power theorem
- LMFDB Belyi-record semantics and certificates

It does not own:

- general places, divisors, Riemann–Roch, and regular projective curves
- general profinite and pro-\(\ell\) groups
- general polynomial Galois-group algorithms
- numerical computation of Belyi maps

## Dependencies and exported interfaces

The finite track begins with Mathlib. The geometric track consumes Algebraic Curves and the accepted universal-cover and conformal-mapping roadmaps. The arithmetic track consumes Profinite/Pro-\(p\) Groups and Polynomial Galois Groups.

| Supplier | Material consumed |
|---|---|
| Algebraic Curves | regular projective curves, function fields, ramification, Riemann–Roch |
| Profinite and Pro-\(p\) Groups | profinite integers, exponentiation, free profinite and pro-ℓ groups |
| Polynomial Galois Groups | finite Galois actions and certificate vocabulary |
| Accepted Universal Covers / Conformal Mapping | covering classification and complex structures |

The principal interfaces exported to later roadmaps are:

- `PermutationTriple`, `Passport`, `Dessins`, and enumeration/counting theorems
- `FiberNumberedCover`, `PointedCover`, and the Riemann-existence equivalences
- `BelyiPair`, `fieldOfModuli`, and descent theorems
- `branchCycleClass`, `peripheralPower`, and the Galois-action theorem

## Layers

### Layer 0: permutation triples

Define ordered triples \((\sigma_0,\sigma_1,\sigma_\infty)\) with the chosen product
convention, transitivity, relabelling, monodromy, automorphisms, and genus. Distinguish
literal triples from simultaneous-conjugacy classes.

**Dependencies.** Mathlib finite groups and permutations.

### Layer 1: passports and blocks

Define ordered passports with cycle partitions and embedded monodromy group. Prove the
normalizer quotient, automorphism/stabilizer formulae, block decompositions, and
indecomposability criteria.

**Dependencies.** Layer 0.

### Layer 2: dessins

Construct finite bipartite ribbon graphs with cyclic orders and prove the equivalence with
transitive permutation triples. Derive Euler characteristic, faces, genus, and automorphism
groups.

**Dependencies.** Layers 0–1.

### Layer 3: enumeration and Frobenius counts

Give executable enumeration by degree and passport. Prove raw product-one character
formulae, impose generation, divide by the normalizer, and keep passport size distinct from
Galois-orbit counts.

**Dependencies.** Layers 0–2 and finite character theory.

### Layer 4: triangle groups

Construct spherical, Euclidean, and hyperbolic triangle groups, explicit matrix
representations in the hyperbolic case, and the quotient maps determined by a triple.

**Dependencies.** Layer 0 and accepted hyperbolic geometry.

### Layer 5: the thrice-punctured sphere

Construct the relevant fundamental group with canonical peripheral loops and prove their
product relation using van Kampen and winding numbers. Pin the convention against Mathlib's
path-concatenation and monodromy conventions.

**Dependencies.** Accepted Universal Covers and Contour Integration.

### Layer 6: unbranched covers and monodromy

Construct a cover from a discrete fundamental-group set and classify numbered, pointed,
and unnumbered finite covers respectively by literal triples, finite-index subgroups, and
simultaneous-conjugacy classes.

**Dependencies.** Layers 0 and 5.

### Layer 7: compactification to branched covers

Attach one point for each peripheral orbit, define local \(z\mapsto z^e\) charts, and prove
Hausdorffness, compactness, density of the unbranched locus, and uniqueness of the filled
cover.

**Dependencies.** Layers 2 and 6.

### Layer 8: complex structures and Riemann existence

Construct the complex structure on the compactification, identify the ribbon orientation,
and prove the analytic Riemann-existence correspondence between triples and holomorphic
branched covers of \(\mathbf P^1(\mathbf C)\).

**Dependencies.** Layer 7 and accepted Conformal Mapping.

### Layer 9: algebraic Belyi pairs

Define a Belyi pair as a regular projective curve in characteristic zero with a finite
separable map to \(\mathbf P^1\) branched over at most \(0,1,\infty\). Record local
data as pairs \((e,f)\), construct normalization of plane models, and compare analytification
with Layer 8.

**Dependencies.** Algebraic Curves and Layer 8.

### Layer 10: Belyi's theorem

Prove both directions of Belyi's theorem. For descent, follow a fixed source theorem by
the field-of-moduli and normalized-generator route, and conclude a model over a finite
extension of the field of moduli; do not conflate field of moduli with field of definition.

**Dependencies.** Layer 9 and Algebraic Curves' Riemann–Roch.

### Layer 11: fields of moduli and descent

Define stabilizers of a Belyi pair under \(\operatorname{Aut}(\mathbf C)\), the field of
moduli, the descent obstruction, and the special cases where descent to the field of
moduli holds. Allow genus-zero descended curves to be conics rather than \(\mathbf P^1\).

**Dependencies.** Layer 10.

### Layer 12: profinite fundamental groups and peripheral powers

Compare the topological and étale fundamental groups, construct tame inertia subgroups and
characters, and prove the finite-level Kummer identity
\[
\tilde\sigma\gamma\tilde\sigma^{-1}=\gamma^{\chi(\sigma)}.
\]
Use the profinite-integer and exponentiation APIs of Profinite/Pro-\(p\) Groups.

**Dependencies.** Layers 5–9 and Profinite/Pro-\(p\) Groups.

### Layer 13: the Galois action on dessins

Prove the class-by-class branch-cycle theorem, not the false assertion that a Galois
conjugate triple is simultaneously conjugate to its componentwise power. Define true
Galois orbit size and compare it carefully with stored embedding counts.

**Dependencies.** Layers 11–12 and Polynomial Galois Groups.

### Layer 14: database semantics

Specify what each stored record asserts: convention translation for the product relation,
passport size, monodromy, genus, geometry type, field of moduli, base field, and orbit data.
Each numerical field is accompanied by a certificate theorem or marked as unverified input.

**Dependencies.** Layers 0–13.

## Worked examples and acceptance checks

- enumeration of all triples through degree \(4\) and the first multi-class passport in degree \(5\)
- the dessin and monodromy of a simple rational Belyi map
- the Riemann-existence reconstruction from a nontrivial triple
- a field-of-moduli example which descends to a conic but not to \(\mathbf P^1\)
- an explicit finite branch-cycle computation showing why componentwise powers need not form a triple

## References

- S. Lando and A. Zvonkin, *Graphs on Surfaces and Their Applications*
- L. Schneps, ed., *The Grothendieck Theory of Dessins d'Enfants*
- J.-P. Serre, *Topics in Galois Theory*
- F. Köck, papers on fields of moduli of covers
- J. Stix, *Rational Points and Arithmetic of Fundamental Groups*
