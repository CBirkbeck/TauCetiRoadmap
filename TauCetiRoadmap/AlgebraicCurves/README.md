# Roadmap: algebraic function fields and regular projective curves

This roadmap develops the theory of algebraic function fields of one variable and its
equivalence with regular projective curves.  The function-field theory is the primary
construction: places, divisors, differentials, Riemann–Roch, ramification, and automorphisms.
The curve side is then obtained by the regular proper model and compared with the scheme
language used elsewhere in Tau Ceti.

This is the sole owner of the general place-and-divisor theory.  Elliptic curves, Jacobians,
modular curves, and Belyi maps specialize or consume it.

## Scope

This roadmap owns:

- places, valuations, constant fields, residue degrees, and weak approximation
- divisors, principal divisors, Riemann spaces \(L(D)\), genus, and Riemann–Roch
- repartitions and Weil differentials, residues, and duality
- extensions of function fields, ramification, the different, and Hurwitz
- constant-field extensions, Kummer and Artin–Schreier extensions, and hyperelliptic function fields
- automorphism groups and the Hurwitz bound
- the anti-equivalence between one-variable function fields and regular projective curves
- comparison with Mathlib's height-one spectra, class groups, and Kähler differentials

It does not own:

- Jacobians, Picard schemes, and Abel–Jacobi theory
- elliptic-curve-specific isogenies and pairings
- complex analytic Riemann surfaces and Riemann existence
- singular or stable curves and moduli stacks

## Dependencies and exported interfaces

The roadmap depends only on Mathlib. Existing sorry-free function-field Riemann–Roch developments are provenance and porting sources, not prerequisites.

| Supplier | Material consumed |
|---|---|
| Mathlib | valuations, Dedekind domains, height-one spectra, Kähler differentials, schemes |

The principal interfaces exported to later roadmaps are:

- `FunctionField.Place`, `Divisor`, `principalDivisor`, `riemannSpace`, and `genus`
- `riemannRoch`, `strongApproximation`, and the residue theorem
- `ramificationIndex`, `residueDegree`, `differentDivisor`, and `hurwitzGenus`
- `regularProjectiveCurveEquivFunctionField`
- specialization interfaces for Weierstrass, hyperelliptic, and Belyi curves

## Layers

### Layer 0: places and constants

Define places as equivalence classes of discrete valuation rings containing the constant
field. Develop orders, residue fields, degrees, uniformizers, finite support of zeros and
poles, constant fields, and weak approximation.

**Dependencies.** Mathlib's valuation theory.

### Layer 1: the rational function field

Classify the places of \(k(x)\), including the place at infinity. Compute orders of
polynomials and rational functions, residue degrees, principal divisors, and the genus.

**Dependencies.** Layer 0 and Mathlib's Ostrowski theorem.

### Layer 2: affine models and the Dedekind bridge

For a finitely generated normal \(k\)-subalgebra of a function field of dimension one,
identify closed points with height-one primes and with places outside a finite set. Compare
divisor class groups with Mathlib's ideal class group.

**Dependencies.** Layers 0–1.

### Layer 3: divisors and Riemann spaces

Define the divisor group as a finitely supported integer-valued function on places.
Construct principal divisors, degree, \(L(D)\), and the first Riemann inequality. Prove
finiteness of \(L(D)\), monotonicity, and the class-group exact sequence.

**Dependencies.** Layers 0–2.

### Layer 4: differentials and Riemann–Roch

Construct repartitions, residues, and Weil differentials. Prove duality between the
quotient of repartitions and Riemann spaces, define canonical divisors, and prove
\[
\ell(D)-\ell(K-D)=\deg D+1-g.
\]

**Dependencies.** Layer 3.

### Layer 5: consequences of Riemann–Roch

Prove the large-degree formula, strong approximation, Clifford's theorem in its stated
regime, Weierstrass gaps, and finiteness of degree-zero divisor classes over a finite
constant field.

**Dependencies.** Layer 4.

### Layer 6: extensions of function fields

For a finite extension, construct the maps on places and divisors, prove the fundamental
identity \(\sum e_wf_w=[F':F]\), and develop conorm and norm. Separate separable,
purely inseparable, constant, Kummer, and Artin–Schreier cases.

**Dependencies.** Layers 0–5.

### Layer 7: the different and Hurwitz

Define the different exponent and divisor, prove transitivity and Hilbert's different
formula, and derive the Hurwitz genus formula with all inseparable and constant-field
hypotheses visible.

**Dependencies.** Layer 6.

### Layer 8: ramification groups and residues

Develop ramification groups of a Galois function-field extension, compare their filtration
with the different, and construct the cotrace and residue compatibility for Kähler and Weil
differentials.

**Dependencies.** Layers 6–7.

### Layer 9: standard families

Construct elliptic, hyperelliptic, Kummer, Artin–Schreier, and smooth plane function fields.
For hyperelliptic fields require a separable degree-two rational subfield. Prove the genus
and ramification formulae in each family.

**Dependencies.** Layers 4–8.

### Layer 10: automorphisms

Prove finiteness of the automorphism group for genus at least two, the hyperelliptic
central involution theorem, the action on Weierstrass points, and the Hurwitz bound in the
tame characteristic regime.

**Dependencies.** Layers 5–9.

### Layer 11: regular projective models

Construct the regular projective curve associated to a function field, prove its universal
property and uniqueness, and identify its closed points, local rings, divisors, and
rational functions with the function-field constructions.

**Dependencies.** Layers 0–10 and Mathlib's scheme theory.

### Layer 12: the anti-equivalence and comparison interfaces

Prove the contravariant equivalence between regular projective geometrically integral
curves with nonconstant morphisms and one-variable function fields with finite embeddings.
Supply exact comparison theorems for the accepted Elliptic Curves and Jacobian roadmaps and
for the Belyi Maps roadmap.

**Dependencies.** Layer 11.

## Worked examples and acceptance checks

- the full divisor and Riemann–Roch calculation on \(k(x)\)
- the genus and ramification of a hyperelliptic and an Artin–Schreier curve
- the point/place dictionary for a Weierstrass function field
- the Hurwitz bound for a tame genus-\(g\) curve

## References

- H. Stichtenoth, *Algebraic Function Fields and Codes*
- R. Hartshorne, *Algebraic Geometry*, Chapter IV
- Q. Liu, *Algebraic Geometry and Arithmetic Curves*
- J.-P. Serre, *Algebraic Groups and Class Fields*

## Source proposals

This is the revised owner of roed-math PR #5. The general place-and-divisor portions of the accepted Elliptic Curves and Jacobian roadmaps should be replaced by specialization interfaces to this roadmap.
