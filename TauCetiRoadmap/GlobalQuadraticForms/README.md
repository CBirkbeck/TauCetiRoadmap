# Roadmap: quadratic forms over number fields

This roadmap proves the local–global theory of quadratic forms over number fields.  It
starts from the local classification and Hilbert reciprocity supplied elsewhere and proves
Hasse–Minkowski, representation and isometry theorems, and the resulting classification by
global invariants.  The statements, rather than the proof technique, determine ownership:
they are about quadratic forms and therefore live here.

## Scope

This roadmap owns:

- localization of quadratic forms at finite, real, and complex places
- global discriminant, signatures, and Hasse invariants
- Hasse–Minkowski for isotropy
- the local–global theorem for representation of a scalar
- the local–global theorem for isometry of regular forms
- classification of quadratic spaces over a number field
- the Hasse principle for the relevant orthogonal torsors

It does not own:

- local classification and Hilbert symbols
- integral lattices and spinor genera
- strong approximation and Tamagawa measures

## Dependencies and exported interfaces

The roadmap consumes the complete local theory from Quadratic Form Invariants, weak approximation and places from Global Number Fields, and Hilbert reciprocity from Class Field Theory.

| Supplier | Material consumed |
|---|---|
| Quadratic Form Invariants | local classification, discriminant and Hasse invariants |
| Class Field Theory | Hilbert product formula and cyclic Hasse norm theorem |
| Global Number Fields | weak approximation and completions |

The principal interfaces exported to later roadmaps are:

- `IsLocallyIsotropic`, `LocallyEquivalent`
- `hasseMinkowski_isotropic`, `hasseMinkowski_represents`, `hasseMinkowski_equivalent`
- the global classification theorem and the corresponding \(H^1\)-kernel statement

## Layers

### Layer 0: places and localizations

Define base change of a quadratic form to every finite and real completion.  Prove that
complex places contribute no anisotropic invariant and establish functoriality under
isometry and orthogonal sum.

**Dependencies.** Global Number Fields and Mathlib.

### Layer 1: global invariants

Package dimension, discriminant, real signatures, and local Hasse invariants.  Prove that
all but finitely many local Hasse invariants are trivial and that their product is \(1\).

**Dependencies.** Layer 0, Quadratic Form Invariants, and Hilbert reciprocity.

### Layer 2: Hasse–Minkowski isotropy

Prove that a regular form is isotropic over the number field exactly when it is isotropic
over every completion.  Give a proof by dimensions, including the separate quaternary
argument and the approximation step in higher dimension.

**Dependencies.** Layers 0–1, weak approximation, and the cyclic Hasse norm theorem.

### Layer 3: representation of scalars

Prove that \(a\in K^\times\) is represented by a regular form over \(K\) if and only if
it is represented over every completion.  Include the degenerate and low-dimensional edge
cases explicitly.

**Dependencies.** Layer 2.

### Layer 4: local–global isometry and classification

Prove that two regular forms over a number field are isometric exactly when they are
isometric at all places.  Deduce classification by dimension, discriminant, real signatures,
and the local Hasse invariants subject to the product relation.

**Dependencies.** Layers 1–3.

### Layer 5: orthogonal torsors

Translate the isometry theorem into injectivity of the global-to-local map on the
appropriate pointed \(H^1\) set for \(O(Q)\) and \(SO(Q)\), with the determinant obstruction
spelled out.  This is the interface used by the Orthogonal and Spin Groups roadmap.

**Dependencies.** Layer 4 and the accepted nonabelian-cohomology interface, if available.

## Worked examples and acceptance checks

- \(\langle1,1,-3
angle\) as an anisotropic form over \(\mathbf Q\) with a local obstruction
- a positive example where local isotropic vectors assemble globally
- the classification of binary forms over \(\mathbf Q\)
- the triviality of the appropriate Tate–Shafarevich set for \(SO(Q)\)

## References

- O. T. O'Meara, *Introduction to Quadratic Forms*, §§63–66
- J. W. S. Cassels, *Rational Quadratic Forms*
- J.-P. Serre, *A Course in Arithmetic*

## Source proposals

This takes the Hasse–Minkowski block out of roed-math PR #6 and makes its dependence on PR #4 explicit.
