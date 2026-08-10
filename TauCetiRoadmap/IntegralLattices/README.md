# Roadmap: integral quadratic lattices

This roadmap develops integral and \(p\)-adic quadratic lattices from their basic
linear algebra through genera, spinor genera, mass formulae, Nikulin's theory, and theta
series. It consumes quadratic-space, class-field-theoretic, adelic-group, and analytic
infrastructure from their revised owners.

## Scope

This roadmap owns:

- integral lattices, Gram matrices, dual lattices, discriminant groups and forms
- overlattices and finite quadratic forms
- positive-definite reduction, minima, shells, automorphism groups, and finiteness
- \(\mathbf Z_p\)-lattices, Jordan decompositions, and the \(2\)-adic symbol calculus
- binary integral forms and Gauss composition
- genera, spinor genera, neighbor methods, and class sets
- Nikulin's embedding and uniqueness theorems
- unimodular classifications in the stated low ranks
- the Smith–Minkowski–Siegel mass formula
- theta series and their modular transformation
- LMFDB lattice-record semantics and certificates

It does not own:

- quadratic spaces over fields and Hasse–Minkowski
- general adelic groups and Tamagawa measures
- analytic \(L\)-functions beyond the Poisson/theta interface
- automorphic representation theory of orthogonal groups

## Dependencies and exported interfaces

The roadmap has four substantial suppliers: Quadratic Form Invariants, Global Quadratic Forms, Class Field Theory and Global Number Fields for orders, Adelic/Orthogonal groups for genus and mass, and L-functions for Poisson summation and theta.

| Supplier | Material consumed |
|---|---|
| Quadratic Form Invariants | local quadratic spaces and invariants |
| Global Quadratic Forms | global classification of rational quadratic spaces |
| Global Number Fields / Class Field Theory | orders, Picard groups, and ring class fields |
| Adelic Algebraic Groups / Orthogonal and Spin Groups | adelic stabilizers, spinor genera, Tamagawa volumes |
| L-functions | Poisson summation and theta transformation |

The principal interfaces exported to later roadmaps are:

- `IntegralLattice`, `dualLattice`, `discriminantForm`, and overlattice correspondences
- `genus`, `spinorGenus`, and neighbor graphs
- `nikulinPrimitiveEmbedding`
- `latticeMass` and `thetaSeries`
- `StoredGenusCertificate`

## Layers

### Layer 0: lattices and the bilinear/quadratic dictionary

Define integral lattices, Gram matrices, determinant, parity, signature, base change, and
unimodularity. Keep the quadratic and bilinear conventions separate over \(\mathbf Z\),
where division by \(2\) is unavailable.

**Dependencies.** Mathlib.

### Layer 1: duals, discriminant forms, and overlattices

Construct the dual lattice, discriminant group and bilinear/quadratic discriminant forms.
Prove the two overlattice correspondences, finite quadratic-form decomposition, and Milgram's
formula.

**Dependencies.** Layer 0 and Quadratic Form Invariants.

### Layer 2: positive-definite reduction

Develop minima, shells, successive minima, covolume, Minkowski and Hermite bounds,
automorphism groups, reduction, and finiteness of isometry classes with fixed rank and
determinant.

**Dependencies.** Layers 0–1.

### Layer 3: \(p\)-adic lattices and genus symbols

Construct Jordan splittings over \(\mathbf Z_p\), odd-prime and \(2\)-adic classification,
the corrected Conway–Sloane symbol calculus, and the local invariants which determine a genus.

**Dependencies.** Layers 0–1 and Quadratic Form Invariants.

### Layer B: binary forms, orders, and Gauss composition

Relate primitive binary forms of discriminant \(\Delta\) to proper ideal classes of the
quadratic order of discriminant \(\Delta\), using `Pic` or `NarrowPic` according to the sign.
Prove Gauss composition, reduction, class-number finiteness, and the class-field comparison
through the ring class field.

**Dependencies.** Layers 0–3, Global Number Fields, and Class Field Theory.

### Layer 5: genera, spinor genera, and neighbors

Identify genera with adelic double cosets, define spinor genera, prove Eichler's theorem in
its valid regime, and develop Kneser neighbors and connectedness/certificate results.

**Dependencies.** Layers 3–B, Global Quadratic Forms, and Orthogonal/Spin Groups.

### Layer 6: Nikulin theory

Prove existence and uniqueness criteria for indefinite even lattices from discriminant
forms, surjectivity to \(O(q_L)\), stabilization and splitting, primitive embeddings, and
the \(2\)-elementary classification with every rank and signature hypothesis visible.

**Dependencies.** Layers 1, 3–4.

### Layer 7: unimodular lattices in low rank

Classify the even unimodular positive-definite lattices in ranks \(8\) and \(16\), compute
the automorphism group of \(E_8\), and provide explicit isometries and nonisometry certificates.

**Dependencies.** Layers 2–5.

### Layer 8: mass formula

Construct local densities, adelic stabilizer measures, and prove the
Smith–Minkowski–Siegel mass formula from the Tamagawa volume. Use it, together with
neighbor calculations, to certify class numbers in low rank.

**Dependencies.** Layers 3–7 and Adelic/Orthogonal groups.

### Layer 9: theta series

Define lattice theta series, prove convergence and holomorphy, compute the dual-lattice and
covolume transformation, and identify the modular weight and level. State the vector-valued
form when the discriminant group is nontrivial.

**Dependencies.** Layers 1–3 and L-functions' Poisson/theta interface.

### Layer 10: database certificates

Define a certificate recording a Gram matrix, local genus data, automorphism order, mass,
theta coefficients, and explicit integral isometries where claimed. Distinguish a stored
value from a theorem certifying it.

**Dependencies.** Layers 0–9.

## Worked examples and acceptance checks

- \(E_8\), its discriminant form and automorphism group
- the two even unimodular rank-\(16\) lattices
- a binary form of positive discriminant where narrow and ordinary class groups differ
- a genus whose mass and neighbor graph certify its class number
- the modular transformation of the theta series of a unimodular lattice

## References

- J. Conway and N. Sloane, *Sphere Packings, Lattices and Groups*
- O. T. O'Meara, *Introduction to Quadratic Forms*
- V. Nikulin, papers on integral symmetric bilinear forms
- Y. Kitaoka, *Arithmetic of Quadratic Forms*

## Source proposals

This is roed-math PR #7 rewritten to consume the revised owners of orders, ring class fields, global quadratic forms, adelic groups, and theta analysis.
