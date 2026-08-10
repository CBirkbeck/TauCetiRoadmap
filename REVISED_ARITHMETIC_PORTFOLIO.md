# Revised arithmetic roadmap portfolio

This directory contains a coordinated rewrite of the thirteen proposals in
`roed-math/TauCetiRoadmap`, together with the Chebotarev roadmap of Tau Ceti PR 181.
The purpose of this portfolio is to settle ownership and dependency order before the
roadmaps are submitted separately.

The revision follows four rules.

1. A mathematical object has one owner.
2. Every dependency points to a complete earlier roadmap, not to a later layer of a roadmap
   which simultaneously depends on the consumer.
3. Arithmetic carriers are separated from the theorems which classify them.  For example,
   ray class groups and Hecke characters are constructed before class field theory and
   analytic \(L\)-functions.
4. General infrastructure is not hidden inside its first application.  Tate cohomology is
   not local-field theory; Tamagawa measures are not orthogonal-group theory; prime-density
   and Tauberian machinery are not Chebotarev-specific.

## The revised roadmaps

| Directory | Subject | Principal suppliers |
|---|---|---|
| `ProfiniteCohomology` | Continuous cohomology of profinite groups | Mathlib |
| `ProfiniteProPGroups` | Profinite and pro-\(p\) groups; abstract Demushkin theory | Profinite Cohomology |
| `LocalFieldsRamification` | Local fields, units, ramification, Hasse–Arf, tame quotient | Profinite/Pro-\(p\) for \(\widehat{\mathbf Z}\) |
| `NumberFieldArithmetic` | Splitting, Frobenius, differents, discriminants, completions | Mathlib and current Tau Ceti |
| `GlobalNumberFields` | Adeles, ideles, ray classes, Hecke-character carriers, orders | Number-Field Arithmetic |
| `ClassFieldTheory` | Abstract class formations, local CFT, global CFT, class fields | Profinite Cohomology; Local and Global Fields |
| `LocalGaloisGroups` | \(G_K(p)\), Demushkin applications, ranks of \(G_K\) | Pro-\(p\), Local Fields, Class Field Theory |
| `QuadraticFormInvariants` | Witt theory, local forms, Brauer and cohomological invariants | Local Fields; Profinite Cohomology; CFT |
| `GlobalQuadraticForms` | Hasse–Minkowski and global classification | Quadratic Forms; CFT; Global Fields |
| `AlgebraicCurves` | Function fields, divisors, Riemann–Roch, regular projective curves | Mathlib |
| `AnalyticNumberTheory` | Ideal Euler products, prime density, Abel/Perron, Wiener–Ikehara | Mathlib |
| `LFunctions` | Dedekind zeta and Hecke \(L\)-functions | Global Fields; Analytic Number Theory |
| `Chebotarev` | Dirichlet-density and PNT forms of Chebotarev | Number-Field Arithmetic; Analytic Number Theory |
| `ZerosOfLFunctions` | Growth, zero counts, zero-free regions, explicit formulae | L-functions; Analytic Number Theory; Contour Integration |
| `PolynomialGaloisGroups` | Blocks, resolvents, cycle types, certificates | Number-Field Arithmetic |
| `AdelicAlgebraicGroups` | Adelic point groups, strong approximation, Tamagawa measures | Global Fields; Reductive Groups |
| `OrthogonalSpinGroups` | \(O\), \(SO\), `Spin`, spinor norm, \(\tau(SO)=2\) | Quadratic Forms; Adelic Groups |
| `IntegralLattices` | Integral and \(p\)-adic lattices, mass, Nikulin, theta series | Quadratic Forms; CFT; Orthogonal Groups; L-functions |
| `BelyiMaps` | Triples, dessins, Riemann existence, Belyi, Galois action | Algebraic Curves; Profinite Groups; Polynomial Galois |

## Why the original Local Fields and Pro-\(p\) proposals cannot be merged unchanged

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
`LocalGaloisGroups`.  The abstract pro-\(p\) roadmap can then be accepted before Local Fields,
and Local Galois Groups follows both Local Fields and Class Field Theory.

## Why class field theory is one roadmap

The common theorem is the Artin–Tate class-formation argument.  Tate cohomology,
fundamental classes, and Tate–Nakayama should be proved once.  The local instance uses
\(L^\times\); the global instance uses the idèle class group \(C_L\).  The local and global
existence theorems remain separate arithmetic layers inside the same roadmap.

The arithmetic substrates are separate:

- `LocalFieldsRamification` builds valuations, units, Frobenius, and ramification.
- `GlobalNumberFields` builds adeles, ideles, moduli, ray class groups, Hecke characters,
  and orders.
- `ClassFieldTheory` proves reciprocity, existence, class fields, Hilbert reciprocity,
  Kronecker–Weber, and ring class fields.

## Why a shared analytic-number-theory roadmap is needed

Without `AnalyticNumberTheory`, the proposed \(L\)-functions and Chebotarev roadmaps both own:

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

- Profinite Cohomology
- Number-Field Arithmetic
- Algebraic Curves
- Analytic Number Theory

### Tier 2

- Profinite and Pro-\(p\) Groups
- Local Fields and Ramification
- Global Number Fields
- Polynomial Galois Groups
- Chebotarev

### Tier 3

- Class Field Theory
- L-functions
- Adelic Algebraic Groups
- Belyi Maps

### Tier 4

- Local Galois Groups
- Quadratic Form Invariants
- Zeros of \(L\)-functions

### Tier 5

- Global Quadratic Forms

### Tier 6

- Orthogonal and Spin Groups

### Tier 7

- Integral Lattices

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
- **Modular Forms.** Consume the common analytic \(L\)-function data model from `LFunctions`
  when its newform \(L\)-functions are compared with Hecke \(L\)-functions.
- **Chebotarev PR 181.** Replace its README by the revised `Chebotarev/README.md` in this
  package, or apply the three concrete corrections recorded in `MIGRATION_MAP.md`.

## Status of `Suggested.lean`

The `Suggested.lean` files in this package are identifier ledgers, not final prototypes.
They compile only after they are replaced or elaborated against the current accepted supplier
APIs.  This is deliberate: inventing `Prop := sorry` placeholders would hide rather than solve
the type-level gaps.  The final individual roadmap PRs should add real signatures in dependency
order.
