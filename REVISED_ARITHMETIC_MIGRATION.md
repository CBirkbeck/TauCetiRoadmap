# Migration map from the original proposals

| Original PR | Revised destination | Action |
|---|---|---|
| [#1 Profinite cohomology](https://github.com/roed-math/TauCetiRoadmap/pull/1) | [`ProfiniteCohomology`](TauCetiRoadmap/ProfiniteCohomology/README.md) | Retain.  Move Tate cohomology in negative degrees and class formations to [`ClassFieldTheory`](TauCetiRoadmap/ClassFieldTheory/README.md). |
| [#2 Local fields](https://github.com/roed-math/TauCetiRoadmap/pull/2) | [`LocalFieldsRamification`](TauCetiRoadmap/LocalFieldsRamification/README.md), [`ClassFieldTheory`](TauCetiRoadmap/ClassFieldTheory/README.md), [`LocalGaloisGroups`](TauCetiRoadmap/LocalGaloisGroups/README.md) | Keep arithmetic and ramification locally; move reciprocity/duality to CFT; move the rank and `G_K` applications to Local Galois Groups. |
| [#3 Pro-p/Demushkin](https://github.com/roed-math/TauCetiRoadmap/pull/3) | [`ProfiniteProPGroups`](TauCetiRoadmap/ProfiniteProPGroups/README.md), [`LocalGaloisGroups`](TauCetiRoadmap/LocalGaloisGroups/README.md) | Retain the abstract theory; move `G_K(p)`, cyclotomic orientation, and dyadic field applications. |
| [#4 Quadratic forms](https://github.com/roed-math/TauCetiRoadmap/pull/4) | [`QuadraticFormInvariants`](TauCetiRoadmap/QuadraticFormInvariants/README.md) | Retain algebraic and local theory.  Consume local CFT instead of owning its invariant map. |
| [#5 Algebraic curves](https://github.com/roed-math/TauCetiRoadmap/pull/5) | [`AlgebraicCurves`](TauCetiRoadmap/AlgebraicCurves/README.md) | Retain and make it the sole owner of general places, divisors, and Riemann–Roch. |
| [#6 Global CFT](https://github.com/roed-math/TauCetiRoadmap/pull/6) | [`GlobalNumberFields`](TauCetiRoadmap/GlobalNumberFields/README.md), [`ClassFieldTheory`](TauCetiRoadmap/ClassFieldTheory/README.md), [`GlobalQuadraticForms`](TauCetiRoadmap/GlobalQuadraticForms/README.md) | Move carriers and characters to Global Number Fields; reciprocity and fields to CFT; Hasse–Minkowski to Global Quadratic Forms. |
| [#7 Integral lattices](https://github.com/roed-math/TauCetiRoadmap/pull/7) | [`IntegralLattices`](TauCetiRoadmap/IntegralLattices/README.md) | Retain, replacing provisional supplier interfaces by the revised owners. |
| [#8 L-functions](https://github.com/roed-math/TauCetiRoadmap/pull/8) | [`AnalyticNumberTheory`](TauCetiRoadmap/AnalyticNumberTheory/README.md), [`LFunctions`](TauCetiRoadmap/LFunctions/README.md) | Move generic Euler/Tauberian material to Analytic Number Theory.  Remove Chebotarev and qualitative prime counting. |
| [#9 Number-field arithmetic](https://github.com/roed-math/TauCetiRoadmap/pull/9) | [`NumberFieldArithmetic`](TauCetiRoadmap/NumberFieldArithmetic/README.md) | Retain, but extend the current Tau Ceti Frobenius API rather than defining a parallel one. |
| [#10 Polynomial Galois groups](https://github.com/roed-math/TauCetiRoadmap/pull/10) | [`PolynomialGaloisGroups`](TauCetiRoadmap/PolynomialGaloisGroups/README.md) | Retain and consume Dedekind factorization from Number-Field Arithmetic. |
| [#11 Zeros](https://github.com/roed-math/TauCetiRoadmap/pull/11) | [`ZerosOfLFunctions`](TauCetiRoadmap/ZerosOfLFunctions/README.md) | Retain, consuming L-functions and Analytic Number Theory.  Effective prime estimates remain here; qualitative PNT remains in Chebotarev. |
| [#12 Orthogonal/spin](https://github.com/roed-math/TauCetiRoadmap/pull/12) | [`AdelicAlgebraicGroups`](TauCetiRoadmap/AdelicAlgebraicGroups/README.md), [`OrthogonalSpinGroups`](TauCetiRoadmap/OrthogonalSpinGroups/README.md) | Split general Tamagawa/strong-approximation theory from the orthogonal specialization. |
| [#13 Belyi maps](https://github.com/roed-math/TauCetiRoadmap/pull/13) | [`BelyiMaps`](TauCetiRoadmap/BelyiMaps/README.md) | Retain, replacing its private curve/profinite/polynomial interfaces by the revised suppliers. |
| [Tau Ceti #181 Chebotarev](https://github.com/TauCetiProject/TauCetiRoadmap/pull/181) | [`Chebotarev`](TauCetiRoadmap/Chebotarev/README.md) | Withdrawn in favour of this directory, which keeps the cyclotomic-crossing route with the corrections below. |

## Corrections to Chebotarev PR 181

The revised file makes three structural corrections.

1. **The all-prime asymptotic moves after the Euler product.**  
   The residue of `ζ_K` does not by itself prove

   ```text
   ∑_𝔭 N𝔭^{-s} = log(1/(s-1)) + O(1).
   ```

   One also needs the Euler product and the bounded contribution of higher prime powers.
   The result therefore belongs after the ideal Euler product has been constructed.

2. **Cyclotomic continuation requires congruence-class counting.**  
   The total ideal-counting asymptotic does not imply cancellation of
   `∑_{N𝔞 ≤ x} χ(𝔞)`.  The roadmap now asks explicitly for
   ideal congruence classes, their lattice models, the lattice-point estimate, and the
   nontrivial-character cancellation theorem.

3. **Prime sets use a subtype of nonzero prime ideals.**  
   `primeDirichletSum`, `primeTheta`, and `primeCount` should not accept an arbitrary set of
   ideals.  The zero ideal and composite ideals are excluded by the carrier.

The corrections already present in PR 181 are retained:

- the coefficient detects `Frob_𝔭 ^ j`;
- the principal regularization is
  `-L₁'/L₁ - 1/(s-1)`;
- the zeta factorization includes the ramified Euler correction.
