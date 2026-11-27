# Adelic unitary groups and algebraic modular forms

The argument proves the Riemann hypothesis for Dirichlet L-functions through a one-sided bound for a sum over primes:
such a bound at arbitrarily large scales gives a zero-free half-plane. At each scale the bound comes from comparing an
upper and a lower bound for the covolume of a lattice of theta lifts. The theta lifts, the source forms and the target
forms of the argument are functions on the adelic points of unitary groups of hermitian spaces over a CM field `E`:
algebraic modular forms on definite groups, and forms of a discrete-series type on indefinite ones.

This roadmap states the background that the argument uses about these groups and these forms, in the form the
shorter proof needs. The standard theory is the reference for these objects: the unitary group of a hermitian space
over `E⁺` with its adelic points, the quotient measure, algebraic heights, the Hecke algebra of a compact open
subgroup, automorphic and cusp forms with a discrete series at infinity, algebraic modular forms with `p`-adic
coefficients, supercusp forms, and cuspidal automorphic representations with their multiplicities. Layers 1–7 state
and prove the results on the objects of the shorter proof, which are one way to prove them; Layer 8 states how each of
these objects is related to the standard one, and the sections that other roadmaps use also state their results on the
standard objects, in paragraphs headed **In standard terms**.
It is used by the roadmaps of the argument and by background roadmaps, among them
WeilRepresentationsOnBanachSpacesOfData, SiegelWeilAndRallisFormulasOnUnitaryGroups and
GaloisRepresentationsOfUnitaryEigenforms; Layer 7 is used in SecondMomentsOfPoincareSeries. It cites
HolomorphicDiscreteSeriesOfUnitaryGroups (the real unitary groups and their discrete series),
IntegralRepresentationsOfGeneralLinearGroups (the weight representations and Green's characters),
WeilRepresentationsOnBanachSpacesOfData (Weil data, isotropic splittings, Hecke operators at split places) and
GaloisRepresentationsOfUnitaryEigenforms (Hecke eigenforms), and from earlier roadmaps HermitianFormsAndLattices,
GeometryOfNumbersAndQuadraticArithmetic, AdelicAlgebraicGroups, DiscreteSeriesCoefficientsAndAutomorphicMetrics and
RepresentationTheory/CompactGroups. Layer 8 rests on the general roadmaps AdelicAlgebraicGroups (adelic points, Siegel
sets and heights), AnalyticNumberTheoryPartII (quotient measures), ArithmeticLocallySymmetricSpaces (automorphic forms
and cusp forms), AutomorphicFormsOnReductiveGroups (discrete series, cuspidal automorphic representations and
algebraic modular forms) and SmoothRepresentationsOfLocalGroups (Hecke algebras), and on
HolomorphicDiscreteSeriesOfUnitaryGroups §§9.3, 9.4 for the discrete series of the real unitary groups.

Layer 1 is integration over quotients: an integral over an orbit space is taken on the whole space against a weight
whose integral along every orbit is one, also for actions that do not come from a subgroup; it includes unfolding,
quotients in stages, Iwasawa coordinates, and the weighted class sums `∑ f(g)/#(Γ ∩ gKg⁻¹)` that replace integrals
on definite groups; for a closed unimodular subgroup of a unimodular group the integral is that against the quotient
measure (8.1). Layer 2 is the adeles of a totally complex field with the normalisations used: covolume one and
self-duality of `E`, strong approximation omitting finite places, a one-sided Poisson inequality, and the scaling of
Haar measure by `GL_n`.
Layer 3 is hermitian spaces that are standard at every finite place and their adelic unitary groups: Landherr's
theorem in that case, Witt's theorem over the integral finite adeles, splittings along isotropic frames, the
Iwasawa decomposition, weak approximation and congruence levels. Layer 4 is reduction theory: adelic Minkowski
theorems, short bases, finite volume and a weak form of Weil's convergence criterion, Mahler's criterion, and the
integral over a definite quotient as a class sum. Layer 5 is forms of a cusp kernel on indefinite groups: they are
cuspidal, decay rapidly and are finite in number at each level; for the discrete-series kernels `e_l` with every `l_w`
of gap `500n³` they are the cusp forms that are images of a highest weight vector of the lowest `K_∞`-type of the
discrete series `π_l` at infinity under homomorphisms into the cusp forms (8.5). Layer 6 is algebraic modular forms:
their pairing,
Hecke eigenforms, their identification with forms on the standard definite space, periods over a block subgroup and
the `p`-adic gauge. Layer 7 is the comparison of traces of Hecke-type operators on forms of two unitary groups that
differ only in their signs at the real places; it gives the equality of multiplicities used for the spanning theorem
(SecondMomentsOfPoincareSeries §2.3). Layer 8 compares these objects with the standard theory: the quotient integral
with the quotient measure, spaces with adelic frames with unitary groups over `E⁺` and their adelic points, the height
with algebraic heights, level algebras with Hecke algebras, forms of a discrete-series type with cusp forms, algebraic
forms with their `p`-adic integral structure, cuspidality at a split place with supercusp forms, and the traces of
Layer 7 with sums over cuspidal automorphic representations.

The headline theorems are the comparison of traces for test functions cuspidal at a split place (7.13), which in
standard terms equates, under the hypotheses of 7.13 (the 5040 condition, an even number of infinite places, `n ≥ 2`,
every `l_w` of gap `500n³ + 10n⁵` for both sign vectors) and for a Hecke function `h` cuspidal at a split place in the
sense of 7.1 (a supercusp form there, of a special kind, 8.7), the sums of `m_cusp(Π)·tr Π_f(h)` over the cuspidal
automorphic representations `Π` of the unitary groups of two hermitian spaces with adelic frames that differ only in
their signs at the real places, whose archimedean component is the discrete series of parameter `l` (8.8); the
cuspidality, rapid decay and finite dimension of the forms of a cusp kernel (5.4), which for the discrete-series
kernels `e_l` with every `l_w` of gap `500n³` are cusp forms with a discrete series at infinity (8.5); Landherr's
theorem for spaces with adelic frames (3.3 (a)), the case of Landherr's theorem for hermitian spaces isometric to the
standard form at every finite place (8.2); Mahler's criterion and the integral over a definite quotient as a class sum
(4.4), the latter for the quotient measure (8.1); and the identification of algebraic modular forms with the forms of
a discrete-series type on the standard definite space (6.4 (a)), which realises them as automorphic forms (8.5).

## Conventions and notation

Hermitian matrices and forms are conjugate-linear in the first variable: for a ring `R` with involution `z ↦ z̄` and
`J ∈ M_n(R)`, `h_J(u, v) = ū^T J v` and `A* = Ā^T`. `J` is hermitian if `J* = J`, and
`U(J)(R) = {g ∈ GL_n(R) : g* J g = J}`. A matrix `X ∈ M_{n×k}(R)` is *left invertible* if `YX = 1` for some
`Y ∈ M_{k×n}(R)`. `e(t) = exp(2πit)`.

| Symbol | Meaning | Defined |
|---|---|---|
| `E, E⁺, x ↦ x̄` | a CM field (from Layer 3 on), its maximal totally real subfield, complex conjugation | 2.1 |
| `Φ = (Φ_w)` | for each infinite place `w` of `E` a complex embedding `Φ_w` inducing it (a CM type when `E` is CM) | 2.1 |
| `f, rd_E, 𝔇` | the number of infinite places of `E`, its root discriminant `|d_E|^{1/[E:ℚ]}`, its different | 2.1 |
| 5040 condition | `E` contains a primitive root of unity of order `5040` | 2.1 |
| `𝔸, 𝔸_f, Ô` | the adeles `ℂ^Φ × 𝔸_f` of a totally complex `E`, the finite adeles, the integral finite adeles | 2.1 |
| `E_w, 𝒪_w, k_w, q_w, ϖ_w` | completion at a finite place `w`, its integers, residue field, its order, a uniformiser | 2.1 |
| `ψ, |·|_𝔸` | the standard additive character of `𝔸`, the module of an idele | 2.1 |
| `s` | a sign vector `s ∈ {±1}^n`, the same at every infinite place | 3.1 |
| `G_∞(s), G_f, G(s), K₀` | `∏_w U(diag s)(ℂ)`, `U(1_n)(𝔸_f)`, `G_∞(s) × G_f`, `G_f ∩ GL_n(Ô)` | 3.1 |
| level | an open subgroup `K ⊂ K₀` | 3.1 |
| `V = (J, x)` | a hermitian space with an adelic frame of signs `s` | 3.1 |
| `Γ_V, Γ_{V,f}, Λ_V` | its rational points in `G(s)` and in `G_f`, its lattice | 3.1 |
| `I_n` | the standard space `(1_n, 1)`, signs `(1, …, 1)` | 3.1 |
| `ι_w, T_{w,j}` | the embedding of `GL_n(E_w)` in `G_f` at a split place, the Hecke operators there | 3.1 |
| `K(a), K_H` | the principal level of `a ∈ 𝓞_E`, the level cut out by `H` at places pairwise non-conjugate | 3.9 |
| `∫_{H\X}`, cutoff | integration over a quotient by a weight of mass one on orbits | 1.1 |
| `S_{Γ,K}(f), I_{Γ,K}(f)` | the weighted class sum and the class integral | 1.4 |
| `λ(V), ht_V` | the first minimum (cut at `1`) and the height | 4.2 |
| `mass(n)` | the mass of the standard space | 4.4 |
| `e_l` | the discrete-series kernel of a doubled parameter `l = 2λ` | 5.1 |
| cusp kernel | a minimal idempotent kernel on `G_∞(s)` with moment and decay | 5.1 |
| `𝒜(V, e, K)` | the forms of type `e` and level `K` on `V` | 5.1 |
| `ρ_{κ,e}, ρ, W_{κ,e}, v⁺_l` | the representation of weight `(κ, e)` of `GL_n(ℂ)^Φ`, the representation `z ↦ ρ_{κ,e}(z̄)` of `U(n)^Φ`, their space, the highest vector for `l` | 6.1 |
| `φ♮` | the function on `G(1)` attached to an algebraic form | 6.1 |
| test function, `a ⋆ 1_K` | locally constant compactly supported function on `G_f`; the test function of `a ∈ ℂ[G_f]` | 7.1 |
| `J^V_S(φ)`, `I_γ` | the part of the geometric side with characteristic polynomials in `S`, the orbital integral | 7.1 |
| `U(J), θ_V` | the unitary group of `(E^n, h_J)` over `E⁺`; the isomorphism `g ↦ xgx⁻¹` of `G(s)` onto its adelic points | 8.2 |
| `ℋ(G_f, K)` | the Hecke algebra of compactly supported `K`-bi-invariant functions | 8.4 |
| `c_l, π_l, ζ_l` | `∏_w c_{l_w}` on `G_∞(s)`, the discrete series it generates, its unit vector with coefficient `c_l` | 8.5 |
| `𝒜_0(U(J)), Π, m_cusp(Π)` | the cusp forms on `U(J)`, a cuspidal automorphic representation `Π_∞ ⊗ Π_f`, its multiplicity | 8.5 |

The discrete-series coefficients `c_λ` of `U(p, q)`, their formal degrees `d(λ)`, the Haar measures on the real
unitary groups (normalised so that `U(n)` has mass one) and the gap condition on parameters are those of
HolomorphicDiscreteSeriesOfUnitaryGroups §§1.1, 1.4, 4.1; for parameters of gap at least `500n³`,
HolomorphicDiscreteSeriesOfUnitaryGroups Layer 9 (Comparison with the standard theory) identifies `c_λ` and `d(λ)`
with a coefficient and the formal degree of the discrete series of `U(p, q)` of Harish-Chandra parameter `λ` (its 9.3
(d), 9.5 (a)), and 8.5 uses it. A doubled parameter `l ∈ ℤ^n` for the signs `s` has *gap `h`*,
as in HolomorphicDiscreteSeriesOfUnitaryGroups §4.1 (c), if its entries are distinct, congruent to `n − 1` modulo `2`,
and `|l_i − l_j| ≥ 2h` whenever `s_i ≠ s_j`. The weight representations of Layer 6 are modelled on the polynomial
representations of `GL_n` with their minor-product bases of IntegralRepresentationsOfGeneralLinearGroups §§1.1, 1.2,
and the labels and label idempotents of `GL_n(𝔽_q)` in 7.2 are those of
IntegralRepresentationsOfGeneralLinearGroups §5.3. Weil data of a CM field are those of
WeilRepresentationsOnBanachSpacesOfData §3.1.

Sums over infinite sets of classes are not used: a class sum is taken where the classes are finite in number, and a
class with infinite stabiliser has weight zero.

**Origin and method.** Every section of Layers 1–7 that states something carries `*Origin:*` (`published:`,
`adapted from`,
`particular to this proof:`, `this roadmap's own formulation:`, or `definitions and conventions`) and
`*Method of the formal proof:*`, which says how the shorter formal proof proves it; `[ShortProof]` names the file and
declaration of that proof. The sections of Layer 8, which the formal proof does not contain, carry `*Proof route:*` in
place of the method of the formal proof and have no `[ShortProof]` line. A contribution may state a result more
generally or prove it otherwise. The names `New.…`
after `[ShortProof]` are declarations of that proof, at the repository and commit given in the family index, not of
Mathlib or Tau Ceti.

## Layer 1: Integration over quotients and class sums

### 1.1 Quotient integrals by cutoffs

*Origin:* adapted from invariant integration on quotients (Weil's formula) and unfolding, in the form of Kallenberg
(2007), as cited in Gentner and Last (2011), §2, and, classically, Bourbaki, *Intégration* VII (1963): here the
integral over a quotient is a weighted integral on the space itself, for measurable actions that need not come from a
subgroup, with existence of the weight and independence of it in place of existence and uniqueness of a quotient
measure.

*Method of the formal proof:* (a) is Tonelli's theorem for the defining identity of a cutoff. (b) follows by unfolding
twice: both distributions are computed from `μ` through (a). For a proper action a cutoff is the quotient of a
compactly supported bump by the integral of its translates; for a discrete subgroup one takes a Borel fundamental
domain. Unimodularity compares the quotient integral of a right translate of the weight with that of the weight. The
library has the unfolding identity in Mathlib's model with a fundamental domain and a measure on `G ⧸ Γ`
(`QuotientGroup.integral_eq_integral_automorphize`); the bridge to the model here is not small.

Layers 1–7 integrate over orbit spaces and over quotients with this device, in their statements and in their proofs;
they use no measure on the orbit space. For a closed unimodular subgroup of a unimodular group acting by left
multiplication, 8.1 identifies this integral with the integral against the quotient measure.

Let a group `H` with an s-finite measure `ν` invariant under inversion act measurably on a measure space `(X, μ)`, with
`μ` s-finite and `H`-invariant. A *cutoff* is a measurable `β : X → [0, ∞]` with `∫_H β(h·x) dν(h) = 1` for every
`x ∈ X`. For a measurable `H`-invariant `F`, `∫_{H\X} F` means `∫_X F·β dμ` (as a lower integral for `F ≥ 0`, as a
Bochner integral when `Fβ` is `μ`-integrable). For a discrete subgroup `Γ` of a second countable locally compact
group `G` acting by left multiplication, with counting measure on `Γ` and a left Haar measure `μ` on `G`, this is
`∫_{Γ\G}`, and `vol(Γ\G) = ∫_{Γ\G} 1`.

(a) For a cutoff `β`, the map `(x, h) ↦ h·x` carries `(βμ) × ν` to `μ`. Hence
`∫_X (∫_H f(h·x) dν(h)) β(x) dμ(x) = ∫_X f dμ` for measurable `f ≥ 0`, and for `μ`-integrable `f` with both sides
integrable.

(b) For a measurable `H`-invariant `F`, the distribution of `F` under `βμ` is the same for every cutoff `β`. More
generally, if `σ : (L, ϱ) → (H, ν)` is measure preserving, `(Z, m)` is a measure space, `T : Z → X` is measurable,
`ϱ` and `m` are s-finite, and `(z, l) ↦ σ(l)·T(z)` carries `m × ϱ` to `μ`, then `F` under `βμ` and `F ∘ T` under `m`
have the same distribution.

(c) A cutoff exists when `X` is a σ-compact Hausdorff space, the action is continuous and proper, and `ν` is a nonzero
right invariant measure finite on compact sets; in particular for a discrete subgroup `Γ` of `G` as above.

(d) For `Γ ⊂ G` discrete and `f ∈ L¹(G)`, `g ↦ ∑_{γ∈Γ} f(γg)` is integrable over `Γ\G` and
`∫_{Γ\G} ∑_{γ∈Γ} f(γg) dg = ∫_G f dμ`. If `vol(Γ\G) < ∞` then `μ` is also right invariant; if `Γ\G` is compact then
`vol(Γ\G) < ∞`.

(e) *Moving the quotient.* Let `R ⊂ G` be a subgroup with left invariant measures `ν` on `R` and `μ` on `G`, let
`Λ → R` be a homomorphism from a countable group, and let `β` be a measurable weight on `G` whose `Λ`-translates sum
to `1`. For `F` on `R × G` measurable, invariant under the diagonal action of `Λ` and integrable for `β(s)·(ν × μ)`:
`∫_G β(x) ∫_R F(s, x) dν(s) dμ(x) = ∫_R β(s) ∫_G F(s, x) dμ(x) dν(s)`.

(f) *Periodic means.* Let `B` be a second countable locally compact abelian group with Haar measure `μ` and `B₀ ⊂ B` a
discrete cocompact subgroup. If `F ∈ L¹(B)` and `G` is continuous and `B₀`-periodic with
`G(x) = ∑_{γ∈B₀} F(γ + x)` for all `x`, then the mean of `G` over `B/B₀` (Haar probability measure) is
`vol(B₀\B)⁻¹ ∫_B F dμ`.

AnalyticNumberTheoryPartII §5.3k states Weil's formula for a closed subgroup on whose points the modular characters
agree, with the quotient measure it determines, and the unfolding over a discrete subgroup of a unimodular group.
As its quotient measure is the quotient integral here for unimodular groups (8.1), it gives the identity of (d) when
`G` is
unimodular; it gives neither the second sentence of (d) nor (a)–(c), which concern actions that need not come from a
subgroup acting on its group.

**In standard terms.** For a closed unimodular subgroup `H` of a unimodular second countable locally compact Hausdorff
group `G`, acting by left multiplication, `∫_{H\G} F` is the integral of `F` against the quotient measure of
AnalyticNumberTheoryPartII §5.3k for the Haar measures `μ` and `ν`, and integrability over `H\G` is integrability for
that measure (8.1); for a discrete `Γ` in such a `G`, the identity of (d) is the unfolding identity of §5.3k and
`vol(Γ\G)` is the total mass of the quotient measure. The quotient integrals over `Γ_V\G(s)`, `Z_γ\G(s)` and
`(Γ_W ∩ N_a)\N_a` in Layers 4–7 are of this kind.

*Needs:* Mathlib `MeasureTheory.Measure.IsHaarMeasure`, `MeasureTheory.lintegral_prod` (Tonelli),
`MeasureTheory.integral_prod` (Fubini).

[ShortProof], `Lib/Adelic/QuotientMeasure/Basic.lean` (`New.IsCutoff`, `New.IsCutoff.measurePreserving`,
`New.identDistrib_orbitMeasure_of_unfold`, `New.identDistrib_orbitMeasure`, `New.hasCutoff_of_proper`,
`New.integral_quotMeasure_tsum`, `New.isMulRightInvariant_of_finite_covolume`,
`New.isFiniteMeasure_quotMeasure_of_cocompact`, `New.quotMean_tsum_eq_integral`);
`Lib/Adelic/QuotientMeasure/MovingTheQuotient.lean` (`New.integral_cutoff_swap`)

### 1.2 Quotients in stages and two vanishing criteria

*Origin:* adapted from invariant integration on quotients in stages (Bourbaki, *Intégration* VII (1963)): here for the
quotient integrals of 1.1, with two criteria for the vanishing of the integral of an invariant function.

*Method of the formal proof:* (a) by uniqueness of Haar measure for the push-forward of the quotient integral; (b) by
1.1 (b) applied to `(z, a) ↦ i(a)T(z)`. For (c) the inner integral over `Γ\H` in (b) is computed in two ways, once
through the mean and once through the scaling of Haar measure of `H`; (d) is (c) for the closed group of left
translations preserving the defect `F(s u y) − c F(s y)`, with the Dirac mass at `u`.

Let `G`, `H` be second countable locally compact groups with left Haar measures `μ`, `ν`, and `Γ ⊂ G`, `Λ ⊂ H` discrete
subgroups; integrals over `Γ\G` and `Λ\H` are those of 1.1, with values in a real Banach space (a complex Banach space
in (c) and (d)).

(a) If `μ` and `ν` are also right invariant and `π : H → G` is a continuous surjective homomorphism with `π(Λ) ⊂ Γ`,
there is `c ∈ ℝ` with `∫_{Λ\H} F(π(r)) dr = c ∫_{Γ\G} F` for every measurable left `Γ`-invariant `F`.

(b) Let `i : H → G` be an injective homomorphism with `i(Λ) = Γ`, `(Z, m)` an s-finite measure space and `T : Z → G`
such that `(z, a) ↦ i(a)T(z)` carries `m × ν` to `μ`. If `F` is measurable, left `Γ`-invariant and integrable over
`Γ\G`, then `z ↦ ∫_{Λ\H} F(i(a)T(z)) da` is `m`-integrable and
`∫_{Γ\G} F = ∫_Z ∫_{Λ\H} F(i(a)T(z)) da dm(z)`. If moreover `ν` is right invariant and `i` is a closed embedding, then
for such `F` the function `g ↦ ∫_{Λ\H} F(i(a)g) da` is integrable over `i(H)\G` and
`∫_{Γ\G} F = ∫_{i(H)\G} ∫_{Λ\H} F(i(a)g) da dg`, the outer integral being the quotient integral (1.1) for the action of
`H` on `G` by left translation through `i`, with the measures `ν` and `μ`.

(c) Let `F` be continuous and left `Γ`-invariant, `H ⊂ G` a closed subgroup containing `Γ`, `(C, κ)` a probability
space, `t : G × C → H` measurable in its second argument, and `d ≥ 0` such that right translation by every `t(x, b)`
multiplies the Haar measure of `H` by `d`. If `a ∈ ℂ`, `a ≠ d`, and `∫_C F(s·t(x, b)·x) dκ(b) = a·F(sx)` for all
`s ∈ H` and `x ∈ G`, then `∫_{Γ\G} F = 0`.

(d) Let `F` be continuous, left `Γ`-invariant and integrable over `Γ\G`. If `F(uy) = c·F(y)` for all `y`, for some
`u ∈ G` and `c ∈ ℂ` with `|c| = 1`, `c ≠ 1`, then `∫_{Γ\G} F = 0`.

*Needs:* 1.1.

[ShortProof], `Lib/Adelic/QuotientMeasure/UnfoldingInStages.lean` (`New.exists_integral_comp_quotMeasure_eq_smul`,
`New.integral_quotMeasure_stages`, `New.integral_quotMeasure_eq_integral_cosetMeasure`,
`New.Exchange.exists_integral_stages_eq_mul`, `New.integral_quotMeasure_eq_zero_of_mean`,
`New.integral_quotMeasure_eq_zero_of_twist`)

### 1.3 Orbit unfolding and integration in Iwasawa coordinates

*Origin:* adapted from the published theory of the unfolding of Poincaré-type sums and of Iwasawa integration on
reductive groups: here for abstract groups with a decomposition `G = N·i(M)·K` given as a hypothesis, up to a constant
that is not computed, combined with a discrete quotient.

*Method of the formal proof:* (1) by uniqueness of Haar measure: the measure `dn dm dk` in the coordinates `i(m)nk` is
left and right invariant. (2) by unfolding in stages along `Γ = (Γ ∩ N)·i(Δ)` (1.2) and the compactness of
`(Γ ∩ N)\N`. (3) by indexing the orbit by `Γ/Γ_y` and 1.1 (d) for the pair `Γ_y ⊂ Γ`.

(1) Let `G` be a unimodular second countable locally compact group, `N ⊂ G` a closed unimodular subgroup, `K ⊂ G` a
compact subgroup, `M` a unimodular second countable locally compact group, `i : M → G` a continuous homomorphism with
`G = N·i(M)·K`, and `w : M → (0, ∞)` continuous with `∫_N f(i(m) n i(m)⁻¹) dn = w(m) ∫_N f(n) dn`. Then there is
`d ∈ [0, ∞]` with `∫_K ∫_M ∫_N f(i(m)nk) dn dm dk = d·∫_G f` for all measurable `f ≥ 0`.

(2) If moreover `i(a) ∈ N` only for `a = 1`, and `Γ ⊂ G` is discrete with `Γ ∩ N` cocompact in `N` (which makes `N`
unimodular, 1.1 (d), so that this need not be assumed) and `Γ = (Γ ∩ N)·i(Δ)` for a countable subgroup `Δ ⊂ M`, there
is `c ≠ 0` such that for every measurable `F` on `G`, left invariant under `N` and under `Γ`, integrability of
`(m, k) ↦ w(m)F(i(m)k)` on `(Δ\M) × K` implies integrability of `F` over `Γ\G`, and
`∫_{Γ\G} F = c ∫_{Δ\M} ∫_K w(m) F(i(m)k) dk dm`.

(3) Let a discrete subgroup `Γ ⊂ G` act through a homomorphism on a countable set `Y`, and let `k_y` (`y ∈ Y`) be
measurable functions on `G` with `k_{γy}(γx) = k_y(x)`. Then `∫_{Γ\G} ∑_{z∈Γy} k_z = ∫_{Γ_y\G} k_y`, `Γ_y` the
stabiliser of `y`, either side being absolutely integrable if the other is.

AdelicAlgebraicGroups §3.1 states the Iwasawa integration formula for connected reductive groups with an admissible
maximal compact subgroup and the constant fixed; (1)–(2) are the abstract statements the formal proof checks by hand
for one parabolic subgroup of a unitary group (the stabiliser of an isotropic line), where the constant is not needed.

*Needs:* 1.1, 1.2.

[ShortProof], `Lib/Adelic/QuotientMeasure/IwasawaUnfolding.lean` (`New.integral_tsum_eq_integral_tsum_block`,
`New.integral_tsum_orbit_eq_integral_stabilizer`, `New.lintegral_iwasawa`, `New.integral_quotMeasure_iwasawa`)

### 1.4 Level spaces, Hecke operators and class sums

*Origin:* definitions and conventions.

Let `G` be a group, `Γ, K ⊂ G` subgroups, `π` a representation of `G` on a module `W` over a commutative ring `A`.

- For a character `χ : K → A^×`, the *level space* `W^{K,χ} = {v ∈ W : π(k)v = χ(k)v for all k ∈ K}`; `W^K` for
  `χ = 1`.
- For `f : G → A` with `f(gk) = f(g)` and finitely many cosets `gK` in its support, the *Hecke operator*
  `π(f)v = ∑_{gK} f(g)π(g)v` on `v ∈ W^K` (independent of the representatives); for `g ∈ G` the operator of the
  indicator of `KgK`.
- The *stabiliser* `Γ_g = Γ ∩ gKg⁻¹`. For `f : G → W` with `W` a `ℚ`-vector space, left `Γ`-invariant and right
  `K`-invariant, the *class sum* `S_{Γ,K}(f) = ∑_{ΓgK} f(g)/#Γ_g` over `Γ\G/K` (a class with infinite stabiliser has
  weight `0`).
- `(Γ, K)` has *finite type* if `G` is a topological group, `K` is compact and open, `Γ\G/K` is finite and every `Γ_g`
  is finite.
- For `(Γ, K)` of finite type and a left `Γ`-invariant `f` that is right invariant under an open `J ⊂ K`, the *class
  integral* `I_{Γ,K}(f) = [K : J]⁻¹·S_{Γ,J}(f)` (the integral over `Γ\G` for the Haar measure with `vol(K) = 1`; 1.5
  shows that it does not depend on `J`).
- For a compact subgroup `H` of a topological group `G` and a representation in which every vector is fixed by an open
  subgroup, the *compact mean* `e_H v = [H : H_v]⁻¹ ∑_{h ∈ H/H_v} π(h)v` (`H_v ⊂ H` open, fixing `v`).

For `K` compact and `H ⊂ G` open, `vol(H ∩ K)·[K : H ∩ K] = vol(K)` for every left Haar measure.

**In standard terms.** Let `G` be locally profinite, `K` compact and open, `A = ℂ` and `π` smooth. With the Haar
measure giving `K` volume one, the Hecke operator of a `K`-bi-invariant `f` with finitely many cosets in its support
is the convolution operator `v ↦ ∫ f(g)π(g)v dg` on `W^K` of the Hecke algebra `ℋ(G, K)` of compactly supported
`K`-bi-invariant functions, and the operator of `KgK` is the operator of the double coset `KgK` on invariants of
AutomorphicFormsOnReductiveGroups §0.6; `f ↦ ∑_D f(D)·D` identifies `ℋ(G, K)` with the double-coset ring of
SmoothRepresentationsOfLocalGroups §SR.1.2 (8.4 (b)).

[ShortProof], `Lib/Adelic/Hecke/Basic.lean` (`New.levelSpace`, `New.heckeFun`, `New.heckeCoset`, `New.classAut`,
`New.classSum`, `New.relIndex_mul_measure_inf`, `New.heckeFun_eq_sum`, `New.heckeFun_heckeFun`);
`Lib/Adelic/Hecke/ClassSums.lean` (`New.HasFiniteType`, `New.classIntegral`, `New.compactMean`)

### 1.5 Change of level for class sums, and means over compact subgroups

*Origin:* adapted from the sums over double cosets weighted by the inverse orders of the stabilisers, in the theory of
abstract Hecke operators (Shimura (1971), ch. 3) and of algebraic modular forms (Gross (1999); Greenberg and Voight
(2014)): here for an abstract topological group with subgroups `Γ` and `K`, for functions with values in a
`ℚ`-vector space, with the means over compact subgroups.

*Method of the formal proof:* double counting of the fibres of `Γ\G/K′ → Γ\G/K`: over the class of `g`, the classes of
`K′` are the `Γ_g`-orbits on `K/a⁻¹K′a`, and the orbit-stabiliser count gives the index. The compact mean is an average
over the finite quotient `H/H_v`.

(a) Let `G` be a topological group and `Γ, K, K′ ⊂ G` subgroups with `(Γ, K)` and `(Γ, K′)` of finite type, and
`a ∈ G` with `a⁻¹K′a ⊂ K`. For `f : G → W` (`W` a `ℚ`-vector space) left `Γ`-invariant and right `K`-invariant,
`S_{Γ,K′}(g ↦ f(ga)) = [K : a⁻¹K′a]·S_{Γ,K}(f)`. Hence `I_{Γ,K}(f)` does not depend on the open `J ⊂ K` fixing `f`; it
is additive, commutes with additive maps of the values, and `I_{Γ,K}(g ↦ f(gb)) = I_{Γ,K}(f)` for `b ∈ G`.

(b) Let `H` be a compact subgroup of a topological group `G` and `(π, V)` a complex representation in which every
vector is fixed by a neighbourhood of `1`. Then `e_H` is a well defined linear projector onto `V^H`, with
`π(h)e_H = e_H = e_Hπ(h)` for `h ∈ H`; it commutes with every linear map that commutes with `π(H)`; and
`B(e_H x, y) = B(x, e_H y)` for every `π`-invariant positive definite hermitian form `B`.

*Needs:* 1.4.

[ShortProof], `Lib/Adelic/Hecke/ClassSums.lean` (`New.classSum_eq_relIndex_smul`, `New.classIntegral_eq_classSum_mul`,
`New.classIntegral_sum`, `New.compactMean_eq_self`, `New.IsUnitary.compactMean_adjoint`)

## Layer 2: Adeles and ideles of a totally complex field

### 2.1 Adeles, the standard character and Haar measures

*Origin:* definitions and conventions.

Let `E` be a totally complex number field with a complex embedding `Φ_w` chosen for each infinite place `w`; `f` is the
number of infinite places, `r₂ = f`, `d_E` the discriminant and `rd_E = |d_E|^{1/[E:ℚ]}`. When `E` is a CM field, `E⁺`
is its maximal totally real subfield, `x ↦ x̄` complex conjugation, and the `Φ_w` form a CM type. The *5040 condition*
on a CM field `E` is that `E` contains a primitive root of unity of order `5040`.

- The adele ring `𝔸` of `E` is identified with `ℂ^Φ × 𝔸_f` through `Φ` (each `E_w` is `ℂ` by `Φ_w`); `E → 𝔸` is the
  diagonal embedding, `Ô = ∏_w 𝒪_w ⊂ 𝔸_f` the integral finite adeles. For a finite place `w`: `E_w`, `𝒪_w`, `k_w`,
  `q_w = #k_w`, a uniformiser `ϖ_w`. For CM `E`, conjugation acts on `𝔸_f` and on `𝔸` componentwise, and a finite place
  `w` is *split* if `w̄ ≠ w`.
- `ψ_f` is the continuous character of `𝔸_f` that is trivial on `Ô` and equals `e(Tr_{E/ℚ} a)` at `a ∈ E` (it is
  unique, as `𝔸_f = E + Ô`); the *standard character* is `ψ(x) = e(−∑_w 2 Re x_w)·ψ_f(x_f)`.
- Haar measures: on `E_w` the one with `vol(𝒪_w) = 1`; on `𝔸_f` the one with `vol(Ô) = 2^{r₂}/√|d_E|`; on each `ℂ`
  Lebesgue measure; on `𝔸` the product; on `𝔸^n` and `M_{m×n}(𝔸)` the products.
- The *module* of an idele `a` is `|a|_𝔸 = ∏_w |a_w|² · ∏_v ‖a_v‖_v` (normalised absolute values at the finite places),
  and `|a|_f = ∏_v ‖a_v‖_v` for a finite idele.

[ShortProof], `Lib/Adelic/Adeles/Basic.lean` (`New.𝔸`, `New.toAdele`, `New.Ô`, `New.CMType`, `New.HasPrimitiveRoot5040`);
`Lib/Adelic/Adeles/AdditiveCharacter.lean` (`New.ψf`, `New.stdAddChar`, `New.volÔ`, `New.volume_Ô`);
`Lib/Adelic/Adeles/IdeleModulus.lean` (`New.ideleAbs`, `New.finIdeleAbs`)

### 2.2 The field is a self-dual lattice of covolume one in its adeles

*Origin:* adapted from the additive self-duality of a number field in its adeles, Tate (1950), Theorem 4.1.4: here
for a totally complex field with the normalisations of 2.1, with an explicit fundamental domain.

*Method of the formal proof:* a fundamental domain `F × Ô` for `E` acting on `ℂ^Φ × 𝔸_f`, with `F` a fundamental
parallelotope of `𝓞_E` in the Minkowski embedding, whose volume `2^{−r₂}√|d_E|` cancels that of `Ô`. For duality: an
adele that pairs trivially with `E` has finite part in `E` plus the inverse different after translation, and its
archimedean part is then determined by the rationality of the traces it produces.

(a) `E` is discrete in `𝔸`, `𝔸/E` is compact, and for some `R > 0` the set `B(0, R) × Ô` (`B(0, R)` the closed ball in
`ℂ^Φ`) contains a measurable fundamental domain for `E` of measure one; so `𝔸/E` has measure one. The same holds for
`E^n ⊂ 𝔸^n` and `M_{m×n}(E) ⊂ M_{m×n}(𝔸)`. Consequently a compact subset of `M_{m×n}(𝔸)` contains only finitely many
rational matrices.

(b) `ψ` is trivial on `E`. If `x ∈ 𝔸` has `ψ(ax) = 1` for all `a ∈ E`, then `x ∈ E`; if `ψ(ux) = 1` for all `u ∈ 𝔸`,
then `x = 0`. So `a ↦ (x ↦ ψ(ax))` is an injective homomorphism from `E` to the continuous unitary characters of `𝔸/E`
whose common kernel is `E`; the same holds for `a ∈ M_{n×m}(E) ↦ (x ↦ ψ(tr(a x)))` on `M_{m×n}(𝔸)`.

(c) For CM `E`, `ψ(½(x + x̄)) = ψ(x)` for `x ∈ 𝔸`, and `ψ_f(½(x + x̄)) = ψ_f(x)` for `x ∈ 𝔸_f`.

AnalyticNumberTheoryPartII §5.3h, a general theorem on Schwartz–Bruhat functions and Poisson summation over every
number field, applied to `V = E`, `E^n` and `M_{m×n}(E)` with the trace pairing, gives (b) and, of (a), the
discreteness of `E`, the compactness of `𝔸/E` and its volume one; what (a) adds is the fundamental domain inside
`B(0, R) × Ô`. The standard character of AnalyticNumberTheoryPartII §5.3g is `x ↦ ψ(−x)` for the `ψ` of 2.1 (it is
`e(2 Re z)` at a complex place and `e(−Tr_{E/ℚ} a)` at `a ∈ E` in the finite adeles; for `E = ℚ(i)`, `ψ_f(1/5)` is
`e(2/5)` here and `e(−2/5)` there), and its self-dual measure on `𝔸` is the measure of 2.1; (a) and (b) are the same
statements for `ψ` and for `ψ(−·)`.

*Needs:* 2.1; Tau Ceti `TauCeti.GlobalNumberFields.discreteTopology_principalSubgroup`,
`TauCeti.GlobalNumberFields.compactSpace_quotient_principalSubgroup`.

[ShortProof], `Lib/Adelic/Adeles/AdditiveCharacter.lean` (`New.exists_hasFundDomain_toAdele`,
`New.isCovolOneLattice_ratAdeles`, `New.isCovolOneLattice_ratVectors`, `New.isCovolOneLattice_ratMatrices`,
`New.finite_setOf_map_toAdele_mem`); `Lib/Adelic/Adeles/StrongApproximation.lean` (`New.stdAddChar_toAdele`,
`New.mem_ratAdeles_of_stdAddChar_eq_one`, `New.eq_zero_of_forall_stdAddChar_eq_one`, `New.isDualFamily_ratAdeles`,
`New.isDualFamily_ratMatrices`, `New.stdAddChar_inv_two_mul_add_star`)

### 2.3 Strong approximation omitting finite places, and a one-sided Poisson inequality

*Origin:* adapted from strong approximation for the additive group (Cassels (1967), ch. II §15) and from Poisson
summation in the adeles (Tate (1950)): here the places left out form a nonempty set of finite places, the infinite
places being kept, and the summation formula becomes a one-sided bound, for a nonnegative integrable function that
need only be lower semicontinuous at the finitely many rational points on the left.

*Method of the formal proof:* (a) by duality: the closure of `E + 𝔸_S` is a closed subgroup containing `E`; a
character of `𝔸/E` trivial on it is `ψ(r·)` with `r ∈ E` (2.2 (b)), and `ψ(r·)` trivial on `𝔸_S` forces `r = 0`. The
matrix form follows coordinatewise after moving by `x`. (b) the function is smoothed by a bump on `𝔸/E`; Fourier
inversion on the compact group `𝔸/E` with the dual family of 2.2 (b) bounds the periodised smoothed function by `S`
(1.1 (f)), and lower semicontinuity lets the bump shrink.

Let `E` be totally complex. For a set `S` of finite places, `𝔸_S ⊂ 𝔸` is the set of adeles that vanish at the infinite
places and at the finite places outside `S`.

(a) If `S` is nonempty, `E + 𝔸_S` is dense in `𝔸` (recalled from AdelicAlgebraicGroups §4.2, below). For CM `E`,
every `x ∈ GL_n(𝔸)` and every `m`, the set `{x⁻¹ξ + u : ξ ∈ M_{n×m}(E), u ∈ M_{n×m}(𝔸_S)}` is dense in
`M_{n×m}(𝔸)`.

(b) Let `F : 𝔸 → ℝ` be integrable with `F ≥ 0`, `T ⊂ E` finite with `F` lower semicontinuous at every point of `T`,
and `S ≥ 0` such that `∑_{ξ∈Y} |∫_𝔸 ψ(−ξx)F(x) dx| ≤ S` for every finite `Y ⊂ E` (Haar measure of 2.1). Then
`∑_{t∈T} F(t) ≤ S`.

The first sentence of (a) is the case of the additive group of `E` of AdelicAlgebraicGroups §4.2 (strong approximation
for unipotent groups: rational points are dense away from every nonempty set of places, which need not be finite nor
contain the infinite places), once `𝔸` is identified with the adele ring of `E` (2.1); the second sentence follows from
it for the vector group `M_{n×m}`, because `M_{n×m}(𝔸_S)` is stable under `GL_n(𝔸)`. The formal proof proves the
first sentence by the duality above instead. The equality of Poisson summation for Schwartz–Bruhat functions is
AnalyticNumberTheoryPartII §5.3h; (b) is an inequality for functions that need not be of that class.

*Needs:* 1.1, 2.1, 2.2; AdelicAlgebraicGroups §4.2 (strong approximation for unipotent groups).

[ShortProof], `Lib/Adelic/Adeles/StrongApproximation.lean` (`New.strong_approximation`,
`New.Exchange.denseRange_rat_matrix_add`, `New.IsDualFamily.sum_le_of_fourier`)

### 2.4 Scaling of Haar measure by `GL_n` over the adeles, and idelic generators of ideals

*Origin:* adapted from the published theory of the module of an idele: here the scaling of Haar measure on vectors and
matrices over the adeles by `GL_n`, through the determinant, with idelic generators of ideals.

*Method of the formal proof:* the local scaling `‖a‖_v` of Haar measure on `E_v` by `a ∈ E_v^×`, the product over the
places of the restricted product, and the passage to `GL_n` through the factor `|det|` of a general element of
`GL_n` acting on a Haar measure. The module as a continuous homomorphism on the ideles and the product formula are in
the library (`TauCeti.GlobalNumberFields.ideleNorm`, `TauCeti.GlobalNumberFields.continuous_ideleNorm`,
`TauCeti.GlobalNumberFields.ideleNorm_unitEmbedding`). Mathlib has the Haar character of a distributive action
(`MeasureTheory.distribHaarChar`), but at the pinned revisions its value on `E_w^×` is not computed; that local
computation is part of (a). On Tau Ceti's main branch, later than the revision pinned here:
`IsDedekindDomain.HeightOneSpectrum.distribHaarChar_adicCompletion` (the Haar character of a unit of `E_w` is its
norm).

Let `E` be a number field, totally complex where `𝔸` occurs.

(a) For a finite idele `a`, multiplication by `a` multiplies Haar measure on `𝔸_f` by `|a|_f`; at a finite place `w`,
multiplication by `a ∈ E_w^×` multiplies Haar measure on `E_w` by `‖a‖_w`.

(b) For `a ∈ GL_n(𝔸_f)` and every Haar measure `μ` on `𝔸_f^n`, `μ(aA) = |det a|_f·μ(A)` for measurable `A`.

(c) For `a ∈ GL_n(𝔸)`, `vol(aA) = |det a|_𝔸·vol(A)` on `𝔸^n` with the measure of 2.1; for `a ∈ GL_n(𝔸)` and
`b ∈ 𝔸^×`, the map `X ↦ aXb` on `M_{n×1}(𝔸)` multiplies the measure by `|b^n det a|_𝔸`.

(d) For CM `E`: `|ā|_𝔸 = |a|_𝔸`, and `|a|_𝔸 = 1` when `āa = 1`.

(e) (idelic generators) For a nonzero ideal `I ⊂ 𝓞_E` there are a finite idele `t ∈ Ô` with `t_w = 1` at the places not
dividing `I` and `v_w(t_w)` the multiplicity of `w` in `I` elsewhere, and a ring homomorphism `Ô → 𝓞_E/I` extending the
reduction of `𝓞_E`, whose kernel is `IÔ = tÔ`; and for `y ∈ 𝔸_f`, `cy ∈ Ô` for all `c ∈ I` if and only if `ty ∈ Ô`.

*Needs:* 2.1; Tau Ceti `TauCeti.GlobalNumberFields.ideleNorm`, `TauCeti.GlobalNumberFields.ideleNorm_unitEmbedding`.

[ShortProof], `Lib/Adelic/Adeles/IdeleModulus.lean` (`New.genIndex_eq_inv_finIdeleAbs`, `New.genIndex_eq_inv_norm`,
`New.map_mulVec_haar_finAdele`, `New.volume_map_mulVec_adele`, `New.volume_map_mul_mul_adele`, `New.ideleAbs_star`,
`New.ideleAbs_eq_one_of_mem_unitary`); `Lib/Adelic/Adeles/LocalFactors.lean`
(`New.exists_reduction_and_idele_generator`)

## Layer 3: Hermitian spaces and unitary groups over the adeles

### 3.1 Hermitian spaces with an adelic frame and their unitary groups

*Origin:* definitions and conventions.

Let `E` be a CM field with a CM type `Φ` (2.1) and `n ≥ 1`.

- A *sign vector* is `s ∈ {±1}^n`; `diag(s)` is the diagonal matrix. The same `s` is used at every infinite place.
- `G_∞(s) = ∏_w U(diag s)(ℂ)` over the infinite places `w` (each factor `≅ U(p, q)`, `p = #{i : s_i = 1}`), with the
  product of the Haar measures of HolomorphicDiscreteSeriesOfUnitaryGroups §1.1 (c). `G_f = U(1_n)(𝔸_f) = {g ∈ GL_n(𝔸_f) :
  g*g = 1}` with the subspace topology, and `G(s) = G_∞(s) × G_f`; `G_f` is embedded in `G(s)` by `g ↦ (1, g)`.
  `K₀ = G_f ∩ GL_n(Ô)`. A *level* is an open subgroup `K ⊂ K₀`. `G_f` carries the Haar measure with `vol(K₀) = 1`,
  `G(s)` the product measure. For a finite place `w`, `g_w ∈ GL_n(E_w)` is the component of `g ∈ G_f`.
- A *hermitian space with an adelic frame of signs `s`* is a pair `V = (J, x)` of a hermitian `J ∈ M_n(E)` and
  `x ∈ GL_n(𝔸)` with `x*Jx = diag(s)` at every infinite place (`J` read through `Φ_w`) and `x*Jx = 1_n` at every
  finite place. So `(E^n, h_J)` has signature `(p, n − p)` at every infinite place and is isometric to the standard
  form `⟨1, …, 1⟩` at every finite place. Here a *space* is the hermitian space `(E^n, h_J)` of the literature
  together with the frame `x`, and `G(s)` is, through `g ↦ xgx⁻¹`, the group of adelic points of the unitary group of
  `(E^n, h_J)` over `E⁺` (8.2).
- Its *rational points*: `γ ↦ x⁻¹γx` embeds `U(J)(E⁺) = {γ ∈ GL_n(E) : γ*Jγ = J}` in `G(s)`; the image is `Γ_V`, and
  `Γ_{V,f}` is its image in `G_f`. Its *lattice* is `Λ_V = {y ∈ E^n : (x⁻¹y)_f ∈ Ô^n}`, and the *length* `‖y‖_V` is the
  Euclidean norm of the vector `((x⁻¹y)_{w,i})_{w,i} ∈ ℂ^{Φ×n}`.
- The *moved space* `V·g = (J, xg)` for `g ∈ G(s)`; the *standard space* `I_n = (1_n, 1)`, of signs `(1, …, 1)`; the sum
  `V ⊕ V′` of spaces with frames (signs concatenated), and reindexing are spaces; under the 5040 condition so is the
  negative `(−J, εx)` of signs `−s`, where `ε` is the idele equal to `1` at the infinite places whose finite part is a
  unit of `Ô` with `ε̄ε = −1` (3.4 (a)).
- At a split place `w`, `ι_w : GL_n(E_w) → G_f` is the homomorphism with component `g` at `w`, the conjugate of
  `(g^T)⁻¹` at `w̄`, and `1` elsewhere. For a representation of `G_f` and `0 ≤ j ≤ n`, `T_{w,j}` is the Hecke operator
  (1.4) of the double coset of `diag(ϖ_w 1_j, 1_{n−j})` under `GL_n(𝒪_w)`, acting through `ι_w` on the vectors fixed
  by `ι_w(GL_n(𝒪_w))`, as in WeilRepresentationsOnBanachSpacesOfData §9.2.
- Integrals over `Γ_V\G(s)` are those of 1.1.

**In standard terms.** Through `θ_V(g) = xgx⁻¹` (8.2 (a)), `G(s)`, `G_∞(s)`, `G_f` and `Γ_V` are the adelic,
archimedean, finite adelic and rational points of the unitary group `U(J)` of `(E^n, h_J)` over `E⁺`, `K₀` is the
stabiliser of the lattice `x_fÔ^n`, the closure of `Λ_V`, a level is an open subgroup of that stabiliser, integrals
over `Γ_V\G(s)` are integrals against the quotient measure (8.1), and at a split place `ι_w` and `T_{w,j}` are read in
`U(J)(E⁺_v) ≅ GL_n(E_w)` (8.2 (b)). The hermitian spaces over `E` that have an adelic frame of signs `s` are exactly
those isometric to the standard form at every finite place of `E⁺` and of signature `(p, n − p)`,
`p = #{i : s_i = 1}`, at every real place (8.2 (c)); the unitary groups of other hermitian spaces do not occur in this
roadmap.

[ShortProof], `Lib/Adelic/Unitary/Defs.lean` (`New.Gf`, `New.G`, `New.GInf`, `New.stdLevel`, `New.IsLevel`,
`New.Space`, `New.Space.ratEmbed`, `New.Space.Γ`, `New.Space.Γf`, `New.Space.baseLattice`, `New.stdSpace`,
`New.ofSplitPlace`, `New.heckeGL`); `Lib/Adelic/Unitary/ComponentsAndBlockSums.lean` (`New.Space.sum`,
`New.Space.neg`, `New.Space.move`, `New.Space.reindex`); `Lib/Weil/Unramified/SplitHecke.lean` (`New.heckeSplit`)

### 3.2 First properties of the adelic unitary groups

*Origin:* adapted from the published theory of adelic points of algebraic groups: here for the matrix groups of 3.1.

*Method of the formal proof:* (a) the rational matrices are discrete in the adelic ones (2.2 (a)); for definite signs
the archimedean factor is compact. (b) the restricted product structure of `𝔸_f` and the identity `g*g = 1` read at
`w` and `w̄`. (c) linear algebra. (d) the 5040 condition gives an integral finite idele `ν` with `ν̄ν = −1`, which turns
`diag(s)` into `1_n` at every finite place.

(a) `g ↦` (the adelic matrix of `g`) is a closed embedding of `G(s)` in `M_n(𝔸)`. `Γ_V` is discrete in `G(s)`; for
`s = (1, …, 1)`, `Γ_{V,f}` is discrete in `G_f`.

(b) For `g ∈ G_f` and a finite place `u` with `ū = w`, `g_w` is the conjugate of `((g_u)⁻¹)^T`; `g_w ∈ GL_n(𝒪_w)` for
almost all `w`, and `K₀ = {g : g_w ∈ GL_n(𝒪_w) for all w}`. For a set `S` of finite places, every `g` is `ab` with `a`
supported on `S ∪ S̄` and `b` trivial there, both in `K₀` if `g ∈ K₀`. A subgroup of `G_f` containing `K₀` and the
elements supported on `{w, w̄}` for every `w` is `G_f`. At a split place `w`, `ι_w` is a continuous injective
homomorphism onto the elements supported on `{w, w̄}`, and `ι_w(g) ∈ K₀` if and only if `g ∈ GL_n(𝒪_w)`; the same holds
for a finite set of split places pairwise non-conjugate.

(c) The matrix `J` of a space is invertible and hermitian, and an adelic matrix preserving the form `x*Jx` of 3.1 is an
element of `G(s)`.

(d) Under the 5040 condition, for every sign vector `s` there is a space with an adelic frame of signs `s`.

*Needs:* 2.1, 2.2, 3.1.

[ShortProof], `Lib/Adelic/Unitary/WeakApproximation.lean` (`New.G.isClosedEmbedding_adeleMatrix`, the instance
`DiscreteTopology W.Γf`); `Lib/Adelic/Adeles/StrongApproximation.lean` (`New.Space.discreteTopology_Gamma`);
`Lib/Adelic/Unitary/ComponentsAndBlockSums.lean` (`New.Gf.atPlace_star`, `New.Gf.exists_supportedOn_mul_trivialOn`,
`New.Gf.mem_of_stdLevel_le_of_supportedOn_le`, `New.range_ofSplitPlace`, `New.ofSplitPlace_mem_stdLevel`,
`New.ofSplitPlaces`, `New.Weil.normNegOne`, `New.signedSpace`); `Lib/Adelic/Unitary/GramMatrix.lean`
(`New.Space.isUnit_J`, `New.Space.isHermitian_J`, `New.G.ofMatrix`)

### 3.3 Landherr's theorem for locally standard spaces, and the Hasse principle for unitary cocycles

*Origin:* adapted from Landherr (1936), the Hasse principle for Hermitian forms over a quadratic extension of number
fields, and from Kneser (1969), §5.5: here for spaces that are isometric to the standard form at every finite place,
with the same signs at all infinite places, over a CM field with the 5040 condition; with the representation of `1`
by a possibly degenerate form and the Hasse principle for unitary cocycles of a cyclic extension of prime degree.

*Method of the formal proof:* the route does not pass through quadratic forms over `E⁺`: its global inputs are the
cyclic Hasse norm theorem and strong approximation (2.3). A totally positive element of `E⁺` that is locally a sum of
two squares in a quadratic algebra is a global norm;
this gives (b), representing `1` over `E` one column at a time, and an induction on the columns gives a rational
orthogonal frame with the prescribed signs, which is (a). For (c), Hilbert's theorem 90 for `GL_n` gives a rational
splitting, which (a) corrects to a unitary one. The library has Hasse's norm theorem for cyclic extensions
(`TauCeti.ClassFieldTheory.cyclicHasseNorm`).

Let `E` be a CM field with the 5040 condition.

(a) If `V = (J, x)` and `V′ = (J′, x′)` are spaces with adelic frames of the same signs `s`, there is `a ∈ GL_n(E)` with
`a*Ja = J′`. Moreover `a` and `g ∈ G(s)` can be chosen with `x′ = a⁻¹xg` and `x⁻¹(aγa⁻¹)x = g·(x′⁻¹γx′)·g⁻¹` for all
`γ ∈ U(J′)(E⁺)`; so the rational points of `V` and `V′` are conjugate in `G(s)`.

(b) A hermitian `K ∈ M_n(E)`, not necessarily invertible, that represents `1` over `𝔸` (`z*Kz = 1` for some
`z ∈ 𝔸^n`) represents `1` over `E`.

(c) Let `E′/E` be a Galois extension of CM fields of prime degree, `σ` a generator of its group, and `s ∈ U(1_n)(E′)`
with `s·σ(s)·…·σ^{[E′:E]−1}(s) = 1`. If `s = uσ(u)⁻¹` for some `u` in the finite adelic unitary group `U(1_n)(𝔸_{E′,f})`,
then `s = gσ(g)⁻¹` for some `g ∈ U(1_n)(E′)`.

HermitianFormsAndLattices §3.1 (Landherr's theorem for every quadratic extension of number fields) also implies (a),
without the 5040 condition: two spaces with adelic frames of the same signs are isometric to the standard form at
every finite place and have the same signature at every real place of `E⁺`, so `a` exists, and `g = x⁻¹ax′` then lies
in `G(s)` by 3.2 (c). For invertible `K`, (b) is HermitianFormsAndLattices §3.5 (a) with `U = ⟨1⟩`; the degenerate
case is not covered there.

**In standard terms.** Through 8.2, (a) is the case of Landherr's theorem (HermitianFormsAndLattices §3.1), under the
5040 condition, for hermitian spaces over `E` that are isometric to the standard form at every finite place of `E⁺`
and have one signature `(p, n − p)` at every real place: two such spaces with the same `p` are isometric, an isometry
`a` carries the unitary group `U(J′)` over `E⁺` onto `U(J)` by conjugation, and the second sentence of (a) writes this
conjugation in `G(s)` through `θ_V` and `θ_{V′}`.

*Needs:* 2.1, 2.3, 3.1, 3.2; Tau Ceti `TauCeti.ClassFieldTheory.cyclicHasseNorm`.

[ShortProof], `Lib/Adelic/Landherr.lean` (`New.Space.landherr`, `New.Space.exists_x_eq_and_ratEmbed_conj_eq`,
`New.Core.exists_form_eq_one`, `New.Core.exists_rat_frame_of_adelic`, `New.exists_sq_add_sq_quadraticAlgebra`,
`New.U.hasse_principle_coboundary`)

### 3.4 Witt's theorem over the integral finite adeles

*Origin:* adapted from Witt's extension theorem over semiperfect rings, First (2015), Corollary 4.9 (over a field,
Dieudonné (1955); for lattices, Jacobowitz (1962)): here over the integral finite adeles of a CM field with the 5040
condition, at all finite places at once, with orthonormal bases of unimodular forms and Witt's extension theorem for
primitive frames of equal, possibly degenerate, Gram matrix.

*Method of the formal proof:* the 5040 condition gives a skew unit `z ∈ Ô` (`z − z̄` invertible) and makes every unit
of `Ô` fixed by conjugation a norm. An orthonormal frame is built column by column from these norms; Witt's theorem is
proved over `Ô` with quasi-reflections `v ↦ v − σ⁻¹h(u, v)u` (`σ + σ̄ = h(u, u)`) and Eichler maps with integral data,
as over a field (HermitianFormsAndLattices §1.1).

Let `E` be a CM field with the 5040 condition.

(a) Every unit `u ∈ Ô` with `ū = u` is `ȳy` for some `y ∈ Ô^×`.

(b) Every hermitian `b ∈ M_n(Ô)` invertible over `Ô` satisfies `k*bk = 1` for some `k ∈ GL_n(Ô)`.

(c) If `X, Y ∈ M_{n×k}(𝔸_f)` are primitive (matrices over `Ô` with a left inverse over `Ô`) and `X*X = Y*Y`, then
`gX = Y` for some `g ∈ K₀`.

(d) (over any commutative ring with involution) For a hermitian `J`, an isotropic `x`, a vector `u` with `h(u, x) = 0`
and `ς` with `ς + ς̄ = h(u, u)`, the Eichler map `v ↦ v + h(u, v)x − h(x, v)(u + ςx)` is an isometry of `h_J`.

*Needs:* 2.1, 3.1; HermitianFormsAndLattices §1.1 (b) (Witt's extension theorem over a field).

[ShortProof], `Lib/Adelic/Witt/WittTheorem.lean` (`New.exists_unit_star_mul_self_eq`, `New.exists_orthonormal_Ô`,
`New.exists_orthonormal_frame_Ô`, `New.witt_Ô`, `New.witt_Ô_of_orthonormal`, `New.exists_unitary_eq_eichlerMap`,
`New.witt_of_quasiReflection_mem`)

### 3.5 Splittings along isotropic frames

*Origin:* adapted from the Witt decomposition of a Hermitian space over a field (HermitianFormsAndLattices §1.2) and
Witt's extension theorem (Dieudonné (1955); First (2015), Corollary 4.9): here along an isotropic frame of a space
with an adelic frame, with a complement that is again standard at every finite place.

*Method of the formal proof:* dual isotropic vectors are found over `E`; the complement has the right local invariants,
and Landherr's theorem (3.3) and Witt's theorem over `Ô` (3.4) give it an adelic frame.

Let `E` be a CM field with the 5040 condition, `V = (J, x)` a space with an adelic frame of signs `s`, and
`k ∈ M_{n×p}(E)` left invertible with `k*Jk = 0`. Then there are `m ≥ 0`, a sign vector `s₀ ∈ {±1}^m`, a space
`V₀ = (J₀, x₀)` with an adelic frame of signs `s₀`, and `l ∈ M_{n×p}(E)`, `i ∈ M_{n×m}(E)` with `l*Jl = 0`, `l*Jk = 1`,
`i*Ji = J₀`, `i*Jk = 0`, `i*Jl = 0`, such that `E^n` is the direct sum of the column spans of `k`, `i` and `l` (a
splitting of `V` over `V₀` along `k`, as in WeilRepresentationsOnBanachSpacesOfData §5.1); in particular `n = m + 2p`,
and the number of `+1` and of `−1` in `s` is each at least `p`.

The formal proof proves it for CM fields with Weil data (WeilRepresentationsOnBanachSpacesOfData §3.1), which include
the 5040 condition.

*Needs:* 3.1, 3.3, 3.4; HermitianFormsAndLattices §1.1 (b).

[ShortProof], `Lib/Adelic/Witt/IwasawaDecomposition.lean` (`New.Space.exists_splitting`,
`New.Space.card_eq_of_perp_subset`, `New.Space.card_le_card_preimage_of_isotropic`)

### 3.6 The Iwasawa decomposition of the adelic unitary group

*Origin:* adapted from the Iwasawa decomposition of reductive groups over local fields, Tits (1979), part 1, 3.3.2
and 3.8.1: here for the adelic unitary group of a space with an adelic frame, its maximal compact subgroup `K_∞K₀` and
the stabilisers of isotropic flags of a splitting.

*Method of the formal proof:* the abstract step: if every left invertible frame can be made block triangular by
`GL_p` and any two isotropic frames of the admissible kind are carried to each other by the compact group, then
`g = (radical)(Levi)κ`. The compact group acts transitively by Witt's theorem over `Ô` (3.4, with Gram matrix `0`) at the
finite places and by the unitary group of `ℂ^n` at the infinite places.

Let `E` be a CM field with the 5040 condition, `V` a space with an adelic frame of signs `s`, and `V = ⟨k⟩ ⊕ V₀ ⊕ ⟨l⟩`
a splitting along an isotropic frame `k` of `p` vectors (3.5). Let `K_max ⊂ G(s)` be the compact subgroup of the `g`
whose adelic matrix is unitary at every infinite place and integral at every finite place (so `K_max = K_∞ × K₀` with
`K_∞ = ∏_w U(diag s)(ℂ) ∩ U(n)`). For every weight function `wt : {1, …, p} → ℕ` (grouping the frame into blocks)
and every `g ∈ G(s)` there is `κ ∈ K_max` such that `gκ` carries the frame `k` to `k·b` for some `b ∈ GL_p(𝔸)` block
triangular for `wt`, and `gκ` is the product of an element of the unipotent radical of the stabiliser of the span of
`k` and of the Levi element `(b, u)` with `u ∈ G(s₀)` the adelic group of `V₀`.

The formal proof proves it for CM fields with Weil data, which include the 5040 condition. AdelicAlgebraicGroups §3.1
states `G(𝔸) = P(𝔸)K` for connected reductive groups and admissible maximal compact subgroups; whether `K_max` is
admissible there is not used.

*Needs:* 3.1, 3.4, 3.5.

[ShortProof], `Lib/Adelic/Witt/IwasawaDecomposition.lean` (`New.maxCompact`, `New.isCompact_maxCompact`,
`New.Space.Splitting.iwasawa_of_witt`, `New.Space.Splitting.iwasawa`,
`New.Space.Splitting.exists_eq_radicalElement_mul_levi_mul_isAdapted`)

### 3.7 Smooth local sections of the isotropic orbit

*Origin:* adapted from Witt's extension theorem for Hermitian forms over a field (HermitianFormsAndLattices §1.1 (b)):
here over `ℂ`, for one isotropic vector, with an isometry depending smoothly on the target vector.

*Method of the formal proof:* explicit isometries (quasi-reflections and Eichler maps, 3.4 (d)) whose coefficients are
smooth functions of the target vector near the base point.

Let `J ∈ M_n(ℂ)` be invertible and hermitian.

(a) If `x₀`, `y₀` are isotropic with `h_J(y₀, x₀) ≠ 0`, there are a neighbourhood `N` of `x₀` and a map `k : N → U(J)(ℂ)`,
smooth as a matrix-valued function of the real coordinates, with `k(x)y₀ = x` for every isotropic `x ∈ N`.

(b) For `J = diag(s)` and isotropic `x₀ ≠ 0` there is such a smooth `k` near `x₀` with `k(x)x₀ = x` for every isotropic
`x` near `x₀`.

*Needs:* 3.4 (d).

[ShortProof], `Lib/Adelic/Witt/SmoothWitt.lean` (`New.Exchange.exists_contDiff_carrying_isotropic`,
`New.Exchange.exists_contDiff_eventually_mulVec_eq`)

### 3.8 Weak approximation

*Origin:* adapted from weak approximation, Platonov and Rapinchuk (1994), Chapter 7: here for `U(V)` of a hermitian space
with an adelic frame over a CM field, at all infinite places and a finite set of finite places at once.

*Method of the formal proof:* the Cayley transform identifies a neighbourhood of `1` in `U(J)` with an open set of a
vector space of matrices skew for `J`, where strong approximation for adelic matrices (2.3 (a)) applies; translates
cover the group.

Let `E` be a CM field, `V` a space with an adelic frame of signs `s`, and `S` a finite set of finite places. Then the
products `γ·(1, h)`, `γ ∈ Γ_V`, `h ∈ G_f` with `h_w = 1` for `w ∈ S ∪ S̄`, are dense in `G(s)`. Equivalently `U(J)(E⁺)`
is dense in the product of the unitary groups of `V` at all infinite places and at the places of `S`.

HermitianFormsAndLattices §2.5 (f) states weak approximation at finite sets of finite places for every hermitian
space; the formal proof uses the infinite places as well.

*Needs:* 2.3, 3.1, 3.2.

[ShortProof], `Lib/Adelic/Unitary/WeakApproximation.lean` (`New.Space.weak_approximation`, `New.cayleyTransform`)

### 3.9 Congruence levels

*Origin:* adapted from congruence subgroups and levels in adelic groups (Platonov and Rapinchuk (1994), ch. 3 and 5;
Gross (1999)): here for the finite adelic unitary group of the identity form, with the levels of a global modulus, the
levels given by subgroups of the reductions at finitely many places with no two equal or conjugate, and their
indices.

*Method of the formal proof:* openness and the neighbourhood basis from the topology of `Ô`; surjectivity of reduction
from 3.2 (b) and the surjectivity of `GL_n(𝒪_w) → GL_n(k_w)`; the index from surjectivity; the bound from
`#GL_n(R) ≤ #R^{n²}` for the finite ring `R = 𝓞_E/a`. The library has openness of congruence subgroups for points of
affine group schemes of finite type in the point topology (`TauCeti.HopfAlgebra.isOpen_congruenceSubgroup`), a model
whose comparison with the matrix groups here is not small.

Let `E` be a CM field.

(a) (any number field) Every neighbourhood of `1` in `GL_n(𝔸_f)` contains `{g ∈ GL_n(Ô) : g ≡ 1 mod MÔ}` for some
integer `M ≥ 1`.

(b) For `0 ≠ a ∈ 𝓞_E`, the *principal level* `K(a) = {g ∈ K₀ : g ≡ 1 mod aÔ}` is a level; `K(b) ⊂ K(a)` if `a | b`;
every neighbourhood of `1` in `G_f` contains `K(M)` for some integer `M ≥ 1`; and `[K₀ : K(a)] ≤ N(a)^{n²}`.

(c) Let `w_1, …, w_r` be finite places with `w_i ≠ w_j` for `i ≠ j` and `w̄_i ≠ w_j` for all `i, j` (so all are
split), and `red : K₀ → ∏_i GL_n(k_{w_i})` the reduction. Then `red` is surjective, already on the elements of `K₀`
supported on `{w_i, w̄_i}`. For a subgroup `H` of the product, `K_H = red⁻¹(H)` is a level containing the elements of `K₀` that are
trivial at all `w_i`, and `[K₀ : K_H] = [∏_i GL_n(k_{w_i}) : H]`.

(d) In (c), let `χ` be a character of `H` and `φ : S → ∏_i GL_n(k_{w_i})` a homomorphism from a group `S` whose image
normalises `H` and fixes `χ`. Then lifts of `φ` define an action of `S` on the vectors of any representation of `G_f` on
which `K_H` acts through `χ ∘ red`.

*Needs:* 2.1, 3.1, 3.2.

[ShortProof], `Lib/Adelic/Unitary/CongruenceLevels.lean` (`New.exists_congruenceGL_subset`, `New.principalLevel`,
`New.isOpen_principalLevel`, `New.principalLevel_le_of_dvd`, `New.exists_principalLevel_subset`,
`New.relIndex_principalLevel_le`, `New.levelOf`, `New.isOpen_levelOf`, `New.exists_reduceFamily_eq`,
`New.relIndex_levelOf`, `New.inf_trivialOn_le_levelOf`, `New.levelRep`)

## Layer 4: Reduction theory and finite volume

### 4.1 Adelic Minkowski theorems

*Origin:* adapted from Minkowski's second theorem over a number field, Bombieri and Vaaler (1983) (the upper bound):
here for the lattice of an adelic frame over a CM field, with the first theorem as a count and the explicit constants
below.

*Method of the formal proof:* the first theorem by integrating the number of rational points of `y⁻¹(B × Ô)^n + v` over
`v` (covolume one, 2.2) and scaling (2.4); the second by successive minima, applying the first theorem to a box without
nonzero lattice vectors.

Let `E` be a CM field, `y ∈ GL_n(𝔸)`, `L_y = {ξ ∈ E^n : (y⁻¹ξ)_f ∈ Ô^n}`, and `ℓ_y(ξ)` the Euclidean norm of
`((y⁻¹ξ)_{w,i})_{w,i} ∈ ℂ^{Φ×n}`. Let `U = {z ∈ ℂ^Φ : |z_w| < 1 for all w} × Ô`, and `2_∞` the idele equal to `2` at
the infinite places and to `1` at the finite places.

(a) `|det y|_𝔸 ≤ (2 rd_E)^{fn} · #{ξ ∈ E^n : (y⁻¹ξ)_i ∈ U for all i}`; in particular there is a nonzero such `ξ` if
`|det y|_𝔸 > (2 rd_E)^{fn}`.

(b) `L_y` contains a basis `y_1, …, y_n` of `E^n` with `ℓ_y(y_1) ≤ … ≤ ℓ_y(y_n)` and
`|det y|_𝔸 · ∏_j ℓ_y(y_j)^{2f} ≤ (2fn·rd_E)^{fn}`.

(c) For a compact `B ⊂ 𝔸^n` there is `C < ∞` such that for every `x ∈ ℤ^n` the number of `ξ ∈ E^n` with
`(2_∞^{−x_i}ξ_i)_i ∈ B` is at most `C·4^{f·∑_i max(x_i, 0)}`.

AdelicHeightsAndSuccessiveMinima §3.1 states Minkowski's second theorem over a number field for balanced bodies, with
other constants.

*Needs:* 2.1, 2.2, 2.4.

[ShortProof], `Lib/Adelic/Reduction/MinkowskiTheorems.lean` (`New.minkowski_first`, `New.exists_ne_zero_inv_mulVec_mem`,
`New.Core.frameLattice`, `New.Core.frameLength`, `New.Core.minkowski_second_theorem`,
`New.exists_basis_frameLength_le_two_zpow`, `New.Core.encard_le_of_dyadic_box`)

### 4.2 First minimum, height and short bases

*Origin:* adapted from the transference theorem between the covering radius of a lattice and the first minimum of its
dual, Lagarias, Lenstra and Schnorr (1990), and its use for short bases: here for the lattices of hermitian spaces
with an adelic frame, with explicit constants.

*Method of the formal proof:* the dual of the image of `Λ_V` in `ℂ^{Φ×n}` (for the real part of the hermitian pairing)
contains the image of `(2/d)Λ_V` up to the different (self-duality, 2.2); transference
(GeometryOfNumbersAndQuadraticArithmetic §4.4) bounds the covering radius by the inverse first minimum, and vectors of
norm at most three times the covering radius span.

Let `E` be a CM field and `V` a space with an adelic frame of signs `s`. The *first minimum* is
`λ(V) = min(1, min{‖y‖_V : 0 ≠ y ∈ Λ_V})`, and the *height* of `g ∈ G(s)` is `ht_V(g) = 1/λ(V·g) ≥ 1`. A function `F`
on `G(s)` has *moderate growth* if `|F(g)| ≤ C·ht_V(g)^B` for some `C`, `B`, and *rapid decay* if `|F(g)|·ht_V(g)^B` is
bounded for every `B`. Here the *height* is the inverse first minimum of the moved lattice; it is not a height in the
sense of AdelicAlgebraicGroups §3.5, with which 8.3 compares it.

(a) For `0 ≠ d ∈ 𝓞_E` in `𝔇`, every `u ∈ ℂ^{Φ×n}` lies within `(2fn)²/λ(V)` of the image of `(2/d)a` for some
`a ∈ Λ_V`.

(b) For an integer `N ≥ 1` with `N ∈ 𝔇`, `Λ_V` contains a basis of `E^n` of vectors of length at most
`6N(fn)²/λ(V)`.

(c) For `N` as in (b) and `g ∈ G_f` there is `Y ∈ GL_n(E)` with `g⁻¹Y` integral over `Ô` and `|φ(Y_{ij})| ≤ 6N(fn)²`
for every embedding `φ : E → ℂ` and all `i, j`.

(d) (effective approximation) For `0 ≠ d ∈ 𝓞_E` in `𝔇` and every adele `(z, y) ∈ ℂ^Φ × 𝔸_f` there is `a ∈ E` with
`y − a ∈ Ô` and `|z_w − Φ_w(a)| ≤ (2f)²·|Φ_w(d)|` at every infinite place `w`.

HermitianFormsAndLattices §4.12 (a), applied to the lattice `E^n ∩ gÔ^n` of the standard form (self-dual, so `q = 1`),
also implies (c), with `√f·n·rd_E` in place of `6N(fn)²`: `rd_E ≤ N` because `N ∈ 𝔇`. It does not give (a) or (b) for
spaces that are not definite.

**In standard terms.** Through `θ_V(g) = xgx⁻¹` (8.2), `Λ_{V·g}` is the lattice `E^n ∩ θ_V(g)_fx_fÔ^n` with the
lengths `y ↦ |x_∞⁻¹θ_V(g)_∞⁻¹y|`. For a height `‖·‖` of AdelicAlgebraicGroups §3.5 on `U(J)(𝔸_{E⁺})`, `ht_V` is
bounded by a power of `‖θ_V(·)‖` everywhere and bounds a power of it on every Siegel set (8.3 (b), (c)); so for left
`Γ_V`-invariant functions, moderate growth in the sense here is moderate growth in the sense of
ArithmeticLocallySymmetricSpaces ALS.F.6, and rapid decay in the sense here is rapid decay on Siegel sets (8.3 (d)).

*Needs:* 2.2, 3.1; GeometryOfNumbersAndQuadraticArithmetic §4.4 (item 4.4.14, covering-radius transference).

[ShortProof], `Lib/Adelic/Reduction/FirstMinimumShortBases.lean` (`New.Space.firstMinimum`, `New.Space.height`,
`New.Space.IsModerate`, `New.Space.IsRapid`, `New.Space.exists_norm_sub_archCoords_le`, `New.Space.exists_short_basis`,
`New.Space.exists_short_basis_stdSpace`); `Lib/Adelic/Adeles/SemilocalProducts.lean`
(`New.exists_principal_near_of_mem_differentIdeal`)

### 4.3 Reduction theory, finite volume and a weak form of Weil's convergence criterion

*Origin:* adapted from Weil (1965), Proposition 8, the convergence criterion for theta integrals of classical groups,
and from the reduction theory and finite volume of adele groups, Borel (1963), 4.5–5.8: here for unitary groups of
hermitian spaces with an adelic frame over a CM field, for the count of rational `n × t` matrices in a compact set
when `2t < n`, with finite volume (`t = 0`) and a reduction theory for `GL_n` over the adeles by dyadic profiles.

*Method of the formal proof:* (a) comes from Minkowski's theorems (4.1), which bound a rational basis of the lattice of
`y` once its columns are rescaled at the infinite places by suitable powers of `2`, the dyadic profile `x`. For (b) the
quotient integral (1.1) is dominated by a sum over profiles of counts of rational matrices in rescaled boxes, and the
counts of 4.1 (c) make this sum converge when `2t < n`; (c) is the case `t = 0`.

Let `E` be a CM field, `D(x) = diag(2_∞^{x_1}, …, 2_∞^{x_n})` for `x ∈ ℤ^n`.

(a) There are a compact `M ⊂ GL_n(𝔸)` and `c ∈ ℤ` such that for every `y ∈ GL_n(𝔸)` there are `x ∈ ℤ^n` and
`Y ∈ GL_n(E)` with `y⁻¹YD(x)⁻¹ ∈ M`, and `∑_i x_i ≤ c` when `|det y|_𝔸 ≥ 1`.

(b) Let `V = (J, x)` be a space with an adelic frame and identify `G(s)` with `U(J)(𝔸)` by `g ↦ xgx⁻¹`. For every
compact `Ω ⊂ M_{n×t}(𝔸)` with `2t < n`, `∫_{U(J)(E⁺)\U(J)(𝔸)} #{ξ ∈ M_{n×t}(E) : g⁻¹ξ ∈ Ω} dg < ∞`.

(c) `Γ_V\G(s)` has finite volume.

AdelicAlgebraicGroups §3.4 (finite volume of `G(F)\G(𝔸)^1` for connected linear algebraic groups) gives (c), as
`U(V)` has no characters over `E⁺` and so `U(V)(𝔸)^1 = U(V)(𝔸)`. ThetaKernelsForUnitaryDualPairs §5.7a (Weil's
convergence criterion for unitary pairs), for a split `W` of dimension `2t`, gives (b) through its bound for majorants
at `h = 1`; its hypothesis holds because `2t < n` and the Witt index of `V` is at most `n/2`. Both need `G(s)` and the
quotient integral of 1.1 identified with `U(V)(𝔸)` and its quotient measure, which 8.2 and 8.1 do; they are general
theorems that the formal
proof avoids.

*Needs:* 1.1, 2.2, 2.4, 3.1, 4.1.

[ShortProof], `Lib/Adelic/Reduction/FiniteVolume.lean` (`New.Core.exists_isCompact_profileBases`,
`New.exists_isBoundedDualBasis`, `New.Space.quotMeasure`, `New.Space.lintegral_encard_ne_top`,
`New.Space.isFiniteMeasure_quotMeasure`)

### 4.4 Mahler's criterion, and integrals over definite quotients as class sums

*Origin:* adapted from the reduction theory of adele groups, Borel (1963), 4.5–5.8, with the compactness criterion of
Mahler and Godement in one direction: here for the adelic unitary group of a space with an adelic frame of any signs,
and, for definite signs, the integral over the quotient written as a class sum.

*Method of the formal proof:* for (a), when the height is bounded the short bases of 4.2 can only have finitely many
Gram matrices, and the bounded dual bases of 4.3 then place `g` in `Γ_V·C`. For (b), equal signs force a bound on the
height, so (a) applies. For (d), the quotient is the union of the finitely many classes `Γ_{V,f}gK`, and 1.1 (d)
unfolds the integral over each of them.

Let `E` be a CM field and `V` a space with an adelic frame of signs `s`.

(a) For every `R` there is a compact `C ⊂ G(s)` such that every `g` with `ht_V(g) ≤ R` lies in `Γ_V·C`.

(b) If all signs are equal, `Γ_V\G(s)` is compact. For `s = (1, …, 1)`, `Γ_{V,f}\G_f` is compact and `(Γ_{V,f}, K)` has
finite type (1.4) for every level `K`.

(c) `vol(K) = [K₀ : K]⁻¹` for every level `K`.

(d) Let `s = (1, …, 1)` (so `G_∞(s)` is compact, of mass one), `F` continuous and left `Γ_V`-invariant on `G(s)`, and
suppose `f(g) = ∫_{G_∞} F(z, g) dz` is right invariant under a level `K`. Then
`∫_{Γ_V\G} F = [K₀ : K]⁻¹·S_{Γ_{V,f},K}(f)`. For a smooth left `Γ_{V,f}`-invariant `y` on `G_f`,
`I_{Γ_{V,f},K}(y) = [K₀ : K]·∫_{Γ_V\G} y(g_f) dg`.

The *mass* of the standard space is `mass(n) = S_{Γ_{I_n,f},K₀}(1) = ∑_{Γ g K₀} 1/#(Γ_{I_n,f} ∩ gK₀g⁻¹)`.

DiscreteSeriesCoefficientsAndAutomorphicMetrics §7.5a states the integration formula of (d), for `F` right invariant
under `K` and the quotient measure on `G(F)\G(𝔸)`, and the mass with the relation `mass J′ = [J : J′]·mass J`, for
the connected reductive groups of AutomorphicFormsOnReductiveGroups §7.4 (compact at infinity modulo `A_∞`); with
`vol(G_∞K) = [K₀ : K]⁻¹` it gives (d) for such `F`, the group and the quotient integral of 1.1 being identified with
`U(V)(𝔸)` and its quotient measure by 8.2 and 8.1.

**In standard terms.** Through 8.2, (a) is one direction of Mahler's compactness criterion for `U(J)`: a subset of
`U(J)(E⁺)\U(J)(𝔸_{E⁺})` on which the first minima of the lattices `E^n ∩ h_fx_fÔ^n`, for the lengths
`y ↦ |x_∞⁻¹h_∞⁻¹y|`, are bounded below is relatively compact. When all signs are equal, `h_J` is definite at every
real place, so `U(J)` is anisotropic over `E⁺`, and (b) is the compactness of `U(J)(E⁺)\U(J)(𝔸_{E⁺})` for anisotropic
groups of AdelicAlgebraicGroups §3.4 (Adelic reduction and arithmetic quotients). Through 8.1, (d) is the integration
formula over `U(J)(E⁺)\U(J)(𝔸_{E⁺})` for the quotient measure with `vol(x_fK₀x_f⁻¹) = 1` and mass one on
`U(J)(E⁺ ⊗_ℚ ℝ) = θ_V(U(n)^Φ)`, and `mass(n)` is the mass of the definite unitary group `U(1_n)` at the level `K₀`.

*Needs:* 1.1, 1.4, 1.5, 3.1, 3.2, 4.2, 4.3.

[ShortProof], `Lib/Adelic/Reduction/DefiniteClassSums.lean` (`New.Space.mahler_criterion`,
`New.Space.isCocompact_of_definite`, `New.Space.isCocompact_finitePart`, `New.Space.hasFiniteType_of_isLevel`,
`New.measureReal_eq_inv_stdLevelIndex`, `New.Space.integral_quotMeasure_eq_classSum`,
`New.Space.classIntegral_eq_integral`); `Lib/Adelic/Unitary/Defs.lean` (`New.mass`)

## Layer 5: Automorphic forms on unitary groups

### 5.1 Automorphic functions, forms of a type and the Petersson product

*Origin:* definitions and conventions.

Let `E` be a CM field and `V` a space with an adelic frame of signs `s`.

- `F : G(s) → ℂ` is *automorphic* if it is continuous, left `Γ_V`-invariant, and right invariant under an open
  subgroup of `G_f` (a *level* of `F`). Here *automorphic* asks for no more than this; an automorphic form in the
  sense of ArithmeticLocallySymmetricSpaces ALS.F.6 is moreover smooth, right `K_∞`-finite, finite under the centre of
  the enveloping algebra and of moderate growth, as the forms of type `e_l` are when every `l_w` has gap `500n³` for
  `s` (8.5 (a)).
- For `k` on `G_∞(s)`, right convolution is `R(k)F(g) = ∫_{G_∞} k(z)F(g·z) dz`.
- An *idempotent kernel* on a unimodular group `H` is a continuous integrable `e` with `e(g⁻¹) = conj e(g)`,
  `e(1) ≠ 0` and `∫_H e(z)e((zx)⁻¹y) dz = (e(x⁻¹)/e(1))·e(y)` for all `x, y` (so `e ∗ e = e`). A *cusp kernel of order
  `B`* on `G_∞(s)` is an idempotent kernel `e` such that, with `‖x‖ = ∏_w ‖x_w‖` (operator norms), `|e(x)|·‖x‖^{B+1}` is
  integrable, `|e(x)|·‖x‖^B` is bounded, and `α ∗ e = e` for some continuous compactly supported `α`.
- For `e` on `G_∞(s)`, a *form of type `e`* is a bounded automorphic `F` with `R(e)F = F` when `e` is integrable.
  `𝒜(V, e)` is the space of forms of type `e`, with the *Petersson product*
  `⟨F, F′⟩ = ∫_{Γ_V\G} conj F(g)·F′(g) dg` (1.1) and the action of `G_f` by right translation; `𝒜(V, e, K)` is the
  subspace of forms of level `K`.
- For a doubled parameter `l = (l_w)_w` (one `l_w ∈ ℤ^n` for each infinite place, read for the signs `s`), the
  *discrete-series kernel* is `e_l(x) = ∏_w d(l_w)·conj c_{l_w}(x_w)`, with the coefficient `c_λ` and formal degree
  `d(λ)` of HolomorphicDiscreteSeriesOfUnitaryGroups §4.1 (d); *forms of parameter `l`* are forms of type `e_l`.
- Moderate growth and rapid decay are measured against `ht_V` (4.2).

**In standard terms.** Let every `l_w` have gap `500n³` for `s`. Through 8.2 and 8.5, a form of type `e_l` and level
`K` is a cusp form on the unitary group `U(J)` of `(E^n, h_J)` over `E⁺` in the sense of
ArithmeticLocallySymmetricSpaces ALS.F.6, of level `θ_V(K)`, namely the image of the vector `ζ_l` of the lowest
`K_∞`-type of the discrete series `π_l` of 8.5, the tensor product over `w` of the discrete series of Harish-Chandra
parameter `l_w/2`, under a `(𝔤, K_∞)`-homomorphism into the cusp forms:
`𝒜(V, e_l, K) ≅ Hom_{(𝔤,K_∞)}(π_l^{K_∞-fin}, 𝒜_0(U(J))^{θ_V(K)})`, and as a module over the Hecke algebra
`𝒜(V, e_l, K) ≅ ⊕_Π (Π_f^{θ_V(K)})^{⊕m_cusp(Π)}` over the cuspidal automorphic representations `Π` of `U(J)` with
`Π_∞ ≅ π_l^{K_∞-fin}` (8.5 (c), (d)). The Petersson product is the `L²` inner product for the quotient measure (8.1
(b)), and for left `Γ_V`-invariant functions moderate growth and rapid decay are moderate growth in the sense of
ALS.F.6 and rapid decay on Siegel sets (8.3 (d)).

[ShortProof], `Lib/Adelic/AutomorphicForms/Basic.lean` (`New.Space.IsAutomorphic`, `New.realConv`, `New.typeKernel`,
`New.Space.IsForm`, `New.Space.petersson`, `New.Space.Form`, `New.Space.formRep`, `New.Space.rapidFunctions`);
`Lib/General/Measure/IdempotentKernel.lean` (`New.IsIdempotentKernel`); `Lib/Adelic/AutomorphicForms/RealConvolution.lean`
(`New.IsCuspKernel`)

### 5.2 Convolution over the real points, cusp kernels and projected Poincaré series

*Origin:* adapted from the published theory of cusp forms, in which convolution with a matrix coefficient of an
integrable discrete series projects onto its isotypic part: here as right convolution over `G_∞(s)` with an idempotent
kernel on bounded automorphic functions, with the reproducing identities of cusp kernels and Poincaré series projected
to forms.

*Method of the formal proof:* (a) is the product over the infinite places of the idempotence, decay and moment of the
discrete-series kernels of HolomorphicDiscreteSeriesOfUnitaryGroups §§5.4, 6.1 under the gap. (b) continuity of translation in
`L¹(G_∞)`. (c), (d) the defining identity of an idempotent kernel and Fubini's theorem. (e) termwise convolution of an
absolutely bounded series.

Let `E` be a CM field, `V` a space with an adelic frame of signs `s`, and `n ≥ 1`.

(a) If `l_w` has gap `500n³ + B` for the signs `s` at every infinite place `w`, then `e_l` is a cusp kernel of order `B`.

(b) If `α` is integrable on `G_∞(s)` and `F` is bounded, measurable, left `Γ_V`-invariant and right invariant under an
open `K ⊂ G_f`, then `R(α)F` is automorphic, bounded and of level `K`; if `α` is an idempotent kernel, `R(α)F` is a form
of type `α` and level `K`.

(c) For automorphic `F, F′` and `x ∈ G(s)`: `⟨F(·x), F′⟩ = ⟨F, F′(·x⁻¹)⟩` and `conj⟨F, F′⟩ = ⟨F′, F⟩`; right translation
by `G_f` is unitary on `𝒜(V, e)`; for an idempotent kernel `e` and bounded automorphic `F, F′`,
`⟨R(e)F, F′⟩ = ⟨F, R(e)F′⟩`.

(d) For a cusp kernel `e`, forms `F, F′` of type `e`, `x ∈ G_∞(s)`, `g ∈ G(s)` and integrable `α, β` on `G_∞(s)`:
`∫ e(z)F(gzx) dz = (conj e(x)/e(1))·F(g)`, `⟨F, F′(·x)⟩ = (conj e(x)/e(1))·⟨F, F′⟩`, and
`⟨R(α)F, R(β)F′⟩ = (∫∫ conj α(x)·β(y)·conj e(x⁻¹y)/e(1) dx dy)·⟨F, F′⟩`.

(e) Let `e` be an idempotent kernel, `K ⊂ G_f` open, and `(W_i)` a countable family of measurable functions on `G(s)`
with `∑_i |W_i(g)| ≤ M` for all `g`, whose sum is left `Γ_V`-invariant and of level `K`. Then `g ↦ ∑_i R(e)W_i(g)` is a
form of type `e` and level `K`. This applies in particular when `∑_{γ∈Γ_V} c(γg) = ∑_i W_i(g)` for a function `c` of
level `K`.

**In standard terms.** Let every `l_w` have gap `500n³` for `s`. Through 8.5 (b), `R(e_l)` is the orthogonal projector
of the `θ_V(K)`-fixed part of the cuspidal spectrum of `U(J)` onto the images `T(ζ_l)` of the unit vector `ζ_l` of the
discrete series `π_l` under intertwiners `T`, which are the forms of type `e_l` and level `K`. The last clause of (c)
is the self-adjointness of this projector; and the first two identities of (d), for `e = e_l`, are the identities
`R(e_l)R(x)T(ζ_l) = c_l(x)·T(ζ_l)` and `⟨T(ζ_l), R(x)T′(ζ_l)⟩ = c_l(x)·⟨T(ζ_l), T′(ζ_l)⟩` for the coefficient
`c_l = ∏_w c_{l_w}` of `π_l` at `ζ_l`, as `conj e_l(x)/e_l(1) = c_l(x)`.

*Needs:* 1.1, 3.1, 5.1; HolomorphicDiscreteSeriesOfUnitaryGroups §§5.4, 6.1 (idempotence, decay and moments of `e_λ`).

[ShortProof], `Lib/Adelic/AutomorphicForms/RealConvolution.lean` (`New.isIdempotentKernel_typeKernel`,
`New.isCuspKernel_typeKernel`, `New.Space.isAutomorphic_realConv`, `New.Space.exists_form_eq_realConv`,
`New.Space.IsAutomorphic.petersson_comp_mul_right`, `New.Space.inner_formRep`, `New.Space.conj_petersson`,
`New.Space.petersson_realConv_comm`, `New.Space.IsForm.realConv_translate`, `New.Space.IsForm.petersson_real_translate`,
`New.Space.IsForm.petersson_realConv_realConv`,
`New.Space.exists_form_eq_tsum_of_fixesLeft`, `New.Space.exists_form_eq_tsum`)

### 5.3 Constant terms along unipotent radicals vanish

*Origin:* adapted from the theorem that matrix coefficients of integrable discrete series are cusp forms (Godement
(1947); Wallach, *Real Reductive Groups I* (1988), ch. 7; closest to the formal proof, Barnes (1980)): here for
bounded functions fixed by right convolution with a cusp kernel on adelic unitary groups.

*Method of the formal proof:* the constant term along `N_a` is bounded, continuous, fixed by `R(e)` and invariant under
the real points of the radical; the vanishing theorem for minimal idempotent kernels
(HolomorphicDiscreteSeriesOfUnitaryGroups §6.2 (a)), with the dilations of its (b) at each infinite place, kills it.

Let `E` be a CM field, `e` a cusp kernel of order `B` on `G_∞(s)`, `W` a space with an adelic frame of signs `s`, and
`a ∈ M_n(𝔸)` with `a*·σ_s·a = 0` (`σ_s` the form `diag(s)` at infinity and `1_n` at the finite places) and `a_w ≠ 0` at
every infinite place `w`. Let `N_a ⊂ G(s)` be the closed subgroup of the `g` that fix the column span `A` of `a`
pointwise and satisfy `u*σ_s(gv) = u*σ_s v` for all `u, v ∈ A^⊥`.

(a) If `(Γ_W ∩ N_a)\N_a` has finite volume, `F` is continuous and bounded on `G(s)` with `R(e)F = F`, and `x ↦ F(gx)` is
left invariant under `Γ_W ∩ N_a`, then `∫_{(Γ_W∩N_a)\N_a} F(g·v·(y, 1)) dv = 0` for every `y ∈ G_∞(s)`.

(b) `(Γ_W ∩ N_a)\N_a` has finite volume if `N_a ⊂ (Γ_W ∩ N_a)·C` for some compact `C`.

**In standard terms.** Let `W = (J_W, x_W)` and `a = x_W⁻¹X` with `X ∈ M_n(E)` of rank at least one and `X*J_WX = 0`.
Through `θ_W` (8.2), `N_a` is the unipotent radical of the stabiliser in `U(J_W)` of the column span of `X`, a proper
maximal parabolic subgroup over `E⁺`, and for `g = 1` and `F` left `Γ_W`-invariant the integral in (a) is, by 8.1, a
positive multiple of the constant term of `F∘θ_W⁻¹` along that parabolic subgroup at `θ_W((y, 1))`
(ArithmeticLocallySymmetricSpaces ALS.F.6). So for `e = e_l` with every `l_w` of gap `500n³`, (a), applied to a
bounded continuous left `Γ_W`-invariant function fixed by `R(e_l)` and to its right translates by `G_f`, says that its
constant terms vanish along all proper maximal parabolic subgroups, the quotients `(Γ_W ∩ N_a)\N_a` being compact for
rational `X`; 8.5 (a) uses this, through 5.4 (b), to show that the forms of type `e_l` are cusp forms.

*Needs:* 1.1, 3.1, 5.1; HolomorphicDiscreteSeriesOfUnitaryGroups §6.2 (a), (b) (minimal idempotent kernels kill bounded
radical-invariant functions; dilations along isotropic columns).

[ShortProof], `Lib/Adelic/AutomorphicForms/UnipotentRadical.lean` (`New.unipotentRadical`,
`New.IsCuspKernel.integral_mul_eq_zero`, `New.Space.integral_unipotentRadical_eq_zero`,
`New.Space.isFiniteMeasure_quotMeasure_of_isCompact`, `New.Space.norm_le_of_integral_eq_zero`,
`New.Reduction.radicalElem`)

### 5.4 Forms of a cusp kernel are cuspidal, decay rapidly and are finite in number at each level

*Origin:* adapted from the published properties of spaces of cusp forms of a given type and level, finite dimension
and rapid decay (Borel, *Automorphic forms on reductive groups* (Park City lectures, 2007); Godement (1966); Miller
and Schmid (2012)): here for bounded functions reproduced by a cusp kernel on adelic unitary groups of hermitian spaces
with an adelic frame, with cuspidality proved and not assumed, and with an explicit depth in the cusp.

*Method of the formal proof:* (a) is reduction theory: below the stated bound for `λ(V)`, the first vectors of a
length-sorted short basis (4.1, 4.2) give the isotropic subspace `A`, and an explicit rational element of the radical
brings each point of `N_A` close to `1`. (b) is 5.3 for the rational isotropic subspaces, on whose radicals the
rational points are cocompact. In (c), the vanishing mean of `F` along the radical of the subspace given by (a) leaves
only the variation of `F` over small real translations. (d) applies (c) again and again, the variation being bounded
through the reproducing identity of 5.2 (d); and (e) follows from (d) and that identity, which together make the unit
ball of `𝒜(V, e, K)` compact.

Let `E` be a CM field, `V` a space with an adelic frame of signs `s`, `e` a cusp kernel of order `B` on `G_∞(s)`, and
`κ(N) = 8fn·rd_E + 48n⁶f²N + 1` for an integer `N ≥ 1` with `N ∈ 𝔇`. A function `F` is *cuspidal* if it is continuous,
left `Γ_V`-invariant, and for every `g ∈ G(s)` and every `X ∈ M_n(E)`, `X ≠ 0`, with `X*JX = 0`, the integral of
`F(g·v)` over `v` in `(Γ_{V·g} ∩ N_X)\N_X` vanishes, `N_X` the radical (5.3) of the column span of `X` in the frame of
`V·g`.

(a) Let `M ≥ 1` and `0 < δ ≤ 1`. If `λ(V) < (δ/(M·κ(N)²))^n`, there is a nonzero rational isotropic subspace `A`
spanned by vectors of `Λ_V`, with `A` and `A^⊥` spanned by lattice vectors of lengths at most `ℓ_A`, `ℓ_⊥` with
`ℓ_A·ℓ_⊥ ≤ δ`, such that every `u ∈ N_A` is `γ^{−1}u′` with `γ ∈ Γ_V ∩ N_A`, `u′_∞` within `δ` of `1` and `u′_f ∈ K(M)`.

(b) Every form of type `e` is cuspidal.

(c) If `F` is cuspidal of level `K(M)` and `λ(V·g) < (δ/(M·κ(N)²))^n`, then
`|F(g)| ≤ sup{|F(g·(z, 1)) − F(g)| : z ∈ G_∞(s), dist(z, 1) ≤ δ}`.

(d) For every open `K ⊂ G_f` and `A ∈ ℕ` there is `R` such that every form `F` of type `e` and level `K` with `|F| ≤ c`
satisfies `|F(g)|·ht_V(g)^A ≤ c·R` for all `g`; in particular forms of type `e` have rapid decay. When all signs are
equal, every automorphic function has rapid decay.

(e) For every open `K ⊂ G_f`, `𝒜(V, e, K)` is finite-dimensional.

(f) If `F` is automorphic and `z ↦ e(z)F(g·(z, 1))` is integrable for every `g`, then `R(e)F` is a form of type `e`.

The distance on `G_∞(s)` is that of `∏_w M_n(ℂ)` with the maximum over `w` of the operator norms.
ArithmeticLocallySymmetricSpaces ALS.F.6 states finite dimension and rapid decay for `K_∞`-finite, `𝔷(𝔤)`-finite cusp
forms; for a general cusp kernel `e` it does not apply to the forms of type `e` without showing that they are such;
the forms of type `e_l` are such when every `l_w` has gap `500n³` (8.5 (a)); the proofs here do not use it.

**In standard terms.** Let `e = e_l` with every `l_w` of gap `500n³` for `s`. Through 8.2 and 8.5 (a), (b) is the
statement that the bounded automorphic forms on `U(J)` (in the sense of ALS.F.6) of level `θ_V(K)` that are fixed by
`R(e_l)` are cusp forms. For these forms, the rapid decay of (d) and the finite dimension of (e) are also consequences
of ArithmeticLocallySymmetricSpaces ALS.F.6 (iii) and (i): rapid decay of cusp forms on Siegel sets, which is rapid
decay in the sense of 4.2 by 8.3 (d), and finite dimension for a fixed ideal of finite codimension of the centre of
the enveloping algebra, a fixed finite set of `K_∞`-types and a fixed level; and 8.5 (d) writes `𝒜(V, e_l, K)` through
the cuspidal automorphic representations with archimedean component `π_l`. The explicit depth in the cusp of (a) and
(c) has no counterpart there.

*Needs:* 1.1, 3.1, 3.9, 4.1, 4.2, 4.4, 5.1, 5.2, 5.3.

[ShortProof], `Lib/Adelic/AutomorphicForms/Cuspidality.lean` (`New.cuspConst`, `New.Space.CuspFrame`,
`New.Space.RadicalCovered`, `New.Space.exists_cuspFrame`, `New.Space.IsCuspidal`, `New.Space.IsForm.isCuspidal`,
`New.Space.IsCuspidal.norm_le_of_firstMinimum_lt`, `New.Space.exists_norm_mul_height_pow_le`,
`New.Space.IsForm.mem_rapidFunctions`, `New.Space.finite_levelSpace`, `New.Space.isForm_realConv`);
`Lib/Adelic/AutomorphicForms/Basic.lean` (`New.Space.isRapid_of_isCocompact`,
`New.Space.IsAutomorphic.mem_rapidFunctions`)

## Layer 6: Algebraic modular forms on definite unitary groups

### 6.1 Algebraic modular forms

*Origin:* definitions and conventions.

Let `E` be a CM field and `V` a space with an adelic frame of signs `(1, …, 1)` (a definite space), so that
`G_∞ = G_∞(1) = U(n)^Φ` is compact.

- A *weight* `(κ, e)` gives, at each infinite place `τ`, a partition (with `κ_τ(h)` columns of height `h`) and an
  integer `e_τ`; its highest weight at `τ` is `μ_{τ,p} = e_τ + ∑_{p<h<n} κ_τ(h)` (`0 ≤ p < n`). `ρ_{κ,e}` is the
  representation of `GL_n(ℂ)^Φ` of weight `(κ, e)` on `W = W_{κ,e}`, in the model and with the hermitian form of
  IntegralRepresentationsOfGeneralLinearGroups §§1.1, 2.1 (minor-product basis, integral Gram matrix). The
  representation used on forms is `ρ(z) = ρ_{κ,e}(z̄)` on `U(n)^Φ`, as in
  IntegralRepresentationsOfGeneralLinearGroups §2.4, `z̄` the entrywise complex conjugate (`= (z^T)⁻¹` on `U(n)`); the
  hermitian form is invariant under `ρ` (IntegralRepresentationsOfGeneralLinearGroups §2.3 (c)). `U(J)(E⁺)` acts on `W` through `γ ↦ ρ((x⁻¹γx)_∞)`.
- An *algebraic modular form of weight `(κ, e)`* on `V` is a function `φ : G_f → W` with `φ(γ_f g) = ρ(γ_∞)φ(g)` for
  every `γ ∈ Γ_V` with components `γ_∞`, `γ_f`, and every `g ∈ G_f`, whose stabiliser under right translation is open. `G_f` acts by right translation; for a level `K` and a character `χ` of `K`, the forms of level
  `(K, χ)` are those with `φ(gk) = χ(k)φ(g)`.
- For `l = (l_τ)`, `l_τ ∈ ℤ^n`, the *highest vector* `v⁺_l ∈ W` is the evaluation vector `ev_y` of
  IntegralRepresentationsOfGeneralLinearGroups §1.1 (e) at the array `y` with entry `1` in row `i` of block `τ` and
  column `#{j : l_{τ,j} > l_{τ,i}}`, and `0` elsewhere: a highest weight vector of `ρ_{κ,e}` for the order of the
  coordinates by decreasing entries of `l_τ`. It has unit length when every `l_τ` has distinct entries
  (IntegralRepresentationsOfGeneralLinearGroups §2.4 (d)).
- For a linear form `L` on `W`, `φ_L(z, g) = L(ρ(z)⁻¹φ(g))` on `G(1)`; `φ♮ = φ_L` for `L = ⟨v⁺, ·⟩`, `v⁺ = v⁺_l` for a
  parameter `l` of `(κ, e)` (below).
- The *doubled Harish-Chandra parameter* of `(κ, e)` at `τ` is `hc_τ = (hc_{τ,p})_{0≤p<n}`,
  `hc_{τ,p} = 2μ_{τ,p} + n − 1 − 2p`, strictly decreasing in `p`; `l = (l_τ)` is a *parameter of `(κ, e)`* if each
  `l_τ ∈ ℤ^n` has distinct entries, each of them one of the `hc_{τ,p}` (so `l_τ` is a permutation of `hc_τ`).
- Hecke operators `T_{w,j}` (3.1) act on forms; a *Hecke eigenform off a finite set `S`* is a form that is spherical
  off `S` for some Hecke polynomials, as in GaloisRepresentationsOfUnitaryEigenforms §1.1: nonzero, fixed by the
  elements of `K₀` trivial at `S`, and at every split place `w` with `w, w̄ ∉ S` fixed by `ι_w(GL_n(𝒪_w))` and an
  eigenvector of every `T_{w,j}`.

At a fixed level these are the forms of Gross's rational model of AutomorphicFormsOnReductiveGroups §7.4
(`F(γg) = ρ(γ)F(g)`, `F(gu) = F(g)`) for the unitary group of `(E^n, h_J)` over `E⁺`, its finite adelic points read in
`G_f` through the frame, with complex coefficients and the coefficient representation `γ ↦ ρ((x⁻¹γx)_∞)` of
`U(J)(E⁺)`; a form above is a function of that model for some open subgroup of `G_f` as the group of the `u`. This
coefficient representation is, at each `τ`, the algebraic representation of highest weight `μ_τ` read through the
conjugate embedding `x ↦ Φ_τ(x̄)`; on `U(J)` it is isomorphic to the contragredient of the one read through `Φ_τ`. So
in the automorphic realisation of AutomorphicFormsOnReductiveGroups §7.5, where the component at infinity is the dual
of the (irreducible) coefficient representation, the component at `τ` has highest weight `μ_τ` read through `Φ_τ`.

**In standard terms.** For the standard space `I_n` and a level `K`, extension of the values along a ring homomorphism
`ι : ℂ → ℂ_p` and the change of values of AutomorphicFormsOnReductiveGroups §7.4 identify the forms of level `K`,
after extension of scalars to `ℂ_p`, with the module `S(K, W_ι)` of §7.4 for the definite unitary group `U(1_n)` over
`E⁺` with its `p`-adic coefficient action, the Hecke operators corresponding to those of §7.4 (8.6 (a)); and with all
signs `+1`, 8.5 realises the forms as automorphic forms on `U(1_n)` (6.4, In standard terms).

[ShortProof], `Lib/Adelic/AutomorphicForms/SmoothAlgebraicForms.lean` (`New.SmoothForm`, `New.Space.weightRep`,
`New.AlgForm`, `New.algFormRep`, `New.algFormCoeff`, `New.ofAlgForm`, `New.IsHCParam`, `New.hcParameter`);
`Lib/GaloisRep/Main/Defs.lean` (`New.IsSphericalOff`, `New.HasHeckePolyAt`)

### 6.2 The invariant pairing, Harish-Chandra parameters and formal degrees

*Origin:* adapted from Gross (1999), algebraic modular forms and their invariant pairing: here the pairing of
algebraic forms on definite unitary groups by the class integral of 1.4; with, for the compact group `U(n)^Φ`, the
cyclicity of the highest vector, its coefficient, and the dimension as a product of formal degrees.

*Method of the formal proof:* (a) by 1.5 (a). (b) Schur orthogonality (IntegralRepresentationsOfGeneralLinearGroups
§2.4 (c)) with `a = c = v⁺`, of length one by §2.4 (d), gives `∫ ℓ(ρ(z)v⁺)·⟨v⁺, ρ(z⁻¹)u⟩ dz = (dim W)⁻¹·ℓ(u)` for
every linear form `ℓ` and every `u ∈ W`; so no nonzero linear form vanishes at all the `ρ(z)v⁺`, and no nonzero `u` has
`⟨v⁺, ρ(z)u⟩ = 0` for all `z`. (c): the first clause is combinatorics of the positions in a parameter; the coefficient
of `v⁺` is the product of principal minors of IntegralRepresentationsOfGeneralLinearGroups §2.4 (d), which is `c_λ` on
`U(n)` by HolomorphicDiscreteSeriesOfUnitaryGroups §5.3 (a) for signs `(1, …, 1)`; and Schur orthogonality
(IntegralRepresentationsOfGeneralLinearGroups §2.4 (c)) gives `∫|∏_τ c_{l_τ}|² = (dim W)⁻¹`, the product of the inverse
formal degrees of HolomorphicDiscreteSeriesOfUnitaryGroups §4.1 (d).

Let `V` be a definite space and `(κ, e)` a weight.

(a) For a sesquilinear `B` on `W` invariant under `ρ(U(J)(E⁺))`, `⟨φ, φ′⟩_B = I_{Γ_{V,f},K₀}(g ↦ B(φ(g), φ′(g)))` is a
pairing on algebraic forms of weight `(κ, e)`, invariant under right translation by `G_f`.

(b) If every `l_τ` has distinct entries, the highest vector `v⁺_l` is cyclic: its translates under `U(n)^Φ` span `W`,
and so do the linear forms `⟨v⁺_l, ρ(z)·⟩`, `z ∈ U(n)^Φ`.

(c) Let `l` be a parameter of `(κ, e)`. Each `l_{τ,i}` is the entry of `hc_τ` at the position of `l_{τ,i}` in the
decreasing order of `l_τ`; `⟨v⁺, ρ(z)v⁺⟩ = ∏_τ conj c_{l_τ}(z_τ)` for `z ∈ U(n)^Φ` (`v⁺ = v⁺_l`); and
`∏_τ d(l_τ) = dim W`.

*Needs:* 1.4, 1.5, 4.4, 6.1; HolomorphicDiscreteSeriesOfUnitaryGroups §§4.1, 5.3 (`c_λ` and formal degree on `U(n)`);
IntegralRepresentationsOfGeneralLinearGroups §2.4 (c), (d) (Schur orthogonality, the highest coefficient).

[ShortProof], `Lib/Adelic/AutomorphicForms/SmoothAlgebraicForms.lean` (`New.smoothPairing`,
`New.smoothPairing_formTranslation`, `New.highestVector_cyclic`, `New.IsHCParam.eq_hcParameter`,
`New.IsHCParam.exists_decreasingPosition_eq`, `New.IsHCParam.gramForm_conjWeylRep_eq_dsCoeff`,
`New.IsHCParam.prod_formalDegree`)

### 6.3 Finiteness and Hecke eigenforms

*Origin:* adapted from the description of algebraic modular forms by their values on the class set, in the invariants
of the finite stabilisers (AutomorphicFormsOnReductiveGroups §7.5, `S(J, M) ≅ ⊕_i M^{Γ_i}`): here finiteness at every
open level with a character, an invariant positive definite form, and spanning by Hecke eigenforms.

*Method of the formal proof:* (a) a form is determined by its values at representatives of the finitely many classes,
each in the invariants of a finite stabiliser. (b) the class integral of the invariant inner product of `W` (6.2 (a)).
(c) an element of `K₀` outside `H` has some component `g_w ≠ 1`, an open condition, and `K₀ ∖ H` is compact, so
finitely many places `w` suffice and form an `S`; for a minimal `S`, the splitting `g = ab` of 3.2 (b) along `{w, w̄}`
shows that `w, w̄ ∉ S` when `K₀,w ⊂ H`; the second sentence follows, as `K₀,w` is trivial at `S` when `w, w̄ ∉ S`.
(d) the Hecke operators at split places off `S` commute and are normal for the form of (b), the adjoint of `T_{w,j}`
being `T_{w̄,j}`, the operator of the inverse double coset (WeilRepresentationsOnBanachSpacesOfData §9.2 (a)); so `M`
is spanned by joint eigenvectors (WeilRepresentationsOnBanachSpacesOfData §9.2 (b)), which are Hecke eigenforms off
`S`. For the class-set inner product, the adjointness of the operators of `KgK` and `Kg⁻¹K` is also the Hecke-adjoint
clause of DiscreteSeriesCoefficientsAndAutomorphicMetrics §7.5a.

(a) Let `G` be a topological group, `Γ → G` an injective homomorphism, `K ⊂ G` a subgroup with `(Γ, K)` of finite type,
`χ` a character of `K` that is trivial on a neighbourhood of `1`, and `ρ` a representation of `Γ` on a
finite-dimensional `W`. The smooth `φ : G → W` with
`φ(γgk) = χ(k)ρ(γ)φ(g)` form a finite-dimensional space; a form is determined by its values at representatives of
`Γ\G/K`.

(b) Let `V` be a definite space over a CM field. The algebraic forms of weight `(κ, e)` carry a positive definite
hermitian form invariant under right translation by `G_f`, and for every open `K ⊂ G_f` and character `χ` of `K` the
forms of level `(K, χ)` are finite-dimensional.

(c) Let `K₀,w` be the subgroup of the elements of `K₀` supported on `{w, w̄}`. For every open `H ⊂ G_f` there is a
finite set `S` of finite places such that `H` contains the elements of `K₀` trivial at `S`, and `w, w̄ ∉ S` whenever
`K₀,w ⊂ H`. An open `K ⊂ G_f` contains `K₀,w` for almost all `w`.

(d) Let `S` be a finite set of finite places and `M` a finite-dimensional space of algebraic forms on `V` of weight
`(κ, e)`, fixed by the elements of `K₀` trivial at `S` and stable under `T_{w,j}` for every split `w` with `w, w̄ ∉ S` and
every `j`. Then `M` is spanned by Hecke eigenforms off `S` (6.1) lying in `M`.

When all stabilisers `Γ ∩ gKg⁻¹` are trivial, the dimension in (a) is `#(Γ\G/K)·dim W`; for adelic groups this is
DiscreteSeriesCoefficientsAndAutomorphicMetrics §7.5c.

*Needs:* 1.4, 1.5, 3.1, 3.2, 4.4, 6.1, 6.2; DiscreteSeriesCoefficientsAndAutomorphicMetrics §7.5c (dimension for
trivial stabilisers); WeilRepresentationsOnBanachSpacesOfData §9.2 (a), (b) (adjoints and commutation of the Hecke
operators at split places, joint eigenvectors).

[ShortProof], `Lib/Adelic/AutomorphicForms/HeckeEigenforms.lean` (`New.deltaForm`, `New.freeLevelEquiv`,
`New.finite_levelSpace_smoothFormRep`, `New.finrank_levelSpace_smoothFormRep`, `New.Space.exists_isUnitary_formTranslation`,
`New.Space.finite_formTranslation_levelSpace`, `New.exists_inf_trivialOn_le`, `New.eventually_maxCompactAt_le`,
`New.hasHeckePolyAt_iff`, `New.le_span_isSphericalOff`)

### 6.4 Forms on the standard definite space are algebraic forms

*Origin:* adapted from Gross (1999), algebraic modular forms on a definite group read as functions on its adelic
points: here the explicit comparison of algebraic forms with the forms of type `e_l` on the standard definite unitary
group through the highest vector, at all levels at once, with the integration formula for products with a kernel built
on the highest vector.

*Method of the formal proof:* Schur orthogonality on the compact group `U(n)^Φ` with the cyclic highest vector (6.2),
and the formula of 4.4 (d) for the integral over the quotient.

Let `E` be a CM field, `I_n` the standard space, `(κ, e)` a weight with parameter `l` (6.1), `d = dim W`, and
`v⁺ = v⁺_l` the highest vector.

(a) `φ ↦ φ♮`, `φ♮(z, g) = ⟨v⁺, ρ(z)⁻¹φ(g)⟩`, is a linear bijection from the algebraic forms of weight `(κ, e)` on `I_n`
onto `𝒜(I_n, e_l)`, with inverse `y ↦ (g ↦ d·∫_{G_∞} y(z, g)ρ(z)v⁺ dz)`. It commutes with right translation by `G_f`;
so it preserves levels, characters of levels and Hecke eigenvalues.

(b) Let `K` be a level and `Φ(z, g) = L_g(ρ(z)v⁺)` with linear forms `L_g` on `W`, `Φ` automorphic, such that `Φ·φ♮` is
right `K`-invariant. Then `∫_{Γ\G} Φ·φ♮ = (d·[K₀ : K])⁻¹·S_{Γ_f,K}(g ↦ L_g(φ(g)))`.

(c) If a level `K` acts on the right on `φ` and on `φ′` by the same unitary character of finite order, then
`S_{Γ_f,K}(g ↦ ⟨φ(g), φ′(g)⟩) = d·[K₀ : K]·⟨φ♮, φ′♮⟩`, the Petersson product of 5.1.

DiscreteSeriesCoefficientsAndAutomorphicMetrics §7.5a gives (b), by its integration formula and Schur orthogonality on
`U(n)^Φ`, and, for the trivial character, (c), as its comparison clause for the unit vector `⟨v⁺, ·⟩` with
`vol(G_∞K) = [K₀ : K]⁻¹` (4.4 (c)) and `dim W = d`; both through the identification of the automorphic realisation of
AutomorphicFormsOnReductiveGroups §7.5 with `φ ↦ φ♮` (In standard terms, below) and of the quotient integral of 1.1
with its quotient
measure (8.1). Neither section states the explicit map of (a) with its inverse.

**In standard terms.** With all signs `+1`, `G_∞ = U(n)^Φ` is compact and `U(1_n)` has no proper parabolic subgroup
over `E⁺`, so every automorphic form on it is a cusp form; the representation `π_l` of 8.5 is finite-dimensional and,
by 6.2 (c), it is the contragredient `ρ^∨` of `ρ`, the linear form `⟨v⁺, ·⟩` being a unit vector of `ρ^∨` with
coefficient `∏_τ c_{l_τ}`, matched with `ζ_l`. So (a) is `φ ↦ T_φ(⟨v⁺, ·⟩)`, where `T_φ(L) = φ_L` (6.1); by (a) and
8.5 (c), `φ ↦ T_φ` is a Hecke-equivariant linear bijection from the algebraic forms onto
`Hom_{U(n)^Φ}(ρ^∨, 𝒜(U(1_n)))`, which makes explicit the comparison of AutomorphicFormsOnReductiveGroups §7.5 between
the algebraic forms of the coefficient representation `ρ` and automorphic forms on `U(1_n)` over `E⁺`, read on `G(1)`
through 8.2. (c) compares the class-sum pairing with the `L²` inner product for the quotient measure (8.1 (b)).

*Needs:* 1.4, 1.5, 4.4, 5.1, 6.1, 6.2; RepresentationTheory/CompactGroups §4.1 (Schur orthogonality).

[ShortProof], `Lib/Adelic/AutomorphicForms/AutomorphicAsAlgebraic.lean` (`New.Space.toAlgForm`,
`New.Space.ofAlgForm_toAlgForm`, `New.Space.toAlgForm_formRep`, `New.Space.algFormEquiv`,
`New.hasHeckePolynomial_toAlgForm_iff`, `New.Space.integral_eq_classIntegral_of_isLevel`,
`New.Space.integral_mul_eq_classIntegral`, `New.Space.classSum_gramForm_eq_mul_petersson`)

### 6.5 Periods over a block subgroup

*Origin:* particular to this proof: the integral over the quotient of a block subgroup `U(m) × U(1)` of a definite
unitary group, of an automorphic function built on a vector of a representation of `U(m)` times the restriction of an
algebraic form, written as a class sum through multiplicity one of the branching from `U(m + 1)` to `U(m)`.

*Method of the formal proof:* integrating over `U(m)^Φ` produces a linear map `W_{κ,e} → W_{κ₀,e₀}` that commutes with
`U(m)^Φ`, which by the hypothesis on `A` (IntegralRepresentationsOfGeneralLinearGroups §3.4 (c)) is `C·A`; the finite
part is the class-sum formula 6.4 (b).

Let `E` be a CM field, `X` an index set of size `m + 1` identified with `{1, …, m} ⊔ {∗}`, `V` the standard space of rank
`m`, `(κ, e)` a weight for rank `m + 1` with representation `ρ` and `(κ₀, e₀)` a weight for rank `m` with representation
`ρ₀`, and `A : W_{κ,e} → W_{κ₀,e₀}` a linear map that spans the `U(m)^Φ`-equivariant maps (branching with multiplicity
one), `U(m)` embedded as `h ↦ diag(h, 1)`. For every linear form `t` on `W_{κ,e}` and every `c ∈ W_{κ₀,e₀}` there is
`C ∈ ℂ` such that for every algebraic form `ψ` of weight `(κ, e)` on `I_{m+1}`, every `u ∈ U(1)(𝔸_f)`, every level
`K ⊂ G_f(m)` and every automorphic `Φ` on `G(1_m)` of the form `Φ(z, g) = L_g(ρ₀(z)c)` with linear forms `L_g`:
`∫_{Γ_V\G} Φ(h)·ψ_t(diag(h, u)) dh = (C/[K₀ : K])·I_{Γ_{V,f},K}(g ↦ L_g(A·ψ(diag(g, u))))`, where `ψ_t` is the function
`φ_L` of 6.1 for `L = t` and the class integral is 1.4. Moreover `h ↦ ψ_t(diag(h, u))` is automorphic on `G(1_m)`.

*Needs:* 1.4, 1.5, 4.4, 5.1, 6.1, 6.4; IntegralRepresentationsOfGeneralLinearGroups §3.4 (branching with multiplicity
one).

[ShortProof], `Lib/Adelic/AutomorphicForms/BlockPeriods.lean` (`New.Seesaw.exists_eq_smul_of_intertwines`,
`New.Seesaw.integral_algFormCoeff_blockEmb`, `New.Seesaw.isAutomorphic_algFormCoeff_blockEmb`)

### 6.6 The `p`-adic gauge of algebraic forms and the integrality of class sums

*Origin:* particular to this proof: a `p`-adic norm on the values of algebraic forms, compatible with rational points
and with integral points above `p`, and the integrality of class sums and of class-sum pairings after multiplication
by a common multiple of the stabiliser orders.

*Method of the formal proof:* the gauge is a maximum of `p`-adic absolute values of coordinates in an integral basis,
on which integral matrices act integrally; weak approximation (3.8) moves a point into the integral points above `p`;
the integral Gram matrix of the minor-product basis gives (d); in a class sum, `A/#Γ_g` is an integer.

Fix a prime `p` and a ring homomorphism `ι : ℂ → ℂ_p`; `𝔬_ι = {z ∈ ℂ : |ι(z)|_p ≤ 1}`. `G_f^{(p)}` is the subgroup of
the `g ∈ G_f` whose components at all places above `p` lie in `GL_n(𝒪_w)`. For `g ∈ G_f` and `ξ ∈ W = W_{κ,e}`, the
*gauge* `γ_g(ξ)` is the largest `p`-adic absolute value of a coordinate (in the minor-product basis) of
`ρ_{κ,e}(g⁻¹)ι(ξ)`, `ρ_{κ,e}` the representation of 6.1 over `ℂ_p` (without conjugation), where at the infinite place
`τ` the element `g⁻¹` acts through its component at the prime of `E` induced by the embedding `x ↦ ι(Φ_τ(x̄))` of `E`
into `ℂ_p`. In the sense of convex geometry, `γ_g` is the gauge (Minkowski functional) of the `𝒪_{ℂ_p}`-lattice
`ρ_{κ,e}(g)·(𝒪_{ℂ_p} ⊗ W_ℤ)` at `ι(ξ)`, `W_ℤ` the `ℤ`-span of the minor-product basis (8.6 (b)).

(a) `γ_{γ_f g}(ρ(γ_∞)ξ) = γ_g(ξ)` for rational points `γ` of the standard space; `γ_{gk}(ξ) = γ_g(ξ)` for
`k ∈ G_f^{(p)}`; `γ_g(cξ) = |ι(c)|_p·γ_g(ξ)`; `γ_g(ξ + ξ′) ≤ max(γ_g(ξ), γ_g(ξ′))`; and for `k ∈ G_f^{(p)}`, `γ_k(ξ) ≤ 1`
if and only if every coordinate of `ξ` lies in `𝔬_ι`.

(b) For a definite space `V` and `g, h ∈ G_f` there is `γ ∈ U(J)(E⁺)` with `γ_f g ∈ G_f^{(p)}` and
`h·γ_f g·h⁻¹ ∈ G_f^{(p)}`.

(c) For a level `K` and a character `χ` of `K` of finite order, the form of level `(K, χ)` on `I_n` supported on
`Γ_f xK` with value `v` built at `x` (the delta form) has gauge at most `γ_x(v)` at every point, and its squared norm under
every automorphism `σ` of `ℂ` is at most `#(Γ_f ∩ xKx⁻¹)²` times that of `v`.

(d) If `γ_g(u) ≤ 1` for the homomorphism `ι ∘ conj` and `γ_g(v) ≤ 1` for `ι`, then `⟨u, v⟩ ∈ 𝔬_ι`.

(e) Let `(Γ, K)` have finite type and `A` be a common multiple of the orders of all stabilisers `Γ ∩ xKx⁻¹`. If
`γ_g(c·f(x)) ≤ 1` for all `x`, then `γ_g(A·c·S_{Γ,K}(f)) ≤ 1`; and if the archimedean norms of all `f(x)` under `σ` are at
most `B`, that of `S_{Γ,K}(f)` is at most `#(Γ\G/K)·B`.

(f) For places `w_i` and `H` as in 3.9 (c) and a character `χ` of `H` of finite order, the forms of weight `(κ, e)` on
`I_n` of level `(K_H, χ ∘ red)` form a finite-dimensional inner product space for
`⟨φ, φ′⟩ = S_{Γ_f,K_H}(g ↦ ⟨φ(g), φ′(g)⟩)`; if `φ` has gauge at most `1` everywhere for `ι ∘ conj`, `φ′` for `ι`, and `A`
is a common multiple of the stabiliser orders at `K_H`, then `A·⟨φ, φ′⟩ ∈ 𝔬_ι`.

**In standard terms.** For an algebraic form `φ` on `I_n` of level `K`, `g ↦ ρ_ι(g)⁻¹ι(φ(g))` (8.6) is a form with
`p`-adic coefficient action in the sense of AutomorphicFormsOnReductiveGroups §7.4 for `U(1_n)` over `E⁺`, and `φ` has
gauge at most `1` everywhere exactly when this form takes values in the lattice `𝒪_{ℂ_p} ⊗ W_ℤ`, that is, lies in the
module of §7.4 for that lattice (8.6 (b)). (a) records the behaviour of the lattice under rational points and under
`G_f^{(p)}`, and (e), (f) are integrality statements for class sums and class-sum pairings of such forms.

*Needs:* 1.4, 1.5, 3.8, 3.9, 4.4, 6.1, 6.3; IntegralRepresentationsOfGeneralLinearGroups §§1.1, 1.3, 2.1 (minor-product
basis, integral Gram matrix).

[ShortProof], `Lib/Adelic/AutomorphicForms/SmoothAlgebraicForms.lean` (`New.weylGauge`, `New.integralAbove`);
`Lib/Adelic/AutomorphicForms/PAdicGauge.lean` (`New.weylGauge_embFin`, `New.weylGauge_mul_of_mem_integralAbove`,
`New.weylGauge_smul`, `New.weylGauge_le_one_iff`, `New.exists_mul_mem_integralAbove`, `New.Rows.weylGauge_deltaForm_le`,
`New.Rows.weylNormSq_deltaForm_le`, `New.gramForm_mem_embValRing`, `New.weylGauge_classSum_le_one`,
`New.sqrt_weylNormSq_classSum_le`, `New.LevelPlaces.LevelForm`, `New.LevelPlaces.LevelForm.inner_eq_stdClassSum`,
`New.LevelPlaces.LevelForm.norm_nsmul_inner_le_one`)

## Layer 7: The comparison of traces

### 7.1 Test functions, cuspidality at a split place, and the geometric side

*Origin:* definitions and conventions.

Let `E` be a CM field, `n ≥ 1`.

- A *test function* on a totally disconnected locally compact group is a locally constant compactly supported complex
  function. For a compact open subgroup `K ⊂ G_f` and `a = ∑ c_b b ∈ ℂ[G_f]`, `a ⋆ 1_K = ∑ c_b 1_{bK}`.
- For a complex representation `ρ` of a group `G` and a subgroup `K`, the *level algebra* is the subalgebra of the `a ∈ ℂ[G]`
  with `ρ(a)` preserving the `K`-fixed vectors; the *universal level algebra* `𝔄(K)` is the intersection of the level
  algebras over all complex representations of `G`. Here *level algebra* names these subalgebras of the group algebra;
  SmoothRepresentationsOfLocalGroups §SR.1.2 (Level algebras and the double-coset ring) uses the name for the Hecke
  algebras of `K`-bi-invariant functions and of double cosets, onto which `a ↦ a ⋆ 1_K` maps `𝔄(K)` when `K` is
  compact and open (8.4 (b)).
- For a field `k`, `n ≥ 2` and a subset `∅ ≠ T ⊊ {1, …, n}` with coordinate projector `p_T`, `N_T(k) =
  {1 + p_T Z(1 − p_T) : Z ∈ M_n(k)}`. A test function `φ` on `G_f` is *cuspidal at the split place `w`* if for every such
  `T`, every `t ∈ GL_n(k_w)`, every map `ℓ : M_n(k_w) → GL_n(𝒪_w)` whose reduction is `Z ↦ (1 + p_T Z(1 − p_T))t`, and every
  `g ∈ G_f`: `∑_{Z∈M_n(k_w)} φ(g·ι_w(ℓ(Z))) = 0`. Here *cuspidal at `w`* is a condition on sums over the residue field
  (8.7 (a) restates it); it makes `φ` a supercusp form at `w` in the sense of 8.7 (b), and it is a strictly stronger
  condition (8.7 (c)).
- `g ∈ GL_n(E_w)` has a *simple zero* at `w` if its entries lie in `𝒪_w` and `0` is a simple root of the characteristic
  polynomial of its reduction modulo `w`.
- For a space `V` of signs `s`, a cusp kernel `k` of order `B ≥ 13n³` on `G_∞(s)` (5.1), a test function `φ` on `G_f`
  and a set `S` of monic polynomials over `E`, the *part of the geometric side* with polynomials in `S` is
  `J^V_S(k, φ) = ∫_{Γ_V\G} ∑_{γ ∈ U(J)(E⁺), χ_γ ∈ S} (k ⊗ φ)(g⁻¹γg) dg` (absolutely convergent by 7.3 (d)), `γ` read
  in `G(s)` through the frame and `χ_γ` its characteristic polynomial; `J^V(k, φ)` is the case of all polynomials.
- For `γ ∈ U(J)(E⁺)` with centraliser `Z_γ` in `U(J)(E⁺)` (read in `G(s)` through the frame, a discrete subgroup) and
  a function `k` on `G_∞(s)`, the *orbital integral* is `I_γ(k ⊗ φ) = ∫_{Z_γ\G} (k ⊗ φ)(g⁻¹γg) dg` (1.1).
- For a level `K`, `𝒜(V, l, K)` is `𝒜(V, e_l, K)` (5.1), on which `ℂ[G_f]` acts by right translation.

**In standard terms.** For a level `K`, `a ↦ a ⋆ 1_K` maps `𝔄(K)` onto the Hecke algebra `ℋ(G_f, K)` of compactly
supported `K`-bi-invariant functions, and `a` acts on `K`-fixed vectors as that Hecke function (8.4). A test function
cuspidal at a split place `w` is a supercusp form at `w` (8.7 (b)). Through 8.1 and 8.2, `J^V(k, φ)` is the integral
over `U(J)(E⁺)\U(J)(𝔸_{E⁺})`, against the quotient measure, of the kernel of `k ⊗ φ` on the diagonal, written as a sum
over the rational points of `U(J)` and sorted by characteristic polynomials; for `k = e_l` with every `l_w` of gap
`513n³` and `φ = a ⋆ 1_K` with `a` as in 8.8, it equals the spectral sum of 8.8 (b).

[ShortProof], `Lib/Adelic/TraceFormula/TestFunction.lean` (`New.TestFunction`, `New.convIndicator`, `New.IsCuspidalAt`,
`New.HasSimpleZero`); `Lib/Adelic/TraceFormula/LevelAlgebra.lean` (`New.levelAlgebra`, `New.levelAction`,
`New.universalLevelAlgebra`); `Lib/Adelic/TraceFormula/Convergence.lean` (`New.Space.kernelTerm`, `New.Space.polyTerm`);
`Lib/Adelic/TraceFormula/ReduciblePolynomials.lean` (`New.Space.geometricSide`);
`Lib/Adelic/TraceFormula/OrbitalUnfolding.lean` (`New.Space.orbitalIntegral`)

### 7.2 Idempotents of irreducible labels give cuspidal test functions

*Origin:* adapted from Green (1955), the cuspidal characters of `GL_n(𝔽_q)`, their degree and their values: here the
cuspidality of the idempotent of an irreducible label, inflated to a test function on the finite adelic unitary group
that is cuspidal at a split place.

*Method of the formal proof:* the input is the cuspidality of Green's function `τ_P` of the irreducible member
(IntegralRepresentationsOfGeneralLinearGroups §4.4 (a)), read on the label idempotent of
IntegralRepresentationsOfGeneralLinearGroups §5.3 (e) as the vanishing of its coefficient sums over the cosets of
`N_T`. The test function lives on `K₀`, where it is the idempotent pulled back through the reduction of 3.9 (c), and
the cuspidality of 7.1 at `w_x` is that vanishing read at the place `w_x`.

Let `w_1, …, w_r` be finite places as in 3.9 (c), `c = (c_i)` with `c_i ∈ k_{w_i}[X]`, and suppose `c_x` is an
irreducible label of degree `n` (monic, irreducible, `c_x(0) ≠ 0`) for some index `x`. Let `e_c ∈ ℂ[∏_i GL_n(k_{w_i})]`
be the tensor product of the label idempotents, `ẽ_c ∈ ℂ[K₀]` its lift by a section of the reduction supported on the
places `w_i, w̄_i` (3.9 (c)), and `K(⊥)` the kernel of the reduction. Then for every `b ∈ ℂ[G_f]`, the test function
`(b·ẽ_c) ⋆ 1_{K(⊥)}` is cuspidal at `w_x`; and the coefficients of `e_c` sum to zero over every coset of `N_T(k_{w_x})`
(placed at `w_x`) for every proper nonempty `T`.

**In standard terms.** By 8.7 (b), the test functions `(b·ẽ_c) ⋆ 1_{K(⊥)}` are supercusp forms at `w_x`: for every
`g ∈ G_f`, the function `z ↦ ((b·ẽ_c) ⋆ 1_{K(⊥)})(g·ι_{w_x}(z))` on `GL_n(E_{w_x})` has vanishing integrals along the
unipotent radicals of all proper parabolic subgroups, after translation on both sides.

*Needs:* 3.9, 7.1; IntegralRepresentationsOfGeneralLinearGroups §§4.4, 5.3 (labels, idempotents, cuspidality of `τ_P`).

[ShortProof], `Lib/Adelic/TraceFormula/CuspidalType.lean` (`New.isCuspidalAt_convIndicator_tupleIdem`,
`New.sum_coeff_labelIdem_radicalHom`, `New.sum_coeff_tupleIdem_radicalHom`)

### 7.3 Kernel bounds and convergence of the geometric side

*Origin:* adapted from the convergence arguments of the simple trace formula (Flicker and Kazhdan (1988)): here the
bound of the kernel sum by a power of the height, and the convergence of the geometric side for kernels of polynomial
decay on adelic unitary groups.

*Method of the formal proof:* the rational points `g⁻¹γx` with finite part in the support of `φ` are counted in dyadic
shells of the archimedean norm by a measure comparison with disjoint translates of a level box (Minkowski, 4.1), with a
lower bound for `x⁻¹γx` at infinity when `γ` pairs two short lattice vectors non-trivially (a nonzero algebraic integer
has norm at least one); irreducible characteristic polynomials exclude the cusps, where `γ` would keep an isotropic
subspace.

Let `V` be a space with an adelic frame of signs `s`, `φ` a test function on `G_f`, and `k` measurable on `G_∞(s)` with
`|k(z)|·(∏_w ‖z_w‖)^B ≤ C` for all `z` (operator norms).

(a) There is `C′` with `∑_{γ ∈ U(J)(E⁺)} |φ((g⁻¹γx)_f)|·‖(g⁻¹γx)_∞‖^{−8n²−1} ≤ C′·ht_V(x)^{4fn²}` for all `g, x ∈ G(s)`,
`‖y_∞‖` the product of the operator norms at the infinite places.

(b) If `B > 8n²`, there is `C′ ≥ 0` with `∑_{γ∈Z} |(k ⊗ φ)(g⁻¹γx)| ≤ C′·ht_V(x)^{4fn²}` for all `g, x` and all subsets
`Z ⊂ U(J)(E⁺)`.

(c) If `B ≥ 13n³`, the sum over the `γ` with irreducible characteristic polynomial of `|(k ⊗ φ)(x⁻¹γx)|` is bounded
uniformly in `x`.

(d) If `B ≥ 13n³` and `k` is a cusp kernel of order `B`, there is `D` with `|∑_{γ: χ_γ ∈ S} (k ⊗ φ)(x⁻¹γx)| ≤ D` for all
`x` and all sets `S` of polynomials; so `J^V_S(k, φ)` is defined by an absolutely convergent integral (4.3 (c)).

*Needs:* 3.1, 4.1, 4.2, 4.3, 5.1, 5.4, 7.1.

[ShortProof], `Lib/Adelic/TraceFormula/KernelBound.lean` (`New.Space.exists_tsum_majorant_le`,
`New.tsum_mul_measure_le_lintegral`, `New.Space.exists_levelBox_disjoint`); `Lib/Adelic/TraceFormula/Stretch.lean`
(`New.Space.exists_one_le_pow_mul_prod_norm`); `Lib/Adelic/TraceFormula/Convergence.lean`
(`New.Space.exists_tsum_enorm_kernelTerm_le_height`, `New.Space.summable_kernelTerm`,
`New.Space.exists_tsum_enorm_irreducibleTerm_le`, `New.Space.exists_norm_partialKernel_spanStabilizer_le`,
`New.Space.exists_norm_tsum_polyTerm_le`)

### 7.4 Descent of invariant distributions to a slice

*Origin:* adapted from Harish-Chandra's descent of invariant distributions to a slice: here for an abstract totally
disconnected group acted on by conjugation, with the slice given as a hypothesis and no reductive structure.

*Method of the formal proof:* the map `(γ, y) ↦ j(γ)yj(γ)⁻¹` from `Γ × X` onto `C` has the `H`-orbits as fibres, so
averaging along them sends a test function `Ψ` to a function `f` as in the statement. Pulled back along this map, `I`
becomes a distribution on `Γ × X` invariant under translations of the `Γ`-variable, hence, in that variable, a multiple
of Haar measure on `Γ`; the hypothesis `∫_Γ Ψ(γ, y) dγ = 0` then gives `I(f) = 0`. On the way, `I` is unchanged by the
compact means (1.5 (b)) of a test function under conjugation by a compact open subgroup of `Γ`.

Let `G` be a Hausdorff, weakly locally compact, totally disconnected topological group, `Γ` a topological group with a
compact open subgroup acting on `G` by conjugation through a continuous homomorphism `j`, `H ⊂ Γ` a closed subgroup, with
Haar measures on `Γ` and `H`. Let `X ⊂ C ⊂ G` with `C` closed be a *slice*: `C` is the set of `j(γ)yj(γ)⁻¹`, `y ∈ X`;
`j(γ)yj(γ)⁻¹ ∈ X` with `y ∈ X` holds exactly for `γ ∈ H`; and near `X` the points of `C` are conjugated into `X` by
elements of `Γ` near `1`. Let `I` be a linear form on test functions on `G` that is invariant under conjugation by `Γ`
and depends only on the restriction to `C`. If `Ψ` is a test function on `Γ × G` with `∫_Γ Ψ(γ, y) dγ = 0` for every
`y ∈ X`, and `f` is a test function with `f(j(γ)yj(γ)⁻¹) = ∫_H Ψ(γh, j(h)⁻¹yj(h)) dh` (the integral over the `H`-orbit
of `(γ, y)`) for `γ ∈ Γ`, `y ∈ X`, then `I(f) = 0`. For every test function `Ψ` such an `f` exists.

*Needs:* 7.1; 1.5 (b) (compact means).

[ShortProof], `Lib/Adelic/TraceFormula/FibreIntegral.lean` (`New.IsSlice`, `New.IsInvariantDistribution`,
`New.fibreIntegral`, `New.IsImage`, `New.IsSlice.exists_isImage`, `New.IsInvariantDistribution.eq_zero_of_isImage`)

### 7.5 Invariant distributions on classes with coprime factors

*Origin:* adapted from the simple trace formula, after Deligne and Kazhdan (vanishing of invariant distributions
supported on classes with reducible characteristic polynomial for test functions cuspidal at a split place): here on
the finite adelic unitary group, at one split place.

*Method of the formal proof:* the elements whose component at `w` has characteristic polynomial `AB` with `A, B` coprime
are conjugate to block diagonal elements; the block diagonal locus is a slice (7.4) with stabiliser the Levi subgroup,
and the integral of a cuspidal test function over the corresponding unipotent radical vanishes.

Let `w` be a split place of the CM field `E`, and `A, B ∈ E_w[X]` coprime non-units. Let `I` be
a linear form on test functions on `G_f`, invariant under conjugation by `G_f`, that vanishes on every test function
vanishing on `{g ∈ G_f : χ(g_w) = AB}`. Then `I(φ) = 0` for every test function `φ` cuspidal at `w`.

*Needs:* 3.1, 3.2, 7.1, 7.4.

[ShortProof], `Lib/Adelic/TraceFormula/CoprimeFactors.lean` (`New.isSlice_blockLocus`, `New.eq_zero_of_coprime_factors`)

### 7.6 The geometric side, polynomial by polynomial

*Origin:* adapted from the comparison of simple trace formulas for inner forms of unitary groups (the works cited at
7.10): here the decomposition of the geometric side by characteristic polynomials and the vanishing of the reducible
ones under cuspidality at a split place and a simple zero at a second place.

*Method of the formal proof:* (b) by 7.3 (d) and dominated convergence. (d): the reducible `R` with coprime factors at
`w` are removed by 7.5 (the term is an invariant distribution in `φ`); a power of an irreducible polynomial cannot be the
characteristic polynomial of an element with a simple zero; an element keeping an isotropic subspace has reducible
characteristic polynomial, unchanged by the unipotent radical (a).

Let `V` be a space with an adelic frame of signs `s`, `k` a cusp kernel of order `B ≥ 13n³` on `G_∞(s)`, `φ` a test
function on `G_f`.

(a) For a nondegenerate hermitian `J` over a field with involution, an element of `U(J)` keeping a nonzero isotropic
subspace has reducible characteristic polynomial, and multiplying it by an element of the unipotent radical of the
stabiliser of that subspace does not change its characteristic polynomial.

(b) `R ↦ J^V_{{R}}(k, φ)` is summable over the monic polynomials `R` with sum `J^V(k, φ)`, and
`J^V_S(k, (g, g)·φ) = J^V_S(k, φ)` for `g ∈ G_f`.

(c) If `φ(y) = 0` whenever the characteristic polynomial of `y_w` is `R` (at some finite place `w`), then
`J^V_{{R}}(k, φ) = 0`.

(d) If `φ` is cuspidal at a split place `w` and every `g` with `φ(g) ≠ 0` has a simple zero at a finite place `w′`, then
`J^V_{{R}}(k, φ) = 0` for every reducible `R`.

*Needs:* 3.1, 7.1, 7.3, 7.5.

[ShortProof], `Lib/Adelic/TraceFormula/IsotropicStabiliser.lean` (`New.IsIsotropicFrame.not_irreducible_charpoly`,
`New.IsIsotropicFrame.charpoly_radical_mul`); `Lib/Adelic/TraceFormula/ReduciblePolynomials.lean`
(`New.Space.hasSum_geometricSide`, `New.Space.geometricSide_translate`,
`New.Space.geometricSide_singleton_eq_zero_of_forall`, `New.Space.geometricSide_singleton_eq_zero`)

### 7.7 Traces on forms as the geometric side, and unfolding of orbital integrals

*Origin:* adapted from the comparison of simple trace formulas for inner forms of unitary groups (the works cited at
7.10): here the trace of an operator on forms of a cusp kernel and a level, written as the integral of the kernel on
the diagonal, and the unfolding of the irreducible terms into orbital integrals.

*Method of the formal proof:* (a) is 5.2 (e) for the sum over `Γ_V`, which 7.3 (b) bounds. For (b), each `k_x` lies in
the finite-dimensional `𝒜(V, e, K)` (5.4 (e)); writing the kernel of `T` through an orthonormal basis of that space and
integrating it along the diagonal over `Γ_V\G` gives `vol(K)·tr T`, and the same integral is the geometric side. For
(c), the class of `γ` is indexed by `U(J)(E⁺)` modulo the centraliser, and 1.3 (3) unfolds it. For (d), a cutoff
(1.1) depending only on the finite component separates the archimedean and the finite variables of `I_γ`.

Let `V` be a space with an adelic frame of signs `s`, `e` a cusp kernel of order `B` on `G_∞(s)`, `K` a level.

(a) If `B > 8n²`, for every `x ∈ G(s)` there is `k_x ∈ 𝒜(V, e, K)` with
`conj k_x(g) = ∑_{γ∈Γ_V} e((xγg)_∞)·1_K((xγg)_f)`.

(b) If `B ≥ 13n³`, `a ∈ ℂ[G_f]` and `T` is an endomorphism of `𝒜(V, e, K)` acting as `a`, then
`vol(K)·tr T = J^V(e, a ⋆ 1_K)`.

(c) If `B ≥ 13n³`, `k` is measurable with `|k(z)|·(∏_w ‖z_w‖)^B` bounded, and `γ ∈ U(J)(E⁺)` has irreducible
characteristic polynomial, then the orbital integrand is integrable over `Z_γ\G`, and the integral over `Γ_V\G` of the
sum of `(k ⊗ φ)(g⁻¹γ′g)` over the `γ′` conjugate to `γ` under `U(J)(E⁺)` is `I_γ(k ⊗ φ)`. The conjugacy classes of all
spaces of rank `n` at once are indexed by the orbits of `GL_n(E)` on pairs `(x_f G_f, y)`, `x_f ∈ GL_n(𝔸_f)`,
`y ∈ GL_n(E)`, acting by `z·(x_f G_f, y) = (z x_f G_f, zyz⁻¹)`.

(d) Let `e = e_l`, and `γ ∈ U(J)(E⁺)` with `x⁻¹γx = g·(t, y)·g⁻¹` for some `g ∈ G(s)`, `t ∈ G_∞(s)` and `y ∈ G_f`. For
every `β : G_f → [0, ∞]` such that `u ↦ β((g⁻¹u)_f)` is a cutoff (1.1) on `G(s)` for the action of `Z_γ` with the
counting measure: `I_γ(e_l ⊗ φ) = ∏_w ∫_{U(diag s)} e_{l_w}(h⁻¹t_wh) dh · ∫_{G_f} β(v)·φ(v⁻¹yv) dv`.

*Needs:* 1.1, 1.3, 3.1, 5.1, 5.2, 5.4, 7.1, 7.3, 7.6.

[ShortProof], `Lib/Adelic/TraceFormula/OrbitalUnfolding.lean` (`New.Space.exists_kernel_form`,
`New.Space.partialKernel_convIndicator_eq_sum`, `New.Space.volume_mul_trace_eq`, `New.frameClass`, `New.frameClass_eq_iff`,
`New.Space.hasSum_classIntegral`, `New.Space.orbitalIntegral_unfold`); `Lib/Adelic/TraceFormula/TraceComparison.lean`
(`New.Space.orbitalIntegral_eq_prod_mul`)

### 7.8 The Selberg principle for cusp kernels

*Origin:* adapted from the Selberg principle of the theory of discrete series, the vanishing of orbital integrals of
cusp forms at non-elliptic elements (Harish-Chandra (1966), Theorem 11): here for a cusp kernel at the infinite places
of an adelic orbital integral, at a rational element whose irreducible characteristic polynomial has a root off the
unit circle at some infinite place.

*Method of the formal proof:* the centraliser of such a `γ` contains, at some infinite place, a noncompact torus along
which the orbital integrand is a convolution of the cusp kernel with a function invariant in a noncompact direction;
the moment and decay of the cusp kernel make this integral vanish, as in 5.3.

Let `V` be a space with an adelic frame of signs `s`, `e` a cusp kernel of order `B ≥ 13n³` on `G_∞(s)`, `φ` a test
function on `G_f`, and `γ ∈ U(J)(E⁺)` with irreducible characteristic polynomial `R` having, at some infinite place `w`,
a root `r` (of `R^{Φ_w}`) with `|r| ≠ 1`. Then `I_γ(e ⊗ φ) = 0`, and `J^V_{{R}}(e, φ) = 0`.

EndoscopicTransferAndUnitaryTraceComparison §2.10 states the vanishing for averaged Euler–Poincaré functions on a real
reductive group; it does not give this statement.

*Needs:* 1.1, 5.1, 5.3, 7.1, 7.3, 7.7.

[ShortProof], `Lib/Adelic/TraceFormula/TraceComparison.lean` (`New.Space.orbitalIntegral_eq_zero`,
`New.Space.geometricSide_singleton_eq_zero_of_norm_ne_one`, `New.Space.isEllipticSimilitude_of_norm_eq_one`)

### 7.9 Elliptic similitudes and the change of signs

*Origin:* particular to this proof: for an elliptic element, moving its finite adelic frame by an element commuting with
its centraliser changes its signs at the infinite places by any pattern of product one, and these moves permute the
orbits of marked triples.

*Method of the formal proof:* in an eigenbasis of `y` at each infinite place the form is diagonal. In the CM field
`L = E[X]/(P)`, `P` the characteristic polynomial of `y`, class field theory for `L` over its totally real subfield
gives `a ∈ L^×` with the prescribed signs at the roots (their product is one) and a finite idele `u` of `L` with
`a·u·ū = 1`. For polynomials `δ` over `E` and `g` over `𝔸_f` representing `a` and `u⁻¹`, `U = g(y)` read in
`GL_n(𝔸_f)` satisfies `(Ux)*β(Ux) = x*(βδ(y))x`, and `β ↦ βδ(y)` changes the signs; `U` commutes with the centraliser
of `y`.

Let `E` be a CM field. For `y ∈ GL_n(E)`, `ν ∈ ℚ^×` and a matrix `β ∈ M_n(E)`, `y` is an *elliptic similitude of `β`
with multiplier `ν`* if its characteristic polynomial is irreducible, `y*βy = νβ`, and every complex root `r` of the
characteristic polynomial under each `Φ_w` has `r r̄ = ν`. Number the roots at each `w`. For signs `ε = (ε_{w,i})`, a set
`F ⊂ M_n(𝔸_f)` and `x ∈ GL_n(𝔸_f)`, the pair `(y, x)` has *type* `(ε, ν, F)` if for some `β`, `y` is an elliptic similitude
of `β` with multiplier `ν`, `x*βx ∈ F`, and at each `w` the form `β^{Φ_w}·p_w(y^{Φ_w})` is positive definite, `p_w` the
polynomial interpolating `ε_{w,i}` at the `i`-th root. Let `Z` be a set of marks, `K ⊂ GL_n(𝔸_f)` a subgroup, and
`GL_n(E)` act on triples `(qK, y, μ)` by `z·(qK, y, μ) = (zqK, zyz⁻¹, μ)`. For every family `(η_μ)_{μ∈Z}` of sign patterns
with `∏_{w,i} η_{μ,w,i} = 1`, there is a permutation `e` of the `GL_n(E)`-orbits of triples such that for every `y` and
`μ` some `U ∈ GL_n(𝔸_f)` satisfies: (a) for all `ν, ε, F, x`, `(y, x)` has type `(εη_μ, ν, F)` if and only if `(y, Ux)` has
type `(ε, ν, F)`; (b) `U` commutes with every `z ∈ GL_n(E)` that commutes with `y`; (c) `e` maps the orbit of `(qK, y, μ)`
to that of `(UqK, y, μ)`.

HermitianFormsAndLattices §3.2 with `n = 1`, for `L` over its maximal totally real subfield `L⁺`, with the trivial
class at every finite place and the prescribed signs at the real places of `L⁺`, gives the element `a` of the
background result below: it lies in `L⁺` and is a norm from `L` locally at every finite place. It does not state the
idele `z`, a choice at each finite place of a solution of `z_v z̄_v = a⁻¹` that is a unit at almost all places.

*Needs:* 2.1, 3.1; ShortGRH background (class field theory for a CM field `L` over its totally real subfield: for
signs at the infinite places of `L` with product one, there are an `a ∈ L^×` with `φ(a)` real of the prescribed sign
for every complex embedding `φ`, and a finite idele `z` of `L` with `a·z·z̄ = 1`; [ShortProof]
`Lib/ClassField/Global/CMSplittingCharacters.lean` (`New.Cohomology.exists_sign_principalIdele_mul_norm_eq_one`)).

[ShortProof], `Lib/Adelic/TraceFormula/ChangingSigns.lean` (`New.Variety.IsEllipticSimilitude`,
`New.Variety.HasSignType`, `New.Variety.exists_eigenbasis_diag_form`, `New.Variety.exists_aeval_hasSignType_mul_iff`,
`New.Variety.exists_hasSignType_mul_iff`)

### 7.10 Comparison of traces under a simple-zero condition

*Origin:* adapted from the comparison of simple trace formulas for inner forms of unitary groups: Labesse (2011),
Theorems 5.4 and 5.5 and their proofs; Arthur and Clozel (1989), ch. 1, Lemmas 2.4–2.6; Knightly and Li (2006);
Flicker and Kazhdan (1988); Harris and Labesse (2004), Proposition 1.10.5: here for two hermitian spaces with adelic
frames that differ only in their signs at the real places, with idempotent discrete-series kernels at the real places,
a test function cuspidal at a split place with a simple zero at a second place, and the conclusion an equality of
traces on spaces of forms of a level.

*Method of the formal proof:* by 7.7 (b) `vol(K)·tr T` is the geometric side, a sum over polynomials (7.6 (b)); reducible
polynomials vanish (7.6 (d)); irreducible ones with a root off the unit circle vanish (7.8); for the others the orbital
integrals factor (7.7 (d)), the real factors being characters of the compact unitary group at the roots, so that (a)
holds with a constant `c` that does not see the signs: the classes for different signs are matched by 7.9, which needs
the product of the signs to be one, available because the number of infinite places is even, and by Landherr's theorem
(3.3).

Let `E` be a CM field with the 5040 condition and an even number `f` of infinite places, `n ≥ 2`, and `φ` a test function on
`G_f`.

(a) Let `R` be an irreducible monic polynomial over `E` all of whose complex roots under every `Φ_w` lie on the unit
circle, numbered `z_{w,1}, …, z_{w,n}`, and `B ≥ 13n³`. There is `c ∈ ℂ` such that for every sign vector `s`, every space
`V` of signs `s` and every `l` with `e_l` a cusp kernel of order `B` and each `l_w` of gap `500n³ + 10n⁵` for `s`:
`J^V_{{R}}(e_l, φ) = c·∏_w conj χ_{l_w}(diag(z_{w,1}, …, z_{w,n}))`, `χ_{l_w}` the character of the irreducible
representation of `U(n)` whose highest weight is the lowest `K`-type of `l_w` for the signs `(1, …, 1)`.

(b) Let `V`, `V′` be spaces with adelic frames of signs `s`, `s′`, and `l` with each `l_w` of gap `500n³ + 10n⁵` for `s` and
for `s′`. Let `K` be a level, `a ∈ ℂ[G_f]`, `w` a split place and `w′` a finite place, such that `a ⋆ 1_K` is cuspidal at
`w` and every `g` with `(a ⋆ 1_K)(g) ≠ 0` has a simple zero at `w′`. If `T`, `T′` are endomorphisms of `𝒜(V, l, K)` and
`𝒜(V′, l, K)` acting as `a`, then `tr T = tr T′`.

BaseChangeAndGaloisRepresentationsForUnitaryGroups §13.8a states equal cuspidal multiplicities of inner forms in an odd
number of variables under other hypotheses (pseudo-coefficients, types, all consecutive gaps `100r⁴`); neither
statement implies the other as written.

*Needs:* 3.1, 3.3, 5.2, 5.4, 7.1, 7.3, 7.6, 7.7, 7.8, 7.9; HolomorphicDiscreteSeriesOfUnitaryGroups §§7.1, 7.4 (Weyl
characters, elliptic orbital integrals).

[ShortProof], `Lib/Adelic/TraceFormula/TraceComparison.lean` (`New.Space.exists_geometricSide_singleton_eq`,
`New.trace_comparison`)

### 7.11 The Hecke relation for the stabiliser of a line

*Origin:* particular to this proof: the quadratic relation between the two Hecke operators of the stabiliser of a line
modulo `ϖ` in `GL_n(𝒪)`, on its fixed vectors, with the spherical mean.

*Method of the formal proof:* the product `T⁺T⁻` is computed by counting the cosets of `J diag(ϖ, 1, …, 1)J` and of its
inverse through a given coset, with the counts of linear forms and lines over the residue field; adjointness by
unitarity; the support of powers of `T⁺` by tracking the reduction of the line.

Let `w` be a finite place of a number field, `q = q_w`, `n ≥ 2`, `i ∈ {1, …, n}`, and `J ⊂ GL_n(𝒪_w)` the stabiliser of
the line `k_w e_i` modulo `ϖ_w`. For a complex representation `ρ` of `GL_n(E_w)`, let `T^±` be the Hecke operators of the
double cosets `J diag(ϖ_w, 1, …, 1)^{±1} J` (with `ϖ_w` in the `i`-th position) on `ρ^J`, and `e_sph` the mean over lifts
of `GL_n(k_w)` (the compact mean of 1.4 for `GL_n(𝒪_w)`).

(a) `T⁺T⁻y = q^{n−2}(y + (q^n − 1)·e_sph y)` for `y ∈ ρ^J`. For the trivial representation both sides are `q^{2n−2}`:
`T⁺` and `T⁻` each have degree `q^{n−1}`.

(b) If `ρ` is unitary, `⟨T⁺x, y⟩ = ⟨x, T⁻y⟩` for `x, y ∈ ρ^J`.

(c) For `m ≥ 1`, the `m`-th power of the group-algebra element of `T⁺` is a combination of `g` such that `gk` has a simple
zero at `w` for every `k ∈ J`.

*Needs:* 1.4, 7.1.

[ShortProof], `Lib/Adelic/TraceFormula/LineStabiliser.lean` (`New.lineStabilizer`, `New.lineRaise`, `New.lineLower`,
`New.lineHecke`, `New.lineRaise_lineLower`, `New.inner_lineRaise`, `New.lineHecke_pow_mem_spanOn`);
`Lib/Adelic/TraceFormula/LineCount.lean` (`New.card_forms_missing_line`, `New.KeepsLine.rootMultiplicity_charpoly`)

### 7.12 Traces from a raising operator, and cutting the level at an auxiliary place

*Origin:* particular to this proof: traces on the fixed vectors of a maximal level are recovered from traces of products
with powers of a raising operator at the level of the stabiliser of a line.

*Method of the formal proof:* (a) `e = c⁻¹(d⁻¹T⁺T⁻ − 1)` commutes with `A` as `T⁺` and `T⁻` do, so all three
preserve each generalised eigenspace `M_α` of `A`, and the hypotheses hold on it. For `X` commuting with `A`,
`tr(A^l X) = ∑_α α^l·tr(X|M_α)`, and distinct `α` give linearly independent sequences `l ↦ α^l`; so the given traces
fix `tr((T⁺)^i|M_α)` for `α ≠ 0` and `i ≥ 1`. On `M_α`, `|det T⁺|² = det(T⁺T⁻) = d^{dim M_α}(1 + c)^{r_α}` with `r_α`
the rank of `e` there, so `T⁺` is invertible there, and the same independence argument, applied to `T⁺`, shows that
the traces of its positive powers fix its characteristic polynomial; its degree is `dim M_α` and its constant term
gives `|det T⁺|`, hence `r_α`. Then `tr(Ae)` is the sum of `α·r_α` over the `α ≠ 0`. The last sentence of (a) is the
same argument for the traces of `A^l`, which give the dimensions of the `M_α`, the multiplicities of the roots. (b) is
(a) for the relation of 7.11 (a) on the fixed vectors of the cut level, with `e = e_sph` the projector onto the vectors
fixed by the maximal level at `v`; (c) is bookkeeping of supports at `v`.

(a) Let `M` be a finite-dimensional complex inner product space, `T⁺`, `T⁻ = (T⁺)*`, `e` an idempotent and `A` an
operator commuting with `T⁺` and `T⁻`, with `T⁺T⁻ = d(1 + c·e)` for real `d, c > 0`. For two such systems on `M` and
`M′` with the same `d` and `c`, equal traces of `A^l (T⁺)^i` for all `l, i ≥ 1` give equal `tr(Ae)`. Over `ℂ`, the
traces of all powers of an operator determine its characteristic polynomial.

(b) Let `ρ`, `ρ′` be unitary representations of `G_f`, `v` a split place, `K` a level containing `ι_v(GL_n(𝒪_v))`, and
`K′ = {g ∈ K : g_v ∈ J}` with `J` the stabiliser of the line of `e_i` modulo `ϖ_v` (7.11), with `ρ^{K′}`, `ρ′^{K′}`
finite-dimensional. Let `a ∈ 𝔄(K)` be a combination of elements whose component at `v` lies in `GL_n(𝒪_v)`, and `a′` the
element obtained from `a` by removing the components at `v` and `v̄`. If `(T⁺)^{m+1}(a′)^{l+1}` has the same trace on
`ρ^{K′}` and on `ρ′^{K′}` for all `l, m ≥ 0`, then `a` has the same trace on `ρ^K` and on `ρ′^K`.

(c) In (b), `a′ ⋆ 1_{K′}` is `a ⋆ 1_K` cut off to the points whose component at `v` lies in `J`; it is cuspidal at a split
place `w ≠ v, v̄` if `a ⋆ 1_K` is; and a product with a factor at `v` in the span of a set `Σ ⊂ GL_n(E_v)` has its test
function supported at `v` in `Σ·J`.

*Needs:* 3.1, 3.2, 7.1, 7.11.

[ShortProof], `Lib/Adelic/TraceFormula/LineDeterminant.lean` (`New.charpoly_eq_of_trace_pow_eq`,
`New.LineRelation.trace_mul_mean_eq`); `Lib/Adelic/TraceFormula/LevelCut.lean` (`New.cutLevel`,
`New.lineRelation_offAction`, `New.trace_eq_of_trace_cutLevel_eq`); `Lib/Adelic/TraceFormula/OffPlace.lean`
(`New.offPlace`, `New.convIndicator_mapDomain_offPlace`, `New.IsCuspidalAt.convIndicator_offPlace`,
`New.exists_atPlace_eq_of_convIndicator_ne_zero`)

### 7.13 Comparison of traces for cuspidal test functions

*Origin:* adapted from the comparison of simple trace formulas for inner forms of unitary groups (the works cited at
7.10): here the comparison of 7.10 for test functions cuspidal at one split place, with no condition at a second place.

*Method of the formal proof:* a split place `v ∉ {w, w̄}` is chosen with `ι_v(GL_n(𝒪_v)) ⊂ K` (6.3 (c)) and with the
components at `v` of the elements in the support of `a` integral. With the level `K′` of 7.12 (b) at `v`, the operator
`(T⁺)^{m+1}(a′)^{l+1}` has a test function that is cuspidal at `w` and has a simple zero at `v` on its support (7.12 (c),
7.11 (c)); 7.10 (b) compares its traces for `V` and `V′`, the spaces of level `K′` being finite-dimensional (5.4 (e)),
and 7.12 (b) passes back to `K`.

Let `E` be a CM field with the 5040 condition and an even number of infinite places, `n ≥ 2`, `V`, `V′` spaces with adelic
frames of signs `s`, `s′`, and `l` with each `l_w` of gap `500n³ + 10n⁵` for `s` and for `s′`. Let `K` be a level, `a ∈ 𝔄(K)`
(7.1), and `w` a split place with `a ⋆ 1_K` cuspidal at `w`. If `T`, `T′` are endomorphisms of `𝒜(V, l, K)` and
`𝒜(V′, l, K)` acting as `a`, then `tr T = tr T′`.

**In standard terms.** By 8.8 (c), the conclusion is the equality
`∑_Π m_cusp(Π)·tr Π_f(a ⋆ 1_K) = ∑_{Π′} m_cusp(Π′)·tr Π′_f(a ⋆ 1_K)` over the cuspidal automorphic representations of
the unitary groups `U(J)` and `U(J′)` over `E⁺`, inner forms of each other, whose archimedean components are the
discrete series `π_l` for the signs `s` and for the signs `s′`, counted with their cuspidal multiplicities, the finite
parts being read on `G_f` through the frames (8.2). Here `a ⋆ 1_K` ranges over the Hecke functions of level `K` that
are cuspidal at the split place `w` in the sense of 7.1, which are supercusp forms at `w` (8.4, 8.7).

*Needs:* 5.2, 5.4, 6.3 (c), 7.1, 7.10, 7.11, 7.12.

[ShortProof], `Lib/Adelic/TraceFormula/CuspidalComparison.lean` (`New.eventually_mem_spanOn_atPlace_mem_localIntGL`,
`New.exists_auxiliary_place`, `New.trace_eq_of_isCuspidalAt`)

## Layer 8: Comparison with the standard theory

The standard theory is the reference for the objects of this roadmap: the integral against the quotient measure of a
homogeneous space (8.1), the unitary group of a hermitian space over `E⁺` with its adelic points (8.2), algebraic
heights and Siegel sets (8.3), the Hecke algebra of a compact open subgroup (8.4), cusp forms with a discrete series
at infinity (8.5), algebraic modular forms with `p`-adic coefficients (8.6), supercusp forms (8.7), and cuspidal
automorphic representations with their multiplicities (8.8). This layer states how each object of the route is related
to its standard counterpart, by an identification or by the implication that holds. The sections of Layers 1–7 that
other roadmaps use state their results on the standard objects in paragraphs headed **In standard terms**, which rest
on the sections here. The coefficients `c_λ`, the kernels `e_λ` and the discrete series of the real unitary groups are
compared with the standard theory in HolomorphicDiscreteSeriesOfUnitaryGroups §§9.3–9.5. [ShortProof] proves none of
the statements of this layer, and Layers 1–7 do not use them; each section gives a *Proof route:* in place of the
method of the formal proof.

### 8.1 Quotient integrals by cutoffs and quotient measures

*Origin:* this roadmap's own formulation: the comparison of the quotient integral of 1.1 with the integral against the
quotient measure of AnalyticNumberTheoryPartII §5.3k, for a closed unimodular subgroup acting by left multiplication
on a unimodular group.

*Proof route:* As `G` and `H` are unimodular, `μ` and `ν` are right Haar measures and the modular characters of `G`
and `H` agree on `H` (both are trivial), so AnalyticNumberTheoryPartII §5.3k gives `μ̄` with
`∫_G f dμ = ∫_{H\G} (∫_H f(hg) dν(h)) dμ̄(Hg)` for every Borel `f : G → [0, ∞]`. For `f = (F̄∘q)·β` the inner integral
is `F̄(Hg)·∫_H β(hg) dν(h) = F̄(Hg)`, `β` being a cutoff; this is (a) for `F̄ ≥ 0`. Applied to `|F̄|` it gives the
equivalence of the two integrability conditions, and applied to the positive and negative parts of the real and
imaginary parts of `F̄` it gives the equality of the integrals. If `F` is a left `H`-invariant Borel function on `G`
and `U ⊂ ℂ` is open, `q(F⁻¹(U))` and `q(F⁻¹(ℂ ∖ U))` are disjoint analytic subsets of the Polish space `H\G` with
union `H\G`, hence Borel by Suslin's theorem; so `F = F̄∘q` with `F̄` Borel. In (b), `vol(H\G)` is (a) for `F̄ = 1`,
and the identity of 1.1 (d) is (a) for `F̄(Γg) = ∑_{γ∈Γ} f(γg)`, which is the unfolding of §5.3k; `G(s)` is unimodular
because `Γ_V\G(s)` has finite volume (1.1 (d), 4.3 (c)), so (a) applies to `conj F·F′` for forms `F`, `F′`, and right
translation preserves `μ̄`.

Let `G` be a second countable locally compact Hausdorff group that is unimodular, with Haar measure `μ`, and `H ⊂ G` a
closed unimodular subgroup with Haar measure `ν` (counting measure when `H` is discrete), acting on `G` by left
multiplication. Let `q : G → H\G` be the quotient map, `μ̄` the right `G`-invariant measure on `H\G` of
AnalyticNumberTheoryPartII §5.3k for `μ` and `ν`, and `β` a cutoff (1.1) for this action.

(a) For every Borel `F̄ : H\G → [0, ∞]`, `∫_{H\G} F̄∘q` in the sense of 1.1 equals `∫_{H\G} F̄ dμ̄`. For Borel
`F̄ : H\G → ℂ`, `F̄∘q` is integrable over `H\G` in the sense of 1.1 if and only if `F̄` is `μ̄`-integrable, and then
the two integrals are equal. Every left `H`-invariant Borel function on `G` is `F̄∘q` for a Borel `F̄`.

(b) In particular `vol(H\G) = μ̄(H\G)`; for a discrete `Γ ⊂ G`, the identity of 1.1 (d) is the unfolding identity of
AnalyticNumberTheoryPartII §5.3k; and for a space `V` with an adelic frame, the Petersson product of 5.1 is the inner
product of `L²(Γ_V\G(s), μ̄)`, on which right translation by `G(s)` is unitary.

The quotient integrals over `Γ_V\G(s)`, over `Z_γ\G(s)` (7.1) and over `(Γ_W ∩ N_a)\N_a` (5.3) are of this kind, these
groups being unimodular. 1.1 also treats actions that do not come from a subgroup, for which no quotient measure is
asserted. The measure that the formal proof calls `New.Space.quotMeasure` (4.3) is the measure `βμ` on `G(s)` itself,
not a measure on the quotient.

*Needs:* 1.1, 4.3, 5.1; AnalyticNumberTheoryPartII §5.3k (Quotient measures and the two quotient conventions).

### 8.2 Spaces with an adelic frame and unitary groups over `E⁺`

*Origin:* this roadmap's own formulation: the comparison of the matrix groups of 3.1 with the adelic points of the
unitary group of a hermitian space over `E⁺`, an affine algebraic group in the sense of AdelicAlgebraicGroups §1.1,
and the description of the hermitian spaces that have an adelic frame.

*Proof route:* (a) Put `σ_s = x*Jx`, equal to `diag(s)` at the infinite places and to `1_n` at the finite places. For
`g ∈ GL_n(𝔸)`, `(xgx⁻¹)*J(xgx⁻¹) = x^{−*}(g*σ_sg)x⁻¹`, so conjugation by `x`, a homeomorphism of `M_n(𝔸)`, carries
`G(s) = {g : g*σ_sg = σ_s}` onto `{h ∈ GL_n(𝔸) : h*Jh = J}`. By AdelicAlgebraicGroups §1.4 (restriction of scalars on
adelic points, and the general linear group), `(Res_{E/E⁺}GL_n)(𝔸_{E⁺})` is `GL_n(𝔸_E)` with the units topology, and
the closed embedding `U(J) ⊂ Res_{E/E⁺}GL_n` makes `U(J)(𝔸_{E⁺})` the closed subgroup cut out by `h*Jh = J`, with the
subspace topology (Tau Ceti `TauCeti.PointTopology.isClosedEmbedding_comap_of_surjective`); on it `h⁻¹ = J⁻¹h*J` is
continuous in the entries, so this is the topology from `M_n(𝔸)`, as for `G(s)` (3.2 (a)). `Γ_V` is the image of
`U(J)(E⁺)` by its definition (3.1). `K₀` is the stabiliser of `Ô^n` in `G_f`; `E^n` is dense in `𝔸_f^n`
(`IsDedekindDomain.FiniteAdeleRing.denseRange_algebraMap`), so `Λ_V = E^n ∩ x_fÔ^n` is dense in the open set `x_fÔ^n`.
Haar measures and quotient integrals are transported along `θ_V`, and 8.1 applies on both sides. (b) The conjugation
of `E ⊗_{E⁺} E⁺_v = E_w × E_{w̄}` exchanges the two factors, so the equation `h*Jh = J` read at `w` expresses the
component `h_{w̄}` through `h_w`; the projection is therefore a continuous bijective homomorphism with continuous
inverse. The component of `xι_w(h)x⁻¹` at `w` is `x_whx_w⁻¹` by the definition of `ι_w` (3.1). (c) If `(J, x)` is a
space, `x_v` is an isometry from the standard form onto `h_J` at each finite place `v` and `x_w` one from `diag(s)` at
each infinite place. Conversely, choose `y ∈ GL_n(E)` with `y*Jy = diag(a_1, …, a_n)`, `a_i ∈ E⁺^×` (an orthogonal
basis of `(E^n, h_J)`). At the finite places `v` of `E⁺` that are unramified in `E`, at which every `a_i` is a unit
and `y` and `y⁻¹` are integral (all but finitely many), each `a_i` is `ū_iu_i` for a unit `u_i` of `E ⊗ 𝒪_{E⁺,v}`,
because the norm of an unramified quadratic extension of local fields maps units onto units (at a split place take
`u_i = (a_i, 1)`); then `x_v = y·diag(u_1, …, u_n)⁻¹` is integral with integral inverse and `x_v*Jx_v = 1_n`. At the
other finite places take any isometry `x_v` from the standard form onto `h_J`, and at each real place, by Sylvester's
law of inertia, `x_w` with `x_w*Φ_w(J)x_w = diag(s)`. Then `x = (x_v)` lies in `GL_n(𝔸)`.

Let `E` be a CM field and `J ∈ M_n(E)` invertible and hermitian. The *unitary group* `U(J)` of `(E^n, h_J)` over `E⁺`
is the affine algebraic group over `E⁺` whose points over an `E⁺`-algebra `R` are the `g ∈ GL_n(E ⊗_{E⁺} R)` with
`g*Jg = J` (in the notation of the Conventions, which is for rings with involution, the group `U(J)(E ⊗_{E⁺} R)`; the
groups `U(diag s)(ℂ)` and `U(1_n)(𝔸_f)` of 3.1 are written in that notation), a closed subgroup of `Res_{E/E⁺}GL_n`.
Its adelic points `U(J)(𝔸_{E⁺})`, with the topology of AdelicAlgebraicGroups §1.1, are read through
`E ⊗_{E⁺} 𝔸_{E⁺} = 𝔸_E` (AdelicAlgebraicGroups §1.4) and `𝔸_E = ℂ^Φ × 𝔸_f` (2.1) as `{h ∈ GL_n(𝔸) : h*Jh = J}`, with
`U(J)(E⁺)` embedded diagonally; `U(J)(E⁺ ⊗_ℚ ℝ)` and `U(J)(𝔸_{E⁺,f})` are its archimedean and finite adelic points.

(a) Let `V = (J, x)` be a space with an adelic frame of signs `s`. Then `θ_V(g) = xgx⁻¹` is an isomorphism of
topological groups from `G(s)` onto `U(J)(𝔸_{E⁺})`. It carries `Γ_V` onto `U(J)(E⁺)`, `G_∞(s)` onto `U(J)(E⁺ ⊗_ℚ ℝ)`,
the compact group `K_∞` of 3.6 onto a maximal compact subgroup of it, `G_f` onto `U(J)(𝔸_{E⁺,f})`, `K₀` onto the
stabiliser in `U(J)(𝔸_{E⁺,f})` of the `Ô`-lattice `x_fÔ^n`, which is the closure of `Λ_V` in `𝔸_f^n`, and the levels
onto the open subgroups of that stabiliser. It carries the Haar measure of 3.1 to a Haar measure of `U(J)(𝔸_{E⁺})`
and, through 8.1, the integral over `Γ_V\G(s)` of 1.1 to the integral over `U(J)(E⁺)\U(J)(𝔸_{E⁺})` against the
quotient measure of that Haar measure and of counting measure on `U(J)(E⁺)`.

(b) At a split finite place `w`, above the place `v` of `E⁺`, the projection of
`U(J)(E⁺_v) ⊂ GL_n(E_w) × GL_n(E_{w̄})` to `GL_n(E_w)` is an isomorphism of topological groups, and `θ_V(ι_w(h))` is
the element of `U(J)(E⁺_v)` with component `x_whx_w⁻¹` at `w`. So `T_{w,j}` is, through `θ_V`, the Hecke operator of
the double coset of `x_w·diag(ϖ_w1_j, 1_{n−j})·x_w⁻¹` under `x_wGL_n(𝒪_w)x_w⁻¹` in `GL_n(E_w) ≅ U(J)(E⁺_v)`.

(c) There is `x` with `(J, x)` a space with an adelic frame of signs `s` if and only if `(E^n, h_J)` is isometric to
the standard form `⟨1, …, 1⟩` over `E ⊗_{E⁺} E⁺_v` at every finite place `v` of `E⁺` and has signature `(p, n − p)`,
`p = #{i : s_i = 1}`, at every real place of `E⁺`.

So the unitary groups of Layers 3–7 are those of the hermitian spaces over `E` of this kind, of the same signature at
all real places, each with a chosen frame; a hermitian space over `E` that is not isometric to the standard form at
some finite place, or that has different signatures at two real places, has no adelic frame.

*Needs:* 2.1, 3.1, 3.2, 3.6, 8.1; AdelicAlgebraicGroups §1.1 (Affine points and integral models);
AdelicAlgebraicGroups §1.4 (Restriction of scalars and concrete groups); Tau Ceti
`TauCeti.PointTopology.isClosedEmbedding_comap_of_surjective`; Tau Ceti
`IsDedekindDomain.FiniteAdeleRing.denseRange_algebraMap`.

### 8.3 The height and algebraic heights

*Origin:* this roadmap's own formulation: the comparison of the height `ht_V` of 4.2, the inverse first minimum of the
moved lattice, with the heights of AdelicAlgebraicGroups §3.5 on `U(J)(𝔸_{E⁺})`: from above everywhere, and from below
on Siegel sets.

*Proof route:* (a) For `γ ∈ Γ_V`, `xγ = γ′x` with `γ′ ∈ U(J)(E⁺)`, and `y ↦ γ′⁻¹y` is a length-preserving bijection
from `Λ_{V·γg}` onto `Λ_{V·g}`; right multiplication by `k` replaces `(xg)⁻¹y` by `k⁻¹(xg)⁻¹y`, and `k⁻¹` preserves
`Ô^n` and the euclidean length. For `y` in a compact `C` there are an integer `M ≥ 1` with `M·y_f⁻¹Ô^n ⊂ Ô^n` and
`D ≥ 1` with `‖y_∞⁻¹‖ ≤ D`; then `MΛ_{V·g} ⊂ Λ_{V·gy}`, lengths being multiplied by at most `MD`, so
`λ(V·gy) ≤ MD·λ(V·g)`; the same for `y⁻¹`, which ranges over the compact set `C⁻¹`, applied at `gy`, gives the bound
of (a). (b) Let `0 ≠ ξ ∈ Λ_{V·g}`, `η = (xg)⁻¹ξ`, and `ξ_i ≠ 0` a coordinate of `ξ`. The product formula for
`ξ_i ∈ E^×` (normalised absolute values, the square of the absolute value at the complex places) gives
`1 ≤ ∏_{v finite} max(1, ‖(xg)_v‖_v)·∏_w (‖(xg)_w‖·‖ξ‖_{V·g})²`, since `η_f ∈ Ô^n` and `|η_w| ≤ ‖ξ‖_{V·g}`; so
`λ(V·g) ≥ H₁(xg)^{−1/(2f)}` with `H₁(y) = ∏_{v finite} max(1, ‖y_v‖_v)·∏_w max(1, ‖y_w‖)²` (entrywise maxima at the
finite places, operator norms at the infinite ones). Then `H₁(xg) ≤ H₁(θ_V(g))·H₁(x)`, and on
`U(J)(𝔸_{E⁺}) ⊂ GL_n(𝔸_E)` the function `H₁` is bounded by a power of `‖·‖` (AdelicAlgebraicGroups §3.5, the local
comparison and the comparison of heights). (c) If `U(J)` is anisotropic over `E⁺`, a Siegel set is compact (`A₀` is
trivial, `U(J)` having no split central torus), so `‖·‖` is bounded on it, and (c) holds because `ht_V ≥ 1`. Otherwise
a minimal parabolic subgroup `P₀ = N₀M₀` of `U(J)` over `E⁺` is the stabiliser of a maximal flag `A₁ ⊂ ⋯ ⊂ A_r` of
isotropic subspaces of `E^n` (`dim A_i = i`, `r ≥ 1` the Witt index of the Witt decomposition,
HermitianFormsAndLattices §1.2), and `P₀` acts on the line `A₁` by a character `χ` with values in `Res_{E/E⁺}G_m`,
through `M₀`. The relative root system is of type `C_r` or `BC_r`, and the rational character `N_{E/E⁺}∘χ` of `M₀`,
twice the first coordinate character of the split torus of a Witt basis, is a combination of all the simple roots with
positive coefficients; so `⟨N_{E/E⁺}∘χ, H⟩ ≥ c₁‖H‖ − c₂` on `{H ∈ 𝔞₀ : β(H − T₁) > 0 for all β ∈ Δ₀}`. Let
`θ_V(g) = pak ∈ 𝔖(T₁, ω)` and `0 ≠ e ∈ A₁`. The vectors `te`, `t ∈ E`, satisfy `(xg)⁻¹te = t·χ(pa)⁻¹·x⁻¹k⁻¹e`; as `p`
and `k` range over compact sets and `|χ(p)|_{𝔸_E} = 1` on `N₀(𝔸)M₀(𝔸)¹`, there are a fractional ideal `𝔞` such that
`te ∈ Λ_{V·g}` for every `t ∈ 𝔞`, and `D` with `‖te‖_{V·g} ≤ D·max_w |t_w|·|χ(pa)_w|⁻¹`. Minkowski's theorem 4.1 (a),
for `n = 1` and the idele with components `d₀·|χ(pa)_w|` at the infinite places and a local generator of `𝔞` at the
finite places, gives `0 ≠ t ∈ 𝔞` with `|t_w| < d₀·|χ(pa)_w|` at every `w`, where `d₀ > 0` is given by
`d₀^{2f}·∏_w |χ(pa)_w|² = 2·(2rd_E)^f·N(𝔞)`. As `|χ(pa)|_{𝔸_E} = |χ(a)|_{𝔸_E} = exp⟨N_{E/E⁺}∘χ, H₀(a)⟩` and
`|χ(p_f)|_f` stays in a compact subset of `(0, ∞)`, this gives `λ(V·g) ≤ D′·exp(−(c₁‖H₀(a)‖ − c₂)/(2f))`; with
`‖pak‖ ≤ C·exp(C‖H₀(a)‖)` (AdelicAlgebraicGroups §3.5, heights on Siegel sets) this is (c). (d) The implications from
4.2 to the usual notions follow from (b) for moderate growth and from (c) for rapid decay. For the converse
implications, every `h ∈ U(J)(𝔸_{E⁺})` is `γh′` with `γ ∈ U(J)(E⁺)` and `h′` in one Siegel set `𝔖₀`
(AdelicAlgebraicGroups §3.4, Siegel sets cover); `F` and `ht_V` are left `Γ_V`-invariant, and (c) on `𝔖₀` bounds
`‖h′‖^m` by a power of `ht_V`, while (b) bounds `‖h′‖^{−N}` by a negative power of `ht_V`.

Let `E` be a CM field, `V = (J, x)` a space with an adelic frame of signs `s`, `θ_V` and `U(J)` as in 8.2, and `‖·‖` a
height on `U(J)(𝔸_{E⁺})` in the sense of AdelicAlgebraicGroups §3.5. Siegel sets `𝔖(T₁, ω)` of `U(J)` are those of
AdelicAlgebraicGroups §3.4, for a minimal parabolic subgroup of `U(J)` over `E⁺` and an admissible maximal compact
subgroup of `U(J)(𝔸_{E⁺})` (AdelicAlgebraicGroups §3.1).

(a) `ht_V(γgk) = ht_V(g)` for `γ ∈ Γ_V`, `g ∈ G(s)` and `k ∈ K_∞ × K₀` (3.6). For every compact `C ⊂ G(s)` there is
`c_C ≥ 1` with `ht_V(gy) ≤ c_C·ht_V(g)` for all `g ∈ G(s)` and `y ∈ C`.

(b) There are `C, A > 0` with `ht_V(g) ≤ C·‖θ_V(g)‖^A` for every `g ∈ G(s)`.

(c) For every Siegel set `𝔖` there are `c, a > 0` with `ht_V(g) ≥ c·‖θ_V(g)‖^a` whenever `θ_V(g) ∈ 𝔖`.

(d) Let `F` be a left `Γ_V`-invariant function on `G(s)`. Then `F` has moderate growth in the sense of 4.2 if and only
if `|F(θ_V⁻¹(h))| ≤ C‖h‖^m` on `U(J)(𝔸_{E⁺})` for some `C` and `m`, which is the bound of moderate growth of
ArithmeticLocallySymmetricSpaces ALS.F.6 for `F∘θ_V⁻¹`; and `F` has rapid decay in the sense of 4.2 if and only if
`‖·‖^N·|F∘θ_V⁻¹|` is bounded on every Siegel set for every `N ≥ 0`.

The bound of (c) does not hold on all of `G(s)`: `ht_V` is constant on `Γ_V` by (a), while `‖·‖` is unbounded on
`U(J)(E⁺)`, which is infinite (it contains the scalars `a/ā`, `a ∈ E^×`) and meets each sublevel set of `‖·‖` in a
finite set (AdelicAlgebraicGroups §3.5).

*Needs:* 2.1, 3.1, 3.6, 4.1, 4.2, 8.2; HermitianFormsAndLattices §1.2 (the Witt decomposition); AdelicAlgebraicGroups
§3.1 (Rational parabolics and Iwasawa integration); AdelicAlgebraicGroups §3.4 (Adelic reduction and arithmetic
quotients); AdelicAlgebraicGroups §3.5 (Algebraic heights); ArithmeticLocallySymmetricSpaces ALS.F.6 (Automorphic
forms, constant terms and cusp forms).

### 8.4 Hecke operators, level algebras and the Hecke algebra

*Origin:* this roadmap's own formulation: the comparison of the level algebras of 7.1 and the Hecke operators of 1.4
with the convolution algebra of compactly supported bi-invariant functions and the double-coset ring of
SmoothRepresentationsOfLocalGroups §SR.1.2, acting on invariants as in AutomorphicFormsOnReductiveGroups §0.6;
AbelianSchemesWithThetaStructuresAndTheirCohomology §10.5 states the same comparison for the group-ring Hecke algebra
of that roadmap.

*Proof route:* (a) In the representation of `G` on the finitely supported functions on `G/K` by left translation, the
point mass `δ_K` at the coset `K` is `K`-fixed and `a` sends it to `a ⋆ 1_K`, read as a function on `G/K`; so
`a ∈ 𝔄(K)` forces `a ⋆ 1_K` to be left `K`-invariant, and `a` acts by `0` on all `K`-fixed vectors only if
`a ⋆ 1_K = 0`. Conversely, for `v ∈ W^K`, `π(a)v = ∑_b c_bπ(b)v` depends only on the cosets `bK`, so it equals
`∑_{gK}(a ⋆ 1_K)(g)π(g)v`, which is `K`-fixed when `a ⋆ 1_K` is left `K`-invariant. (b) With `vol(K) = 1`,
`1_{gK} ∗ f = f(g⁻¹·)` for a left `K`-invariant `f`; so `(a ⋆ 1_K) ∗ (b ⋆ 1_K) = (ab) ⋆ 1_K` for `b ∈ 𝔄(K)`, and
`1 ⋆ 1_K = 1_K`. A compactly supported `K`-bi-invariant `f` is `∑_i f(g_i)1_{g_iK}` over finitely many cosets, the
image of `∑_i f(g_i)g_i`, which lies in `𝔄(K)` by (a). The kernel is described by (a), and
`∫ 1_{gK}(y)π(y)v dy = π(g)v` for `v ∈ W^K`. SmoothRepresentationsOfLocalGroups §SR.1.2 identifies `1_K ∗ H(G) ∗ 1_K`
with the double-coset ring through `1_{KgK} ↦ KgK`, with Shimura's product, and `1_{KgK}` acts on `W^K` by
`v ↦ ∑_{xK⊂KgK} π(x)v`, which is the operator of `KgK` in AutomorphicFormsOnReductiveGroups §0.6. (c) is (a) and (b)
for `G = G_f`.

Let `G` be a group, `K ⊂ G` a subgroup, `𝔄(K) ⊂ ℂ[G]` the universal level algebra (7.1), and for
`a = ∑_b c_b b ∈ ℂ[G]` let `a ⋆ 1_K = ∑_b c_b1_{bK}`, a right `K`-invariant function with finitely many cosets `gK` in
its support.

(a) `a ∈ 𝔄(K)` if and only if `a ⋆ 1_K` is left `K`-invariant. For such `a`, every complex representation `π` of `G`
on `W` and every `v ∈ W^K`, `π(a)v = π(a ⋆ 1_K)v`, the Hecke operator of 1.4. An element `a ∈ 𝔄(K)` acts by `0` on
`W^K` for every complex representation if and only if `a ⋆ 1_K = 0`.

(b) Let `G` be locally profinite, `K` compact and open, `dg` the Haar measure with `vol(K) = 1`, and `ℋ(G, K)` the
algebra of compactly supported `K`-bi-invariant functions under convolution `(f₁ ∗ f₂)(y) = ∫ f₁(z)f₂(z⁻¹y) dz`, with
unit `1_K` (the algebra `1_K ∗ H(G) ∗ 1_K` of SmoothRepresentationsOfLocalGroups §SR.1.2). Then `a ↦ a ⋆ 1_K` is a
surjective homomorphism of unital algebras from `𝔄(K)` onto `ℋ(G, K)`, whose kernel consists of the elements acting by
`0` on `W^K` for every complex representation. For a smooth representation, `π(a ⋆ 1_K)` on `W^K` is the convolution
operator `v ↦ ∫ (a ⋆ 1_K)(g)π(g)v dg`; and through the isomorphism `f ↦ ∑_D f(D)·D` of `ℋ(G, K)` onto the double-coset
ring of `(G, K)` over `ℂ` of SmoothRepresentationsOfLocalGroups §SR.1.2 (with Shimura's product), it is the operator
of `∑_D (a ⋆ 1_K)(D)·D` on invariants of AutomorphicFormsOnReductiveGroups §0.6, in which `KgK = ⊔_i b_iK` acts by
`v ↦ ∑_i π(b_i)v`.

(c) For a level `K`, an endomorphism of a space of `K`-fixed vectors of a representation of `G_f` acting as `a ∈ 𝔄(K)`
(7.7, 7.10, 7.12, 7.13) is the operator of the Hecke function `a ⋆ 1_K ∈ ℋ(G_f, K)`, and every element of `ℋ(G_f, K)`
is such a Hecke function.

An element of `𝔄(K)` records representatives in the group algebra, which no action on `K`-fixed vectors sees: two
elements with the same `a ⋆ 1_K` act in the same way on every `W^K`.

*Needs:* 1.4, 7.1; SmoothRepresentationsOfLocalGroups §SR.1.2 (Level algebras and the double-coset ring);
AutomorphicFormsOnReductiveGroups §0.6 (Hecke operators on invariants).

### 8.5 Forms of parameter `l` and cusp forms with a discrete series at infinity

*Origin:* this roadmap's own formulation: the comparison of the forms of type `e_l` of 5.1 with the cusp forms on
`U(J)` in the sense of ArithmeticLocallySymmetricSpaces ALS.F.6 that are images of the lowest `K`-type of the discrete
series of parameter `l`, through the rigidity of `c_λ` (HolomorphicDiscreteSeriesOfUnitaryGroups §6.1) and the
identification of the representation it generates with a discrete series (HolomorphicDiscreteSeriesOfUnitaryGroups
§9.3 (a), (d)).

*Proof route:* Step 1, one unitary representation at a time. Let `π` be a strongly continuous unitary representation
of `G_∞(s)` on a Hilbert space. For each `w` the operator `π(e_{l_w})` is self-adjoint, as
`e_{l_w}(z⁻¹) = conj e_{l_w}(z)`, and idempotent (HolomorphicDiscreteSeriesOfUnitaryGroups §6.1 (a)), hence an
orthogonal projector; these projectors commute, and `π(e_l)` is their product. Right derivatives along the factor at
`w` of a vector `π(e_{l_w})u = d(l_w)∫ c_{l_w}(z⁻¹)π(z)u dz` fall on `c_{l_w}`, whose derivatives are integrable
(HolomorphicDiscreteSeriesOfUnitaryGroups §5.4 (c)); so, by HolomorphicDiscreteSeriesOfUnitaryGroups §§5.2 (d), 5.4
(b), such a vector is smooth for that factor, `K`-highest of the weight of the lowest `K`-type of `l_w`
(HolomorphicDiscreteSeriesOfUnitaryGroups §§4.1 (c), 4.2 (b)), and an eigenvector of the Casimir operator with the
eigenvalue of `c_{l_w}`; conversely HolomorphicDiscreteSeriesOfUnitaryGroups §6.1 (f), with `f = e_{l_w}`, shows that
every such vector is fixed by `π(e_{l_w})`. Rigidity (HolomorphicDiscreteSeriesOfUnitaryGroups §6.1 (e)) at the place
`w`, polarised, gives `⟨u, π(z_w)u′⟩ = ⟨u, u′⟩·c_{l_w}(z_w)` for `u, u′` in the image of `π(e_{l_w})`; as the factors
at the other places commute with `π(e_{l_w})`, induction over the places gives `⟨u, π(z)u′⟩ = ⟨u, u′⟩·c_l(z)` for
`u, u′` in the image of `π(e_l)`. A cyclic unitary representation is determined, up to a unitary equivalence matching
the cyclic vectors, by the coefficient of its cyclic vector; so for `u ≠ 0` in that image there is an isometric
intertwiner `π_l → π` sending `ζ_l` to `u/‖u‖`. For `π = π_l`, a vector of the image orthogonal to `ζ_l` is orthogonal
to every `π_l(z)ζ_l`, so the image is `ℂζ_l`; an operator commuting with `π_l` commutes with `π_l(e_l)`, preserves
`ℂζ_l` and is determined by its value there, so `π_l` is irreducible. Hence in general the image of `π(e_l)` is the
set of the `T(ζ_l)` over the intertwiners `T : π_l → π`, and `T*T` is a scalar; at a single place this is the
description of `π(e_λ)` in HolomorphicDiscreteSeriesOfUnitaryGroups §9.4 (a), (b), and the induction above extends it
to the product over the places. Step 2, (a). `F = R(e_l)F`, so `F(gy) = ∫ e_l(y⁻¹z)F(gz) dz` for `y ∈ G_∞(s)`, with
`e_l(y⁻¹z) = d_l·c_l(z⁻¹y)` (HolomorphicDiscreteSeriesOfUnitaryGroups §5.3 (c)); the derivatives in `y` fall on `c_l`,
so `F` is smooth with bounded derivatives and an eigenvector of the centre with the eigenvalues it has on the
coefficient `c_l` of `ζ_l` (HolomorphicDiscreteSeriesOfUnitaryGroups §9.3 (b), at each place), and `F` is right
`K_∞`-finite, the right `K_∞`-translates of `c_l` lying in the span of the coefficients `z ↦ ⟨ζ_l, π_l(z)u⟩`, `u` in
the finite-dimensional lowest `K_∞`-type. Through `θ_V`, the stabiliser in `U(J)` of a nonzero rational isotropic
subspace `A` is a proper maximal parabolic subgroup over `E⁺`, every proper maximal parabolic subgroup is of this
form, and its unipotent radical consists of the elements fixing `A` pointwise and acting trivially on `A^⊥/A`, which
is the group `N_X` of 5.3 and 5.4 for `X` spanning `A`. With 8.1, 5.4 (b) is therefore the vanishing of the constant
terms of `F∘θ_V⁻¹` along all proper maximal parabolic subgroups, which is cuspidality in the sense of
ArithmeticLocallySymmetricSpaces ALS.F.6. Step 3, (b). By 8.1 and 8.2, `L²(Γ_V\G(s))` for the quotient integral of 1.1
is `L²(U(J)(E⁺)\U(J)(𝔸_{E⁺}))`, a unitary representation of `G(s)`, and its cuspidal subspace and the `K_V`-fixed
vectors of that subspace are stable under `G_∞(s)`. A form `F` of type `e_l` is bounded and cuspidal (a), hence lies
there (finite volume, 4.3 (c)), and is fixed by `R(e_l)`, whose action on bounded continuous functions is the integral
of 5.1; Step 1 gives `T` with `T(ζ_l) = F`. Conversely `T(ζ_l)` is fixed by `R(e_l)` and is a smooth, `K_∞`-finite
vector of `L²_cusp(U(J))` fixed by `K_V` on which the centre acts by the infinitesimal character of `π_l`; by
ArithmeticLocallySymmetricSpaces ALS.F.6 (iv) it is a cusp form, hence continuous and bounded (ALS.F.6 (iii)), so
`T(ζ_l)∘θ_V` lies in `𝒜(V, e_l, K)`. `T` is determined by `T(ζ_l)`, as `ζ_l` is cyclic. Step 4, (c). `π_l^{K_∞-fin}`
is the irreducible admissible `(𝔤, K_∞)`-module of a discrete series (HolomorphicDiscreteSeriesOfUnitaryGroups §9.3
(a), (d); AutomorphicFormsOnReductiveGroups §2.4), generated by `ζ_l`. `T` carries it into smooth `K_∞`-finite vectors
of `L²_cusp(U(J))^{K_V}` on which the centre acts by a character, which are cusp forms by ALS.F.6 (iv). Conversely,
for a `(𝔤, K_∞)`-homomorphism `S`, `S(ζ_l)` is a smooth vector of `L²_cusp(U(J))^{K_V}` that is, at every place,
`K`-highest of the weight of the lowest `K`-type and a Casimir eigenvector with the eigenvalue of `c_{l_w}`, as `ζ_l`
is (Step 1); so it is fixed by `R(e_l)` (Step 1), it is `T(ζ_l)` for some `T` by (b), and `S` agrees with the
restriction of `T` on the generator `ζ_l`, hence everywhere. Step 5, (d). By AutomorphicFormsOnReductiveGroups §4.2,
`𝒜_0(U(J))` (the split centre `A_∞` of `U(J)` is trivial) is a direct sum of copies of the cuspidal automorphic
representations `Π ≅ Π_∞ ⊗ Π_f`, each with multiplicity `m_cusp(Π)`; homomorphisms from the cyclic module
`π_l^{K_∞-fin}` commute with this direct sum, and `Hom_{(𝔤,K_∞)}(π_l^{K_∞-fin}, Π_∞ ⊗ Π_f^{K_V})` is `Π_f^{K_V}`, a
finite-dimensional space, if `Π_∞ ≅ π_l^{K_∞-fin}`, and `0` otherwise, by Schur's lemma for irreducible admissible
`(𝔤, K_∞)`-modules. Finiteness: 5.4 (e).

Let `E` be a CM field, `V = (J, x)` a space with an adelic frame of signs `s`, `θ_V` as in 8.2, and `l = (l_w)` with
each `l_w` of gap `500n³` for `s`, so that `e_l` is a cusp kernel (5.2 (a)). On `G_∞(s)` put
`c_l(z) = ∏_w c_{l_w}(z_w)` and `d_l = ∏_w d(l_w)`, so that `e_l = d_l·conj c_l`. Let `π_l` be the right regular
representation of `G_∞(s)` on the closed subspace of `L²(G_∞(s))` spanned by the right translates of `c_l`, and
`ζ_l = √d_l·c_l`, a unit vector with `⟨ζ_l, π_l(z)ζ_l⟩ = c_l(z)` (HolomorphicDiscreteSeriesOfUnitaryGroups §5.4 (d),
(e), at each place). `π_l` is irreducible, and it is the tensor product over `w` of the discrete series of
`U(diag s) ≅ U(p, n − p)` whose coefficient at a unit vector of the lowest `K`-type is `c_{l_w}`, namely the discrete
series of Harish-Chandra parameter `l_w/2` (HolomorphicDiscreteSeriesOfUnitaryGroups §9.3 (a), (d), which apply
because gap `500n³` is large gap `0` in the sense of its §4.1 (c)), `ζ_l` lying in its lowest `K_∞`-type, `K_∞` the
group of 3.6; `π_l^{K_∞-fin}` is its `(𝔤, K_∞)`-module of `K_∞`-finite vectors, `𝔤` the complexified Lie algebra of
`G_∞(s)`. All of this is read on `U(J)` through `θ_V`. For a level `K` put `K_V = θ_V(K)`. `𝒜_0(U(J))` is the space of
cusp forms on `U(J)`, and `L²_cusp(U(J))` the cuspidal subspace of `L²(U(J)(E⁺)\U(J)(𝔸_{E⁺}))` for the quotient
measure of 8.2 (a) (ArithmeticLocallySymmetricSpaces ALS.F.6).

(a) Every `F ∈ 𝒜(V, e_l, K)` is smooth, bounded with all its right derivatives, right `K_∞`-finite, and an eigenvector
of the centre of the enveloping algebra of `𝔤` with the infinitesimal character of `π_l`; and it is cuspidal, the
groups `N_X` of 5.4 being, through `θ_V`, the unipotent radicals of the proper maximal parabolic subgroups of `U(J)`
over `E⁺`. So `F∘θ_V⁻¹` is a cusp form of level `K_V` in the sense of ArithmeticLocallySymmetricSpaces ALS.F.6.

(b) `T ↦ T(ζ_l)∘θ_V` is a linear bijection from the continuous `G_∞(s)`-equivariant linear maps
`T : π_l → L²_cusp(U(J))^{K_V}` onto `𝒜(V, e_l, K)`. Every nonzero such `T` is a positive multiple of an isometry, and
`R(e_l)` acts on `L²_cusp(U(J))^{K_V}` as the orthogonal projector onto the image of this bijection.

(c) Restriction to `π_l^{K_∞-fin}` identifies these maps with `Hom_{(𝔤,K_∞)}(π_l^{K_∞-fin}, 𝒜_0(U(J))^{K_V})`. So
`S ↦ S(ζ_l)∘θ_V` is a linear bijection from `Hom_{(𝔤,K_∞)}(π_l^{K_∞-fin}, 𝒜_0(U(J))^{K_V})` onto `𝒜(V, e_l, K)`, and
it commutes with right translation by `G_f` (acting on `𝒜_0(U(J))` through `θ_V`), hence with the actions of `𝔄(K)`
and of `ℋ(G_f, K)` (8.4).

(d) As a module over `ℋ(G_f, K)`, `𝒜(V, e_l, K) ≅ ⊕_Π (Π_f^{K_V})^{⊕m_cusp(Π)}`, the sum over the isomorphism classes
of cuspidal automorphic representations `Π ≅ Π_∞ ⊗ Π_f` of `U(J)` with `Π_∞ ≅ π_l^{K_∞-fin}`, `m_cusp(Π)` their
cuspidal multiplicities (AutomorphicFormsOnReductiveGroups §4.2), `Π_f` read on `G_f` through `θ_V`. Only finitely
many summands are nonzero.

So a form of parameter `l` is the image of the vector `ζ_l` of the lowest `K_∞`-type of `π_l` under an intertwiner
into the cusp forms, and by (d) it is the sum of its components in the copies of the `Π`, each of which is a form of
parameter `l`. With all signs `+1`, `G_∞(s)` is compact, `π_l` is finite-dimensional and `U(J)` has no proper
parabolic subgroup over `E⁺` (6.4, In standard terms).

*Needs:* 1.1, 3.6, 4.3, 5.1, 5.2, 5.3, 5.4, 8.1, 8.2, 8.4; HolomorphicDiscreteSeriesOfUnitaryGroups §§4.1 (c), 4.2
(b), 5.2 (d), 5.3 (c), 5.4, 6.1 (a), (e), (f) (parameters and `K`-highest vectors, the Casimir eigenvalue, inversion,
decay and the `L²` model of `c_λ`, idempotence and rigidity); HolomorphicDiscreteSeriesOfUnitaryGroups §9.3 (a), (b),
(d) (the discrete series `π_λ` generated by `c_λ` for a large gap, its infinitesimal character and its lowest `K`-type
vector), §9.4 (a), (b) (`π(e_λ)` in a unitary representation on a Hilbert space); ArithmeticLocallySymmetricSpaces
ALS.F.6 (Automorphic forms, constant terms and cusp forms); AutomorphicFormsOnReductiveGroups §2.4 (Temperedness,
discrete series and Langlands quotients); AutomorphicFormsOnReductiveGroups §4.2 (Cuspidal globalization and actual
discrete occurrences).

### 8.6 Algebraic modular forms with `p`-adic coefficients, and the gauge

*Origin:* this roadmap's own formulation: the comparison of the algebraic forms of 6.1 on the standard definite space,
with complex values, and of their gauge (6.6), with the level algebraic modular forms with `p`-adic coefficient action
of AutomorphicFormsOnReductiveGroups §7.4 and their integral structure.

*Proof route:* (a) For `γ ∈ Γ`, `γ_{(τ)}` is the matrix `ι(Φ_τ(γ̄))`, and in the minor-product basis the matrix
coefficients of `ρ_{κ,e}` are polynomials with integer coefficients in the entries and the inverse of the determinant,
compatible with every ring homomorphism (IntegralRepresentationsOfGeneralLinearGroups §§1.1 (f), 1.3 (a), (b)), so
`ι(ρ(γ_∞)ξ) = ρ_ι(γ)ι(ξ)` and `φ_ι(γh) = ρ_ι(h)⁻¹ρ_ι(γ)⁻¹ρ_ι(γ)ι(φ(h)) = φ_ι(h)`; for `u ∈ K`,
`φ_ι(hu) = ρ_ι(u)⁻¹φ_ι(h)`. The map is `ι`-semilinear and injective. For representatives `c_i` of the finite set
`Γ\G_f/K` (4.4 (b)), the evaluation equivalence of AutomorphicFormsOnReductiveGroups §7.4 identifies `S(K, W_ι)` with
`∏_i W_ι^{K ∩ c_i⁻¹Γc_i}`, and `φ ↦ (φ(c_i))_i` identifies the forms of level `K` with the product of the invariants
in `W` of the finite stabilisers `Γ ∩ c_iKc_i⁻¹` (injective by 6.3 (a); surjective because `φ(γ_fc_iu) = ρ(γ_∞)ξ_i`,
`γ ∈ Γ`, `u ∈ K`, is well defined for an invariant `ξ_i`); on the factor of `c_i` the map is `ξ ↦ ρ_ι(c_i)⁻¹ι(ξ)`, and
invariants of a finite group commute with the extension of scalars along `ι`, the averaging projector having algebraic
entries that `ι` carries to those of the `p`-adic one. For the Hecke operators, the image of `∑_i φ(·g_i)` is
`∑_i ρ_ι(·)⁻¹ι(φ(·g_i)) = ∑_i ρ_ι(g_i)φ_ι(·g_i)`. (b) For `u ∈ G_f^{(p)}` the components at the `𝔭_τ` are integral
with integral inverse, so `ρ_ι(u)` preserves `W_ι°`. By the definition of 6.6, `γ_h(ξ)` is the largest absolute value
of a coordinate of `ρ_ι(h)⁻¹ι(ξ)` in the minor-product basis; if it is `|c₀|_p` for a coordinate `c₀`, then
`ι(ξ) ∈ c·ρ_ι(h)W_ι°` holds for `c = c₀` and fails for `|c|_p < |c₀|_p`. So `γ_h(φ(h)) ≤ 1` says `φ_ι(h) ∈ W_ι°`. For
`g ∈ G_f^{(p)}`, the representatives `g_i ∈ KgK` lie in `G_f^{(p)}`, as `K ⊂ K₀ ⊂ G_f^{(p)}`.

Let `E` be a CM field, `(κ, e)` a weight with representation `ρ_{κ,e}` on `W = W_{κ,e}` (6.1), `W_ℤ ⊂ W` the `ℤ`-span
of the minor-product basis, `p` a prime and `ι : ℂ → ℂ_p` a ring homomorphism. For each infinite place `τ` let `𝔭_τ`
be the prime of `E` above `p` induced by the embedding `x ↦ ι(Φ_τ(x̄))`, and for `h ∈ G_f` let `h_{(τ)} ∈ GL_n(ℂ_p)`
be the image of the component of `h` at `𝔭_τ` under the continuous extension of that embedding to `E_{𝔭_τ}`. Put
`W_ι = ℂ_p ⊗ W_ℤ ⊃ W_ι° = 𝒪_{ℂ_p} ⊗ W_ℤ`, with `G_f` acting on `W_ι` by `ρ_ι(h) = ρ_{κ,e}((h_{(τ)})_τ)`, the action
through which 6.6 defines the gauge. By 8.2, `G_f` is the group of finite adelic points of the definite unitary group
`U(1_n)` over `E⁺`, and `Γ = U(1_n)(E⁺)` is embedded diagonally. For an algebraic form `φ` of weight `(κ, e)` on `I_n`
put `φ_ι(h) = ρ_ι(h)⁻¹ι(φ(h))`, `ι` applied to the coordinates in the minor-product basis.

(a) For a level `K`, `φ ↦ φ_ι` is an injective `ι`-semilinear map from the algebraic forms of level `K` into the
module `S(K, W_ι) = {f : G_f → W_ι : f(γhu) = ρ_ι(u)⁻¹f(h) for γ ∈ Γ, u ∈ K}` of AutomorphicFormsOnReductiveGroups
§7.4 for `U(1_n)`, with coefficients `W_ι` on which `K` acts through `ρ_ι` (through the places `𝔭_τ`); its
`ℂ_p`-linear extension from `ℂ_p ⊗_{ι,ℂ}` (forms of level `K`) to `S(K, W_ι)` is an isomorphism. It is the change of
values of §7.4 from Gross's rational model, which the forms of 6.1 are, for the coefficient representation
`γ ↦ ρ_{κ,e}((Φ_τ(γ̄))_τ)` extended along `ι`. For `g ∈ G_f` with `KgK = ⊔_i g_iK`, the image of `∑_i φ(·g_i)` is
`∑_i ρ_ι(g_i)φ_ι(·g_i)`, the Hecke operator of `KgK` in §7.4 for the extension `ρ_ι` of the coefficient action to
`G_f`.

(b) `ρ_ι(G_f^{(p)})` preserves `W_ι°` (`G_f^{(p)}` as in 6.6), and for `h ∈ G_f` and `ξ ∈ W`,
`γ_h(ξ) = min{|c|_p : c ∈ ℂ_p, ι(ξ) ∈ c·ρ_ι(h)W_ι°}`, the gauge in the sense of convex geometry (the Minkowski
functional) of the lattice `ρ_ι(h)W_ι°` at `ι(ξ)`. A form `φ` of level `K` has `γ_h(φ(h)) ≤ 1` at every `h ∈ G_f` if
and only if `φ_ι ∈ S(K, W_ι°)`, the module of §7.4 for the lattice `W_ι°` (for one place,
IntegralRepresentationsOfGeneralLinearGroups §7.1 (c) identifies the lattice `W_ℤ` with the Weyl lattice of the
highest weight; for several places `W_ℤ` is the tensor product over `τ` of these lattices); for `g ∈ G_f^{(p)}` the
Hecke operator of `KgK` preserves these forms.

*Needs:* 1.4, 4.4, 6.1, 6.3, 6.6, 8.2; IntegralRepresentationsOfGeneralLinearGroups §§1.1, 1.2, 1.3 (a), (b) (the
polynomial model over every ring, the basis of products of minors, Schur matrices with integer polynomial entries);
IntegralRepresentationsOfGeneralLinearGroups §7.1 (c) (The polynomial model and the Weyl modules);
AutomorphicFormsOnReductiveGroups §7.4 (Algebraic modular forms with their actual coefficient action).

### 8.7 Test functions cuspidal at a split place and supercusp forms

*Origin:* this roadmap's own formulation: the comparison of cuspidality at a split place (7.1), a condition on sums
over the residue field, with supercusp forms on `GL_n(E_w)`, the compactly supported locally constant functions whose
integrals along the unipotent radicals of proper parabolic subgroups vanish.

*Proof route:* (a) Changing the lift `ℓ` of 7.1 at a single `Z₀` by right multiplication with some `k ∈ K_w(1)` and
subtracting the two sums gives `φ(gι_w(ℓ(Z₀))) = φ(gι_w(ℓ(Z₀)k))` for every `g`, so `φ` is right
`ι_w(K_w(1))`-invariant. The sum of 7.1 is then `q_w^{n² − |T|(n−|T|)}·∑_{u∈N_T(k_w)} ψ_g(ut)`; replacing `g` by
`gι_w(ỹ)`, `ỹ` a lift of `y`, turns `ψ_g` into `ψ_g(y·)`, and `N_T(k_w)` is the unipotent radical of the stabiliser of
the coordinate subspace of `T`. The unipotent radical of every proper parabolic subgroup of `GL_n` over `k_w` contains
a `GL_n(k_w)`-conjugate of some `N_T(k_w)` as a subgroup, so sums over it are sums of such sums. The converse reads
the same computation backwards. (b) Let `N` be the unipotent radical of a proper parabolic subgroup `P` of `GL_n` over
`E_w`. As `GL_n(𝒪_w)` acts transitively on the flags of each type, `P` is conjugate under `GL_n(𝒪_w)` to the
stabiliser of a flag of coordinate subspaces, and `GL_n(E_w) = P(E_w)GL_n(𝒪_w)` (Iwasawa decomposition). Write
`z = rk` with `r ∈ P(E_w)`, `k ∈ GL_n(𝒪_w)`, substitute `n ↦ rnr⁻¹` (which multiplies the Haar measure of `N` by a
positive constant), absorb `yr` and the conjugating element into `g`, and decompose `N(E_w)` into the finitely many
cosets `n₀N(𝒪_w)` that meet the support; the integral becomes a sum of integrals `∫_{N(𝒪_w)} φ(g′ι_w(nk)) dn`. As
`φ(g′ι_w(·))` is right `K_w(1)`-invariant on `GL_n(𝒪_w)` and `N(𝒪_w)` maps onto `N(k_w)` with fibres of equal measure,
each is a positive multiple of `∑_{u∈N(k_w)} ψ_{g′}(uk̄) = 0`. (c) The condition of (b) is two-sided, so right
translates by elements of `ι_w(GL_n(E_w))` keep it. If all of them were cuspidal at `w`, then by (a) `φ` would be
right invariant under `ι_w(hK_w(1)h⁻¹)` for every `h ∈ GL_n(E_w)`; these groups contain the elementary matrices
`1 + tE_{ij}`, `t ∈ E_w`, `i ≠ j` (conjugate `1 + ϖ_wsE_{ij}` by diagonal matrices), which generate `SL_n(E_w)`, so
`φ` would be right invariant under the closed noncompact subgroup `ι_w(SL_n(E_w))` (3.2 (b)), and a nonzero `φ` would
not have compact support.

Let `w` be a split finite place of the CM field `E`, `n ≥ 2`, `K_w(1) = 1 + ϖ_wM_n(𝒪_w)`, and `φ` a test function on
`G_f`. A *supercusp form* on `GL_n(E_w)` is a locally constant compactly supported function `f` with
`∫_{N(E_w)} f(ynz) dn = 0` for all `y, z ∈ GL_n(E_w)` and the unipotent radical `N` of every proper parabolic subgroup
of `GL_n` over `E_w`; a *cuspidal function* on `GL_n(k_w)` is a function `ψ` with `∑_{u∈N(k_w)} ψ(yuz) = 0` for all
`y, z ∈ GL_n(k_w)` and the unipotent radical `N` of every proper parabolic subgroup of `GL_n` over `k_w`.

(a) `φ` is cuspidal at `w` (7.1) if and only if `φ` is right invariant under `ι_w(K_w(1))` and, for every `g ∈ G_f`,
the function `ψ_g` on `GL_n(k_w)` induced by `t ↦ φ(g·ι_w(t))`, `t ∈ GL_n(𝒪_w)`, is a cuspidal function.

(b) If `φ` is cuspidal at `w`, then for every `g ∈ G_f` the function `z ↦ φ(g·ι_w(z))` on `GL_n(E_w)` is a supercusp
form.

(c) The converse of (b) fails: if `φ ≠ 0` is cuspidal at `w`, then some right translate `φ(·ι_w(h))`, `h ∈ GL_n(E_w)`,
has the property of (b) and is not cuspidal at `w`.

So the test functions cuspidal at `w` of 7.2, 7.5, 7.6, 7.10, 7.12 and 7.13 are supercusp forms at `w`, of the kind
described in (a): right invariant under the principal congruence subgroup at `w` and given there by cuspidal functions
on `GL_n(k_w)`; 7.5 states its vanishing for that kind.

*Needs:* 3.1, 3.2, 7.1.

### 8.8 Traces on forms of parameter `l` and cuspidal automorphic representations

*Origin:* this roadmap's own formulation: the traces of 7.7, 7.10 and 7.13 written through the cuspidal automorphic
representations of `U(J)` whose archimedean component is the discrete series of parameter `l`, with their
multiplicities.

*Proof route:* (a) The isomorphism of 8.5 (c), (d) comes from the decomposition of `𝒜_0(U(J))` into copies of the `Π`,
which `G_f` and hence `a` preserve; so `T` acts on `𝒜(V, l, K) ≅ ⊕_Π (Π_f^{K_V})^{⊕m_cusp(Π)}` by the restriction of
`Π_f(a)` to each `Π_f^{K_V}`, which `Π_f(a)` preserves. With `vol(K) = 1`, `Π_f(a ⋆ 1_K) = Π_f(a)Π_f(1_K)`, and
`Π_f(1_K)` is the projector onto `Π_f^{K_V}`; so the trace of `Π_f(a ⋆ 1_K)` on `Π_f` is that of `Π_f(a)` on
`Π_f^{K_V}`. For `a ∈ 𝔄(K)` this is 8.4 (a). The sum is finite by 5.4 (e). (b) is 7.7 (b) for the cusp kernel `e_l` of
order `13n³` (5.2 (a)), with `vol(K) = [K₀ : K]⁻¹` (4.4 (c)), and (a). (c) is (a) for `V` and for `V′`; on the finite
adelic points, where both are defined through `G_f`, `θ_{V′}∘θ_V⁻¹` is an isomorphism from those of `U(J)` onto those
of `U(J′)` (8.2 (a)); the two groups are inner forms of each other.

Let `V = (J, x)` be a space with an adelic frame of signs `s`, `l` with each `l_w` of gap `500n³` for `s`, `π_l` as in
8.5, `K` a level, and `a ∈ ℂ[G_f]` such that right translation by `a` preserves `𝒜(V, l, K)` (for instance `a ∈ 𝔄(K)`,
7.1), with `T` the endomorphism of `𝒜(V, l, K)` acting as `a`. For a cuspidal automorphic representation
`Π ≅ Π_∞ ⊗ Π_f` of `U(J)` (8.5 (d)), `Π_f` read on `G_f` through `θ_V`, let `Π_f(a ⋆ 1_K) = ∫ (a ⋆ 1_K)(g)Π_f(g) dg`
(`vol(K) = 1`), an operator of finite rank.

(a) `tr T = ∑_Π m_cusp(Π)·tr Π_f(a ⋆ 1_K)`, the sum over the isomorphism classes of cuspidal automorphic
representations `Π` of `U(J)` with `Π_∞ ≅ π_l^{K_∞-fin}`; only finitely many terms are nonzero.

(b) If each `l_w` has gap `513n³` for `s`, then `J^V(e_l, a ⋆ 1_K) = [K₀ : K]⁻¹·∑_Π m_cusp(Π)·tr Π_f(a ⋆ 1_K)`, the
sum as in (a): the geometric side of 7.1 equals this spectral sum.

(c) Let `V′ = (J′, x′)`, `s′`, `l`, `K`, `a` and `w` be as in 7.13, or as in 7.10 (b). The conclusion `tr T = tr T′`
there is equivalent to `∑_Π m_cusp(Π)·tr Π_f(a ⋆ 1_K) = ∑_{Π′} m_cusp(Π′)·tr Π′_f(a ⋆ 1_K)`, the second sum over the
cuspidal automorphic representations `Π′` of `U(J′)` whose archimedean component is `π_l^{K_∞-fin}` for the signs
`s′`, `Π′_f` read on `G_f` through `θ_{V′}`. In 7.13, `a ∈ 𝔄(K)`, so by 8.4 and 8.7 the functions `a ⋆ 1_K` there are
the elements of `ℋ(G_f, K)` cuspidal at `w`, and they are supercusp forms at `w`.

The equality of (c) concerns these sums, for test functions cuspidal at `w`; it is not asserted for the terms of a
single `Π`, nor for all of `ℋ(G_f, K)`.

*Needs:* 4.4, 5.2, 5.4, 7.1, 7.7, 7.10, 7.13, 8.2, 8.4, 8.5, 8.7; AutomorphicFormsOnReductiveGroups §4.2 (Cuspidal
globalization and actual discrete occurrences).

## Results taken from other roadmaps

- Witt's extension theorem over a field with involution, in the matrix form used (left invertible `X, Y` with
  `X*JX = Y*JY` satisfy `gX = Y` with `g ∈ U(J)`): HermitianFormsAndLattices §1.1 (b).
- The transference bound for the covering radius of a lattice against the first minimum of its dual:
  GeometryOfNumbersAndQuadraticArithmetic §4.4 (item 4.4.14).
- The dimension of spaces of algebraic modular forms when all stabilisers are trivial (the number of classes times the
  dimension of the coefficients): DiscreteSeriesCoefficientsAndAutomorphicMetrics §7.5c.
- Strong approximation for unipotent groups, in the case of the additive group: AdelicAlgebraicGroups §4.2 (2.3 (a)).
- Schur orthogonality for one irreducible representation of a compact group: RepresentationTheory/CompactGroups §4.1
  (6.4).
- Measures on the real unitary groups, the coefficients `c_λ` with their formal degrees and the gap condition:
  HolomorphicDiscreteSeriesOfUnitaryGroups §§1.1, 1.4, 4.1 (Conventions, 3.1, 5.1); idempotence, decay and moments of
  `e_λ`: its §§5.4, 6.1 (5.2); the vanishing theorem for minimal idempotent kernels: its §6.2 (5.3); `c_λ` on `U(n)`:
  its §5.3 (6.2); Weyl characters and elliptic orbital integrals: its §§7.1, 7.4 (7.10); `K`-highest vectors, the
  Casimir eigenvalue, the `L²` model of `c_λ` and the rigidity of the coefficient: its §§4.1, 4.2, 5.2–5.4, 6.1 (8.5);
  the comparison of `c_λ`, `d(λ)` and `e_λ` with the discrete series: its §9.3 (a), (b), (d), §9.4 (a), (b), §9.5 (a)
  (Conventions, 8.5).
- The Witt decomposition of a hermitian space over a field: HermitianFormsAndLattices §1.2 (3.5, 8.3); Landherr's
  theorem: its §3.1 (3.3).
- Quotient measures on homogeneous spaces and the unfolding identity: AnalyticNumberTheoryPartII §5.3k (Quotient
  measures and the two quotient conventions) (1.1, 8.1).
- Adelic points of affine algebraic groups with their topology, restriction of scalars and the general linear group:
  AdelicAlgebraicGroups §1.1 (Affine points and integral models), §1.4 (Restriction of scalars and concrete groups)
  (8.2); rational parabolic subgroups and admissible maximal compact subgroups, Siegel sets and their covering,
  compactness of the quotients of anisotropic groups, and algebraic heights: its §3.1 (Rational parabolics and Iwasawa
  integration), §3.4 (Adelic reduction and arithmetic quotients), §3.5 (Algebraic heights) (4.4, 8.3).
- Automorphic forms, constant terms, cusp forms, their rapid decay and finite dimension, and the cuspidal spectrum:
  ArithmeticLocallySymmetricSpaces ALS.F.6 (Automorphic forms, constant terms and cusp forms) (5.1, 5.4, 8.3, 8.5).
- Hecke operators on invariants: AutomorphicFormsOnReductiveGroups §0.6 (Hecke operators on invariants) (1.4, 8.4);
  discrete series: its §2.4 (Temperedness, discrete series and Langlands quotients) (8.5); cuspidal automorphic
  representations and their multiplicities: its §4.2 (Cuspidal globalization and actual discrete occurrences) (8.5,
  8.8); algebraic modular forms with their coefficient action, and their automorphic realisation: its §7.4 (Algebraic
  modular forms with their actual coefficient action), §7.5 (Finite stabilizers, base change and automorphic
  realization) (6.1, 6.4, 8.6).
- The convolution Hecke algebra of a compact open subgroup and the double-coset ring:
  SmoothRepresentationsOfLocalGroups §SR.1.2 (Level algebras and the double-coset ring) (1.4, 7.1, 8.4).
- The weight representations in the model of products of minors, with the integral Gram matrix, irreducibility, Schur
  orthogonality and the highest coefficient: IntegralRepresentationsOfGeneralLinearGroups §§1.1–1.3, 2.1, 2.3 (c), 2.4
  (Conventions, 6.1, 6.2, 6.6); integral branching with multiplicity one: its §3.4 (6.5); Green's cuspidal functions,
  labels and their idempotents: its §§4.4, 5.3 (Conventions, 7.2); the comparison of the minor-product model with the
  Weyl lattices: its §7.1 (c) (8.6).
- Weil data of a CM field: WeilRepresentationsOnBanachSpacesOfData §3.1 (Conventions); splittings along isotropic
  frames: its §5.1 (3.5); the Hecke operators `T_{w,j}` at split places, their adjoints and joint eigenvectors: its §9.2
  (3.1, 6.3).
- Hecke eigenforms off a finite set of places: GaloisRepresentationsOfUnitaryEigenforms §1.1 (6.1).

## What the library already provides

- The integral finite adeles are compact and open, `𝓞_E` is dense in them and `E` is dense in the finite adeles:
  `IsDedekindDomain.FiniteAdeleRing.isCompact_integralAdeles`, `IsDedekindDomain.FiniteAdeleRing.isOpen_integralAdeles`,
  `IsDedekindDomain.FiniteAdeleRing.denseRange_algebraMap_integralAdeles`,
  `IsDedekindDomain.FiniteAdeleRing.denseRange_algebraMap`.
- Base change and Galois descent for finite adeles: `TauCeti.GlobalNumberFields.finiteAdeleBaseChangeEquiv`,
  `IsDedekindDomain.finiteAdeleExtension`, `TauCeti.GlobalNumberFields.mem_range_adeleExtension_iff`.
- The norm map on ideles preserves the module: `TauCeti.GlobalNumberFields.ideleNorm_ideleNormMap`, with the norm map of
  finite adeles `TauCeti.GlobalNumberFields.finiteAdeleNorm`.
- The module of an idele as a continuous homomorphism and the product formula:
  `TauCeti.GlobalNumberFields.ideleNorm`, `TauCeti.GlobalNumberFields.continuous_ideleNorm`,
  `TauCeti.GlobalNumberFields.ideleNorm_unitEmbedding`, `NumberField.FiniteAdeleRing.unitEmbedding_norm_eq_inv_abs_norm`.
- The Haar character of a distributive action, not computed on completions at the pins: `MeasureTheory.distribHaarChar`.
- A number field is discrete and cocompact in its adeles: `TauCeti.GlobalNumberFields.discreteTopology_principalSubgroup`,
  `TauCeti.GlobalNumberFields.compactSpace_quotient_principalSubgroup`.
- Hasse's norm theorem for cyclic extensions of number fields: `TauCeti.ClassFieldTheory.cyclicHasseNorm`.
- Pulling back points along a surjective map of algebras is a closed embedding for the point topology, used for the
  adelic points of `U(J) ⊂ Res_{E/E⁺}GL_n` (8.2): `TauCeti.PointTopology.isClosedEmbedding_comap_of_surjective`.
- An operator commuting with a group commutes with its group algebra, and the group-algebra map is compatible with
  push-forward: `Representation.commute_asAlgebraHom_of_forall_commute`, `MonoidAlgebra.lift_mapDomain`.

## References

- `[ShortProof]`: the folder `grh` of <https://github.com/lsernau/grh-lean> at commit
  `72fead102f663d5c7a407964a13dc0cf9d977207`; this roadmap covers `src/Lib/Adelic`, with single declarations from
  `src/Lib/General/Measure`, `src/Lib/GaloisRep/Main` and `src/Lib/Weil/Unramified`.
- Arthur and Clozel (1989), cited in `[ShortProof]` with chapter and lemmas but without a title.
- B. Barnes, Proc. Edinburgh Math. Soc. 23 (1980), cited in `[ShortProof]` without a title.
- E. Bombieri, J. Vaaler, *On Siegel's lemma*, Invent. Math. 73 (1983).
- A. Borel, *Some finiteness properties of adele groups over number fields*, Publ. IHES 16 (1963).
- A. Borel, *Automorphic forms on reductive groups* (Park City lectures), IAS/Park City Math. Ser. 12 (2007).
- N. Bourbaki, *Intégration* VII (1963).
- J. W. S. Cassels, *Global Fields*, in Cassels–Fröhlich, *Algebraic Number Theory* (1967), ch. II.
- Deligne and Kazhdan, and Harish-Chandra for the descent of invariant distributions: `[ShortProof]` names these
  authors for 7.5 and 7.4 without a work.
- Dieudonné, *La géométrie des groupes classiques* (1955).
- U. A. First, *Witt's extension theorem for quadratic spaces over semiperfect rings*, J. Pure Appl. Algebra 219
  (2015).
- Flicker and Kazhdan (1988), cited in `[ShortProof]` without a title.
- D. Gentner, G. Last, Math. Z. 267 (2011), §2, where Kallenberg (2007) is cited.
- R. Godement, C. R. Acad. Sci. Paris 225 (1947) 521–523, 657–659, cited in `[ShortProof]` without a title.
- R. Godement, *The spectral decomposition of cusp forms*, Proc. Sympos. Pure Math. 9 (1966) 225–234.
- J. A. Green, *The characters of the finite general linear groups*, Trans. AMS 80 (1955).
- M. Greenberg, J. Voight, *Lattice methods for algebraic modular forms on classical groups*, arXiv:1209.2460 (2014).
- B. Gross, *Algebraic modular forms*, Israel J. Math. 113 (1999), 61–93.
- Harish-Chandra, *Discrete series II*, Acta Math. 116 (1966).
- Harris and Labesse, *Conditional base change for unitary groups* (2004).
- Jacobowitz, Amer. J. Math. 84 (1962), cited for lattices; `[ShortProof]` elsewhere cites Jacobowitz, *Hermitian
  forms over local fields* (1962).
- O. Kallenberg, *Invariant measures and disintegrations with applications to Palm and related kernels*, Probab.
  Theory Related Fields 139 (2007), 285–310.
- M. Kneser, *Lectures on Galois cohomology of classical groups*, TIFR 47 (1969).
- Knightly and Li, *Traces of Hecke operators* (2006).
- Labesse, *Changement de base CM et séries discrètes* (2011).
- J. C. Lagarias, H. W. Lenstra, C. P. Schnorr, *Korkin–Zolotarev bases and successive minima of a lattice and its
  reciprocal lattice*, Combinatorica 10 (1990).
- W. Landherr, *Äquivalenz Hermitescher Formen über einem beliebigen algebraischen Zahlkörper*, Abh. Math. Sem.
  Hamburg 11 (1936), 245–248.
- S. Miller, W. Schmid, *On the rapid decay of cuspidal automorphic forms*, Adv. Math. 231 (2012).
- V. Platonov, A. Rapinchuk, *Algebraic Groups and Number Theory* (1994).
- G. Shimura, *Introduction to the Arithmetic Theory of Automorphic Functions* (1971).
- J. Tate, *Fourier analysis in number fields and Hecke's zeta-functions*, thesis (1950), in Cassels–Fröhlich,
  *Algebraic Number Theory* (1967), ch. XV.
- J. Tits, *Reductive groups over local fields*, Proc. Sympos. Pure Math. 33 (1979), part 1.
- N. Wallach, *Real Reductive Groups I* (1988).
- A. Weil, *Sur la formule de Siegel dans la théorie des groupes classiques*, Acta Math. 113 (1965).
