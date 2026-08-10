# Roadmap: adelic algebraic groups, strong approximation, and Tamagawa measures

This roadmap develops the adelic infrastructure used by arithmetic algebraic groups. It
is independent of orthogonal forms: local point groups, restricted products, rational
diagonals, invariant measures, Tamagawa measures, and strong approximation are constructed
for suitable linear algebraic groups. Orthogonal and spin groups consume this theory and
supply their own group-specific calculations.

## Scope

This roadmap owns:

- topologies on local points of affine algebraic groups and compact open integral subgroups
- finite and full adelic point groups as restricted products
- rational diagonal maps and quotient topologies
- invariant differential forms and the associated local Haar measures
- global Tamagawa measures and independence of choices
- strong approximation for simply connected almost simple groups under the noncompact-place hypothesis
- compatibility under central isogenies and passage to derived groups
- general volume and covolume interfaces used by later arithmetic roadmaps

It does not own:

- construction of reductive groups and root data
- spinor norms, quadratic forms, and the computation \(\tau(SO)=2\)
- mass formulae for integral lattices
- classification of anisotropic groups

## Dependencies and exported interfaces

The roadmap consumes adeles and normalized measures from Global Number Fields and the functor-of-points and structure theory from the accepted Reductive Groups roadmap.

| Supplier | Material consumed |
|---|---|
| Global Number Fields | adeles, ideles, local measures and product formula |
| Accepted Reductive Groups roadmap | affine group schemes, reductive and simply connected groups |
| Mathlib | topological groups, Haar measure, restricted products |

The principal interfaces exported to later roadmaps are:

- `finiteAdelicPoints`, `adelicPoints`, `integralCompactOpen`
- `tamagawaMeasure` and its choice-independence theorem
- `StrongApproximationAt` and the simply connected strong-approximation theorem
- central-isogeny comparison and quotient-volume formulae

## Layers

### Layer 0: local point groups and topologies

For an affine group scheme of finite type over a local field, define the topology on its
points, prove continuity of group operations and morphisms, and construct integral compact
open subgroups from smooth models where available.

**Dependencies.** Accepted Reductive Groups and Local Fields.

### Layer 1: restricted products and adelic points

Construct finite and full adelic point groups with respect to the integral compact opens.
Prove independence under finite change, functoriality, local compactness, and compatibility
with products and closed subgroups.

**Dependencies.** Layer 0 and Global Number Fields.

### Layer 2: rational points and adelic quotients

Construct diagonal rational points, prove discreteness in the full adelic group under the
correct hypotheses, and define adelic quotients and covolumes. Do not assert discreteness
in finite adeles.

**Dependencies.** Layers 0–1.

### Layer 3: local invariant measures

From a nonzero top differential form, construct local Haar measures and prove change of
variables under group morphisms. Compare with the normalized additive and multiplicative
measures of Global Number Fields.

**Dependencies.** Layers 0–1.

### Layer 4: Tamagawa measures

Form the product measure with convergence factors, prove independence of the differential
form and auxiliary choices, define the Tamagawa number when the quotient has finite volume,
and establish product and central-isogeny formulae.

**Dependencies.** Layers 2–3 and the product formula.

### Layer 5: strong approximation

State and prove strong approximation for a connected simply connected almost simple group
which is noncompact at some place in the chosen set \(S\). Include the general-\(S\) form,
the finite-adeles corollary, and compatibility with products of almost simple factors.

**Dependencies.** Layers 0–2 and the structural theorems of the reductive-groups roadmap.

### Layer 6: descent through central isogenies

Compare adelic images and obstruction groups under a central isogeny. Identify the exact
local and global cohomological terms needed by group-specific Tamagawa calculations without
computing them here.

**Dependencies.** Layers 2, 4–5 and Class Field Theory when the kernel is of multiplicative type.

### Layer 7: interfaces for arithmetic applications

Package compatible compact opens, double-coset sets, class numbers, and volume-to-mass
conversion. This is the interface consumed by Orthogonal and Spin Groups and Integral
Lattices.

**Dependencies.** Layers 1–6.

## Worked examples and acceptance checks

- the additive and multiplicative groups
- `SL_n` and its strong approximation
- a split simply connected semisimple group
- comparison of measures under a finite central isogeny

## References

- V. Platonov and A. Rapinchuk, *Algebraic Groups and Number Theory*
- A. Weil, *Adeles and Algebraic Groups*
- T. Ono, papers on Tamagawa numbers
- J. Oesterlé, Bourbaki exposés on Tamagawa measures
