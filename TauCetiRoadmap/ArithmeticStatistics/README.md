# Roadmap: arithmetic statistics, counting fields and Selmer distributions

**Summary.** Build finite-height arithmetic families and integral orbit dictionaries, prove uniform counting and sieve estimates, then compute field densities, class-group moments and Selmer averages. Compare the arithmetic results with precisely specified finite-group, quadratic-intersection and geometric probability laws. This is a navigation and ownership index for eight separate roadmaps. The mathematical specifications belong to the parts linked below; this index alone specifies no construction or theorem.

## Scope and ownership

This index states no target of its own. The parts own their mathematical specifications and form a build separate from this navigation document; publishing the index does not supply any part's specification. Section numbers §k.n follow the common six-layer build: Part I holds Layer 0, Part II Layer 1, Part III Layer 2, Parts IV and V Layer 3, Part VI Layer 4, and Parts VII and VIII Layer 5. Parts VII and VIII number their Layer 5 sections disjointly, but Parts IV and V both use §§3.2–3.9 for different targets, so a citation of a Layer 3 section names its part. The exact links in each part identify its earlier suppliers.

[ClassicalArithmeticCompletion §4.39](../ClassicalArithmeticCompletion/README.md#layer-4-topic-39) owns the untruncated set D of positive squarefree radicands whose prime divisors are 2 or 1 modulo 4, its subset D⁻ defined by integral solubility of x² − dy² = −1, and their strict truncations. [ArithmeticStatisticsPartI §0.15](../ArithmeticStatisticsPartI/README.md#negative-pell-radicands) owns the inclusive-cutoff height adapter, while [ArithmeticStatisticsPartV §3.31](../ArithmeticStatisticsPartV/README.md#restricted-real-quadratic-family) owns proportions, narrow-class-group rank slices and statistical results on those sets. Any local aliases or adapters in either part must agree pointwise with the owner's predicates and preserve the stated cutoff. Both radicand sets retain 1, and every quadratic-field or class-group subfamily excludes it.

The binary-cubic action and discriminant, the cubic-algebra parametrization on projective modules, the weighted cubic coefficients, the uniform small-degree field count, the cubic poles, residues and convexity bound, and the quadratic large sieve are stated by AnalyticNumberTheoryPartII Layer 5; the parts import these objects and do not construct them again. Quantitative prime and number-field estimates are stated by AnalyticNumberTheoryPartI, and Euler products, Abel and Perron summation and the Wiener–Ikehara theorem by ArithmeticDirichletSeries. Generic number-field, elliptic-curve, duality, moduli and finite-quadratic carriers belong to the Mathlib, Tau Ceti and roadmap suppliers named in each part. The source-specific local selectors, sieve estimates and statistical applications are targets of the parts.

## Conventions

A field count uses base-field isomorphism classes unless an embedded or rigid family is named. Stabilizer weights, signed discriminants, local Haar measures, height cutoffs and the order of limits are part of every theorem. Arithmetic conjectures remain propositions. Positive limiting denominators precede every limiting average; distribution convergence alone does not imply moment convergence.

**Checks.**

- For the positive squarefree negative-Pell radicand family at cutoff 5, [Part I §0.15](../ArithmeticStatisticsPartI/README.md#negative-pell-radicands) uses d ≤ 5 and gives {1, 2, 5}, whereas [Part V §3.31](../ArithmeticStatisticsPartV/README.md#restricted-real-quadratic-family) uses d < 5 and gives {1, 2}. The unit radicand is included in both; 3 fails the prime-factor condition and 4 fails squarefreeness. These finite counts cannot be identified across the two cutoff conventions.
- On the common untruncated sets, 1, 2 and 5 belong to D⁻, witnessed respectively by (x, y) = (0, 1), (1, 1) and (2, 1); each gives x² − dy² = −1. The radicands 0, 3 and 4 fail positivity, the prime-factor condition and squarefreeness respectively. At cutoffs 0 and 1 the inclusive counts are 0 and 1, while the strict counts are 0 and 0; deleting 1 from D or identifying the two truncations would fail these checks.
- The supplied strict inclusion D⁻ ⊊ D is witnessed by 34 = 2·17: its prime factors are allowed, but the continued fraction of √34 has period (1, 4, 1, 10), of even length, so the integral negative-Pell equation is insoluble (ClassicalArithmeticCompletion §4.39). The rational pair (3/5, 1/5) gives 9/25 − 34/25 = −1. Using rational solubility or the prime-factor condition alone for D⁻ would incorrectly include 34.
- In AnalyticNumberTheoryPartII §5.5, the split cubic algebra has automorphism group S₃ of order 6, while a cyclic cubic field has automorphism group of order 3. Their reciprocal automorphism weights are 1/6 and 1/3. Weighting by the group order instead would give 6 and 3. In §5.4, the forms x³ − y³ and xy(x − y) have signed discriminants −27 and 1; taking absolute values would erase the first sign.
- With the additive Haar normalization of Part I's Conventions, ℤ₂ and ℤ₃ have mass one, while 2ℤ₂ and 3ℤ₃ have masses 1/2 and 1/3. Assigning mass one to these subgroups would contradict their indices 2 and 3.
- For positive integers X and M, let a(X,M) be 1 when X ≤ M and 0 otherwise. Taking X to infinity first and then M gives 0; the reverse order gives 1. An interchange of these limits requires a separate theorem.
- A random variable equal to n with probability 1/n and zero otherwise converges in probability to zero, but its mean is 1 for every positive integer n; the limiting variable has mean 0. Thus distribution convergence does not supply the moment conclusion. An empty family likewise has totalized average 0/0 = 0, which supplies no positive denominator.

## Exact supplier contracts

This index has no mathematical targets and imports no mathematical construction from the parts. The contracts below describe the parts' shared analytic inputs. Each part's own Exact supplier contracts specifies the sections it uses and their hypotheses; those contracts govern that part's build. Parts IV and VIII take no direct input from the analytic contracts.

Within the series, the order I, II, III, IV, V, VI, VII, VIII respects the earlier-part contracts. Part IV needs Part I's family interface, without requiring Parts II–III's orbit counts. ArithmeticStatisticsPartVI consumes HeightsRationalPointsAndObstructions §§3.18–3.18c, whose arithmetic-statistics inputs are Parts I–III, so that roadmap lies after those inputs and before Part VI. Each external prerequisite precedes the part that uses it. The index has no mathematical step between these roadmaps.

The Pell-family contract belongs to the parts identified in Scope and ownership: ArithmeticStatisticsPartI and ArithmeticStatisticsPartV consume ClassicalArithmeticCompletion §4.39, including `pellFamily`, `negPellRadicands`, their strict truncations `pellFamilyBelow` and `negPellRadicandsBelow`, and `negPellRadicands_subset_pellFamily`. These use natural radicands, integral solutions and the unit radicand 1; the inclusive-height adapter preserves the distinction between strict and inclusive cutoffs.

### From TauCetiRoadmap.AnalyticNumberTheoryPartII

[§5.4 binary-cubic action, discriminant and local orbit data](../AnalyticNumberTheoryPartII/README.md#s5-4), [§5.5 cubic algebras and projective forms](../AnalyticNumberTheoryPartII/README.md#s5-5), [§5.6 discriminant fibres and weighted cubic coefficients](../AnalyticNumberTheoryPartII/README.md#s5-6), [§5.7 uniform small-degree field-discriminant count](../AnalyticNumberTheoryPartII/README.md#s5-7), [§5.21 the two cubic poles and their residues](../AnalyticNumberTheoryPartII/README.md#s5-21), [§5.28 pole-aware cubic convexity bound](../AnalyticNumberTheoryPartII/README.md#s5-28) and [§5.29 quadratic large sieve and primitive real-character moment](../AnalyticNumberTheoryPartII/README.md#s5-29). The equivalence of §5.5 covers nonprincipal rank-two projective modules, stabilizers, and discriminants as sections of the square of the determinant line; Part I's “Cubic ring of a binary cubic form” target uses the simultaneously negated basis (1, −ω, −θ) of §5.5's normal basis. Their linear traces are (3, −b, c), whereas the supplier's are (3, b, −c); a part importing Part I's cubic ring uses Part I's coordinates. Parts I, II, III, V and VI consume the cubic sections, each those its own contract lists, and Parts I, III, V and VII consume §5.29.

**Checks.**

- For f = x²y − xy² over ℤ, (a, b, c, d) = (0, 1, −1, 0). In the supplier's basis ω² = ω and Tr(ω) = 1; in Part I's basis ω² = −ω and Tr(ω) = −1. In the split algebra ℤ³ the latter ω is (−1, 0, 0), so the sign change is visible.
- On the same form, the supplier's trace-pairing matrix is [[3, 1, 1], [1, 1, 0], [1, 0, 1]], of determinant 1. Negating both nonconstant basis vectors gives [[3, −1, −1], [−1, 1, 0], [−1, 0, 1]], also of determinant 1. The linear traces change sign while the discriminant stays fixed.
- Reducing this example modulo 2 makes −1 = 1, so that field alone cannot distinguish the bases. Modulo 3 their ω traces are respectively 1 and 2; both trace-pairing determinants remain 1. The basis comparison uses no division by 2 or 3.

### From TauCetiRoadmap.AnalyticNumberTheoryPartI

Parts I, III, V and VII consume AnalyticNumberTheoryPartI by section or layer, as their own contracts state. Among these inputs are [§2.5 Dedekind continuation and real-side comparison](../AnalyticNumberTheoryPartI/README.md#s2-5), used by Parts I and V, and the multiplicative sums and partial summation of Layer 3 (multiplicative means, smooth numbers and moments), used by Parts III and VII.

### From TauCetiRoadmap.ArithmeticDirichletSeries

The completed ArithmeticDirichletSeries supplies Layer 3 (local factors and Euler products), Layer 6 (Abel and Perron summation) and Layer 9 (Wiener–Ikehara), with their convergence-domain, coefficient-positivity, residue and continuous-boundary-remainder hypotheses. Parts III and V consume all three layers; Part I consumes Layers 6 and 9.

## How to read the build

Read Parts I–III for families, orbit dictionaries and uniform counts. Part IV supplies finite-group probability and moment tools before Part V applies them to field and class-group statistics. Part VI computes Selmer averages. Part VII builds quadratic probability models and their conditional twist consequences. Part VIII proves the geometric and function-field comparisons.

A later part keeps every hypothesis and normalization of each earlier target it cites. In particular, the three-isogeny Selmer averages of Part VII keep the hypothesis `C(F,φ,Σ)` of Part III's [windowed cubic counting contract](../ArithmeticStatisticsPartIII/README.md#support-coregular-count), including Tamagawa volume one for the adelic quotient `SL2(F)\SL2(A_F)`. For even degree n ≥ 4, the binary-form sieve counts of Part V keep the even-degree clause of Part III's [binary summed tail](../ArithmeticStatisticsPartIII/README.md#refinement-binary-summed-tail) as a hypothesis, with its parameters `δ, η > 0`, `ξ ≥ 0` and both inequalities `τ < 1` and `(2n+1)τ < n+1`, where `τ = max(η, (η+ξ)/δ)`.

| Part | Mathematical scope |
| --- | --- |
| [I](../ArithmeticStatisticsPartI/README.md) | Families, heights and local specifications. |
| [II](../ArithmeticStatisticsPartII/README.md) | Integral orbit dictionaries. |
| [III](../ArithmeticStatisticsPartIII/README.md) | Uniform orbit counts and sieves. |
| [IV](../ArithmeticStatisticsPartIV/README.md) | Finite groups, matrix laws and moment tools. |
| [V](../ArithmeticStatisticsPartV/README.md) | Fields and class-group statistics, among them the four-rank moments of narrow class groups of quadratic fields (Fouvry–Klüners [as-ref-022], Theorem 1). |
| [VI](../ArithmeticStatisticsPartVI/README.md) | Selmer averages and arithmetic applications. |
| [VII](../ArithmeticStatisticsPartVII/README.md) | Quadratic probability models and twist applications, among them the function-field three-Selmer average bound (de Jong [as-ref-056], Theorem 1.2). |
| [VIII](../ArithmeticStatisticsPartVIII/README.md) | Function-field distributions and geometric statistics. |

**Checks.**

- At discriminant 136, the field ℚ(√34) has narrow class group ℤ/4 and ordinary class group ℤ/2. The respective square subgroups have two-torsion cardinalities 2 and 1. Thus the four-rank statistic in Part V's Fouvry–Klüners target distinguishes the narrow group from the ordinary one.
- With the standard integral invariant differential over ℚ, the local volumes of SL₂(ℤ₂) and SL₂(ℤ₃) are 3/4 and 8/9. Part III's windowed cubic counting contract, item 7, gives quotient volume ζ(2)∏ₚ(1 − p⁻²) = 1. Giving each local group volume one would change the measure in this identity.
- For the even-degree tail at n = 4, parameters (δ, η, ξ) = (1/2, 1/100, 0) give τ = 1/50 and 9τ = 9/50 < 5. Parameters (1, 3/5, 0) give τ = 3/5 < 1 but 9τ = 27/5 > 5. Checking only τ < 1 would admit the second, inadmissible choice.

Each part's README is its full mathematical specification. Consult that part's `Suggested.lean` for its target signatures and recorded carrier limitations.

## Downstream consumers

Arithmetic distribution comparisons use the exact field, height, local weights and equivalence relation of the part that states them. Outside the series, HeightsRationalPointsAndObstructions uses the symmetric-pencil carrier of ArithmeticStatisticsPartI §0.22, the pencil orbit and Selmer dictionaries of ArithmeticStatisticsPartII §1.12 and the finite-congruence count of ArithmeticStatisticsPartIII §2.17. ModularityAndLanglandsExtensions uses the relative density of ArithmeticStatisticsPartI §0.1 in its specified height ordering.

## References

Each part's References section lists every work that part cites, with its edition and the theorem, section and page locators of its targets. This index cites two works, in the parts table.

[as-ref-022] Étienne Fouvry and Jürgen Klüners. [On the 4-rank of class groups of quadratic number fields](https://math.uni-paderborn.de/fileadmin-eim/mathematik/AG-Computeralgebra/Publications-klueners/ranks.pdf). Inventiones Mathematicae 167 (2007), 455–513. Locators follow the author's manuscript, in which Theorem 1 is on p. 3.

[as-ref-056] A. J. de Jong. [Counting elliptic surfaces over finite fields](https://www.math.columbia.edu/~dejong/papers/surfaces2.dvi). Moscow Mathematical Journal 2 (2002), 281–311. Locators follow the author's DVI.
