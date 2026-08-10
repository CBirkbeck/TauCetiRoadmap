# Roadmap: quadratic forms and their cohomological invariants

This roadmap develops the algebraic and local arithmetic of regular quadratic forms over
fields in which \(2\) is invertible.  It includes Witt theory, quaternion and Brauer
invariants, local classification including the dyadic case, and the comparison with
degree-one and degree-two Galois cohomology.  Global local-to-global theorems belong to the
separate Global Quadratic Forms roadmap.

## Scope

This roadmap owns:

- diagonalization, chain equivalence, Witt decomposition and cancellation
- the Witt group and Witt ring, the fundamental ideal, and low Pfister powers
- quaternion algebras and their Brauer classes
- dimension, discriminant, signed discriminant, Hasse invariant, and Clifford invariant
- quadratic defect and the Hilbert norm-residue symbol over local fields
- classification of quadratic forms over nonarchimedean local fields, including residue characteristic \(2\)
- the comparison of \(\operatorname{Br}(K)[2]\) with \(H^2(G_K,\mu_2)\)
- Stiefel–Whitney classes \(w_1,w_2\), the cup–norm theorem, and quadratic transfer formulae

It does not own:

- Hasse–Minkowski and classification over number fields
- integral lattices and genera
- orthogonal and spin algebraic groups
- the Milnor conjecture in degrees above those explicitly used

## Dependencies and exported interfaces

The roadmap consumes local arithmetic from Local Fields, continuous cohomology from Profinite Cohomology, and the local invariant and norm-residue maps from Class Field Theory.

| Supplier | Material consumed |
|---|---|
| Profinite Cohomology | Kummer classes, cup products, restriction, corestriction, Evens norm |
| Local Fields and Ramification | valuations, unit filtrations, square classes, ramification data |
| Class Field Theory | local Brauer invariant, local norm-residue map, local duality |
| Mathlib / accepted semisimple algebra roadmap | central simple algebras and Brauer groups |

The principal interfaces exported to later roadmaps are:

- `wittRing`, `fundamentalIdeal`, and Pfister-form generators
- `quaternionClass`, `hasseInvariant`, `cliffordInvariant`
- `hilbertSymbol` and `classify_local_quadraticForm`
- `w1`, `w2`, `cup_eq_zero_iff_norm`, and the quadratic transfer formula

## Layers

### Layer 0: regular forms and the diagonal calculus

Define isometry classes of regular quadratic forms without choosing a basis.  Prove
diagonalization, elementary transformations, Witt's chain equivalence, orthogonal sums,
scaling, and base change.

**Dependencies.** Mathlib.

### Layer 1: Witt decomposition and cancellation

Develop hyperbolic planes, isotropic splitting, anisotropic kernels, Witt decomposition,
and Witt cancellation.  Include behavior in dimensions \(0,1,2\).

**Dependencies.** Layer 0.

### Layer 2: quaternion algebras and norm equations

Construct \((a,b)_K\), prove central simplicity, the four standard presentations, and
the equivalence between splitting, a norm equation from \(K(\sqrt a)\), and isotropy of
the associated ternary form.

**Dependencies.** Layers 0–1 and the Brauer-group substrate.

### Layer 3: elementary invariants

Define dimension, discriminant, signed discriminants, and their formulas under orthogonal
sum and scaling.  Fix one convention and provide translation lemmas to the other standard
conventions.

**Dependencies.** Layers 0–1.

### Layer 4: the Witt ring and the fundamental ideal

Construct the Witt ring, prove its universal properties, identify the fundamental ideal,
and prove generation of \(I\), \(I^2\), and the low-degree Pfister identities needed later.

**Dependencies.** Layers 1 and 3.

### Layer 5: Hasse and Clifford invariants

Define the Brauer-valued Hasse and Clifford invariants on isometry classes.  Prove the
orthogonal-sum formulae, basis independence, and comparison between even Clifford algebras
and quaternion classes.

**Dependencies.** Layers 2–4.

### Layer 6: local square classes and the Hilbert symbol

For a nonarchimedean local field with \(2\) invertible, compute square classes, define the
Hilbert symbol by the norm equation, and derive its bilinearity, symmetry, nondegeneracy,
and explicit formulas.  Include the full dyadic classification.

**Dependencies.** Local Fields and Layers 2–5.

### Layer 7: local classification

Prove that regular forms over a characteristic-zero nonarchimedean local field are
classified by dimension, discriminant, and Hasse invariant.  State existence and uniqueness
and treat the dyadic cases without odd-prime shortcuts.

**Dependencies.** Layer 6.

### Layer 8: cohomological invariants

Use Kummer theory and the Brauer comparison to construct \(w_1,w_2\).  Prove that
\(w_1\) is the discriminant class and that \(w_2\) matches the chosen Clifford/Hasse
normalization.  Prove
\[
(a)\cup(b)=0\iff b\in N_{K(\sqrt a)/K}K(\sqrt a)^\times.
\]

**Dependencies.** Layers 2, 5–7, Profinite Cohomology, and Class Field Theory.

### Layer 9: quadratic transfer

Develop Scharlau transfer for a separable quadratic extension and prove the relative
degree-one and degree-two Stiefel–Whitney formulae.  State the result on isometry classes,
with the diagonal formula as a computational corollary.

**Dependencies.** Layers 4, 8 and the index-two Evens norm.

## Worked examples and acceptance checks

- the complete square-class and Hilbert-symbol tables over \(\mathbf Q_2\)
- the quaternion splitting criterion over \(\mathbf R\) and \(\mathbf Q_p\)
- classification of all regular binary and ternary forms over a local field
- the cup–norm theorem for a quadratic extension

## References

- T. Y. Lam, *Introduction to Quadratic Forms over Fields*
- O. T. O'Meara, *Introduction to Quadratic Forms*
- J.-P. Serre, *A Course in Arithmetic*
- M.-A. Knus, *Quadratic and Hermitian Forms over Rings*
