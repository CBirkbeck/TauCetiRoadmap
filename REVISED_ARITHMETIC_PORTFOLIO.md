# Revised arithmetic roadmap portfolio

This directory contains nineteen coordinated roadmaps: a rewrite of the thirteen proposals in
`roed-math/TauCetiRoadmap`, together with [`Chebotarev`](TauCetiRoadmap/Chebotarev/README.md),
whose earlier single-roadmap draft is superseded by the version here. The purpose of this
portfolio is to settle ownership and dependency order before the roadmaps are submitted
separately. `REVISED_ARITHMETIC_MIGRATION.md` records where each one came from.

The revision follows four rules.

1. A mathematical object has one owner.
2. Every dependency points to a complete earlier roadmap, not to a later layer of a roadmap
   which simultaneously depends on the consumer.
3. Arithmetic carriers are separated from the theorems which classify them.  For example,
   ray class groups and Hecke characters are constructed before class field theory and
   analytic `L`-functions.
4. General infrastructure is not hidden inside its first application.  Tate cohomology is
   not local-field theory; Tamagawa measures are not orthogonal-group theory; prime-density
   and Tauberian machinery are not Chebotarev-specific.

## The revised roadmaps

| Directory | Subject | Principal suppliers |
|---|---|---|
| [`ProfiniteCohomology`](TauCetiRoadmap/ProfiniteCohomology/README.md) | Continuous cohomology of profinite groups | Mathlib |
| [`ProfiniteProPGroups`](TauCetiRoadmap/ProfiniteProPGroups/README.md) | Profinite and pro-`p` groups; abstract Demushkin theory | Profinite Cohomology |
| [`LocalFieldsRamification`](TauCetiRoadmap/LocalFieldsRamification/README.md) | Local fields, units, ramification, Hasse–Arf, tame quotient | Profinite/Pro-`p` for `Ẑ` |
| [`NumberFieldArithmetic`](TauCetiRoadmap/NumberFieldArithmetic/README.md) | Splitting, Frobenius, differents, discriminants, completions | Mathlib and current Tau Ceti |
| [`GlobalNumberFields`](TauCetiRoadmap/GlobalNumberFields/README.md) | Adeles, ideles, ray classes, Hecke-character carriers, orders | Number-Field Arithmetic |
| [`ClassFieldTheory`](TauCetiRoadmap/ClassFieldTheory/README.md) | Abstract class formations, local CFT, global CFT, class fields | Profinite Cohomology; Local and Global Fields |
| [`LocalGaloisGroups`](TauCetiRoadmap/LocalGaloisGroups/README.md) | `G_K(p)`, Demushkin applications, ranks of `G_K` | Pro-`p`, Local Fields, Class Field Theory |
| [`QuadraticFormInvariants`](TauCetiRoadmap/QuadraticFormInvariants/README.md) | Witt theory, local forms, Brauer and cohomological invariants | Local Fields; Profinite Cohomology; CFT |
| [`GlobalQuadraticForms`](TauCetiRoadmap/GlobalQuadraticForms/README.md) | Hasse–Minkowski and global classification | Quadratic Forms; CFT; Global Fields |
| [`AlgebraicCurves`](TauCetiRoadmap/AlgebraicCurves/README.md) | Function fields, divisors, Riemann–Roch, regular projective curves | Mathlib |
| [`AnalyticNumberTheory`](TauCetiRoadmap/AnalyticNumberTheory/README.md) | Ideal Euler products, prime density, Abel/Perron, Wiener–Ikehara | Mathlib |
| [`LFunctions`](TauCetiRoadmap/LFunctions/README.md) | Dedekind zeta and Hecke `L`-functions | Global Fields; Analytic Number Theory |
| [`Chebotarev`](TauCetiRoadmap/Chebotarev/README.md) | Dirichlet-density and PNT forms of Chebotarev | Number-Field Arithmetic; Analytic Number Theory |
| [`ZerosOfLFunctions`](TauCetiRoadmap/ZerosOfLFunctions/README.md) | Growth, zero counts, zero-free regions, explicit formulae | L-functions; Analytic Number Theory; Contour Integration |
| [`PolynomialGaloisGroups`](TauCetiRoadmap/PolynomialGaloisGroups/README.md) | Blocks, resolvents, cycle types, certificates | Number-Field Arithmetic |
| [`AdelicAlgebraicGroups`](TauCetiRoadmap/AdelicAlgebraicGroups/README.md) | Adelic point groups, strong approximation, Tamagawa measures | Global Fields; Reductive Groups |
| [`OrthogonalSpinGroups`](TauCetiRoadmap/OrthogonalSpinGroups/README.md) | `O`, `SO`, `Spin`, spinor norm, `τ(SO) = 2` | Quadratic Forms; Adelic Groups |
| [`IntegralLattices`](TauCetiRoadmap/IntegralLattices/README.md) | Integral and `p`-adic lattices, mass, Nikulin, theta series | Quadratic Forms; CFT; Orthogonal Groups; L-functions |
| [`BelyiMaps`](TauCetiRoadmap/BelyiMaps/README.md) | Triples, dessins, Riemann existence, Belyi, Galois action | Algebraic Curves; Profinite Groups; Polynomial Galois |

## Why the original Local Fields and Pro-`p` proposals cannot be merged unchanged

The original proposals contained the layer pattern

```text
Pro-p foundations
    ↓
Local fields and local duality
    ↓
the local-field application of the Demushkin classification
    ↓
the rank theorem stated back in Local Fields.
```

That is an acyclic **layer** graph but a cyclic **roadmap** graph: neither complete roadmap can
precede the other.  The revision separates the final arithmetic applications into
`LocalGaloisGroups`.  The abstract pro-`p` roadmap can then be accepted before Local Fields,
and Local Galois Groups follows both Local Fields and Class Field Theory.

## Why class field theory is one roadmap

The common theorem is the Artin–Tate class-formation argument.  Tate cohomology,
fundamental classes, and Tate–Nakayama should be proved once.  The local instance uses
`L^×`; the global instance uses the idèle class group `C_L`.  The local and global
existence theorems remain separate arithmetic layers inside the same roadmap.

The arithmetic substrates are separate:

- `LocalFieldsRamification` builds valuations, units, Frobenius, and ramification.
- `GlobalNumberFields` builds adeles, ideles, moduli, ray class groups, Hecke characters,
  and orders.
- `ClassFieldTheory` proves reciprocity, existence, class fields, Hilbert reciprocity,
  Kronecker–Weber, and ring class fields.

## Why a shared analytic-number-theory roadmap is needed

Without `AnalyticNumberTheory`, the proposed `L`-functions and Chebotarev roadmaps both own:

- ideal-indexed Euler products;
- norm regrouping into `LSeries`;
- Dirichlet density;
- prime-counting functions;
- Abel summation;
- Wiener–Ikehara.

The shared roadmap owns those statements once.  `LFunctions` supplies concrete analytic
functions.  `Chebotarev` supplies Frobenius coefficients and the cyclotomic continuation
specific to its proof.  `ZerosOfLFunctions` supplies the quantitative zero theory.

## Merge tiers

The following tiers are a topological order.  Roadmaps in one tier can be reviewed in
parallel.

### Tier 1

- [Profinite Cohomology](TauCetiRoadmap/ProfiniteCohomology/README.md)
- [Number-Field Arithmetic](TauCetiRoadmap/NumberFieldArithmetic/README.md)
- [Algebraic Curves](TauCetiRoadmap/AlgebraicCurves/README.md)
- [Analytic Number Theory](TauCetiRoadmap/AnalyticNumberTheory/README.md)

### Tier 2

- [Profinite and Pro-p Groups](TauCetiRoadmap/ProfiniteProPGroups/README.md)
- [Local Fields and Ramification](TauCetiRoadmap/LocalFieldsRamification/README.md)
- [Global Number Fields](TauCetiRoadmap/GlobalNumberFields/README.md)
- [Polynomial Galois Groups](TauCetiRoadmap/PolynomialGaloisGroups/README.md)
- [Chebotarev](TauCetiRoadmap/Chebotarev/README.md)

### Tier 3

- [Class Field Theory](TauCetiRoadmap/ClassFieldTheory/README.md)
- [L-functions](TauCetiRoadmap/LFunctions/README.md)
- [Adelic Algebraic Groups](TauCetiRoadmap/AdelicAlgebraicGroups/README.md)
- [Belyi Maps](TauCetiRoadmap/BelyiMaps/README.md)

### Tier 4

- [Local Galois Groups](TauCetiRoadmap/LocalGaloisGroups/README.md)
- [Quadratic Form Invariants](TauCetiRoadmap/QuadraticFormInvariants/README.md)
- [Zeros of L-functions](TauCetiRoadmap/ZerosOfLFunctions/README.md)

### Tier 5

- [Global Quadratic Forms](TauCetiRoadmap/GlobalQuadraticForms/README.md)

### Tier 6

- [Orthogonal and Spin Groups](TauCetiRoadmap/OrthogonalSpinGroups/README.md)

### Tier 7

- [Integral Lattices](TauCetiRoadmap/IntegralLattices/README.md)

One strict linear order is:

```text
Profinite Cohomology
Number-Field Arithmetic
Algebraic Curves
Analytic Number Theory
Profinite and Pro-p Groups
Local Fields and Ramification
Global Number Fields
Polynomial Galois Groups
Chebotarev
Class Field Theory
L-functions
Adelic Algebraic Groups
Belyi Maps
Local Galois Groups
Quadratic Form Invariants
Zeros of L-functions
Global Quadratic Forms
Orthogonal and Spin Groups
Integral Lattices
```

## Amendments required in accepted roadmaps

The portfolio assumes the following small amendments to already accepted roadmaps.

- **Elliptic Curves.** Replace its general function-field place, divisor, and Riemann–Roch
  development by specialization theorems from `AlgebraicCurves`.  Retain the
  Weierstrass-specific point/place and class-group comparisons.
- **Jacobian Challenge.** Consume the divisor and Riemann–Roch carriers from
  `AlgebraicCurves`.
- **Spin Representations.** Leave the general-field spinor norm and the arithmetic exact
  sequence to `OrthogonalSpinGroups`.
- **Modular Forms.** Consume the common analytic `L`-function data model from `LFunctions`
  when its newform `L`-functions are compared with Hecke `L`-functions.
- **Chebotarev.** The single-roadmap Tau Ceti draft (PR 181) has been withdrawn in favour of
  the `Chebotarev` directory here, which carries the three corrections recorded in
  `REVISED_ARITHMETIC_MIGRATION.md`. No amendment to an accepted roadmap is outstanding.

## Status of `Suggested.lean`

The `Suggested.lean` files in this package are identifier ledgers, not final prototypes.
They compile only after they are replaced or elaborated against the current accepted supplier
APIs.  This is deliberate: inventing `Prop := sorry` placeholders would hide rather than solve
the type-level gaps.  The final individual roadmap PRs should add real signatures in dependency
order.
