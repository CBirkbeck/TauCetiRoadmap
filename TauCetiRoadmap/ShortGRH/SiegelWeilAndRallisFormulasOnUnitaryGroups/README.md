# Siegel–Weil and Rallis formulas on unitary groups

**Summary.** The argument bounds a one-sided sum over primes, and a one-sided bound of the right size for
such sums gives a zero-free half-plane for the L-functions involved. The bound for the prime sum is read off
from the covolume of a lattice of theta lifts of target forms: an upper bound comes from a composite lift of
source forms, a lower bound from determinants of chains of lifts and Hecke L-values, and the two are compared.
This background roadmap states the analytic theory of theta functions on unitary groups over a CM field that
the two bounds and the spanning theorem use, in the forms in which the shorter proof proves it.

The headline results are these. (1) *Neighbours and the series of translates* (1.2–1.5). One step of Kneser's
neighbour method for the standard lattice `Ô^n` lowers the index `[L : L ∩ γ⁻¹L]` by at least the norm of the
place; counting walks through neighbours shows that, when `m > 2n`, the coefficients
`[L : L ∩ γ⁻¹L]^{−m/2}` of the vacuum are absolutely summable over the cosets of a level, and that the series
of translates weighted by them is an injective operator on bounded functions of a level. In rank one the sum of
these coefficients is a partial Hecke L-value over a partial Euler product. (2) *The Siegel–Weil formula in
Weil's range* (2.6). For a split hermitian space `S` of rank `2p` and a space `T` of rank `m > 2p`, on the whole
Banach space of data of the Weil representation, the zero terms along the rational Lagrangians of `S` have
summable operator norms, theta has an integrable majorant on `[U(T)]` uniform in the datum, and the mean of
theta over `[U(T)]` is the sum of the zero terms, which is the Siegel Eisenstein series at `s₀ = (m − p)/2`; on
Schwartz–Bruhat data this is a case of Weil's Siegel–Weil formula (7.1). Siegel sets for split unitary groups (2.2)
and a constancy
theorem that strong approximation for `SU` implies (2.7, 7.3) belong to the same layer. (3) *Siegel's formula and
masses*
(3.2–3.5). Siegel's class-sum formula for the vectors of one norm in the standard definite lattice, and an
approximate ratio of the masses of the standard lattices in consecutive ranks (for a product test function the
singular series is `vol(Ô)^n` times a product of local densities, and the ratio of the masses is an explicit constant
times an L-value, 7.5); local densities bounded by an
ideal zeta value at one or several places (3.7, 3.8). (4) *Rallis' inner product formula* (4.2–4.6). The doubling
identity and the inner product formula in Weil's range for rapidly decreasing forms; for sharp data, the
product of two lifts is a nonzero constant times the pairing with the series of translates, so the lift is
injective. The doubling identity is the Siegel–Weil formula for the doubled pair and the inner product formula is the
global doubling integral of the doubling method; on Hecke eigenforms the series of translates acts by a partial
L-value over a partial Euler product, which gives, for sharp data, an identity of the form of the Rallis inner product
formula with its L-value (7.2). A reproducing formula by theta lifts to a large definite group. (5) *Singular forms*
(5.3), singular in the sense of 5.1 (c). An
automorphic function whose partial means are invariant under shears has a vanishing Fourier coefficient along
the centre of a radical as soon as the coefficients at unimodular indices vanish. (6) *Constant terms and the
functional equation* (6.8, 6.9). On standard ramified data the constant term along an isotropic line of the
theta integral of a split tame character is a constant of size `C·L♯(z + 1)` times a theta integral for the
pair with one hyperbolic plane removed; Tate's argument on the same line gives the continuation of the partial
L-function of such a character to a real half-line and a functional equation in absolute values, consequences of
Hecke's continuation and functional equation (7.4).

The users are these. The second moment of Poincaré series uses Siegel's formula, the mass ratio and the ideal
zeta bounds (`SecondMomentsOfPoincareSeries`, `RemainingAndMainTermsOfSecondMoments`); the local theory of two
frames uses the local density bounds (`PairsOfFramesAtOnePlace`); the norms of theta lifts and the comparison
operator use the inner product formula for sharp data, the rank-one vacuum sum and the reproducing formula
(`NormsOfThetaLiftsAndExchangeIdentities`); the lower bound for chains of lifts uses the inner product formula,
and its exchange identity uses the constancy theorem, the singular forms, the constant terms along a line, the
products of L-values and the functional equation (`DeterminantsOfThetaLiftChains`); the Galois representations
of eigenforms use the inner product formula for sharp data (`GaloisRepresentationsOfUnitaryEigenforms`).

Everything is over a CM field `E` with the Weil data of `WeilRepresentationsOnBanachSpacesOfData §3.1`, in particular
with a primitive root of unity of order `5040`, so that `E` is unramified over its maximal real subfield at every
finite place. The hermitian spaces are locally standard (isometric to the identity form at every finite place). The
standard theory is the reference for the objects of this roadmap: the Weil representation on Schwartz–Bruhat
functions, Siegel Eisenstein series, the doubling integral and the L-values of the Rallis inner product formula,
strong approximation, Hecke L-functions and their functional equation, local densities and the mass formula; Layer 7
states the results of the roadmap on these objects. The route of Layers 1–6 is one way to prove them, and its proofs
are stated on its own objects: the Weil representation acts on the Banach space of data
(`WeilRepresentationsOnBanachSpacesOfData §3.4`), into which the Schwartz–Bruhat functions of a Lagrangian map with
dense image (`WeilRepresentationsOnBanachSpacesOfData §10.2 (a)`); in the route, Eisenstein series are written as sums
of zero terms over Lagrangians, and L-functions as Euler products at real points `x ≥ 1`, with a continuation to a
real half-line in 6.9. Besides `WeilRepresentationsOnBanachSpacesOfData`, the statements cite
`AdelicUnitaryGroupsAndAlgebraicModularForms` (adelic unitary groups, automorphic forms, class sums),
`IdelicReciprocityCountsAndCyclotomicClassGroups` (characters of `U(1)` and their L-functions),
`HolomorphicDiscreteSeriesOfUnitaryGroups` (measures at a place, holomorphic coefficients) and, for Witt's theorem
over a field, `HermitianFormsAndLattices`; Layer 7 cites in addition the general roadmaps of the standard objects,
`MetaplecticAutomorphicForms`, `AutomorphicLFunctionsAndLocalFactorsPartII`, `AnalyticNumberTheoryPartI`,
`AdelicAlgebraicGroups` and `GeometryOfNumbersAndQuadraticArithmetic`.

Layer 1 treats neighbours, the vacuum coefficients and the series of translates. Layer 2 treats Siegel sets,
the zero terms along Lagrangians and the Siegel–Weil formula in Weil's range, and the constancy theorem.
Layer 3 treats Siegel's formula for one vector, the masses of the standard lattices, and local densities.
Layer 4 treats the doubling identity and Rallis' inner product formula. Layer 5 treats singular forms. Layer 6
treats the constant terms of theta integrals along an isotropic line, Tate's integral and the functional
equation. Layer 7 compares the objects of the route with the standard theory and states the results in its terms.

## Conventions and notation

**Labels.** Under each section heading, `*Origin:*` says where the statement comes from and
`*Method of the formal proof:*` how [ShortProof] proves it; the sections of Layer 7 are not part of the formal proof
and give a `*Route:*` in its place. The pointer `[ShortProof]` names the file and
declarations of the shorter formal proof (under its directory `src/`) where the statement is proved; its
hypotheses, ranges and constants are recorded in the statement. Where a statement here is wider than the formal
proof's, its last sentence says which case the formal proof proves. A section that states a modest form of a
deep general theorem of another roadmap says in a closing sentence which section also implies it.

**Field and places.** `E` is a CM field with a primitive `5040`-th root of unity, a CM type `Φ` (one embedding
`τ : E → ℂ` above each infinite place) and Weil data `(ȷ, α, υ)` (the purely imaginary element, the finite idele
and the splitting character) as in `WeilRepresentationsOnBanachSpacesOfData §3.1`. The root of unity makes
`E/E⁺` unramified at every finite place, so every finite place of `E⁺` is split or inert in `E`, and gives an
integer `y ∈ O_E` with `y − ȳ` a unit and an integer of norm `−1`. Only what a statement uses is needed; the
statements below assume the Weil data throughout.

**Adeles.** `𝔸` is the ring `ℂ^Φ × 𝔸_f` (one copy of `ℂ` for each infinite place, times the finite adeles), `Ô`
the integral finite adeles, `ψ` and `ψ_f` the standard additive characters of `𝔸` and `𝔸_f`, `|a|` the module of
an idele, as in `AdelicUnitaryGroupsAndAlgebraicModularForms §2.1`. For a set `A`
of finite places, `Ā` is its conjugate and `A ∪ Ā` its conjugation closure; `𝔸_f`-points are *supported on*
`A ∪ Ā` if their components outside `A ∪ Ā` are trivial, and *integral at* `A` if their components at `A` are
integral. `E_S = ∏_{w ∈ S} E_w` for a finite set `S` of finite places.

**Spaces and groups.** A *locally standard space* `S` of rank `n` and signs `s ∈ {±1}^n` is a hermitian space
`(E^n, J)` with a frame `x ∈ GL_n(𝔸)` in which the form is `diag(s)` at every infinite place and the identity
at every finite place (`AdelicUnitaryGroupsAndAlgebraicModularForms §3.1`); forms are conjugate-linear in the
first variable, `x* = x̄ᵀ`. `G(S)` is its adelic unitary group read in the frame, `G(S) = G_∞(S) × G_f`, where
`G_∞(S) = ∏_τ U(diag s)` and `G_f` is the unitary group of the identity form over `𝔸_f`; `Γ_S` is the image of the
rational points `U(S)(E)`; `[U(S)]` is the quotient `Γ_S\G(S)`, with the quotient measure of
`AdelicUnitaryGroupsAndAlgebraicModularForms §§1.1, 3.1` and total mass `vol([U(S)])`.
`L = Ô^n` is the standard lattice and `K₀ = G_f ∩ GL_n(Ô)` its stabiliser. A *level* is an open subgroup of
`K₀`. The *standard space* of rank `n` is `E^n` with the form `x*x`, signs all `+1` and frame `1`; a *hyperbolic
plane* `H` has the basis `l, k` with `l*l = k*k = 0`, `l*k = 1`.

**Forms and lifts.** Automorphic functions on `G(S)` (continuous, left invariant under `Γ_S` and right invariant
under an open subgroup of `G_f`), forms of type `e` for a function `e` on `G_∞(S)` (automorphic, bounded, fixed by
right convolution with `e` when `e` is integrable), rapid decay, right translation `R`, real convolution, a level
of a function (right invariance under an open subgroup of `G_f`), the Petersson product `⟨ , ⟩` over `[U(S)]`,
class sums and masses are those of `AdelicUnitaryGroupsAndAlgebraicModularForms §§1.4, 4.2, 4.4, 5.1`. The Banach
space of data `𝒮(V)` of a locally standard space `V`, the Weil representation `ω_{a,b}` of `G(S) × G(T)` on
`𝒮(Hom(S, T))` twisted by the automorphic characters `a` of `det h` and `b⁻¹` of `det g`, the theta functional
`θ`, the theta kernel and the theta lift `Θ_φ`, the vacuum `vac`, the Heisenberg translations `ϱ(z)`, the
projection onto the vacua above a set of places, the finite part of `𝒮`, the Fock space of the real places and
the datum `v ⊗ F` of a Fock vector `v` and a datum `F`, the real Weil representation `Ω` on the Fock space,
splittings `V = (lE^p ⊕ kE^p) ⊥ ιV₀` with their slices and zero terms, Schrödinger operators of Schwartz–Bruhat
functions above a set of places, and edges are those of
`WeilRepresentationsOnBanachSpacesOfData §§2.1, 3.4, 3.6, 3.7, 5.1, 5.4, 5.5, 6.1, 6.2, 6.4, 7.2`.

**Characters and L-functions.** Automorphic characters `ν` of `U(1)` (continuous characters of `U(1)(𝔸)`
trivial on `U(1)(E)`), their *weight* `l ∈ ℤ^Φ`, *tame part* `(ψ_w)` and base change `ν̃(x) = ν(x/x̄)` are as in
`IdelicReciprocityCountsAndCyclotomicClassGroups §7.1`, and a *split tame character* `𝔠 = (ν, S)` of weight `μ`
(`μ_τ > 0`, tame part nontrivial exactly on a nonempty finite set `S` of places disjoint from `S̄`) is as in
`IdelicReciprocityCountsAndCyclotomicClassGroups §7.6 (c)`. `L^S(x, ν)`, for a set `S` of finite places and real
`x`, is the Euler product of `ν̃` without the factors at `S ∪ S̄`
(`IdelicReciprocityCountsAndCyclotomicClassGroups §8.5`); `υ₁` is `υ` restricted to `U(1)(𝔸)`
(`IdelicReciprocityCountsAndCyclotomicClassGroups §7.6 (b)`); and `χ_𝔠(t) = ν(t/t̄)` is the tame character of `𝔠`
on `E_S`.

### Table of symbols

| Symbol | Meaning | Defined |
|---|---|---|
| `E, E⁺, Φ, f` | the CM field, its maximal real subfield, the CM type, the number of infinite places | above; `WeilRepresentationsOnBanachSpacesOfData §3.1` |
| `rd_E, D_E` | the root discriminant and the discriminant of `E`, `|D_E| = rd_E^{2f}` | Mathlib |
| `ȷ, α, κ_E, υ, υ₁` | the Weil data: imaginary element, finite idele, the idele with finite part `α` and components `(2π Im τȷ)^{−1/2}` at infinity, splitting character, its restriction to `U(1)` | `WeilRepresentationsOnBanachSpacesOfData §3.1`; `IdelicReciprocityCountsAndCyclotomicClassGroups §7.6 (b)` (`υ₁`) |
| `w, w̄, q_w, k_w, ϖ_w, O_w` | a finite place of `E`, its conjugate, the order of its residue field, the residue field, a uniformiser, the local integers; `w` is split if `w ≠ w̄` | |
| `𝔸, 𝔸_f, Ô, ψ, ψ_f, |·|` | adeles, finite adeles, integral finite adeles, standard additive characters, the idele module | `AdelicUnitaryGroupsAndAlgebraicModularForms §2.1` |
| `vol(Ô)` | the volume `2^{r₂}/√|D_E|` of `Ô` for the Haar measure of `𝔸_f` used | `AdelicUnitaryGroupsAndAlgebraicModularForms §2.1` |
| `S, T, W, V` | locally standard hermitian spaces; `n = rk S`, `m = rk T` | above |
| `G(S), G_∞(S), G_f, Γ_S, [U(S)]` | adelic unitary group, its archimedean and finite parts, rational points, quotient | above |
| `L, K₀, K_A, G_f^A` | the standard lattice `Ô^n`; its stabiliser; the points integral at `A`; the points supported on `A ∪ Ā` | 1.1 |
| `Δ(g)` | the multiplier of `g ∈ G_f`: `|Δ(g)|² = [L : L ∩ g⁻¹L]`, `Δ(g⁻¹) = conj Δ(g)` | `WeilRepresentationsOnBanachSpacesOfData §3.2` |
| `mc_{M,b}, 𝒯_{M,b,A}, σ_{n,M,b}(A)` | vacuum coefficient, series of translates, vacuum sum | 1.1 |
| `R(g)` | right translation by `g` | |
| `𝒮(V), ω_{a,b}, θ, Θ_φ, vac` | data, Weil representation, theta functional, theta lift, vacuum | `WeilRepresentationsOnBanachSpacesOfData §§3.4, 3.6, 6.1, 6.4` |
| `ev_L, f[x], A_x, a_x` | zero term of a Lagrangian, value in a Schrödinger model, normalised torus, dyadic Levi element | 2.1 |
| `ζ_R(μ)` | the ideal zeta sum of a ring | 3.1 |
| `δ(Φ₀, α)` | the density of `Φ₀` at the norm `α` | 3.1 |
| `mass(l)` | the class sum of `1` for the standard lattice of rank `l` | `AdelicUnitaryGroupsAndAlgebraicModularForms §4.4` |
| `ν̃, L^S(x, ν), 𝔠 = (ν, S), χ_𝔠` | base change, partial L-function, split tame character, its tame character | above |
| `L♯(z), L_*(e)` | `|L^S(z, ν)|·∏_{w ∈ S} q_w^{z − 1/2}`; the product of `L♯`-type values | 6.1 |

## Layer 1: Neighbours, vacuum coefficients and the series of translates

### 1.1 Definitions: neighbour vectors, vacuum coefficients and the series of translates

*Origin:* definitions and conventions.

Let `n ≥ 1`, `L = Ô^n` with the form `⟨x, z⟩ = x*z`, and `G_f`, `K₀` as in the conventions.

(a) *Neighbour vectors.* A vector `x ∈ 𝔸_f^n` is a neighbour vector at the finite place `w` if its components
at all places other than `w` vanish, `ϖ_w x_w ∈ O_w^n`, `x_w ∉ O_w^n`, and `x*x ∈ Ô`. Its *neighbour* is
`L(x) = L₀(x) + Ôx` with `L₀(x) = {z ∈ L : x*z ∈ Ô}`, and its *line* is the line of the reduction of `ϖ_w x_w`
in `k_w^n`. An element `ρ ∈ G_f` *maps the neighbour of `x` into `L`* if `ρL₀(x) ⊆ L` and `ρx ∈ L`. The lattice
`L(x)` is the neighbour `{y ∈ L : h(x, y) ∈ O_E} + O_E x` of `HermitianFormsAndLattices §5.4` (the metric form), read
over the integral finite adeles for `x` supported at one place; no second notion of neighbour is introduced.

(b) *Residues and steps.* `R_w ⊆ k_w` is the set of reductions of `ϖ_w s_w` for the finite adeles `s` supported
at `w` with `ϖ_w s_w ∈ O_w` and `s + s̄ ∈ Ô`. The *steps* at `w` are the pairs `(ℓ, r)` with `ℓ` a line in
`k_w^n` and `r ∈ R_w`.

(c) *Levels and representatives.* For a set `A` of finite places, `K_A` is the group of `g ∈ G_f` with
`g_w ∈ GL_n(O_w)` for `w ∈ A`, and `G_f^A` the group of `g ∈ G_f` with `g_w = 1` for `w ∉ A ∪ Ā`. Each coset
`q ∈ G_f/K_A` contains an element `r(q) ∈ G_f^A`, the element that agrees on `A ∪ Ā` with a chosen member of `q`
and is `1` elsewhere; fix this choice.

(d) *Vacuum coefficients.* For `M ∈ ℕ`, an automorphic character `b` of `U(1)` and `g ∈ G_f`,
`mc_{M,b}(g) = (b(det g)·Δ(g)^M)⁻¹`; its modulus is `[L : L ∩ g⁻¹L]^{−M/2}`. The character `b ∘ det` is
*unramified on `A`* if `b(det k) = 1` for all `k ∈ K₀ ∩ G_f^A`; this holds when the tame part of `b` is trivial at
the places of `A ∪ Ā`.

(e) *The series of translates.* For a locally standard space `S` of rank `n` and a function `y` on `G(S)`,
`𝒯_{M,b,A} y(g) = Σ_{q ∈ G_f/K_A} mc_{M,b}(r(q))·y(g·(1, r(q)))`, read as `0` where the terms are not summable;
the *vacuum sum* is `σ_{n,M,b}(A) = Σ_q mc_{M,b}(r(q))`, the value of the series on the constant `1`.

(f) *Step weights.* `s_{n,M}(w) = #{steps at w}·q_w^{−M/2}`.

(g) *Place signs.* Fix a well-ordering of the finite places; `ε_w = −1` if `w` precedes `w̄` and `ε_w = 1`
otherwise. So `ε_w = 1` if `w = w̄`, and `{ε_w, ε_w̄} = {1, −1}` on a split pair; the product over the places
above one place `v` of `E⁺` of `1 − ε_w q_w^{−k}` is `1 − q_v^{−2k}`.

[ShortProof], `Lib/SiegelWeil/NeighbourLattices.lean` (`New.SiegelWeil.IsNeighbourVector`,
`New.SiegelWeil.MapsNeighbour`, `New.SiegelWeil.neighbourResidues`);
`Lib/SiegelWeil/UnramifiedSeries/VacuumCoefficients.lean` (`New.SiegelWeil.vacuumCoeff`,
`New.SiegelWeil.cosetRep`, `New.SiegelWeil.IsUnramifiedOn`, `New.SiegelWeil.rallisSeries`,
`New.SiegelWeil.stepWeight`); `Lib/SiegelWeil/UnramifiedSeries/RallisSeries.lean` (`New.SiegelWeil.vacuumSum`);
`Lib/SiegelWeil/RallisInner/SharpData.lean` (`New.placeSign`)

### 1.2 One neighbour step towards the standard lattice

*Origin:* adapted from Kneser's neighbour method, as in Greenberg and Voight (2014), section 5: here only for the
standard lattice `L = Ô^n` and the lattices `γL`, `γ ∈ G_f`, with a finite family of unitary elements at one place
that carries every neighbour there into `L`, the count of that family, and the drop of the index.

*Method of the formal proof:* (c) if `γ ∉ K₀`, then at some finite place `w` some column of `γ_w` is not integral; a
multiple of the corresponding basis vector at `w` alone, by a suitable element of `O_w`, is a `z ∈ L` for which `γz`
has a pole of order exactly one at `w`. (b) For each neighbour vector a quasi-reflection with components only at `w`
and `w̄` carries its neighbour into `L`; once `x` is multiplied by a local unit, this quasi-reflection can be chosen to
depend only on the line of `ϖ_w x_w` and on one residue class in `R_w`, which gives a family indexed by the steps.
(a) When `w` is split, `s + s̄ ∈ Ô` with `s` supported at `w` already makes `s` integral; at every `w`, the integer
`y` of the conventions makes `(r, r′) ↦ r + yr′` an injection of `R_w × R_w` into `k_w`. (d) The `q_w` multiples of
`z` by representatives of `k_w` lie in `L ∩ (ργ)⁻¹L` and are pairwise distinct modulo `L ∩ γ⁻¹L`.

Let `n ≥ 1` and use the notation of 1.1.
(a) If `w` is split, `R_w` has at most one element. For every finite place `w`, `(#R_w)² ≤ q_w`.
(b) For every finite place `w` there is a family `(ρ_{ℓ,r})`, indexed by the steps at `w`, of elements of
`G_f^{{w}}` (component `1` outside `{w, w̄}`) such that for every neighbour vector `x` at `w` some `ρ_{ℓ,r}` maps
the neighbour of `x` into `L`.
(c) If `γ ∈ G_f` and `γ ∉ K₀`, there are a finite place `w` with `γ_w ≠ 1` and `z ∈ L` such that `γz` is a
neighbour vector at `w`.
(d) If `z ∈ L`, `γz` is a neighbour vector at `w`, and `ρ ∈ G_f` maps the neighbour of `γz` into `L`, then
`q_w·[L : L ∩ (ργ)⁻¹L] ≤ [L : L ∩ γ⁻¹L]`.

(c) and (d) also follow from the metric form of the neighbour step in `HermitianFormsAndLattices §5.4`; (a) and
(b) are not stated there.

*Needs:* 1.1; `AdelicUnitaryGroupsAndAlgebraicModularForms §3.1` (finite unitary group, standard level);
`WeilRepresentationsOnBanachSpacesOfData §3.2` (finite multiplier and its index).

[ShortProof], `Lib/SiegelWeil/NeighbourLattices.lean` (`New.SiegelWeil.card_neighbourResidues_le_one`,
`New.SiegelWeil.card_neighbourResidues_sq_le`, `New.SiegelWeil.exists_family_mapsNeighbour`,
`New.SiegelWeil.exists_isNeighbourVector_mulVec`, `New.SiegelWeil.q_mul_norm_finMultiplier_mul_sq_le`)

### 1.3 Weights of the steps and the sum of the vacuum coefficients

*Origin:* particular to this proof: a bound for the sum of the vacuum coefficients over the cosets of a level,
obtained by counting walks through neighbours with weights that are summable over the places when `M > 2n`.

*Method of the formal proof:* (a) Roots in `O_E` of `X² + X + 1` and of `X² + 1` reduce to roots in `k_w`; as the
first polynomial is irreducible over the field with two elements and the second over the field with three, `k_w` is
neither of these. (b) A step is a line of `k_w^n`, of which there are at most `q_w^n/(q_w − 1)`, and a residue, of
which there are at most `√q_w`, and at most one at a split place (1.2 (a)); with `2n < M` and (a) this gives the
bounds. (d) Using 1.2 (c), (b), (d) repeatedly, every coset other than `K_A` is joined to `K_A` by a chain of steps
at places of `A ∪ Ā`, and along the chain the modulus of the vacuum coefficient drops by a factor of at least
`q_w^{M/2}` per step; a lemma on weighted sums over such chains then bounds the nontrivial cosets by `ϱ/(1 − ϱ)`,
which is at most `1/2` for a total step weight `ϱ ≤ 1/3`.

Let `n ≥ 1` and `M ∈ ℕ` with `2n < M`, and let `b` be an automorphic character of `U(1)`.
(a) `q_w ≥ 4` for every finite place `w`.
(b) `s_{n,M}(w) ≤ 1/(q_w − 1)` for every `w`, and `s_{n,M}(w) ≤ 1/((q_w − 1)√q_w)` if `w` is split;
`s_{n,M}(w) + s_{n,M}(w̄) ≤ 1/3` (one term if `w = w̄`); and `Σ_w s_{n,M}(w) < ∞` over all finite places.
(c) `Δ(kgk′) = Δ(g)` for `k, k′ ∈ K₀`, and `Δ(gg′) = Δ(g)Δ(g′)` if at each place one of `g`, `g′` has
component `1`. If `A₂` is disjoint from `A₁ ∪ Ā₁`, then `(q₁, q₂) ↦ coset of r(q₁)r(q₂)` is a bijection
`G_f/K_{A₁} × G_f/K_{A₂} → G_f/K_{A₁∪A₂}`; `mc_{M,b}(u₁u₂) = mc_{M,b}(u₁)·mc_{M,b}(u₂)` for `u₁ ∈ G_f^{A₁}` and
`u₂ ∈ G_f^{A₂}`, so that `|mc_{M,b}(r(q))| = |mc_{M,b}(r(q₁))|·|mc_{M,b}(r(q₂))|` when `q` is the image of
`(q₁, q₂)`, and `mc_{M,b}(r(q)) = mc_{M,b}(r(q₁))·mc_{M,b}(r(q₂))` when moreover `b ∘ det` is unramified on
`A₁ ∪ A₂`; and if the coefficients are absolutely summable over the cosets of `K_{A₁}` and of `K_{A₂}`, they are so
over those of `K_{A₁∪A₂}`.
(d) If `Σ_{w ∈ A ∪ Ā} s_{n,M}(w) ≤ 1/3`, then `Σ_{q ∈ G_f/K_A} |mc_{M,b}(r(q))| ≤ 3/2`.

*Needs:* 1.1, 1.2.

[ShortProof], `Lib/SiegelWeil/UnramifiedSeries/VacuumCoefficients.lean` (`New.FinPlace.four_le_q`,
`New.SiegelWeil.stepWeight_le`, `New.SiegelWeil.stepWeight_le_of_isSplit`,
`New.SiegelWeil.tsum_stepWeight_conjClosure_singleton_le`, `New.SiegelWeil.summable_stepWeight`,
`New.SiegelWeil.finMultiplier_mul_mul_of_mem_stdLevel`, `New.SiegelWeil.bijective_mk_cosetRep_mul`,
`New.SiegelWeil.vacuumCoeff_mul_of_disjoint`, `New.SiegelWeil.finMultiplier_cosetRep_mk`,
`New.SiegelWeil.summable_norm_vacuumCoeff_union`, `New.SiegelWeil.tsum_ofReal_norm_vacuumCoeff_le`,
`New.tsum_le_of_walk`); `Lib/SiegelWeil/UnramifiedSeries/RallisSeries.lean` (`New.SiegelWeil.vacuumCoeff_cosetRep_mk`)

### 1.4 The series of translates: convergence, forms, multiplicativity and injectivity

*Origin:* adapted from the Rallis inner product formula in Weil's convergent range (Rallis (1984), *Injectivity
properties of liftings associated to Weil representations*, for orthogonal–symplectic pairs; Li (1992)) and from
Rallis (1984), *Injectivity properties of liftings associated to Weil representations*, the injectivity of theta
lifts: here the contribution of the unramified places is left as a series of translates acting on the bounded
functions of a level of a source space of any signature, and its injectivity is proved by counting neighbours, with
no L-function.

*Method of the formal proof:* the statements are proved first for sets `A` of total step weight at most `1/3`,
where 1.3 (d) bounds the coefficients and, for (d), the trivial coset dominates: the other cosets move a bounded `y` by
at most half of `sup |y|`. A pair `{w, w̄}` is such a set by 1.3 (b), and so is the complement of a large enough
finite set of places, the step weights being summable; a general `A` is cut into finitely many such pieces, and (c),
with 1.3 (c), puts the pieces together.

Let `S` be a locally standard space of rank `n` and signs `s`, `m` an integer with `2n < m`, `b` an automorphic
character of `U(1)`, `A` a set of finite places, and write `mc = mc_{m,b}`, `𝒯_A = 𝒯_{m,b,A}`.
(a) `Σ_{q ∈ G_f/K_A} |mc(r(q))| < ∞`.
(b) For bounded `y` on `G(S)`, the series `𝒯_A y` converges uniformly, `|𝒯_A y| ≤ (Σ_q |mc(r(q))|)·sup |y|`, it
commutes with left translations, and it is continuous if `y` is continuous. For bounded measurable `y`, a
function `y′` integrable on `[U(S)]` and `x ∈ G(S)`, `Σ_q mc(r(q))·⟨y′, R(x·r(q))y⟩ = ⟨y′, R(x)𝒯_A y⟩`, the
sum converging. If `b ∘ det` is unramified on `A` and `J` is a subgroup of `G_f` with `K₀ ∩ G_f^A ⊆ J ⊆ K_A`,
then for every form `y` of type `e` on `S` that is fixed by `J`, `𝒯_A y` is a form of type `e` fixed by `J`.
(c) If `A₂` is disjoint from `A₁ ∪ Ā₁`, `b ∘ det` is unramified on `A₁ ∪ A₂`, and `y` is bounded and fixed by
`K₀ ∩ G_f^{A₁∪A₂}`, then `𝒯_{A₁∪A₂} y = 𝒯_{A₁}(𝒯_{A₂} y)`.
(d) If `b ∘ det` is unramified on `A`, `y` is bounded and fixed by `K₀ ∩ G_f^A`, and `𝒯_A y = 0`, then `y = 0`.

**In standard terms.** If `b ∘ det` is unramified on `A` and `y` is bounded, fixed by `K₀ ∩ G_f^A` and an
eigenfunction of the spherical Hecke algebra at every place of `E⁺` below `A`, then `𝒯_A y = Z^□_A·y`, where `Z^□_A`
is the product over those places of the unramified local doubling integrals at `s₀ = (m − n)/2` of
`MetaplecticAutomorphicForms §6.11` (Local doubling zeta integral), the partial L-value over the partial denominator
of the doubling method (7.2 (d)); for such a `y ≠ 0`, (d) gives `Z^□_A ≠ 0`. (b)–(d) do not require `y` to be an
eigenfunction.

*Needs:* 1.1, 1.3; `AdelicUnitaryGroupsAndAlgebraicModularForms §5.1` (forms of a type, Petersson product).

[ShortProof], `Lib/SiegelWeil/UnramifiedSeries/RallisSeries.lean` (`New.SiegelWeil.summable_norm_vacuumCoeff`,
`New.SiegelWeil.tendstoUniformly_rallisSeries`, `New.SiegelWeil.norm_rallisSeries_le`,
`New.SiegelWeil.hasSum_petersson_rallisSeries`, `New.SiegelWeil.exists_form_eq_rallisSeries`,
`New.SiegelWeil.rallisSeries_union`, `New.SiegelWeil.eq_zero_of_rallisSeries_eq_zero`)

### 1.5 The vacuum sum over the places, and its value in rank one

*Origin:* adapted from the Rallis inner product formula (Rallis (1984), *Injectivity properties of liftings
associated to Weil representations*; Li (1992)), in its case of the trivial representation of a definite unitary
group of rank `2k` lifted from `U(1)`: here the unramified local integrals in rank one are sums over cosets,
evaluated at every finite place where the character is unramified (the places of residue characteristic `2`
included) and assembled into a partial Hecke L-value over a partial Euler product.

*Method of the formal proof:* (a) the vacuum sum is multiplicative over disjoint sets of places on which `b ∘ det`
is unramified (1.4 (c) applied to the constant `1`; 1.3 (c)), and the sums over `A ∩ (finite sets)` tend to the sum
over `A` by absolute summability (1.4 (a)). (b) At a place
`w = w̄` there is one coset. At a split pair the cosets are represented by the points with component `ϖ_w^z` at
`w`, the conjugate inverse at `w̄` and `1` elsewhere (`z ∈ ℤ`); the vacuum coefficient of such a point is the
`|z|`-th power of `ν̃(ϖ_u)·q_u^{−k}`, with `u = w̄` for `z ≥ 0` and `u = w` for `z < 0`, so the sum is two geometric
series. (c) is (a) with the local factors of (b) and the Euler products of
`ν̃⁻¹` and of `ε` off `D`.

(a) Let `2n < m`, let `A` be stable under conjugation, and let `b ∘ det` be unramified on `A`. Let complex
numbers `ℓ_w` have unconditionally convergent product `P`, with `ℓ_w = 1` for `w ∉ A` and
`σ_{n,m,b}({w, w̄}) = ∏_{u ∈ {w, w̄}} ℓ_u` for every `w ∈ A`. Then `σ_{n,m,b}(A) = P`.
(b) Let `n = 1`, `k ≥ 2`, and let `ν` be an automorphic character of `U(1)` of weight `l` and tame part `(ψ_w)`
with `ψ_w = ψ_w̄ = 1`. Then
`σ_{1,2k,ν·υ₁^k}({w, w̄}) = ∏_{u ∈ {w, w̄}} (1 − ε_u q_u^{−k})/(1 − ν̃(ϖ_u)⁻¹ q_u^{−k})`.
(c) If moreover `ψ_w = 1` for every `w ∉ S` and `D = S ∪ S̄`, then the vacuum sum over the places outside `D` is
`σ_{1,2k,ν·υ₁^k}(complement of D) = L^S(k, ν⁻¹)/∏_{w ∉ D}(1 − ε_w q_w^{−k})⁻¹`.
Since `E/E⁺` is unramified at the finite places, the denominator is the value at `2k` of the Dedekind zeta
function of `E⁺` without the Euler factors at the places below `D`.

**In standard terms.** For `n = 1`, `m > 2` and `b ∘ det` unramified on `A`, the constant function `1` is an
eigenfunction of the spherical Hecke algebras, and `σ_{1,m,b}(A)` is the eigenvalue `Z^□_A` of the series of
translates on it (7.2 (d), (e)): the product over the places of `E⁺` below `A` of the unramified doubling integrals at
`s₀ = (m − 1)/2` for the character `b⁻¹` of `U(1)`. (b) and (c) evaluate it, for `m = 2k` and `b = ν·υ₁^k`, as the
partial Hecke L-value `L^S(k, ν⁻¹)` over the partial Dedekind zeta value of `E⁺` at `2k`: the L-value form of the
doubling method in rank one.

Outside its set of bad places, `ThetaLiftsForDefiniteUnitaryGroups §5.2` gives the same local factors for
`n = 1`, `d = 2k`; its bad set contains the places where the additive character ramifies, which (c) does not
exclude.

*Needs:* 1.1, 1.3, 1.4; `IdelicReciprocityCountsAndCyclotomicClassGroups §§7.1, 7.6, 8.1, 8.5` (characters of
`U(1)`, partial Euler products); `WeilRepresentationsOnBanachSpacesOfData §3.1` (splitting character).

[ShortProof], `Lib/SiegelWeil/UnramifiedSeries/RallisSeries.lean` (`New.SiegelWeil.vacuumSum_union`,
`New.SiegelWeil.tendsto_vacuumSum_inter`, `New.SiegelWeil.vacuumSum_eq_of_hasProd`);
`Lib/SiegelWeil/RallisInner/SharpData.lean` (`New.vacuumSum_pair`, `New.vacuumSum_eq_L_div_eulerProd`)

## Layer 2: Siegel sets, zero terms and the Siegel–Weil formula in Weil's range

### 2.1 Definitions: complete splittings, Lagrangians, zero terms and the normalised torus

*Origin:* definitions and conventions.

Let `S` (rank `n`, signs `s`) and `T` (rank `m`, signs `t`) be locally standard spaces.

(a) A *complete splitting* `P` of `S` into `p` hyperbolic planes is a splitting of `S` in the sense of
`WeilRepresentationsOnBanachSpacesOfData §5.1` whose complement has rank `0`: rational
frames `l = (l_1, …, l_p)`, `k = (k_1, …, k_p)` with `l_i*Jk_j = δ_{ij}` and `l_i*Jl_j = k_i*Jk_j = 0`, spanning
`E^n`; so `n = 2p`. Its *Lagrangian* is the span of `k`. A *Lagrangian* of `S` is a subspace `Λ ⊆ E^n` equal to
its own orthogonal for `J`. Every Lagrangian is the Lagrangian of a complete splitting; fix one, `P_Λ`, for each.

(b) An element `g ∈ G(S)` *acts on the frame of `P` by* `a ∈ GL_p(𝔸)` if `g k = k a` in adelic coordinates. The
*Levi element* `P.levi(a)` and the *radical element* `n(ν)`, for `ν ∈ M_p(𝔸)`, are `m(a, 1)` and `n(0, ν)` of
`WeilRepresentationsOnBanachSpacesOfData §5.1` (`n(ν)` fixes `k` and sends `l` to `l − k·½ȷ⁻¹(ν + ν*)`). For
`x ∈ ℤ^p`, `a_x = P.levi(δ_x)`, where `δ_x` is diagonal with entries `2^{x_i}` at every infinite place and `1` at
every finite place.

(c) `ω` denotes the Weil representation `ω_{a,1}` of `G(S) × G(T)` on `𝒮(Hom(S, T))` with `a = υ₁^{⌊n/2⌋}`, the
twist that makes `G(T)` act on the values below by substitution.

(d) For a complete splitting `P` and `x ∈ M_{m×p}(𝔸)`, the *value* `f[x]` of `f ∈ 𝒮(Hom(S, T))` *in the
Schrödinger model of `P`* is the slice of `f` at `x` for the splitting of `Hom(S, T)` induced by `P`, followed by
`θ` on the data of `Hom(0, T)` (`WeilRepresentationsOnBanachSpacesOfData §§5.5, 6.9`);
it is a continuous linear functional of `f`. The *zero term* along a Lagrangian `Λ` is `ev_Λ(f) = f[0]` for
`P = P_Λ`; it is the mean of `θ(ϱ(z)f)` over the adelic `z ∈ Hom(S, T)` vanishing on `Λ` modulo the rational
ones, and `ev_Λ(f) = f[0]` for every complete splitting with Lagrangian `Λ`. Here the *value in the Schrödinger model*
is a slice followed by `θ`; in the literature it is the value of a Schwartz–Bruhat function in the Schrödinger model
of the polarisation of `Hom(S, T)` induced by `P`, and on the image of the Schwartz–Bruhat functions the two agree up
to a constant factor of modulus one (`WeilRepresentationsOnBanachSpacesOfData §10.8 (b)`, for the splitting of
`Hom(S, T)` induced by `P`; the introduction to Layer 7).

(e) The *normalised torus* of `P` is `A_x = 2^{−f·m·Σ_i x_i}·ω(a_x, 1)` for `x ∈ ℕ^p`.

[ShortProof], `Lib/SiegelWeil/Formula/LagrangianZeroTerms.lean` (`New.SiegelWeil.CompleteSplitting`,
`New.SiegelWeil.Lagrangian`, `New.SiegelWeil.splitWeil`, `New.SiegelWeil.mixedValue`,
`New.SiegelWeil.Lagrangian.zeroTerm`, `New.SiegelWeil.Lagrangian.exists_completeSplitting`,
`New.SiegelWeil.zeroTerm_lagrangian_eq_theta`, `New.SiegelWeil.normalisedTorus`)

### 2.2 Siegel sets for a split unitary group

*Origin:* adapted from the published theory of reduction for arithmetic groups (Siegel sets cover the adelic
quotient): here for the unitary group of a split locally standard hermitian space, with the torus of the Siegel
parabolic of one complete splitting, in the order `γ·a_x·κ`, with exponents only bounded below.

*Method of the formal proof:* (a) comes from the Iwasawa decomposition and the reduction theory for `GL_p`
(`AdelicUnitaryGroupsAndAlgebraicModularForms §§3.6, 4.3`). (b) For a rational Lagrangian `γk`, (a) bounds the torus
exponents of `g` from below as soon as some rational basis of `γk` has its coordinates at `g` in a compact set that
does not depend on `g`; so it is enough to produce such a Lagrangian for each `g`. Mahler's compactness criterion
supplies rational vectors whose coordinates at `g` are bounded and whose Gram matrices take finitely many values; in
their span an isotropic frame is chosen by a rule fixed in advance for each of the finitely many cases, so its
coordinates at `g` stay bounded, and by Witt's theorem the frame is the image of `k` under a rational point.

Let `S` be a locally standard space with a complete splitting `P` into `p` hyperbolic planes, with frame `k`.
(a) There is a compact set `Ω ⊆ M_p(𝔸) × G(S)` such that for every `g ∈ G(S)` and every `γ ∈ Γ_S` there are
`δ ∈ Γ_S`, `x ∈ ℤ^p`, `y ∈ GL_p(E)` and `(ν, κ) ∈ Ω` with `δ⁻¹g = n(ν)·a_x⁻¹·κ` and `δ⁻¹γ k = k y`; in
particular `δk` and `γk` span the same Lagrangian.
(b) There is a compact set `Ω′ ⊆ G(S)` such that every `g ∈ G(S)` is `γ·a_x·κ` with `γ ∈ Γ_S`, `x ∈ ℕ^p` and
`κ ∈ Ω′`.

`AdelicAlgebraicGroups §3.4` ("Siegel sets cover `G(F)\G(𝔸)`") also implies (b), after moving the compact factor
past the torus element and matching the chamber of the Siegel parabolic.

*Needs:* 2.1; `AdelicUnitaryGroupsAndAlgebraicModularForms §§3.6, 4.3, 4.4` (Iwasawa decomposition, reduction,
Mahler's criterion); `HermitianFormsAndLattices §1.1 (b)` (Witt's theorem).

[ShortProof], `Lib/SiegelWeil/Formula/WeilRange.lean` (`New.SiegelWeil.exists_compact_parabolic_normal_form`,
`New.SiegelWeil.exists_siegel_set`)

### 2.3 Zero terms under the parabolic, and a majorant for theta in Weil's range

*Origin:* particular to this proof: the size of the zero terms under the Levi subgroup and along the normalised
torus, and an integrable majorant of the theta function that is uniform in the datum and along the torus.

*Method of the formal proof:* in the Schrödinger model of `P`, `G(T)` acts by substitution and the Levi element
of `a` by a unitary character of `det a` times `|det a|^{m/2}` and the substitution `x ↦ xa`, and theta is the sum of
the values at the rational matrices (a). For (c) expand theta as that sum: the term of `ξ` is a value at
`h⁻¹ξδ_x`, the sum of the norms of the values over the points of a compact set is at most a constant times
`‖f‖`, and the `ξ` concerned have `h⁻¹ξ` in a compact set independent of `x`; the number of such `ξ` is a
function of `h` that is integrable over `[U(T)]` because `m > 2p`. (d) follows from (a) and the Iwasawa
decomposition, which writes `g·a_x·κ` on the frame of `P′` by a block whose determinant stays in a compact set.

Let `S` be a locally standard space with a complete splitting `P` into `p` planes, `T` locally standard of rank
`m`, and `f ∈ 𝒮(Hom(S, T))`.
(a) For `a ∈ GL_p(𝔸)`, `h ∈ G(T)` and `x ∈ M_{m×p}(𝔸)`,
`(ω(P.levi(a), h)f)[x] = χ(det a)⁻¹·|det a|^{m/2}·f[h⁻¹xa]`, with `χ` the unitary Hecke character `υ^{−m}`; and
`θ(ω(1, h)f) = Σ_ξ f[h⁻¹ξ]` over the rational `ξ ∈ M_{m×p}(E)` (in the coordinates of the frame of `T`), the
sum converging.
(b) If `g ∈ G(S)` acts on the frame of `P` by `a`, then `|ev_Λ(ω(gg′, 1)f)| = |det a|^{m/2}·|ev_Λ(ω(g′, 1)f)|`
for the Lagrangian `Λ` of `P` and every `g′`.
(c) If `m > 2p`, there is a measurable `N ≥ 0` on `G(T)` with finite integral over `[U(T)]` such that
`|θ(ω(1, h)A_x f)| ≤ N(h)·‖f‖` for all `h ∈ G(T)`, `x ∈ ℕ^p` and `f`.
(d) Let `P′` be a second complete splitting of `S`, with adelic frame `k′`, let `Z` be an adelic matrix with
`Z k′ = 1`, and let `K ⊆ G(S)` be compact. There is `R ≥ 0` such that for all `g ∈ K`, all `x, u ∈ ℕ^p` with
`Z g k δ_x = Z g k δ_u`, and all `f`: `|ev_{Λ′}(ω(g, 1)A_x f)| ≤ R·‖f‖·2^{f·m·(Σu_i − Σx_i)}`, where `Λ′` is the
Lagrangian of `P′`.

*Needs:* 2.1; `WeilRepresentationsOnBanachSpacesOfData §§3.5, 5.5, 6.1, 6.9` (Weil representation, slices, theta
expansion); `AdelicUnitaryGroupsAndAlgebraicModularForms §§3.6, 4.3` (Iwasawa decomposition, reduction theory).

[ShortProof], `Lib/SiegelWeil/Formula/LagrangianZeroTerms.lean` (`New.SiegelWeil.mixedValue_splitWeil_levi`,
`New.SiegelWeil.mixedValue_splitWeil`, `New.SiegelWeil.hasSum_mixedValue_theta_splitWeil`,
`New.SiegelWeil.norm_zeroTerm_parabolic_mul`, `New.SiegelWeil.theta_normalisedTorus_le`,
`New.SiegelWeil.exists_zeroTerm_normalisedTorus_le`)

### 2.4 Uniform summability of the zero terms

*Origin:* particular to this proof: when `m > 2p`, a single majorant, summable over the rational Lagrangians, for the
operator norms of the zero terms after the normalised torus, uniform along the torus; at `x = 0` it says that the
Eisenstein series of the Siegel–Weil formula converges absolutely in operator norm.

*Method of the formal proof:* put each Lagrangian in the normal form 2.2 (a) at `g = 1`, with torus exponents
`d + t(Λ)`, `t(Λ) ∈ ℕ^p`. By 2.3 (b) the term of `Λ` is `O(2^{−f·m·Σt_i})`, while only `O(2^{2f·p·Σt_i})`
Lagrangians have a given `t`, by a covering of the adelic matrices by translates of a compact set; the geometric
series converges because `m > 2p`.

Let `S` be locally standard with a complete splitting `P` into `p` planes and `T` locally standard of rank
`m > 2p`. There is a summable `c ≥ 0` on the Lagrangians of `S` such that `‖ev_Λ ∘ A_x‖ ≤ c(Λ)` (operator norm)
for every Lagrangian `Λ` and every `x ∈ ℕ^p`.

*Needs:* 2.1, 2.2, 2.3.

[ShortProof], `Lib/SiegelWeil/Formula/WeilRange.lean` (`New.SiegelWeil.exists_summable_zeroTerm_bound`)

### 2.5 Invariant functionals dominated by the zero terms vanish

*Origin:* particular to this proof: a vanishing criterion for `G(T)`-invariant functionals on the data, by a
maximum principle for a Hecke operator at a split place.

*Method of the formal proof:* by `WeilRepresentationsOnBanachSpacesOfData §3.7 (e)` it is enough that `ℓ` vanishes
at `φ = v ⊗ ϱ(z)vac` for `v` polynomial and `z` a finite adelic vector. Places of prime norm split, so there are
infinitely many split places, and one of them, `w`, has `z` integral at `w` and at `w̄`. For data that are vacua at
`w`, the Hecke transfer of `WeilRepresentationsOnBanachSpacesOfData §9.3` bounds `|λ|·|ℓ(ω(g, 1)f)|`, for a scalar
`λ`, by finitely many values of `|ℓ(ω(·, 1)f)|` at translates of `g` with weights of total less than `|λ|`, while
`σ(g) = Σ_Λ |ev_Λ(ω(g, 1)vac)|` satisfies the reverse inequality. The maximum principle of the background entry below,
applied to `|ℓ(ω(g, 1)f)| − σ(g)`, gives `|ℓ(ω(g, 1)f)| ≤ σ(g)`; as `σ` does not depend on `f`, applying this to
large multiples of `φ` forces `ℓ(φ) = 0`.

Let `S` be locally standard of rank `2p > 0`, `T` locally standard of rank `m > 2p`, and `ℓ` a continuous linear
functional on `𝒮(Hom(S, T))` with `ℓ(ω(1, h)f) = ℓ(f)` for all `h ∈ G(T)` and `f`. Suppose that for every `f`
the zero terms `ev_Λ(f)` are summable over the Lagrangians `Λ` of `S`, and that for every `f` the function
`g ↦ |ℓ(ω(g, 1)f)| − Σ_Λ |ev_Λ(ω(g, 1)vac)|` on `G(S)` is bounded above. Then `ℓ = 0`.

*Needs:* 2.1; `WeilRepresentationsOnBanachSpacesOfData §§3.7, 9.3` (spanning by vacuum translates; Hecke
transfer); ShortGRH background (a maximum principle: a real function `v` on a set `G`, bounded above, with
`l·v(g) ≤ Σ_i |a_i|·v(r_i(g))` for all `g`, for finitely many complex `a_i` with `Σ_i |a_i| < l` and maps
`r_i : G → G`, satisfies `v ≤ 0`; [ShortProof] `Lib/Weil/Unramified/HeckeTransfer.lean`
(`New.SiegelWeil.maximum_principle`)).

[ShortProof], `Lib/SiegelWeil/Formula/LagrangianZeroTerms.lean` (`New.SiegelWeil.eq_zero_of_le_tsum_zeroTerm`,
`New.SiegelWeil.sum_norm_mul_norm_zeroTerm_le`)

### 2.6 The Siegel–Weil formula in Weil's range

*Origin:* adapted from Weil (1965), the Siegel–Weil formula in Weil's range `m > 2d(n)`: here for unitary pairs
over a CM field with Weil data, a split space of rank `2p` against a locally standard space of rank `m > 2p` of
any signature, for every vector of the Banach space of data, with the Eisenstein series written as the sum of the
zero terms over the rational Lagrangians, with their operator norms summable and with an integrable majorant of
theta uniform in the datum.

*Method of the formal proof:* by induction on the rank of `S`. Let `ℓ = vol([U(T)])·Σ_Λ ev_Λ − ∫_{[U(T)]} θ(ω(1, h)·)`,
a continuous functional invariant under `G(T)` and `Γ_S`, by 2.3 (c) and 2.4. Split off the line spanned by one
vector `k_ι` of the frame; its complement `S₁` has a complete splitting, and the formula holds for `S₁` by
induction. When `x_ι` grows, both the theta integral of `A_x f` and the sum of its zero terms come close to the
corresponding quantities for its zero term along the line, which agree for `S₁`; this holds uniformly for `f` in
compact sets, and so `ℓ(A_x f) → 0`. With the Siegel sets of 2.2 this bounds
`|ℓ(ω(g, 1)f)| − Σ_Λ |ev_Λ(ω(g, 1)vac)|` above, and 2.5 gives `ℓ = 0`. The induction starts at `S = 0`, whose only
Lagrangian is `0` and whose theta functional equals that zero term.

Let `S` be a locally standard space with a complete splitting into `p` hyperbolic planes and `T` a locally standard
space of rank `m > 2p` (any signs). Then:
(a) `Σ_Λ ‖ev_Λ‖ < ∞`, the sum over the rational Lagrangians of `S` of the operator norms of the zero terms;
(b) there is a measurable `N ≥ 0` on `G(T)`, with finite integral over `[U(T)]`, such that
`|θ(ω(1, h)f)| ≤ N(h)·‖f‖` for all `h` and all `f ∈ 𝒮(Hom(S, T))`;
(c) for every `f ∈ 𝒮(Hom(S, T))` the function `h ↦ θ(ω(1, h)f)` is integrable on `[U(T)]` and
`∫_{[U(T)]} θ(ω(1, h)f) dh = vol([U(T)])·Σ_Λ ev_Λ(f)`.

**In standard terms.** For a rational Lagrangian `Λ₀`, `g ↦ ev_{Λ₀}(ω(g, 1)f)` is continuous and has the equivariance
of a section, at `s₀ = (m − p)/2`, of the degenerate principal series of `G(S)` induced from the Siegel parabolic
subgroup of `Λ₀`; the sum `Σ_Λ ev_Λ(ω(g, 1)f)` is its Siegel Eisenstein series at `g`, absolutely convergent, and (c)
for the datum `ω(g, 1)f` says that `∫_{[U(T)]} θ(ω(g, h)f) dh` is `vol([U(T)])` times that Eisenstein series at `g`
(7.1 (a)–(c)). On the images of the Schwartz–Bruhat functions
(`WeilRepresentationsOnBanachSpacesOfData §§10.2 (a), 10.7 (b), (e), 10.8 (b)`) this is Weil's Siegel–Weil formula in
Weil's convergent range, in the form of the Corollary of `ThetaKernelsForUnitaryDualPairs §6.4a`
(`MetaplecticAutomorphicForms §6.4` (Anisotropic Siegel–Weil formula) when `T` is anisotropic), in the case of a CM
field with Weil data, a locally standard split `S` of rank `2p` and a locally standard `T` of rank `m > 2p`, with
`G(T)` acting on the values by substitution (7.1 (d)); given (a) and (b), (c) for all data is equivalent to that case
(7.1 (e)).

For Schwartz–Bruhat data and isotropic `T`, (c) is the case of Weil's range `m > 2d(n)` of
`ThetaKernelsForUnitaryDualPairs §6.4a` (in its notation; here `m > 2p`), whose statement does not contain the
bounds (a) and (b), uniform in the datum, that 4.2 uses.

*Needs:* 2.1, 2.2, 2.3, 2.4, 2.5; `WeilRepresentationsOnBanachSpacesOfData §§3.4, 3.5, 3.6, 6.1` (data, Weil
representation, theta functional); `AdelicUnitaryGroupsAndAlgebraicModularForms §§1.1, 4.3` (quotient measures,
finite volume).

[ShortProof], `Lib/SiegelWeil/Formula/WeilRange.lean` (`New.SiegelWeil.siegel_weil`,
`New.SiegelWeil.integrable_theta_splitWeil`, `New.SiegelWeil.tendsto_integral_theta_zeroTerm_sub`,
`New.SiegelWeil.tendsto_tsum_zeroTerm_sub_integral_theta`, `New.SiegelWeil.bddAbove_norm_sub_tsum_norm_zeroTerm`);
`Lib/SiegelWeil/Formula/LagrangianZeroTerms.lean` (`New.SiegelWeil.theta_normalisedTorus_le`)

### 2.7 Constancy of automorphic functions on a unitary group with a hyperbolic plane

*Origin:* adapted from strong approximation for a simply connected absolutely almost simple group and any nonempty
finite set of places (the theorem of Kneser and Platonov), and from weak approximation, Platonov and Rapinchuk
(1994), Chapter 7: here only the constancy of an automorphic function on the full unitary group of an isotropic
space, under a level at a nonempty set of places, a level away from it and a hypothesis on the torus of a
hyperbolic plane, proved without strong approximation for `SU`.

*Method of the formal proof:* by the level hypotheses, `D(g)` depends only on the components of `g` off `S ∪ S̄`. In
each unipotent radical the rational points together with the points supported on `S ∪ S̄` are dense (additive strong
approximation), so left translation by the radical of every splitting of `W` over `W₀` along one plane fixes `D`.
The group generated by these radicals and the torus contains the quasi-reflections of `W₀`, so the form of Witt's
theorem in the background entry below reaches all of `U(W₀)(E)`; this is (b). For (a), weak approximation in `U(W₀)`
and in `U(W)` and the Iwasawa decomposition along the line of `k` bring every point to a Levi element, where the torus
hypothesis makes `D` constant.

Let `W` be a locally standard space with a splitting `W = H ⊥ W₀` off a hyperbolic plane `H` (with isotropic line
spanned by `k`), `D` a continuous function on `G(W)` left invariant under `Γ_W`, and `S` a nonempty set of finite
places.
(a) Suppose that `D` is right invariant under `G_f^S` and under the points of `K₀` with component `1` at every
place of `S`, and that, if `D` is left invariant under the unipotent radical of the stabiliser of the line of `k`,
then `D(levi(t, g))` does not depend on `t ∈ GL_1(𝔸)` for `g ∈ G(W₀)`. Then `D` is constant.
(b) Suppose that left translation by the radical elements of every splitting of `W` over `W₀` along one hyperbolic
plane (`WeilRepresentationsOnBanachSpacesOfData §5.1`) fixes `D`. Then for every set `R` of finite places and every
`γ ∈ U(W₀)(E)` there is `t ∈ GL_1(𝔸)` such that left translation by the element equal to `levi(t, γ)` at the places
of `R ∪ R̄` and to `1` at all other places fixes `D`.

**In standard terms.** (a) is a consequence of strong approximation for `SU(W)` with respect to one finite place of
`E⁺` below `S`, a set of places that does not contain the archimedean ones (`HermitianFormsAndLattices §2.5 (d)`;
`AdelicAlgebraicGroups §4.2` (Strong approximation and arithmetic closures) states strong approximation for sets of
places that contain the archimedean ones, which does not suffice here, `D` not being assumed invariant under the
points of `SU(W)` at the infinite places): it makes every continuous function on `G(W)` that is left invariant under
`Γ_W` and right invariant under `G_f^S` a function of the determinant, and the torus hypothesis of (a) makes that
function constant (7.3). (a) does not give strong approximation.

Strong approximation for `SU` (`HermitianFormsAndLattices §2.5 (d)`) also gives (a): it makes `D` a function of
the determinant, and the torus hypothesis removes that dependence.

*Needs:* `AdelicUnitaryGroupsAndAlgebraicModularForms §§2.3, 3.6, 3.8` (strong and weak approximation, Iwasawa);
`WeilRepresentationsOnBanachSpacesOfData §5.1` (splittings, Levi and radical elements); ShortGRH background (Witt's
theorem by quasi-reflections: over a field with a nontrivial involution, let `J` be invertible hermitian and `H` a
subgroup of `U(J)` that contains every quasi-reflection `x ↦ x − σ⁻¹(v*Jx)v`, `σ` a unit with `σ + σ̄ = v*Jv`; then
left invertible `X`, `Y` with `X*JX = Y*JY` have `gX = Y` for some `g ∈ H`, so `H = U(J)`; [ShortProof]
`Lib/Adelic/Witt/WittTheorem.lean` (`New.quasiReflection`, `New.witt_of_quasiReflection_mem`)).

[ShortProof], `Lib/SiegelWeil/Formula/StrongApproximation.lean`
(`New.Exchange.IsAutFunction.apply_eq_apply_one`, `New.Exchange.exists_torus_mul_rational_fixes`)

## Layer 3: Siegel's formula, masses and local densities

### 3.1 Definitions: ideal zeta sums, norm-one vectors and the density at a norm

*Origin:* definitions and conventions.

(a) For a subring `R` of a commutative topological ring and `μ ∈ ℕ`, the *ideal zeta sum* is
`ζ_R(μ) = Σ_I [R : I]^{−μ} ∈ [0, ∞]`, over the ideals `I` of `R` of finite index.

(b) For `g ∈ G_f` (rank `n`), the *norm-one vectors of the lattice of `g`* are the `y ∈ E^n` with `y*y = 1` and
`g⁻¹y ∈ Ô^n`.

(c) For a function `Φ₀ ≥ 0` on `𝔸_f^n` and `α ∈ 𝔸_f`, the *density of `Φ₀` at `α`* is
`δ(Φ₀, α) = ∫_z ∫_x Φ₀(x)·ψ_f(z(x*x − α)/2) dx dz`, where `z` runs over the self-adjoint finite adeles (the
finite adeles of `E⁺`) with the Haar measure for which `{z : ψ_f(zÔ) = 1}` has volume `1`, and `x` over `𝔸_f^n`
with the Haar measure for which `Ô` has volume `vol(Ô)` in each coordinate.

[ShortProof], `Lib/SiegelWeil/Mass.lean` (`New.idealZeta`, `New.normOneLatticeVectors`);
`Lib/SiegelWeil/OneVector/SiegelClassSum.lean` (`New.normDensity`)

### 3.2 The Siegel–Weil formula for one vector

*Origin:* adapted from Weil (1965), Siegel's formula in Weil's convergent range for the classical groups,
unitary groups included, here in rank one for `U(V)` acting on the trace form, `n ≥ 3`: here for the hyperbolic
plane against the standard definite space over a CM field with Weil data, for every datum of the Banach space,
with the terms written through the Schrödinger function of the datum, and its Fourier coefficient at a nonzero
norm read off.

*Method of the formal proof:* 2.6 for `S = H` (`p = 1`) and `T` the standard definite space. The isotropic lines
of `H` are the line of `e` and the lines of `e′ + ȷ⁻¹βe`, `β ∈ E⁺` (isotropic because `ȷ` is imaginary), and the
zero term along the line of `e′ + ȷ⁻¹βe` is computed in the model of the opposite splitting, whose values differ
from `Ψ` by the character `ψ(βx*x/2)`. For (d), average the formula over the unipotent elements `n(z)`, `z` in a
fundamental domain of `E⁺` in its adeles: this keeps the term of one norm `α`; the measure of that fundamental
domain gives `|D_E|^{1/4}`.

Let `H` be a hyperbolic plane with basis `e, e′` (`e*e = e′*e′ = 0`, `e*e′ = 1`), `T` the standard definite space
of rank `n ≥ 3`, `ω` as in 2.1 (c), and for `f ∈ 𝒮(Hom(H, T))` let `Ψ(x) = f[x]` (`x ∈ 𝔸^n`) be its values in the
Schrödinger model of the splitting with frame `e`. For `β ∈ E⁺` let `Λ_β` be the line of `e′ + ȷ⁻¹βe`. Integrals
`dx` over `𝔸^n` are for the Haar measure of `𝔸^n` of `AdelicUnitaryGroupsAndAlgebraicModularForms §2.1`.
(a) The isotropic lines of `H` are the line of `e` and the `Λ_β`, `β ∈ E⁺`, and `Σ_β ‖ev_{Λ_β}‖ < ∞`.
(b) `ev_{Λ_β}(f) = ∫_{𝔸^n} Ψ(x)·ψ(βx*x/2) dx`.
(c) `∫_{[U(T)]} θ(ω(1, h)f) dh = vol([U(T)])·(Ψ(0) + Σ_{β ∈ E⁺} ev_{Λ_β}(f))`.
(d) Let `α ∈ E⁺`, `α ≠ 0`, and `P(z) = ∫_{𝔸^n} Ψ(x)·ψ(z(x*x − α)/2) dx` for `z` in the adeles of `E⁺`
(Lebesgue measure at the infinite places, the measure of 3.1 (c) at the finite ones). Then `P` is integrable; for
every `h ∈ G(T)` the sum `σ(h) = Σ_{ξ ∈ E^n, ξ*ξ = α} Ψ(h⁻¹ξ)` converges; `σ` is left invariant under `Γ_T`; and
`∫_{[U(T)]} σ(h) dh = vol([U(T)])·|D_E|^{1/4}·∫ P(z) dz`.
(e) For every Schwartz–Bruhat `Φ₀` on `𝔸_f^n` there is a datum `f` with `Ψ(x) = exp(−Σ_τ (x*x)_τ)·Φ₀(x_f)`.

(c) is also a case of `HermitianFormsAndLattices §6.0a`, which states it for Schwartz–Bruhat functions over any
quadratic extension, as an identity of fibre measures.

*Needs:* 2.1, 2.6; `WeilRepresentationsOnBanachSpacesOfData §§5.3, 5.5, 6.9` (Schrödinger models, data with given
values); `AdelicUnitaryGroupsAndAlgebraicModularForms §2.1` (Haar measures of the adeles); ShortGRH background (`E⁺`,
acting by translation on its adeles, read as the self-adjoint adeles `ℝ^f × 𝔸_f^+` of `E` (`𝔸_f^+` the self-adjoint
finite adeles), has a fundamental domain `Ω × 𝔡`, with `Ω ⊂ ℝ^f` bounded and measurable and `𝔡` the `z ∈ 𝔸_f^+` with
`ψ_f(zÔ) = 1`, such that `|D_E|^{1/4}·vol(Ω) = 1` and `|D_E|^{1/4}·∫_{Ω×𝔡} ψ(zβ/2) dz` is `1` for `β = 0` and `0` for
the other `β ∈ E⁺`, for Lebesgue measure at the infinite places and the measure of 3.1 (c) at the finite ones;
[ShortProof] `Lib/SiegelWeil/OneVector/SiegelClassSum.lean` (`New.exists_fundamentalDomain_real`,
`New.exists_isAddFundamentalDomain_realAdele`)).

[ShortProof], `Lib/SiegelWeil/OneVector/SiegelClassSum.lean` (`New.SiegelWeil.eq_lagrangian_of_notMem_range_shear`,
`New.SiegelWeil.zeroTerm_shearSplitting`, `New.SiegelWeil.siegel_weil_one_vector`,
`New.SiegelWeil.siegel_weil_fourierCoeff`, `New.SiegelWeil.exists_mixedValue_eq_gaussian_mul`)

### 3.3 Siegel's class-sum formula for the vectors of one norm

*Origin:* adapted from Weil (1965), the mean-value form of Siegel's main theorem for the classical groups,
unitary groups included, and its specialisation to definite lattices, Braun (1941), after Siegel (1935): here for
one vector (`k = 1`), the standard definite form of rank `n ≥ 3` over a CM field with Weil data, every level and
every nonnegative invariant locally constant test function, with the singular series left as one adelic Fourier
integral.

*Method of the formal proof:* apply 3.2 (d) to the datum of 3.2 (e) for `Φ₀` and the Gaussian, and compute the
archimedean integral `∫ exp(−x*x)ψ(z x*x/2) dx` and its integral in `z` by Laplace's integral for `1/Γ`, place by
place; a class sum of a function invariant on both sides is `[K₀ : K]` times its integral over the quotient.

Let `n ≥ 3`, `K` a level of `G_f` (rank `n`), `Γ` the image of `U_n(E)` in `G_f`, `Φ₀ ≥ 0` a locally constant
function with compact support on `𝔸_f^n` with `Φ₀(kx) = Φ₀(x)` for `k ∈ K`, and `α ∈ E⁺` with `τ(α) > 0` for every
`τ ∈ Φ`.
(a) For every `h ∈ G_f` the sum `σ(h) = Σ_{x ∈ E^n, x*x = α} Φ₀(h⁻¹x)` converges, and
`classSum_{Γ,K}(σ) = classSum_{Γ,K}(1)·|D_E|^{1/4}·∏_{τ ∈ Φ} (π^n·τ(α)^{n−1}/(n − 1)!)·δ(Φ₀, α)`.
(b) For a function `c` on `G_f` left invariant under `Γ` and right invariant under `K`,
`classSum_{Γ,K}(c) = [K₀ : K]·∫_{[U(T)]} c(h_f) dh` for the standard definite space `T`.

**In standard terms.** (a) is Siegel's formula for one vector of the standard definite lattice, written as a class
sum, with its singular series `δ(Φ₀, α)`: for `Φ₀ = ⊗_v Φ_v` this is `vol(Ô)^n` times the product over the finite
places `v` of `E⁺` of the local densities `δ_v(Φ_v, α)`, the densities at `α` of the images of the measures `Φ_v(x)dx`
under `x ↦ x*x`, which at an inert place where `α` is integral, for the indicator of the standard lattice, are the
hermitian local densities of `GeometryOfNumbersAndQuadraticArithmetic §3.2` (Local densities and Siegel polynomials)
(7.5 (a)–(c)).

`HermitianFormsAndLattices §6.5 (b)` with `k = 1`, together with `§6.0a`, also implies (a), after the
archimedean fibre integral of the Gaussian is computed and the fibre measure at the finite places is identified
with `δ`.

*Needs:* 3.1, 3.2; `AdelicUnitaryGroupsAndAlgebraicModularForms §§1.4, 4.4` (class sums, integration over the
quotient).

[ShortProof], `Lib/SiegelWeil/OneVector/SiegelClassSum.lean` (`New.classSum_eq_mul_normDensity`,
`New.classSum_eq_mul_integral`, `New.integral_gaussian_mul_stdAddChar`, `New.integral_fourierChar_mul_inv_pow`)

### 3.4 Ideal zeta bounds for adelic Gauss sums

*Origin:* particular to this proof: a bound, for all finite places at the same time, for the integral over the
frequencies of the Gauss sums of the standard form over `Ô`, obtained by grouping the frequencies according to their
conductor ideal and summing over ideals with the ideal zeta sum.

*Method of the formal proof:* (a) cut the domain into the pieces where the bound holds for a given ideal and sum
`[R : I]^{−μ}`; the countability of the ideals of finite index follows from the finiteness of `ζ_R(μ)`.
(b) Weyl differencing: the square of the Gauss sum is an integral of a character over a coset of the conductor
lattice. (c) The frequencies with a given conductor ideal of index `y` lie in at most `y` cosets of the
codifferent, one for each character of `Ô/I`; then (a). (d) An ideal of finite index of `Ô` is determined by its
intersection with `O_E`, which has the same index; so `ζ_Ô(s)` is bounded by the value at `s` of the Dedekind zeta
function of `E`, and the logarithm of that value is small for these `s`.

(a) Let `R` be a subring of a commutative ring with `ζ_R(μ) ≤ 2`, `ρ` a measure, `f ≥ 0`, `s` a set, and `(S_I)` sets
indexed by the ideals of `R`. If almost every `x ∈ s` lies in some `S_I` with `I` of finite index and
`[R : I]^μ·f(x)·ρ(S_I) ≤ V`, then `∫_s f dρ ≤ ζ_R(μ)·V`.
(b) For a self-adjoint finite adele `b` and `Γ ∈ 𝔸_f`, let `I(b)` be the largest ideal of `Ô` on which
`v ↦ ψ_f(bv)` is trivial and `G(b) = ∫_{Ô^n} ψ_f(b(w*w − Γ)/2) dw`. Then `[Ô : I(b)]^n·|G(b)|² ≤ vol(Ô)^{2n}`.
(c) If `ζ_Ô(μ) ≤ 2` and `n ≥ 2(μ + 1)`, then `∫ |G(b)| db ≤ ζ_Ô(μ)·vol(Ô)^n`, the integral over the self-adjoint
finite adeles with the measure of 3.1 (c).
(d) If `n·[E : ℚ] ≤ 2^v`, then `ζ_Ô(u + v + 4)^n ≤ 1 + 2^{−u}` for every `u ∈ ℕ`.

*Needs:* 3.1; `AdelicUnitaryGroupsAndAlgebraicModularForms §2.1` (additive character, Haar measures).

[ShortProof], `Lib/SiegelWeil/Mass.lean` (`New.lintegral_le_idealZeta_mul`, `New.gauss_sum_sq_le`,
`New.lintegral_gauss_sum_le_idealZeta`, `New.idealZeta_intAdeles_pow_le`)

### 3.5 The masses of the standard lattices in consecutive ranks

*Origin:* adapted from Gan, Hanke and Yu (2001) and Kirschmer (2016), 4.2.7 and 4.2.9, the exact mass formula, of
which the ratios of consecutive masses are quotients: here the logarithm of the ratio for the standard lattices over
a CM field with Weil data, in large rank, with an explicit error bound in which the field enters only through its
number of infinite places.

*Method of the formal proof:* (a) the norm-one vectors of the lattice of `g` form the intersection of the
`Γ`-orbit and the `gK₀`-orbit of the last basis vector, which the unitary group in rank `j` stabilises; Witt's
theorem identifies the orbits. (b) is 3.3 (a) for the indicator of `Ô^{j+1}` and `α = 1`, with (a). (c) writes the density
as the integral of the Gauss sums of 3.4 (b); the integral frequencies give `vol(Ô)^n`, and the others are bounded
by 3.4 (c) with 3.4 (d).

Let `f` be the number of infinite places of `E`.
(a) For every `j ≥ 0`, the class sum, over `Γ\G_f/K₀` in rank `j + 1`, of the number of norm-one vectors of the
lattice of `g` is `mass(j)`; and `mass(l) > 0` for every `l`.
(b) For `j ≥ 2`, `mass(j) = mass(j + 1)·rd_E^{f/2}·(π^{j+1}/j!)^f·δ(1_{Ô^{j+1}}, 1)`.
(c) If `8f ≤ 2^u`, `n ≥ 4u + 12`, and `δ(1_{Ô^n}, 1) = x·vol(Ô)^n` with `x ≠ 0`, then `|x − 1| ≤ 2^{−u−1}`.
(d) If `8f ≤ 2^u` and `j ≥ 4u + 12`, then
`|log mass(j + 1) − log mass(j) − f·((j + ½)·log rd_E + log j! − (j + 1)·log 2π)| ≤ 2/2^u`.

**In standard terms.** With 7.5 (c), (b) is the exact formula for the ratio of the masses in consecutive ranks,
`mass(j + 1)/mass(j) = rd_E^{f(2j+1)/2}·(j!/(2π)^{j+1})^f·L(j + 1, η^{j+1})`, `η` the quadratic character of `E/E⁺`:
the case of the standard lattices of `HermitianFormsAndLattices §6.4 (b)` (7.5 (d)). The number `x` of (c) is
`L(n, η^n)⁻¹`, and under its hypotheses (d) is equivalent to `|log L(j + 1, η^{j+1})| ≤ 2/2^u`.

`HermitianFormsAndLattices §6.4 (b)` (with `n = j + 1`) also implies (d), with the elementary bound
`|log L(j + 1, η^{j+1})| ≤ f·log ζ(j + 1)`.

*Needs:* 3.1, 3.3, 3.4; `AdelicUnitaryGroupsAndAlgebraicModularForms §§1.4, 3.4, 4.4` (class sums, masses, Witt
over `Ô`).

[ShortProof], `Lib/SiegelWeil/Mass.lean` (`New.classSum_card_norm_one_eq_mass`, `New.mass_pos`);
`Lib/SiegelWeil/OneVector/SiegelClassSum.lean` (`New.mass_eq_mass_succ_mul_normDensity`,
`New.norm_sub_one_le_of_normDensity_eq`, `New.abs_log_mass_ratio_sub_le`)

### 3.6 Definitions: semilocal places and disintegrations along a hermitian form

*Origin:* definitions and conventions.

Let `T` be a finite set of finite places of `E`, stable under conjugation, and `A = E_T = ∏_{w ∈ T} E_w` with its
involution `x ↦ x̄`, its integers `R = ∏_{w ∈ T} O_w`, and a Haar measure giving `R` volume `1`. The *modulus*
`|x|` of `x ∈ A` is the factor by which multiplication by `x` scales the Haar measure. Fix an additive character
`ψ` of `A` for which `R` is self-dual (`ψ(ra) = 1` for all `r ∈ R` if and only if `a ∈ R`), an element `τ ∈ R` with
`τ + τ̄ = 1`, a unit `δ ∈ R^×` with `δ̄ = −δ`, and the Haar measure `ν` on the skew elements `{b : b̄ = −b}` for which
the integral skew elements have volume `1` and `(a, b) ↦ τδ⁻¹a + b` carries `ν ⊗ ν` to the Haar measure of `A`.
For a finite set `κ`, the *lattice* is `R^κ`, and for `g ∈ A^×` and `x₀ ∈ A^κ` the *class* `x₀ + gR^κ`.
A hermitian matrix `J` over `A` is *unimodular* if it lies in `GL_κ(R)`. A family `(l_t)`, indexed by the skew
elements `t`, of measures on `A^κ` *disintegrates the Haar measure along* `x ↦ x*Jx` if it disintegrates it along
`J` as in `HolomorphicDiscreteSeriesOfUnitaryGroups §3.1 (c)`, with the `δ` and `ν` above; so `l_t` lives on the
quadric `x*Jx = δ⁻¹t`. The *Gauss sum of a class* at a frequency `b` is
`G_J(g, x₀; α, b) = ∫_{x₀+gR^κ} ψ(τb(x*Jx − α)) dx`.

The formal proof states the results of 3.7 and 3.8 for an abstract finite place: a locally compact ring with
involution, a compact open subring that is locally a product of valuation rings and contains a skew `i` with
`−i² = 1` and a `c` with `c̄c = −1`, and the data above with the listed properties. `E_T`, with the data that the
second moment of Poincaré series uses (`RemainingAndMainTermsOfSecondMoments §7.2 (d)`), is an instance (`E`
contains `√−1`, and `−1` is a norm of a local unit because `E/E⁺` is unramified), and stated on `E_T` the results
lose nothing that the proof uses.

[ShortProof], `Lib/SiegelWeil/OneVector/FinitePlaceDensity.lean` (`New.Floors.IntegralPlace`);
`Lib/SiegelWeil/OneVector/ResidueClasses.lean` (`New.Floors.IntegralPlace.latticeMultiple`,
`New.Floors.IntegralPlace.residueClass`); `Lib/SiegelWeil/OneVector/ClassGaussSums.lean`
(`New.Floors.IntegralPlace.classGaussSum`)

### 3.7 Local densities by Fourier inversion, and Gauss sums of classes

*Origin:* adapted from the published theory of local densities of hermitian forms (the local density as a
limit of normalised counts, equal to an integral of Gauss sums over the frequencies): here as an identity, or an
inequality, for the fibre measures of a disintegration at a product of finitely many completions, with a Weyl
differencing bound for the Gauss sum of a class.

*Method of the formal proof:* (b) the class is a translate of `gR^κ`, which is compact and open, and multiplication
by `g` scales Haar measure by `|g|^{#κ}`. (a) Restrict `b` to the compact open set `{b : yȳb ∈ R}` for a unit `y` and
integrate over `b` first: orthogonality leaves the volume of that set times the integral of `f` over a thin
neighbourhood of the quadric of `δ⁻¹t`, which the disintegration writes as an average of `∫ f dl_{t′}` over `t′` near
`t`; continuity in `t′` gives the limit as `y → 0`. (c) Write `|G_J|²` as a double integral over the class and
substitute `x′ = x + d` with `d ∈ gR^κ`: for each `d` the integrand is a constant of modulus one times a character of
`x`, whose integral over the class vanishes unless `d ∈ gwR^κ`, by the hypothesis on `w`. (d) is (a) for the
indicator of the class.

Let `A`, `R`, `ψ`, `τ`, `δ`, `ν` be as in 3.6, with `ψ(x + x̄) = 1` for all `x ∈ A`, and let `J` be hermitian.
(a) Let `(l_t)` disintegrate the Haar measure along `x ↦ x*Jx`, let `f ≥ 0` be continuous with compact support on
`A^κ`, and `t` skew. If `b ↦ ∫ f(x)·ψ(τb(x*Jx − δ⁻¹t)) dx` is `ν`-integrable, its integral is `∫ f dl_t`; in any
case the modulus of `∫∫ f(x)·ψ(τb(x*Jx − δ⁻¹t)) dx dν(b)`, taken as `0` when the outer integrand is not
integrable, is at most `∫ f dl_t`.
(b) For `g ∈ A^×` and `x₀ ∈ A^κ`, the class `x₀ + gR^κ` is compact and open of volume `|g|^{#κ}`.
(c) Let `J` be unimodular, `b` skew, and `w ∈ A^×` such that `w⁻¹c ∈ R` for every `c ∈ R` with `gḡbc ∈ R`. Then
`|G_J(g, x₀; α, b)|² ≤ |g|^{#κ}·(|g|·|w|)^{#κ}` for all `x₀`, `α`.
(d) With `(l_t)` as in (a): if `b ↦ G_J(g, x₀; δ⁻¹t, b)` is `ν`-integrable, its integral is `l_t(x₀ + gR^κ)`; in
any case `l_t(x₀ + gR^κ) ≤ ∫ |G_J(g, x₀; δ⁻¹t, b)| dν(b)`.

*Needs:* 3.6; `HolomorphicDiscreteSeriesOfUnitaryGroups §3.1` (disintegrations along a hermitian form).

[ShortProof], `Lib/SiegelWeil/OneVector/FinitePlaceDensity.lean`
(`New.Floors.IntegralPlace.setIntegral_eq_slab`, `New.Floors.Place.IsDisintegration.setLIntegral_slab`,
`New.Floors.IntegralPlace.integral_skewMeasure_eq_toReal_lintegral`,
`New.Floors.IntegralPlace.enorm_localDensity_le`); `Lib/SiegelWeil/OneVector/ResidueClasses.lean`
(`New.Floors.IntegralPlace.volume_residueClass`); `Lib/SiegelWeil/OneVector/ClassGaussSums.lean`
(`New.Floors.IntegralPlace.enorm_classGaussSum_sq_le`, `New.Floors.IntegralPlace.integral_classGaussSum`,
`New.Floors.IntegralPlace.measure_residueClass_le_lintegral`)

### 3.8 Local density bounds by an ideal zeta value

*Origin:* particular to this proof: bounds for the masses of classes on hermitian quadrics at a product of
finitely many completions, uniform in the quadric, by an ideal zeta value of the ring of integers, with no
uniformiser.

*Method of the formal proof:* (a) by 3.7 (c), with `w` governed by the denominator of `gḡb`, sort the frequencies by
the ideal of the `c ∈ R` with `gḡbc ∈ R` and sum with 3.4 (a); the rank `≥ 2μ + 1` makes the exponent of the
index at least `μ`. (b) is (a) with 3.7 (d). (c) the integral frequencies contribute exactly `1` to the mass and to
the bound. (d) a basis with Gram matrix a hyperbolic plane plus the identity exists (it uses an integral `c` with
`c̄c = −1`), and the chart measures of the quadrics of that form, carried by the basis, disintegrate the Haar
measure along `x*x`; then (b) for the class of `0` modulo `u⁻¹R^κ`. (e) change variables by `V*`, and sort by the
ideal `tβR`, `t` the content of the singled-out coordinates.

Let `A`, `R`, `ψ`, `ν` be as in 3.6, with `ψ(x + x̄) = 1` for all `x`, and `μ ∈ ℕ` with `ζ_R(μ) ≤ 2`.
(a) If `J` is unimodular with `#κ ≥ 2μ + 1`, then `∫ |G_J(g, x₀; α, b)| dν(b) ≤ ζ_R(μ)·|g|⁻¹·|g|^{#κ}` for all
`g ∈ A^×`, `x₀`, `α`.
(b) If moreover `(l_t)` disintegrates the Haar measure along `x*Jx`, then
`l_t(x₀ + gR^κ) ≤ ζ_R(μ)·|g|⁻¹·vol(x₀ + gR^κ)` for every skew `t`.
(c) In (b), if `t` is integral, `1 + |l_t(R^κ) − 1| ≤ ζ_R(μ)`.
(d) If `#κ = r + 1` with `r ≥ 2μ + 1`, there is an s-finite kernel `(l_β)` that disintegrates the Haar measure along
`x ↦ x*x` and satisfies `l_β({y : u·y_i ∈ R for all i}) ≤ ζ_R(μ)·|u|^{−r}` for every skew `β` and `u ∈ A^×`.
(e) Let `ι = n ⊔ κ` (a finite set split into two parts), `i ∈ κ`, `#κ = s + k` with `k ≥ μ`, `d = #n + k`,
`V ∈ GL_ι(R)` and `β ∈ A^×`. For a vector `p` over `A` indexed by `κ`, let `c_i(p)` be the volume of
`{c ∈ A : c·p_j ∈ R for all j}` if `p_i` is a unit and `∞` otherwise. Then
`∫_{{w : βw ∈ R^ι}} c_i((V*w)|_κ)^s dw ≤ ζ_R(μ)·|β|^{−d}`.

*Needs:* 3.4 (a), 3.6, 3.7; `HolomorphicDiscreteSeriesOfUnitaryGroups §§3.1, 3.5` (quadric measures and their
disintegration); ShortGRH background (a Hermite form of one column over a product of valuation rings: for `A`, `R` as
in 3.6, every `p ∈ A^ι` and every `i ∈ ι` there is `V ∈ GL_ι(R)` with `p = (V⁻¹p)_i·Ve_i`, `e_i` the `i`-th basis vector;
[ShortProof] `Lib/General/LinearAlgebra/HermiteForm.lean` (`New.IsValuationPair.hermite`)).

[ShortProof], `Lib/SiegelWeil/OneVector/SemilocalDensityBounds.lean`
(`New.Floors.IntegralPlace.lintegral_enorm_classGaussSum_le_idealZeta`,
`New.Floors.IntegralPlace.measure_residueClass_le_idealZeta`,
`New.Floors.IntegralPlace.one_add_enorm_measure_intVectors_sub_one_le`);
`Lib/SiegelWeil/OneVector/StandardQuadrics.lean` (`New.Floors.IntegralPlace.exists_kernel_isDisintegration_le`,
`New.Floors.IntegralPlace.isDisintegration_of_hyperbolic_basis`);
`Lib/SiegelWeil/OneVector/FinitePlaceDensity.lean` (`New.Floors.IntegralPlace.lintegral_contentIndex_pow_le`,
`New.Floors.IntegralPlace.exists_content`)

## Layer 4: The doubling identity and Rallis' inner product formula

### 4.1 Definitions: matrix coefficients, clean data and sharp data

*Origin:* definitions and conventions.

Let `S` (rank `n`, signs `s`) and `T` (rank `m`, signs `t`) be locally standard, `a`, `b` automorphic characters of
`U(1)`, and `⟨ , ⟩` the inner product of the data of `WeilRepresentationsOnBanachSpacesOfData §3.4`. The *matrix
coefficient* of `f, f′ ∈ 𝒮(Hom(S, T))` is `c_b(f, f′; g) = ⟨f′, ω_{1,b}(g, 1)f⟩` for `g ∈ G(S)`.

(a) A datum `F` is *clean* if all signs of `S` are equal, or `F` is the Schrödinger operator of `Ψ` applied to
some datum, where `Ψ` is a Schwartz–Bruhat function on the `m × n` matrices over the finite adeles at a set `A` of
places disjoint from `Ā`, and at some place `w` every matrix `y` with `Ψ(y) ≠ 0` has a left inverse.

(b) A datum `F` is *sharp for a subgroup `J ⊆ G_f` off a set `S₀` of finite places, with mass `c`*, relative to `b`,
if: `⟨F, F⟩ ≠ 0`; `F` lies in the finite part of `𝒮`; for every Fock vector `v` and every set `A` of places disjoint
from `S₀`, `v ⊗ F` is fixed by the projection onto the vacua above `A`; for every `g ∈ G_f` integral at all places
outside `S₀`, `c_b(F, F; g)` is `⟨F, F⟩` if `g ∈ J ∩ K₀` and `0` otherwise; `⟨F, F⟩/[K₀ : J ∩ K₀] = c`; and `v ⊗ F` is
clean for every Fock vector `v`.

(c) A *modulus* `𝔪` is a nonzero ideal of `O_E` prime to its conjugate, as in
`WeilRepresentationsOnBanachSpacesOfData §6.1`; its places are those dividing it, and
`J(𝔪)` is the group of the points of `K₀` that are `1` modulo `𝔪`. For a function `Ψ` on the `m × n` matrices over
`O_E/𝔪`, `Ψ ⊗ vac` is the datum that is `Ψ` (read on the matrices with integral components at the places of `𝔪`) at
the places of `𝔪` and the vacuum elsewhere (`WeilRepresentationsOnBanachSpacesOfData §6.1`). `Ψ` is *sharp for
`J`* relative to `b` if `J(𝔪) ⊆ J ⊆ K₀`, `Ψ ≠ 0`, `J` fixes `Ψ ⊗ vac` under `ω_{1,b}((1, k), 1)`, and there is an
`n × m` matrix `A` over `O_E/𝔪` such that `Ax` is the reduction modulo `𝔪` of an element of `J` whenever
`Ψ(x) ≠ 0`.

[ShortProof], `Lib/SiegelWeil/RallisInner/Doubling.lean` (`New.SiegelWeil.weilMatrixCoeff`,
`New.SiegelWeil.IsClean`, `New.SiegelWeil.IsSharp`); `Lib/SiegelWeil/RallisInner/SharpData.lean`
(`New.SiegelWeil.IsSharpFn`)

### 4.2 The doubling identity in Weil's range

*Origin:* adapted from the Rallis inner product formula (Rallis (1987), *L-functions and the oscillator
representation*; Li (1992); for the unfolding on unitary groups Liu (2011), Proposition 2.3, and Eischen, Harris, Li
and Skinner, 4.1.4): here the doubling identity itself, before any local computation, in Weil's range, for clean
data of the Banach space, with a bound uniform in the data; the boundary orbits are removed by the datum rather than
by cuspidality.

*Method of the formal proof:* the product of the two kernels is the kernel of the doubled pair `(S ⊕ S⁻, T)`,
`S⁻` being `S` with the form `−J`, at the doubled datum. 2.6 for the split space `S ⊕ S⁻` of rank `2n` turns the
integral into a sum over its Lagrangians. For a clean datum only the graphs of the `δ ∈ U(S)(E)` have
a nonzero zero term, each graph occurs once, and the zero term along `{(x, −δx)}` is the matrix coefficient at
`g′⁻¹δg`. The bound
comes from 2.6 (a) and (b) for the doubled pair.

Let `2n < m`, let `a`, `b` be automorphic characters of `U(1)`, and `g, g′ ∈ G(S)`.
(a) If `f` is clean, then for every `f′ ∈ 𝒮(Hom(S, T))`
`∫_{[U(T)]} conj θ(ω_{a,b}(g′, x)f′)·θ(ω_{a,b}(g, x)f) dx = vol([U(T)])·Σ_{γ ∈ Γ_S} c_b(f, f′; g′⁻¹γg)`.
(b) There is a finite `C`, depending only on `S` and `T`, such that for all `a`, `b`, `f`, `f′`, `g`, `g′` both
`∫_{[U(T)]} |θ(ω_{a,b}(g′, x)f′)·θ(ω_{a,b}(g, x)f)| dx` and `Σ_{γ ∈ Γ_S} |c_b(f, f′; g′⁻¹γg)|` are at most
`C·‖ω_{1,b}(g′, 1)f′‖·‖ω_{1,b}(g, 1)f‖`.

**In standard terms.** (a) is the Siegel–Weil formula 2.6 (c) for the doubled pair `(S ⊕ S⁻, T)`, at the doubled datum
of `ω_{1,b}(g, 1)f` and `ω_{1,b}(g′, 1)f′`, together with the evaluation of the zero terms: the left side is the
integral over `[U(T)]` of the theta kernel of the doubled pair at that datum, the formula equates it with
`vol([U(T)])` times the Siegel Eisenstein series of the doubled group at `s₀ = (m − n)/2`, at the identity, and the
right side is the sum of that series over the rational Lagrangians of `S ⊕ S⁻`, in which, for clean `f`, only the
graphs of the rational points of `U(S)` contribute (7.2 (b)). In the doubling method the other Lagrangians are removed
by the cuspidality of the forms instead (`AutomorphicLFunctionsAndLocalFactorsPartII §3.1` (unitary doubling
identity)).

*Needs:* 2.6, 4.1; `WeilRepresentationsOnBanachSpacesOfData §§3.8, 6.3` (doubled datum, kernels of sums).

[ShortProof], `Lib/SiegelWeil/RallisInner/Doubling.lean` (`New.SiegelWeil.integral_conj_theta_mul_theta`,
`New.SiegelWeil.exists_doubling_bound`, `New.SiegelWeil.exists_graph_eq_of_zeroTerm_ne_zero`,
`New.SiegelWeil.zeroTerm_graphSplitting`)

### 4.3 The inner product formula for rapidly decreasing forms

*Origin:* adapted from the Rallis inner product formula (Rallis (1987), *L-functions and the oscillator
representation*; Li (1992); for the unfolding on unitary groups Liu (2011), Proposition 2.3, and Eischen, Harris, Li
and Skinner, 4.1.4): here in Weil's range for automorphic functions of rapid decay on a source group of any
signature, which need be neither cuspidal nor eigenforms, for clean data, as an integral over the whole adelic
group, with no L-value.

*Method of the formal proof:* integrate 4.2 (a) against `conj y′(g′)·y(g)` over `[U(S)] × [U(S)]` and unfold the
sum over `Γ_S`; the bound 4.2 (b), the growth of the matrix coefficients in the height and the rapid decay of `y`,
`y′` justify the exchanges.

Let `2n < m`, `a`, `b` automorphic characters of `U(1)`, `f` a clean datum, `f′` any datum, `Θ_f` the theta lift
from `U(S)` to `U(T)` by the kernel of `ω_{a,b}` at `f`, and `y`, `y′` automorphic functions of rapid decay on
`G(S)`. Then `k(g) = c_b(f, f′; g)·⟨y′, R(g)y⟩` is integrable on `G(S)` and
`⟨Θ_{f′}y′, Θ_f y⟩ = vol([U(T)])·∫_{G(S)} k(g) dg`.

**In standard terms.** The right side is `vol([U(T)])` times the global doubling integral at `s₀ = (m − n)/2`, in its
unfolded form, of the Siegel–Weil section of the doubled datum of `f` and `f′` against the functions `(b ∘ det)⁻¹·y`
and `(b ∘ det)⁻¹·y′`, absolutely convergent (7.2 (c)). The Rallis inner product formula of the literature evaluates
this integral, on cuspidal Hecke eigenforms and factorisable data, as a partial L-value over a partial denominator
times an integral over the points that are integral outside a finite set of places
(`ThetaKernelsForUnitaryDualPairs §6.13a (ii)`, under the integrability hypothesis stated there); 4.3 holds for all
rapidly decreasing automorphic functions and stops before that evaluation, which on Hecke eigenforms is 7.2 (d), (e).
Here *inner product formula* names the identities of 4.3 and 4.5 between the Petersson product of two lifts and an
integral of a matrix coefficient, or the pairing with the series of translates; in the literature the Rallis inner
product formula is the evaluation in L-value form, which 4.5 gives through 7.2 (e) for sharp data and Hecke
eigenforms, with the factors for the real places and for the places of `S₀` given only as the constants `C` and `c`.

On cuspidal Hecke eigenforms, with lattice vectors outside a finite set, the L-value form of
`ThetaKernelsForUnitaryDualPairs §6.13a` and §6.13b evaluates the same integral.

*Needs:* 4.1, 4.2; `AdelicUnitaryGroupsAndAlgebraicModularForms §§4.2, 5.1` (rapid decay, heights, Petersson
product); `WeilRepresentationsOnBanachSpacesOfData §6.4` (theta lifts).

[ShortProof], `Lib/SiegelWeil/RallisInner/Doubling.lean` (`New.SiegelWeil.inner_product_formula`,
`New.SiegelWeil.exists_doubling_le_height`)

### 4.4 Vacuum coefficients of the Weil representation, and sharp data modulo a modulus

*Origin:* particular to this proof: finite data whose matrix coefficient, at the points integral off a finite set,
is a constant times the indicator of a level, which turn the inner product formula into the series of translates
of 1.4.

*Method of the formal proof:* (a) since `g` is integral at `A`, `ω_{1,b}(g, 1)f` is still a vacuum above `A`, and
projecting `ω_{1,b}(γ, 1)` of such a vacuum back onto the vacua above `A` multiplies it by the vacuum coefficient of
`γ`. (b) Let `g` be integral off the places of `𝔪𝔪̄`. If `g ∈ J`, it fixes the datum and the coefficient is `⟨F, F⟩`.
If `g ∉ J`, the supports of `Ψ` and of its translate `x ↦ Ψ(xg)` do not meet, and the coefficient is `0`: for a
common point `x`, the matrix `A` of 4.1 (c) makes `x` and `xg` integral with integral left inverses at the places of
`𝔪`, so `g` is integral there and, being unitary, at the conjugate places; modulo `𝔪` it is then a quotient of two
reductions of elements of `J`, hence it lies in `J`, which contains `J(𝔪)`. The condition on the signs or on `𝔪`
gives cleanness (4.1 (a)) and has no other use. (e) For `k ∈ K₀ ∩ G_f^{S₀ᶜ}`, (a) makes the coefficient at `k` its
vacuum coefficient, of modulus one, times `⟨F, F⟩ ≠ 0`; so `k ∈ J`, and the value `⟨F, F⟩` there forces
`b(det k) = 1`.

Let `S`, `T` be locally standard of ranks `n`, `m`, and `b` an automorphic character of `U(1)` of weight `γ′` and tame
part `ψ′`.
(a) If `f` is fixed by the projection onto the vacua above a set `A` of places, `γ ∈ G_f^A`, and `g ∈ G(S)` has
finite part in `K_A`, then `c_b(f, f; γg) = mc_{m,b}(γ)·c_b(f, f; g)`.
(b) Let `𝔪` be a modulus, and suppose that all signs of `S` agree or that `𝔪` has a place. If `Ψ` is sharp for `J`
relative to `b`, then `Ψ ⊗ vac` is sharp for `J` off the places of `𝔪𝔪̄`, with mass
`(Σ_x |Ψ(x)|²)/#M_{m×n}(O_E/𝔪)/[K₀ : J]`.
(c) If the tame part of `b` is trivial at every place not dividing `𝔪`, and `F ≠ 0` is a function on the `m × n`
matrices over `O_E/𝔪` with `Ax = 1` whenever `F(x) ≠ 0`, for a fixed `n × m` matrix `A`, then `F` is sharp for
`J(𝔪)`; with the hypothesis of (b), `F ⊗ vac` is sharp for `J(𝔪)` off the places of `𝔪𝔪̄`, with mass
`(Σ_x |F(x)|²)/#M_{m×n}(O_E/𝔪)/#GL_n(O_E/𝔪)`.
(d) If `2n ≤ m`, there is an `m × n` matrix `x` over `Ô` with `x*x = 0` some `n` of whose rows form the identity
matrix.
(e) If `F` is sharp for `J` off `S₀`, then `K₀ ∩ G_f^{S₀ᶜ} ⊆ J`, `b ∘ det` is unramified on the complement of `S₀`,
and for `v ⊗ F`, a real point `x`, a point `u ∈ G_f` supported on `S₀ᶜ ∪ conj(S₀ᶜ)` and a point `g ∈ G_f` integral
off `S₀`, the coefficient `c_b(v ⊗ F, v ⊗ F; x·u·g)` is the product of `⟨v, Ω(x)v⟩`, `mc_{m,b}(u)` and `⟨F, F⟩` times
the indicator of `J ∩ K₀` at `g`, where `Ω(x)` is the real Weil representation of the pair on the Fock space at
`(x, 1)`, twisted on `G_∞(S)` by the weight `γ′` of `b` (and by any weight on `G_∞(T)`).

**In standard terms.** In (a), for `f` fixed by the projection onto the vacua above `A`,
`b(det γ)·mc_{m,b}(γ) = Δ(γ)^{−m}` (`γ ∈ G_f^A`) is the value at the block-diagonal point `diag(γ, 1)` of the
Siegel–Weil section of the doubled datum of `f` and `f`, divided, when `⟨f, f⟩ ≠ 0`, by its value `⟨f, f⟩` at `1`: at
the places of `E⁺` below `A` the quotient is the spherical section of the doubling method at `s₀ = (m − n)/2`, for the
stabiliser of the lattice `L ⊕ L` (7.2 (a), (d)).

*Needs:* 1.1, 4.1; `WeilRepresentationsOnBanachSpacesOfData §§3.7, 6.2, 6.3, 6.7` (vacuum projections, integral
points, real action); `IdelicReciprocityCountsAndCyclotomicClassGroups §§7.1, 7.6` (weight and tame part).

[ShortProof], `Lib/SiegelWeil/RallisInner/Doubling.lean` (`New.SiegelWeil.weilMatrixCoeff_mul`,
`New.SiegelWeil.exists_integral_isotropic_frame`); `Lib/SiegelWeil/RallisInner/SharpData.lean`
(`New.SiegelWeil.IsSharpFn.isSharp`, `New.SiegelWeil.isSharpFn_of_mul_eq_one`,
`New.SiegelWeil.isSharp_vacuumDatum_of_mul_eq_one`, `New.SiegelWeil.IsSharp.inf_supportedOn_le`,
`New.SiegelWeil.IsSharp.isUnramifiedOn`, `New.SiegelWeil.IsSharp.weilMatrixCoeff_integrated_mul`)

### 4.5 The inner product formula for sharp data, and injectivity of the theta lift

*Origin:* adapted from the Rallis inner product formula in Weil's convergent range (Rallis (1984), *Injectivity
properties of liftings associated to Weil representations*; Li (1992)) and from Rallis (1984), *Injectivity
properties of liftings associated to Weil representations*, injectivity: here for unitary groups over a CM field
with target rank more than twice the source rank, a source space of any signature, and sharp finite data; the
unramified factor is the series of translates of 1.4, the archimedean factor a nonzero constant that is not
computed, and injectivity holds on the forms of a level with no condition on L-values or local integrals.

*Method of the formal proof:* in the integral of 4.3 over `G(S)`, carry out the integration over the finite points
first. By 4.4 (e) the coefficient factors there, and grouping the finite points by cosets of those integral off `S₀`
turns that integration into `c` times the series of translates of 1.4. By
`AdelicUnitaryGroupsAndAlgebraicModularForms §5.2 (d)`, `⟨y′, R(x)𝒯y⟩ = (conj e(x)/e(1))·⟨y′, 𝒯y⟩` for forms of type
`e`; so the integral over `G_∞(S)` is `Z·⟨y′, 𝒯y⟩` with `Z = ∫ ⟨v, Ω(x)v⟩·conj e(x)/e(1) dx`, which is not `0`
because `v` is an edge (`WeilRepresentationsOnBanachSpacesOfData §7.2`, condition 2). For injectivity, put
`y′ = 𝒯y`, a form of type `e` by 1.4 (b): a vanishing lift of `y` gives `⟨𝒯y, 𝒯y⟩ = 0`, so `𝒯y = 0`, and 1.4 (d)
gives `y = 0`.

Let `S`, `T` be locally standard of ranks `n`, `m` with `2n < m`; let `S₀` be a set of finite places, `J ⊆ G_f` a
subgroup and `F` a datum sharp for `J` off `S₀` with mass `c` relative to `b`, where `a`, `b` are automorphic
characters of `U(1)` of weights `γ`, `γ′`; let `v` be a Fock vector and `Θ` the theta lift by the kernel of `ω_{a,b}`
at `v ⊗ F`; write `𝒯 = 𝒯_{m,b,S₀ᶜ}` for the series of translates of 1.1 off `S₀`, and `Ω` as in 4.4 (e), with the
weight `γ` on `G_∞(T)`.
(a) For automorphic `y`, `y′` of rapid decay on `G(S)` with `y` fixed by `J`, the function
`x ↦ ⟨v, Ω(x)v⟩·⟨y′, R(x)·𝒯y⟩` is integrable on `G_∞(S)` and
`⟨Θy′, Θy⟩ = vol([U(T)])·c·∫_{G_∞(S)} ⟨v, Ω(x)v⟩·⟨y′, R(x)·𝒯y⟩ dx`.
(b) If `y` is automorphic, of rapid decay and fixed by `J`, `x ↦ ⟨v, Ω(x)v⟩` is integrable and `Θy = 0`, then the
real convolution of `y` with `x ↦ ⟨v, Ω(x)v⟩` vanishes.
(c) Let `v` be an edge from type `e` to type `e′` for the weights `γ`, `γ′`. There is `C ≠ 0`, depending only on
`S`, `T`, `v`, `e`, `e′`, `γ`, `γ′`, such that for all `a`, `b` of these weights (any tame parts) and all `F`, `J`,
`S₀`, `c` as above, the lift `L` by `v ⊗ F` from forms of type `e` on `S` to forms of type `e′` on `T` satisfies:
`L` is injective on the forms of type `e` fixed by `J`, and `⟨Ly′, Ly⟩ = C·c·⟨y′, 𝒯y⟩` for every form `y` of type `e`
fixed by `J` and every form `y′` of type `e`.
(d) In the setting of (c) there is `A ≠ 0`, depending only on the same data as `C`, such that in addition
`⟨Ly′, Ly⟩ = Σ_{q ∈ G_f/K_{S₀ᶜ}} A·c·mc_{m,b}(r(q))·⟨y′, R(r(q))y⟩`, the sum converging absolutely.

**In standard terms.** If `y` is moreover an eigenfunction of the spherical Hecke algebras at the places of `E⁺` below
the complement of `S₀`, then `𝒯y = Z^□·y`, with `Z^□` the partial L-value over the partial denominator of the doubling
method at `s₀ = (m − n)/2`, the products over those places, and (c) reads `⟨Ly′, Ly⟩ = C·c·Z^□·⟨y′, y⟩`: an identity
of the form of the Rallis inner product formula in Weil's convergent range
(`ThetaKernelsForUnitaryDualPairs §6.13a (ii)`, for the linear lift), with the factors for the real places and for the
remaining finite places given by the constant `C`, which is not computed, and the mass `c` (7.2 (d), (e)). The
injectivity in (c) holds on all forms of type `e` fixed by `J`, eigenforms or not, with no hypothesis on L-values.

`ThetaLiftsForDefiniteUnitaryGroups §3.4` and `§4.2` state injectivity for definite pairs under an invertibility
or a weight condition; `ThetaKernelsForUnitaryDualPairs §6.13a` (Corollary) states non-vanishing for one eigenform
under local non-vanishing hypotheses.

*Needs:* 1.4, 4.1, 4.3, 4.4; `WeilRepresentationsOnBanachSpacesOfData §§7.2, 7.3` (edges, arrows, lifts of
forms); `AdelicUnitaryGroupsAndAlgebraicModularForms §5.2` (discrete-series types are cusp kernels).

[ShortProof], `Lib/SiegelWeil/RallisInner/SharpData.lean` (`New.SiegelWeil.IsSharp.petersson_lift_eq_integral`,
`New.SiegelWeil.IsSharp.hasSum_integral_weilMatrixCoeff_mul`, `New.SiegelWeil.realConv_eq_zero_of_lift_eq_zero`,
`New.SiegelWeil.exists_petersson_formLift_eq_rallisSeries`, `New.SiegelWeil.rallis_inner_product_cosetTerm`)

### 4.6 A reproducing formula by theta lifts to a large definite group

*Origin:* adapted from Böcherer (1983), *Über die Fourier-Jacobi-Entwicklung Siegelscher Eisensteinreihen*, and Li
(1992): the basis problem by doubling and the Siegel–Weil formula: here as an identity dual to it, at one level and
at each point: integrating a rapidly decreasing automorphic function of level `N` against a holomorphic discrete
series coefficient around a point gives a linear combination of its integrals against theta kernels to a definite
space of rank more than twice the source rank, with coefficients that depend on the point but not on the function;
the coefficients are not computed.

*Method of the formal proof:* fix `x`. Both sides are linear in `φ` and the `Θ_{p,i}` are finite in number; so, by
duality in the space of rapidly decreasing automorphic functions of level `N`, the constants `a_{p,i}` exist as soon
as the left side is `0` for every `φ` whose integrals against all `Θ_{p,i}` vanish. For such `φ`, the spanning
hypothesis on the `Q_{p,i}` and the equivariance of theta lifts make the lift of `φ` by the datum built from `Q₀`
vanish. By `HolomorphicDiscreteSeriesOfUnitaryGroups §6.3 (c)`, the matrix coefficient of the Fock vector of `Q₀`,
holomorphic of weight `u` with conjugate values at `h` and `h⁻¹`, is a constant multiple of `∏_τ hol_{u_τ}`; and by
4.5 (b) the convolution of `φ` with it, whose value at `x` is the left side, is `0`. Products of minors of the
variable matrix, which the group multiplies by principal minors of its elements, give polynomials `Q₀` that meet the
hypothesis.

Let `S` be locally standard of rank `n` and signs `s`, with the coordinates of sign `+1` ordered first; let
`𝔪 = (N)` be a modulus with at least one place; let `c`, `b` be automorphic characters of `U(1)` of weights `γ′`, `γ`
and trivial tame part; let `u` be a weight, `K`-dominant for this order at every infinite place, such that the
holomorphic discrete series coefficient `h ↦ ∏_τ hol_{u_τ}(h_τ)` (`hol_{u_τ}` the model function `m^hol_{u_τ}` of
`HolomorphicDiscreteSeriesOfUnitaryGroups §6.3`, a quotient of products of principal minors) is integrable on
`G_∞(S)`; let `T` be the standard definite space of rank `n′ > 2n` and `e : {1..n} ↪ {1..n′}`; let `Q₀ ≠ 0` be a
polynomial whose Fock vector has holomorphic matrix coefficients of weight `u` for the weights `γ′`, `γ`
(`WeilRepresentationsOnBanachSpacesOfData §6.14`); and for each class `p` of `U(T)` of level `J(N)` let
`Q_{p,1}, …, Q_{p,r}` be polynomials whose Fock vectors span a space containing the translates of that of `Q₀` by
`G_∞(T)` in the real Weil representation with weight `γ′` on `G_∞(T)`. Then for every point `x ∈ G(S)` there are
constants `a_{p,i}` such that for every automorphic function `φ` of rapid decay and level `N` on `G(S)`:
`∫_{G_∞(S)} φ(x·(h, 1))·hol_u(h) dh = Σ_{p,i} a_{p,i}·∫_{[U(S)]} φ(g)·Θ_{p,i}(g) dg`,
where `Θ_{p,i}(g)` is the theta kernel of `ω_{c,b}` for `(S, T)` at `g` and the class `p`, at the datum built from
`Q_{p,i}` at the real places and the indicator of the matrix of `e` modulo `𝔪`.

`ArithmeticVolumesAndIntegralFormsOnUnitaryShimuraVarieties §8.17a` states a spanning theorem for holomorphic cusp
forms by theta series in another range; it does not give this identity.

*Needs:* 4.4, 4.5; `WeilRepresentationsOnBanachSpacesOfData §§2.1, 2.2, 6.1, 6.7, 6.14` (Fock model, holomorphic
data, kernels modulo `𝔪`); `HolomorphicDiscreteSeriesOfUnitaryGroups §§4.1, 6.3` (holomorphic coefficients as
quotients of minors).

[ShortProof], `Lib/SiegelWeil/Reproduction.lean` (`New.Rows.reproducing_formula_modKernel`,
`New.Rows.realConv_holMinorsPi_eq_zero_of_lift_eq_zero`, `New.Rows.lift_modDatum_eq_zero_of_mem_span`,
`New.Rows.polyMatrixCoeff_eq_holMinorsPi_mul_conj`, `New.Rows.prod_variableMinor_mem_holomorphicData`,
`New.Rows.letterPoly_highestVector_mem_holomorphicData`, `New.Rows.realPairWeil_mem_span_pairedDetProd`)

## Layer 5: Singular forms

### 5.1 Definitions: coefficients along the centre of a radical, partial means and shears

*Origin:* definitions and conventions.

Let `W` be a locally standard space of rank `n`. A function `f` on `G(W)` is *automorphic* here if it is continuous
and left invariant under `Γ_W`.

(a) For a splitting `D` of `W` with isotropic frame `k` of `p` vectors, `z_D(M)`, for `M ∈ M_p(𝔸)`, is the element of
the centre of the unipotent radical of the stabiliser of the span of `k` with matrix `1 + k(M − M*)k*ε` (`ε` the
standard form), and the *Fourier coefficient* of `f` along `D` at `T ∈ M_p(E)` is
`f_{D,T}(g) = mean over M ∈ M_p(𝔸)/M_p(E) of ψ(tr(TM))·f(z_D(M)g)`, as in
`WeilRepresentationsOnBanachSpacesOfData §8.9` (there `z_D(M) = n(0, −2ȷM)`).

(b) *The set-up of the partial means.* `A` splits off `W` a hyperbolic plane with isotropic vectors `u` (the frame of
`A`) and `u′` (the frame of the opposite splitting `A′`, which exchanges them), with complement `W₀`; `W₀` is `p`
hyperbolic planes plus a space `W₂`, and `B` splits off `W₀` the frame of the `p` planes; `D` is a splitting of `W`
whose adelic frame is the image `k` of the frame of `B`. For an adelic row `a` of length `p`, the shift `n₊(a)` is the
central element, for the composite of `A′` and `B`, that sends `u` to `u − k a*` and fixes `k`; `n₋(b)` is the same for
`A′` in place of `A`. The *partial mean* is `f⁺(g) = mean over b ∈ M_{1×p}(𝔸)/M_{1×p}(E) of f_{D,T}(n₋(b)g)`,
and `φ⁺_g(a) = f⁺(n₊(a)g)`; `f⁻` and `φ⁻_g` are the same for `A′`.

(c) For an adele `e`, `Stab(e)` is the group of the `g ∈ G(W)` with `g·ek = ek`. For a set `U` of finite places with
idempotent `e_U`, the partial mean is *shear invariant for `U` at `g`* if `f⁺(νg) = f⁺(g)` for every `ν ∈ G(W)` whose
matrix is `1 + ē_U·uc − e_U·a` with `c` a row with `cu = 0` and `a` any matrix (when `U` is disjoint from `Ū`: `ν` is
`1 + uc` on `Ū` and `1` outside `U ∪ Ū`).

(d) For `T ∈ M_p(E)` and an adelic `γ ∈ M_p(𝔸)`, `T[γ] = δ⁻¹γ*Tγ`, where `δ` is the idele `ȷκ_Eκ̄_E` (finite part
`ȷαᾱ`). For a set `S` of finite places, a matrix is *primitive at `S`* if it and a left inverse are integral at the
places of `S ∪ S̄`. A splitting is *adapted* if it is base-adapted as in
`WeilRepresentationsOnBanachSpacesOfData §5.2` (adelic frames orthonormal at the infinite places, integral at the
finite places).

Here *singular*, in the titles of this layer, refers to the shear invariance of the partial means in (c), the
hypothesis of 5.3; in the literature a singular automorphic form is one whose Fourier coefficients along the unipotent
radical of a Siegel parabolic subgroup vanish at every nondegenerate index (Freitag (1991), *Singular Modular Forms
and Theta Relations*), a condition that 5.3 does not assume.

[ShortProof], `Lib/SiegelWeil/SingularForms/CentreCoefficients.lean` (`New.Exchange.IsAutFunction`,
`New.Space.Splitting.lineShift`, `New.Space.Splitting.partialMean`, `New.Space.Splitting.shiftedMean`,
`New.Space.Splitting.frameStabilizer`, `New.Space.Splitting.ShearInvariant`);
`Lib/SiegelWeil/SingularForms/UnimodularCoefficients.lean` (`New.Exchange.siegelBracket`,
`New.Exchange.closureIntegers`, `New.Exchange.closurePart`)

### 5.2 Laws of the partial means, and singularity

*Origin:* adapted from the published theory of singular automorphic forms (Fourier coefficients of singular forms
along the centre of a unipotent radical, and their invariance): here for automorphic functions on an adelic unitary
group, not necessarily holomorphic, with singularity expressed as invariance of the partial means under shears at a
nonempty set of places.

*Method of the formal proof:* (a) the coefficient at `n₋(b)n₊(a)g` is a Fourier coefficient, against a character,
of the periodic function `φ⁺_g`, and exchanging the order of `n₊` and `n₋` multiplies it by `ψ(tr(T·(−b*a)))`; so a
proportionality of the `φ⁺` passes to the coefficients and from them to the `φ⁻`, which play the part of a Fourier
transform of `φ⁺`. (b) `f⁺` agrees with the coefficient of `f` along the composite of `A` and `B` at the block matrix
`0 ⊕ T` on the points concerned; additive strong approximation turns invariance under the shears at the places of
`U` into invariance under the centre of the radical of `A`, and then under the whole radical.

In the set-up of 5.1 (b), let `f` be automorphic and `T ∈ M_p(E)`.
(a) Let `det T ≠ 0`, `g, g′ ∈ G(W)` and `c ∈ ℂ` with `φ⁺_{g′} = c·φ⁺_g`. Then
`f_{D,T}(n₋(b)n₊(a)g′) = c·f_{D,T}(n₋(b)n₊(a)g)` for all adelic rows `a`, `b`, and `φ⁻_{g′} = c·φ⁻_g`. In particular
`φ⁺_g = 0` implies `f_{D,T}(g) = 0` and `φ⁻_g = 0`.
(b) Let `U` be a nonempty set of finite places and `e` an adele, and let `f⁺` be shear invariant for `U` at every
point of `Stab(e)`. If `h` lies in the adelic unipotent radical of the stabiliser of the line of `u` and `g`,
`hg ∈ Stab(e)`, then `f⁺(hg) = f⁺(g)`.

*Needs:* 5.1; `AdelicUnitaryGroupsAndAlgebraicModularForms §2.3` (additive strong approximation);
`WeilRepresentationsOnBanachSpacesOfData §8.9` (Fourier coefficients along the centre).

[ShortProof], `Lib/SiegelWeil/SingularForms/CentreCoefficients.lean`
(`New.Space.Splitting.centreCoeff_eq_mul_of_shiftedMean_eq_smul`, `New.Space.Splitting.shiftedMean_symm_eq_smul`,
`New.Space.Splitting.centreCoeff_eq_zero_of_shiftedMean_eq_zero`, `New.Space.Splitting.shiftedMean_symm_eq_zero`,
`New.Space.Splitting.partialMean_radicalElement_mul`)

### 5.3 Singular forms are governed by their coefficients at unimodular indices

*Origin:* adapted from the theory of singular automorphic forms of Freitag (1991), *Singular Modular Forms and Theta
Relations* (see also Li (1997), *Automorphic forms with degenerate Fourier coefficients*): a singular form is
determined by its Fourier coefficients at indices of maximal rank; here a vanishing criterion for one Fourier
coefficient of an automorphic function on an adelic unitary group whose partial means are shear invariant, from the
vanishing at the points whose normalised index is unimodular at a set of places.

*Method of the formal proof:* by contradiction. If `f_{D,T}(g) ≠ 0`, then `φ⁺_g ≠ 0` by 5.2 (a), and 5.2 (b) lets
one replace `g` by a shifted point, still with `φ⁺ ≠ 0`, at which the lattice at the places of `S ∪ S̄` is
compatible with the two isotropic lines. Among these points one minimises the denominator of `(det T[γ])⁻¹`. There
`φ⁺` and `φ⁻` vanish outside fixed multiples of the lattice, and the minimality makes `T[γ]` primitive at `S`, so the
hypothesis applies and contradicts `φ⁺ ≠ 0`. One auxiliary computation is the factor by which conjugation by
`GL_1(𝔸)` multiplies Haar measure on the hermitian `1 × 1` adelic matrices
(`AdelicUnitaryGroupsAndAlgebraicModularForms §2.4`).

In the set-up of 5.1 (b), with `A` and `B` adapted, let `S` be a set of finite places with idempotent `e_S` of
`S ∪ S̄`, `f` automorphic and right invariant under `K₀ ∩ G_f^S`, `T ∈ M_p(E)` with `det T ≠ 0`, and `U` a nonempty set
of finite places. Suppose that `f⁺` and `f⁻` are shear invariant for `U` at every point of `Stab(1 − e_S)`, and that
`f_{D,T}(X) = 0` for every `X ∈ G(W)` that acts on the frame of `D` by `γ` at the places of `S ∪ S̄` and by `1`
elsewhere, whenever `T[γ]` is primitive at `S`. Then `f_{D,T}(g) = 0` for every `g ∈ Stab(1 − e_S)`.

*Needs:* 5.1, 5.2; `AdelicUnitaryGroupsAndAlgebraicModularForms §§2.4, 3.6` (scaling of Haar measure, Iwasawa
decomposition).

[ShortProof], `Lib/SiegelWeil/SingularForms/UnimodularCoefficients.lean`
(`New.Exchange.centreCoeff_eq_zero_of_unimodular`, `New.Exchange.exists_straightPoint`,
`New.Exchange.map_conjugate_selfAdjoint`)

## Layer 6: Constant terms along a line, Tate integrals and the functional equation

### 6.1 Definitions: the plane set-up, line terms, standard data, cones and products of L-values

*Origin:* definitions and conventions.

Let `W`, `V` be locally standard of ranks `n`, `r`, and `W′ = W ⊥ H`, `V′ = V ⊥ H` with adapted splittings `A` of `W′`
and `X` of `V′` off a hyperbolic plane; `k_A`, `l_A` and `k_X`, `l_X` are their isotropic vectors. Let
`𝔠 = (ν, S)` be a split tame character of weight `μ`.

(a) *Line terms.* For an adele `α` and `β ∈ {+, −}`, `λ_β(α) : 𝒮(Hom(W′, V′)) → 𝒮(Hom(W, V))` is: for `β = +`, the
slice of the splitting of `Hom(W′, V′)` induced by `A` at the value `α·k_X`, followed by the zero term along the line
of `X`; for `β = −`, the Heisenberg translation by `α·l_X ⊗ l_A*`, followed by the zero terms along the lines of `X`
and of `A` (`WeilRepresentationsOnBanachSpacesOfData §§5.5, 6.9`). `λ^ℝ_β(a)`, for `a ∈ (ℂ^Φ)^×`, is the
corresponding map of the Fock spaces at the real places.

(b) *Standard data.* Let `F` be a finite product of non-archimedean local fields with integers `O`, `χ` a character of
`F^×` (extended by `0`), and `s` an integral `b × n` matrix. The *column datum* `Ψ_s(y)`, for `y ∈ M_{n×b}(F)`, is
`χ⁻¹(det(sy))` if `y` is integral and `det(sy) ∈ O^×`, and `0` otherwise; the *row datum* `Φ_s(x)`, for
`x ∈ M_{a×n}(F)` with `a + b = n`, is `χ⁻¹(det(s; x))` if the matrix with the rows of `s` and `x` (in a fixed order)
lies in `GL_n(O)`, and `0` otherwise. Functions `Φ` on `M_{a×n}(F)` and `Ψ` on `M_{n×b}(F)` are *partners* for `χ`
if `Φ` vanishes off the matrices formed by the last `a` rows of some `k⁻¹`, `k ∈ GL_n(O)`, `Ψ` vanishes off the
matrices formed by the first `b` columns of some `k ∈ GL_n(O)`, and `Φ(last rows of k⁻¹) = χ(det k)·Ψ(first columns
of k)`. `χ` is *tame* if `χ⁻¹` on `O^×` is inflated from a primitive character of the residue ring, as in
`WeilRepresentationsOnBanachSpacesOfData §3.9`.

(c) *Theta integrals of `𝔠`.* For a Fock vector `v` and a function `Φ` of `r × n` matrices over `E_S`, `D(v, Φ)` is
the datum on `Hom(W, V)` that is `v` at the real places, `Φ` at `S` and the vacuum elsewhere, and
`I_𝔠(v, Φ)(g) = ∫_{[U(V)]} θ(ω(g, h)D(v, Φ)) dh` with `ω = ω_{c,c}`, `c = ν⁻¹·υ₁^{⌊n/2⌋}`
(`WeilRepresentationsOnBanachSpacesOfData §§6.10, 6.12`). When `r ≤ n`, let
`b = n − r` (the standard data of `(W, V)` and of `(W′, V′)` are taken for a fixed splitting of the coordinates of `W`
into `b` and `r`). The *plane datum* of `v` and an integral `y ∈ M_{b×n}(E_S)` is the datum on `Hom(W′, V′)` with
`v` at the real places and the row datum of `y` composed with the projection of `W′` to `W` at `S` (for `χ = χ_𝔠`);
the *plane constant term* `CT(v, y)(u, g)`, at a
Levi point `(u, g) ∈ GL_1(𝔸) × G(W)` of the stabiliser of the line of `A`, is the mean over the radical of that
stabiliser modulo its rational points of the theta integral of `(W′, V′)` at the plane datum.

(d) *Cones.* A Fock vector is a *Schwartz vector* if all its moments `∫(1 + ‖y‖)^N|v(y)| dy` are finite (here the name
means moments of every order; in the literature a Schwartz vector is an element of the Schwartz space of a Schrödinger
model, the space of the smooth vectors of the Heisenberg representation, and the two notions agree: a Fock vector has
finite moments of every order exactly when it is the image of a Schwartz function,
`WeilRepresentationsOnBanachSpacesOfData §10.4 (a)`). For `z > 0`
and a Fock vector `v` of `Hom(W′, V′)`, `cone_β(z, v) = ∫ ∏_τ (a_τ/|a_τ|)^{2μ_τ}·|a|^z·λ^ℝ_β(a)(Ω(1, κ)v) dκ da`, over
`κ` in the maximal compact subgroup of `G_∞(V′)` and `a ∈ (ℂ^Φ)^×` with Haar measures, `Ω` the real Weil
representation of the pair `(W′, V′)` with weight `0` on `G_∞(W′)` and `⌊rk W′/2⌋ − μ` on `G_∞(V′)`;
`cone = cone_+` and `dualCone = cone_−`.

(e) *L-values.* `L♯(z) = |L^S(z, ν)|·∏_{w ∈ S} q_w^{z − 1/2}` for real `z ≥ 1`; for any set `S` and character `ν`,
`L_*(e) = ∏_{w ∈ S} q_w^{e²}·∏_{z=1}^{e} |L^S(z, ν)|²` for `e ∈ ℕ`, extended by `L_*(−e) = L_*(e)⁻¹`.

[ShortProof], `Lib/SiegelWeil/Tower/LineTerms.lean` (`New.Exchange.lineTerm`);
`Lib/SiegelWeil/Tower/LineGaussSums.lean` (`New.stdColDatum`, `New.stdRowDatum`);
`Lib/SiegelWeil/Tower/LargeSideConstantTerm.lean` (`New.Exchange.planeDatum`, `New.Exchange.planeConstantTerm`);
`Lib/SiegelWeil/Tower/RealConeIntegral.lean` (`New.Exchange.coneIntegrand`, `New.Exchange.cone`,
`New.Exchange.dualCone`); `Lib/SiegelWeil/Tower/FiniteTateIntegral.lean` (`New.Exchange.lSharp`,
`New.Exchange.lValueProd`, `New.Exchange.lValueProdInt`)

### 6.2 Products of partial L-values, and Tate's integral at the finite places

*Origin:* adapted from the tower property of theta lifts for constant terms along an isotropic line (Rallis (1984),
*On the Howe duality conjecture*, Theorem I.1.1; for unitary groups Wu (2013), *Irreducibility of theta lifting for
unitary groups*, Proposition 3.1): here Tate's integral over the finite ideles of the base change of a split tame
character against the finite factor of the standard data along the line, and the recursion of the products of
L-values that the constant terms produce.

*Method of the formal proof:* (a) the weight of `ν` is nonzero, so `ν̃` is a nontrivial Hecke character of nonzero
type, and `IdelicReciprocityCountsAndCyclotomicClassGroups §§8.4, 8.5` give continuity and non-vanishing of its partial
Euler product on `[1, ∞)`. (b) is a computation. (c) The finite factor satisfies the conditions of Tate's integral for
characters of a given type: support, invariance under unit ideles, and local constancy; the integral is then the
partial L-value. (d) The sum over `E^×` turns the integral over the idele classes into one over all ideles, which `ρ`
and the Haar measure of `(ℂ^Φ)^×` split into a product, for either choice of `a′`.

Let `𝔠 = (ν, S)` be a split tame character, and `χ_𝔠` its tame character on `E_S`.
(a) `L^S(x, ν) ≠ 0` and `L♯(x) > 0` for real `x ≥ 1`, and `x ↦ L^S(x, ν)` is continuous on `[1, ∞)`.
(b) `L_*(e + 1) = L♯(e + 1)²·L_*(e)` for `e ∈ ℕ`, and `L_*(e) > 0` for every integer `e`.
(c) Let `λ_fin(a)`, for a finite idele `a`, be `χ_𝔠((ā)_S)/χ_𝔠(a_S)` if `a` is integral outside `S ∪ S̄` and `a_S`,
`(ā)_S` are units, and `0` otherwise. For real `x > 1` and every Haar measure `ρ` on the finite ideles, the function
`a ↦ λ_fin(a)·ν̃(a)·|a|^x` is `ρ`-integrable and its integral is `L^S(x, ν)·ρ(Ô^×)`.
(d) Fix a Haar measure `da` of the ideles and a Haar measure of `(ℂ^Φ)^×`. Let `a′` denote `a` or `ā⁻¹` (one choice
throughout), and let `ρ` be an s-finite measure on the finite ideles such that `a ↦ (a′_∞, a′_f)` carries `da` to the
product of the Haar measure of `(ℂ^Φ)^×` and `ρ`. Let `(Y₁, m₁)`, `(Y₂, m₂)` be measure spaces with `m₁`, `m₂`
s-finite, `Z` an integrable function on `Y₁ × Y₂ × (ℂ^Φ)^×` (for `m₁`, `m₂` and the Haar measure), `ζ` a
`ρ`-integrable function on the finite ideles, and `c` an idele. Then
`Θ(a, y₁, y₂) = Σ_{ξ ∈ E^×} Z(y₁, y₂, (ξa′c)_∞)·ζ((ξa′c)_f)` is integrable on `(𝔸^×/E^×) × Y₁ × Y₂` for the product
of the quotient measure of `da` (by the counting measure of `E^×`), `m₁` and `m₂`, and its integral is
`(∫Z)·(∫ζ dρ)`.

*Needs:* 6.1, 6.4 (d); `IdelicReciprocityCountsAndCyclotomicClassGroups §§8.2, 8.4, 8.5` (Tate's integral, continuity
and non-vanishing on `[1, ∞)`); `AdelicUnitaryGroupsAndAlgebraicModularForms §§1.1, 2.1, 2.4` (ideles, modules, quotient
measures).

[ShortProof], `Lib/SiegelWeil/Tower/FiniteTateIntegral.lean` (`New.Exchange.SplitTameChar.L_ne_zero`,
`New.Exchange.lSharp_pos`, `New.Exchange.continuousOn_L`, `New.Exchange.lValueProd_succ`,
`New.Exchange.lValueProdInt_pos`, `New.Exchange.lineFinFactor`, `New.Exchange.integral_finTateIntegrand`,
`New.Exchange.integral_ideleClass_tsum`)

### 6.3 The terms along a line: Levi equivariance and Poisson's formula

*Origin:* adapted from the tower property of theta lifts for constant terms along an isotropic line (Rallis (1984),
*On the Howe duality conjecture*, Theorem I.1.1; for unitary groups Wu (2013), *Irreducibility of theta lifting for
unitary groups*, Proposition 3.1): here the two families of terms along the line in the two mixed models of one
hyperbolic plane of `Hom(W′, V′)`, their equivariance under the Levi subgroups, and Poisson's formula between them.

*Method of the formal proof:* the lines of `A` and `X` span a hyperbolic plane in `Hom(W′, V′)`. Take the splitting
of `Hom(W′, V′)` over this plane plus `Hom(W, V)`: each side of (a) is the expansion
(`WeilRepresentationsOnBanachSpacesOfData §5.5 (c)`), in one of the two mixed models of the plane, of `θ` at the zero
term of `f` for that splitting, so the two sides agree. (b) follows from the laws of zero terms and slices under Levi
points (`WeilRepresentationsOnBanachSpacesOfData §6.9 (b), (c)`).

In the set-up of 6.1:
(a) For `f ∈ 𝒮(Hom(W′, V′))` and either `β`, `Σ_{ξ ∈ E} θ(λ_+(ξ)f) = Σ_{ξ ∈ E} θ(λ_β(ξ)f)`.
(b) Let `u, c` be ideles with `u = 1` or `rk W = rk V`, `x = cu`, `g ∈ G(W)`, `h ∈ G(V)`, and let `a` be an automorphic
character of `U(1)`. Applying the Levi point that acts by `u` on the line of `A` and by `g` on `W`, and the Levi point
that acts by `c⁻¹` on the line of `X` and by `h` on `V`, in `ω_{a·υ₁, a·υ₁}` for `(W′, V′)`, and then `λ_β(ξ)`, gives
`|u|^{r+1}/(χ_{a,n}(x)·|x|^{n/2 + (0 if β = + else 1)})` times `ω_{a,a}(g, h)λ_β(ξ′)f`, where `ξ′ = ξx` if `β = +` and
`ξ′ = ξ·(x̄)⁻¹` otherwise, and `χ_{a,n} = ã·υ^{−n}` is the Hecke character attached to `a` in rank `n`.

*Needs:* 6.1; `WeilRepresentationsOnBanachSpacesOfData §§5.5, 6.9` (mixed models, slices, theta expansion).

[ShortProof], `Lib/SiegelWeil/Tower/LineTerms.lean` (`New.Exchange.tsum_lineTerm`,
`New.Exchange.lineTerm_pairWeil_levi`, `New.Exchange.lineTerm_eq_slice`, `New.Exchange.frameAt_lineTermSplitting`)

### 6.4 The constant term of a theta integral, unfolded along isotropic lines

*Origin:* adapted from the tower property of theta lifts for constant terms along an isotropic line (Rallis (1984),
*On the Howe duality conjecture*, Theorem I.1.1; for unitary groups Wu (2013), *Irreducibility of theta lifting for
unitary groups*, Proposition 3.1): here the constant term along the line of `A` of a theta integral over `[U(V′)]`,
expanded over the rational vectors of `V′` and reduced, through the single orbit of isotropic lines, to an integral
over the Levi points of the stabiliser of one line, modulo their rational points, and over a maximal compact
subgroup.

*Method of the formal proof:* (a), (b): expand the kernel over the rational vectors of `V′` and take the mean over
the radical term by term; only isotropic vectors survive, and the bound on the kernel justifies the exchange with the
integral over `[U(V′)]`. (c): by Witt's theorem (`HermitianFormsAndLattices §1.1 (b)`) the nonzero isotropic vectors
lie on lines of one `U(V′)(E)`-orbit, that of the line of `X`; unfolding over this orbit
(`AdelicUnitaryGroupsAndAlgebraicModularForms §1.3`) leaves the quotient by the rational stabiliser of that line, and
the Iwasawa decomposition of `G(V′)` along that line (§3.6 there) supplies the variables `(u, h)` and `κ`. (d):
`E^×` is discrete in the ideles, and the majorant is a product over the infinite places of integrable functions of
one variable.

Let `W′ = W ⊥ H` be split by `A`, `V′` locally standard of rank `r′`, and `a`, `b` automorphic characters of `U(1)`.
(a) For `f ∈ 𝒮(Hom(W′, V′))`, the constant term at the identity along the line of `A` of the theta kernel of `f` (its
mean over the radical of the stabiliser of that line modulo the rational points) is the sum, over the rational
vectors `x` of `V′`, of terms `CT_x(f)` that vanish unless `x` is isotropic (for isotropic `x`, `CT_x(f)` is the mean
of the term of `x` in the kernel over the radical modulo its centre and its rational points).
(b) If the kernel of `f` grows at most like a power of the height on `G(W′)`, uniformly on `G(V′)`, the constant term
at `g` along `A` of the theta integral of `f` is `∫_{[U(V′)]} Σ_x CT_x(ω_{a,b}(g, h)f) dh`.
(c) Let `V′ = V ⊥ H` be split by `X`, with `rk V = r`. There is `c ≠ 0`, depending only on `A` and `X`, such that for
all `a`, `b`, `f` and `g ∈ G(W′)`: if `CT_0(ω_{a,b}(g, h)f) = 0` for all `h` and
`Θ((u, h), κ) = |u|^{r+1}·Σ_{ξ ∈ E^×} θ(λ_+(ξ)(ω_{a,b}(g, ℓ(u, h)κ)f))` is integrable for the product of the quotient
measure on `𝔸^×/E^×`, the quotient measure on `[U(V)]` and Haar measure on the maximal compact subgroup `K′` of
`G(V′)` (with `ℓ(u, h)` the Levi point of the stabiliser of the line of `X`), then
`∫_{[U(V′)]} Σ_x CT_x(ω_{a,b}(g, h)f) dh = c·∫ Θ`.
(d) The image of `E^×` in the ideles of `𝔸` is discrete, and `a ↦ ∏_τ (1 + log²|a_τ|)⁻¹` is integrable on `(ℂ^Φ)^×`
for Haar measure.

*Needs:* 6.1, 6.3; `AdelicUnitaryGroupsAndAlgebraicModularForms §§1.3, 3.6` (orbit unfolding, Iwasawa
coordinates); `HermitianFormsAndLattices §1.1 (b)` (Witt's theorem); `WeilRepresentationsOnBanachSpacesOfData §6.4`
(growth of theta kernels).

[ShortProof], `Lib/SiegelWeil/Tower/ConstantTerm.lean` (`New.Exchange.constTermAt`,
`New.Exchange.hasSum_constTermAt`, `New.Exchange.integral_thetaIntegral_lineRadical`,
`New.Exchange.lintegral_radicalHaar_conj_lineLevi`, `New.Exchange.exists_unfold_constant_term`);
`Lib/SiegelWeil/Tower/PrincipalIdeles.lean` (`New.principalAdeleUnits`,
`New.integrable_prod_inv_one_add_log_sq`)

### 6.5 Standard partners and the line terms of standard data

*Origin:* particular to this proof: the standard row and column data of an integral matrix at a set of split places
are partners, and the line terms carry the standard data of the pair `(W′, V′)` to a Gauss sum times the standard data
of `(W, V)`.

*Method of the formal proof:* (a) if `(s; x)` is `g ∈ GL_n(O)`, take `k = g⁻¹`; the values compare through
`χ(det k)`. (b) `WeilRepresentationsOnBanachSpacesOfData §6.10 (b)` applies to `λ_β`: in the adapted frame of the
splitting behind it, the row datum of `p·I′` is the row datum of `p` times a function of the remaining coordinates,
the indicator of `O` in each of them except the coordinate of the line, where it is `χ⁻¹` on `O^×` times `χ⁻¹(a_S)`
(zero unless `a_S` is a unit) and a constant of modulus one. That coordinate contributes the tame Gauss sum of
`WeilRepresentationsOnBanachSpacesOfData §3.9`, which gives the factor `γ·χ(ϖ·(ā)_S)` and the condition that
`ϖ·(ā)_S` be a unit; each other coordinate contributes the volume `1` of `O`.

(a) In 6.1 (b), if `s` is integral, the row datum `Φ_s` and the column datum `Ψ_s` are partners for `χ`; if moreover
`χ` is tame, both are locally constant with compact support (`Ψ_s` supported on matrices with a left inverse).
(b) In the set-up of 6.1, for a set `S` of places disjoint from `S̄`, read through a map `π` of `𝔸_f` onto a finite
product `F` of local fields that reads the components at `S`: there are nonzero constants `l_+`, `l_−` such that for
every tame `χ` there is `γ ∈ ℂ` with `|γ|² = 1/#(O/ϖ)` and, for every integral `p ∈ M_{b×n}(F)` (`b = n − r` as in
6.1 (c), so `r ≤ n`), `β`, Fock vector `v` and adele `x`, with `a = x·κ_E⁻¹`: `λ_β(x)` sends the datum with `v` at the real places and the row datum of
`p·I′` at `S` (`I′` the coordinates of `W` in the frame of `A`) to `l_β·γ·χ⁻¹(a_S)·χ(ϖ·(ā)_S)` times the datum with
`λ^ℝ_β(a_∞)v` at the real places and the row datum of `p` at `S` when the finite part of `a` is integral outside
`S ∪ S̄` and `a_S`, `ϖ·(ā)_S` are units of `O`, and to `0` otherwise.

*Needs:* 6.1, 6.3; ShortGRH background (for `O` in `F` as in 6.1 (b), an `n × b` matrix over `F` is the block of the
first `b` columns of some `k ∈ GL_n(O)` exactly when it is integral with an integral left inverse; [ShortProof]
`Lib/General/LinearAlgebra/PartnerAlgebra.lean` (`New.IsValuationPair.exists_firstCols_iff`));
`WeilRepresentationsOnBanachSpacesOfData §§3.9, 6.10` (tame Gauss sums, data read at places).

[ShortProof], `Lib/SiegelWeil/Tower/LineGaussSums.lean` (`New.areMatched_stdRowDatum_stdColDatum`,
`New.stdColDatum_mem_schwartzBruhat`, `New.stdRowDatum_mem`, `New.Exchange.exists_lineTerm_localDatum`)

### 6.6 Shears and the Fourier coefficients of equivariant lifts

*Origin:* particular to this proof: invariance of a linear form under shears passes to the standard column datum, and
the Fourier coefficients along the centre of a radical of an equivariant lift of local data are linear functionals of
the datum that transform under shears by an additive character.

*Method of the formal proof:* (a) `Λ` does not change when its argument is replaced by its mean over the shears by
integral `z`, and `Ψ_s` and its composite with `y ↦ y + u·r·y` have the same mean. (b) The coefficient depends
linearly on the datum, so it extends from `M` to a linear functional on all functions; a shear of the datum by `z`
along the frame at `x` amounts to translating by a central element `z_H`, under which the coefficient picks up the
factor `ψ(tr(Tz))`.

(a) Let `F` be a finite product of local fields with integers `O`, `χ` a character, `s` an integral `b × n` matrix,
`u` a column and `r` a row with `su = 0` and `ru = 0`, `M` a space of locally constant compactly supported functions,
and `Λ` a linear form on `M` invariant under the shears `Ψ ↦ Ψ(y + u·z·s·y)`. If the column datum `Ψ_s` and its
composite with `y ↦ y + u·r·y` lie in `M`, `Λ` takes the same value on them.
(b) Let `X` be locally standard of rank `m`, `𝔠 = (ν, S)` a split tame character, and `M` a space of functions of
`m × b` matrices over `E_S`. A linear map `𝒟` from such functions to functions on `G(X)` is an *equivariant lift on `M`*
if every `Ψ ∈ M` is locally constant with compact support contained in the set of matrices that have a left inverse,
`𝒟Ψ` is automorphic for `Ψ ∈ M`, for `g ∈ G_f` supported on `S ∪ S̄` the translate `y ↦ Ψ(g_S y)` lies in `M` and
`𝒟(that translate)(x·g) = 𝒟Ψ(x)/(υ·|·|^{1/2})(det g_S)^b`, and `𝒟Ψ` is right invariant under the points of `K₀` with
component `1` at `S`. For such `𝒟`, a splitting `H` of `X` with frame of `p` vectors, `T ∈ M_p(E)` and `x ∈ G(X)`, there
is a linear functional `Λ` on all functions with `Λ(Ψ) = (𝒟Ψ)_{H,T}(x)` for `Ψ ∈ M`; and the shear
`Ψ′(y) = Ψ(y + (x⁻¹k_H)_S·z·(k_H*ε·x)_S·y)` of `Ψ ∈ M` by `z ∈ M_p(E_S)` lies in `M` and has
`Λ(Ψ′) = ψ_S(tr((δ⁻¹T)_S·z))·Λ(Ψ)`, with `k_H` the adelic frame of `H`, `ε` the standard form of `X` (as in 5.1 (a)),
`ψ_S` the additive character at `S` and `δ` as in 5.1 (d).

*Needs:* 5.1, 6.1; `WeilRepresentationsOnBanachSpacesOfData §6.10` (additive character read at places).

[ShortProof], `Lib/SiegelWeil/Tower/LineGaussSums.lean` (`New.Exchange.map_shear_stdColDatum_eq`,
`New.Exchange.IsEquivariantLift.exists_linear_centreCoeff`, `New.Exchange.IsEquivariantLift.centreCoeff_shear`);
`Lib/SiegelWeil/SingularForms/CentreCoefficients.lean` (`New.Exchange.IsEquivariantLift`)

### 6.7 The real cone integral and the test vector

*Origin:* adapted from the tower property of theta lifts for constant terms along an isotropic line (Rallis (1984),
*On the Howe duality conjecture*, Theorem I.1.1; for unitary groups Wu (2013), *Irreducibility of theta lifting for
unitary groups*, Proposition 3.1), with Tate (1950) for the integrals along the line: here the integral at the real
places, after Tate, of the real line terms of a Fock vector against a character of `(ℂ^Φ)^×` and over the maximal
compact subgroup of `G_∞(V′)`, with finite moments of every order, and a test vector for which the integrand is an
explicit function times the vacuum.

*Method of the formal proof:* (a) the moments of the real line terms are bounded by powers of `|a|` and of
`1 + log²|a|`, which are integrable for `z > 0` by 6.4 (d). (b) The monomial and the vacuum are eigenvectors of the
elements that preserve the lines of each sign, and for the weight `1 − m` their two characters are inverse to each
other. The line term of `t_m` is evaluated in a frame adapted at the point `1`.

In the set-up of 6.1:
(a) For `z > 0`, either `β` and a Schwartz vector `v`, the integrand of `cone_β(z, v)` is continuous, integrable in
every moment, and `cone_β(z, v)` is a Schwartz vector.
(b) Let `m` be a weight (`m_τ ∈ ℕ`), `W′` a hyperbolic plane (`W = 0`) whose signs take each value `±1` once, and
`t_m` the Fock vector of `∏_τ ∏_i X_{τ,i,i}^{m_τ}` on `Hom(W′, W′)` (a Schwartz vector). It is fixed by the elements of
`G_∞(W′)` that preserve the lines of each sign, in the real Weil representation with weights `0` and `1 − m`; and for
`A = X` its cone integrand for `μ = m` at `(κ, a)` is `exp(−Σ_τ |a_τ|²)·|a|^z·∏_τ |a_τ|^{2m_τ}` times the vacuum, for either `β`
and every real `z`.

*Needs:* 6.1, 6.4 (d); `WeilRepresentationsOnBanachSpacesOfData §§2.1, 2.2, 2.3` (Fock model, polynomial vectors,
moments).

[ShortProof], `Lib/SiegelWeil/Tower/RealConeIntegral.lean` (`New.Exchange.continuous_coneIntegrand`,
`New.Exchange.integrable_coneIntegrand`, `New.Exchange.isSchwartzVector_integral_coneIntegrand`);
`Lib/SiegelWeil/Tower/TestVector.lean` (`New.Exchange.tateVector`, `New.Exchange.isSchwartzVector_tateVector`,
`New.Exchange.realPairWeil_tateVector`, `New.Exchange.coneIntegrand_tateVector`)

### 6.8 The constant term on the side of the large space

*Origin:* adapted from the tower property of theta lifts for constant terms along an isotropic line (Rallis (1984),
*On the Howe duality conjecture*, Theorem I.1.1; for unitary groups Wu (2013), *Irreducibility of theta lifting for
unitary groups*, Proposition 3.1), with Tate's integral along the line: here, on the standard data of a split tame
character, the constant term along the new isotropic line is one term, a constant of size `C·L♯(z + 1)` times a
theta integral for the pair with one plane removed, in both ranges `rk V − rk W/2 ≥ 0` and `< 0`, including the
boundary cases, with only values of the L-function at real points `≥ 1`.

*Method of the formal proof:* the slice at `0` of the plane datum along `A` vanishes, which gives the hypothesis
`CT_0 = 0` of 6.4 (c); so the constant term is an integral over the idele classes of sums of line terms, the value at
`x = rk V − n/2 + 1` of a zeta integral `𝒵(x)` in which the idele variable enters through `|a|^x`. Both sums of
6.3 (a) run over the nonzero points of the line only, which keeps `𝒵` free of poles: it is analytic for every real
`x`. For `x > 1`, 6.5 (b) and 6.3 (b) factor the integrand into the finite factor of 6.2 (c), the real cone integrand
and a theta integral of `(W, V)`, and 6.2 (d), (c) evaluate it. Both sides are continuous in `x` on `[1, ∞)`: `𝒵` is
analytic, `L^S` is continuous by 6.2 (a), and the theta integral at `cone_β(x, v)` is an integral against `|a|^x`
that converges for every `x > 0` (6.7 (a)), hence is continuous in `x`; so the identity extends to `x ≥ 1`. (c) and
(d) read (b) at `x = z + 1`, on the two sides of Poisson's formula.

Let `W`, `V`, `W′`, `V′`, `A`, `X` be as in 6.1 with `rk W = n` even and `rk V ≤ n`, let `b = n − rk V ≥ 0` as in
6.1 (c) (the standard data are attached to a splitting of the `n` coordinates of `W` into `b` and `rk V`; so in (c)
`n/2 ≤ rk V ≤ n`, and in (d) `rk V < n/2`), and let `μ` be a weight with `μ_τ > 0`.
(a) For a Fock vector `v` and an integral `z ∈ M_{b×n}(E_S)`, the datum `D(v, Φ_z)` of `(W, V)` (with `Φ_z` the row
datum of `z` for `χ_𝔠`) is fixed by the points `(1, k)`, `k ∈ K₀` of `G(V)`, in `ω_{c′,c″}` with `c′ = ν⁻¹·υ₁^{n/2}` and
any `c″`; and `ν·υ₁^{⌊n′/2⌋} = ν·υ₁^{n/2}·υ₁^{p}` when `W′` (of rank `n′`) is `W` plus `p` hyperbolic planes.
(b) There are `C_± > 0` such that for every split tame character `𝔠 = (ν, S)` of weight `μ` there are `ε_±` with
`|ε_±| = C_±` such that, for every Schwartz vector `v` of `Hom(W′, V′)`, every integral `y ∈ M_{b×n}(E_S)` and every
Levi point `(u, g)` with `u = 1` or `rk V = rk W`, there is a function `𝒵` analytic on `ℝ` with
`CT(v, y)(u, g) = 𝒵(rk V − n/2 + 1)` and, for real `x ≥ 1`,
`𝒵(x) = ε_+·|κ_E|^x·∏_{w ∈ S} q_w^{x−1/2}·L^S(x, ν)·I_𝔠(cone_+(x, v), Φ_y)(g)` and
`𝒵(1 − x) = ε_−·|κ_E|^x·∏_{w ∈ S} q_w^{x−1/2}·L^S(x, ν)·I_𝔠(cone_−(x, v), Φ_y)(g)`, where `Φ_y` is the row datum of `y`
for `χ_𝔠`.
(c) If `rk V − n/2 = z ≥ 0`, there is `C > 0` such that for every `𝔠` of weight `μ` there is `γ` with
`|γ| = C·L♯(z + 1)` and `CT(v, y)(u, g) = γ·I_𝔠(cone(z + 1, v), Φ_y)(g)` for all `v`, `y`, `(u, g)` as in (b).
(d) If `rk V − n/2 = −(z + 1) < 0`, the same holds with `dualCone(z + 1, v)` in place of `cone(z + 1, v)`.

**In standard terms.** (b)–(d) have the form of the tower property of theta integrals for the constant term along an
isotropic line (Rallis (1984), *On the Howe duality conjecture*, Theorem I.1.1; for unitary groups Wu (2013),
*Irreducibility of theta lifting for unitary groups*, Proposition 3.1): the constant term along the line of `A` in
`W′` of the theta integral over `[U(V′)]` is the sum of a theta integral of the pair `(W, V′)` at the zero term of the
datum along that line and of a theta integral of the pair `(W, V)` at a Tate integral of the datum along the line of
`X`. `ThetaKernelsForUnitaryDualPairs §5.7c` states this, on the images of Schwartz–Bruhat functions
(`WeilRepresentationsOnBanachSpacesOfData §§10.2 (a), 10.4 (b)`), in two ranges of `z₀ = rk V − n/2 + 1`: in (i), with
its cone at `z₀`, for `z₀ ≥ 1 + r_∞`, where `r_∞ ≥ 1` is the largest Witt index of `V′` at a real place, and for data
finite under a maximal compact subgroup at the real places; in (ii), with its dual cone at `1 − z₀`, for `1 − z₀ ≥ 2`
and data regular at a finite split place where the character is nontrivial, as the plane data are at the places of
`S`. For the plane datum the first of the two terms vanishes, because the slice at `0` of the plane datum along `A` is
`0`, so that the constant term is the second term, and (c) and (d) evaluate it, with the size of the constant. They do
so for every `rk V ≤ n`, that is also for `z₀ ∈ {0, 1}` and for `2 ≤ z₀ ≤ r_∞`, and for every Schwartz vector at the
real places, where §5.7c does not apply.

`ThetaKernelsForUnitaryDualPairs §5.7c` gives the constant term as a sum of two theta integrals for general data in
ranges that exclude `rk V − n/2 + 1 = 1` and `rk V − n/2 + 1 = 0`; it does not give the size of the constant for
ramified data uniformly in the character.

*Needs:* 6.1, 6.2, 6.3, 6.4, 6.5, 6.7; `WeilRepresentationsOnBanachSpacesOfData §§6.4, 6.10, 6.12` (theta
integrals, growth of kernels).

[ShortProof], `Lib/SiegelWeil/Tower/LargeSideConstantTerm.lean` (`New.Exchange.pairWeil_stdRowDatum_eq_self`,
`New.Exchange.rankTwist_eq_mul_of_splitting`, `New.Exchange.homSlice_zero_planeDatum`,
`New.Exchange.tsum_lineValue_poisson`, `New.Exchange.exists_zetaIntegral`,
`New.Exchange.exists_planeConstantTerm_eq_thetaLarge_cone`,
`New.Exchange.exists_planeConstantTerm_eq_thetaLarge_dualCone`)

### 6.9 Continuation to a real half-line and functional equation in absolute values

*Origin:* adapted from Tate (1950), *Fourier analysis in number fields and Hecke's zeta-functions*, §2.5 and Main
Theorem 4.4.1, the analytic continuation and functional equation of Hecke L-functions: here for the partial
L-functions of split tame characters of `U(1)` of positive weight over a CM field with Weil data, for real arguments
only, on a half-line bounded by the weight, as an identity of absolute values with an unspecified positive factor,
and with non-vanishing at the integers.

*Method of the formal proof:* take 6.8 (b) with `W = V = 0`, so that `W′` and `V′` are single hyperbolic planes and
the theta kernels and theta integrals reduce to constants, and with `v` the test vector of 6.7 (b). Its cone integral
is then a scalar function of `x`, the archimedean zeta integral `Γ_m(x)` of the test function, positive and real
analytic for `x > −k`. So for `x ≥ 1` the analytic function `𝒵` of 6.8 (b) is, both at `x` and at `1 − x`, a constant
of fixed modulus times `|κ_E|^x·∏_{w ∈ S} q_w^{x − 1/2}·L^S(x, ν)·Γ_m(x)`. Dividing `𝒵` by its factors other than
`L^S` defines `Λ` and gives (a); for (b), the integers `j ≥ 1` are 6.2 (a), and `−k < j ≤ 0` follows from the relation
of (a) at `z = 1 − j` and 6.2 (a).

Let `μ` be a weight and `k ∈ ℕ` with `k ≤ μ_τ` for every `τ`.
(a) There is `C : ℝ → ℝ`, positive on `[1, k + 1)`, such that for every split tame character `𝔠 = (ν, S)` of weight `μ`
there is a real-analytic function `Λ` on `(−k, ∞)` with `Λ(x) = L^S(x, ν)` for `x ≥ 1` and
`|Λ(1 − z)|·∏_{w ∈ S} q_w^{1/2 − z} = C(z)·L♯(z)` for `1 ≤ z < k + 1`.
(b) For every such `𝔠` the function `Λ` of (a) satisfies `Λ(j) ≠ 0` for every integer `j > −k`.

**In standard terms.** The base change `ν̃` is a unitary Hecke character of `E` with conductor of norm `∏_{w∈S} q_w²`,
`L^S(x, ν)`, for `x ≥ 1`, is the value of its finite Hecke L-function `L(s, ν̃)`, an entire function of `s`, and `Λ`
can be taken to be the restriction of `L(·, ν̃)` to `(−k, ∞)`; then (a) and (b) are consequences of Hecke's
continuation and functional equation for `ν̃` (`AnalyticNumberTheoryPartI §2.3a` (Hecke continuation and functional
equation)) and the non-vanishing 6.2 (a), with `C(z) = |D_E|^{z−1/2}·∏_τ Γ_ℂ(z + μ_τ)/Γ_ℂ(1 − z + μ_τ)` (7.4). Here
*functional equation* names the identity of absolute values in (a), with an unspecified positive factor; in the
literature it is the identity of completed L-functions, `Λ_H(ν̃, s)` equal to a constant of modulus one times
`Λ_H(ν̃⁻¹, 1 − s)` on the whole plane (in the notation of §2.3a), of which (a) is the consequence at real points.

`AnalyticNumberTheoryPartI §2.3a` (Hecke's continuation and functional equation for every unitary Hecke character)
also implies (a) and (b), with the conductor `|D_E|·∏_{w ∈ S} q_w²` and the gamma factors absorbed into `C`, together with
the non-vanishing 6.2 (a).

*Needs:* 6.2 (a), 6.7, 6.8; `WeilRepresentationsOnBanachSpacesOfData §§5.6, 6.1, 6.10` (kernels with a rank-zero
space).

[ShortProof], `Lib/SiegelWeil/Tower/FunctionalEquation.lean` (`New.Exchange.exists_analyticOnNhd_eq_L_mul_gammaIntegral`,
`New.Exchange.exists_analytic_extension_functional_equation`, `New.Exchange.exists_analytic_extension_ne_zero`,
`New.Exchange.gammaIntegral_pos`, `New.Exchange.analyticOnNhd_gammaIntegral`)

## Layer 7: Comparison with the standard theory

The standard theory is the reference for the objects of this roadmap: the Weil representation on Schwartz–Bruhat
functions and its theta kernels, Siegel Eisenstein series and the Siegel–Weil formula, the doubling integral and the
Rallis inner product formula with its L-value, strong approximation, Hecke L-functions and their functional equation,
local densities and the mass formula. This layer states how the objects of the route are related to their standard
counterparts, and states the results of the route on the standard objects: the Siegel–Weil formula 2.6 as a case of
Weil's formula for the Siegel Eisenstein series (7.1); the doubling identity, the inner product formulas and the
series of translates as the doubling integral and, on Hecke eigenforms and for sharp data, an identity of the form of
the Rallis inner product formula with its L-value (7.2); the constancy theorem 2.7 (a) as a consequence of strong
approximation (7.3); the continuation and functional equation of 6.9 as consequences of Hecke's (7.4); the density of
Siegel's formula as a product of local densities, and the exact ratio of the masses (7.5). The constant terms of 6.8
are related to the tower property in 6.8 itself. The route does not use this layer.

The comparison of the space of data with the Schwartz–Bruhat space is
`WeilRepresentationsOnBanachSpacesOfData §§10.1, 10.2`, and that of the groups `G(S)`, the automorphic functions and
the forms of a type with the standard ones is `AdelicUnitaryGroupsAndAlgebraicModularForms §8.2 (a)` (`G(S)`, `Γ_S`,
`G_f` and `K₀` as the adelic, rational and finite adelic points of the unitary group over `E⁺` and the stabiliser of a
lattice), `§8.1 (b)` (the Petersson product as the inner product of `L²` of the quotient) and `§8.5` (forms of type
`e_l` as cusp forms). From the first, this layer uses the following. For a locally standard space `V` and a rational
Lagrangian decomposition `𝕏 ⊕ 𝕐` of the symplectic `E⁺`-space underlying `V`
(`WeilRepresentationsOnBanachSpacesOfData §10.1 (d)`), `ℐ_𝕏 : S(𝕏(𝔸)) → 𝒮(V)` is the comparison map of
`WeilRepresentationsOnBanachSpacesOfData §10.2 (a)` from the Schwartz–Bruhat space of `𝕏`
(`MetaplecticAutomorphicForms §4.5` (Adelic Weil representation)); it is defined up to a factor of modulus one, and it
is continuous, linear and injective, with dense image. For spaces `S`, `T` of positive ranks `n`, `m` and automorphic
characters `a`, `b` of `U(1)`, the map `ℐ_𝕏` of `V = Hom(S, T)` satisfies `ω_{a,b}(g, h)ℐ_𝕏(Ψ) = ℐ_𝕏(ω^{std}(g, h)Ψ)`,
where `ω^{std}` is the global Weil representation of the pair on `S(𝕏(𝔸))` named in
`WeilRepresentationsOnBanachSpacesOfData §10.7 (b)`, assembled from the local representations of
`MetaplecticAutomorphicForms §3.3` (Unitary dual-pair splittings): it is attached to the character `ψ⁺` of the adeles
of `E⁺` with `ψ = ψ⁺ ∘ Tr_{E/E⁺}` and, in the labelling of that section, to the splitting characters `a_n = ã·υ^{−n}`,
which governs `G(T)`, and `b_m = b̃·υ^{−m}`, which governs `G(S)` (`ã`, `b̃` the base changes). For `ω` of 2.1 (c),
where `n = 2p`, `a = υ₁^p` and `b = 1`, these are `a_n = 1` and `b_m = υ^{−m}`. For a complete splitting `P` of a
space `S` into `p` hyperbolic planes (2.1 (a)) and a space `T` of rank `m`, the splitting of `Hom(S, T)` induced by
`P` (`WeilRepresentationsOnBanachSpacesOfData §6.9`) has core `0`, and
`WeilRepresentationsOnBanachSpacesOfData §10.8 (b)` applies to it: the maps that vanish on the span of the frame `l`
of `P` and the maps that vanish on the Lagrangian of `P` form a rational Lagrangian decomposition `𝕏 ⊕ 𝕐` of
`Hom(S, T)`, the Schwartz–Bruhat functions on `𝕏(𝔸)` are functions of `x ∈ M_{m×p}(𝔸)` in the coordinates of the
matrix slices of §6.9, and `ℐ_𝕏(Ψ)[x] = c_𝕏·Ψ(x)` for every `Ψ ∈ S(𝕏(𝔸))`, the left side being the value of 2.1 (d)
and `c_𝕏` the constant of modulus one of `WeilRepresentationsOnBanachSpacesOfData §10.6 (b)`. By §10.6 (b),
`θ(ℐ_𝕏(Ψ)) = c_𝕏·Σ_ξ Ψ(ξ)` over the rational `ξ` (2.3 (a)), and by
`WeilRepresentationsOnBanachSpacesOfData §10.7 (e)`, writing `θ^{std}(g, h; Ψ) = Σ_ξ (ω^{std}(g, h)Ψ)(ξ)` for the
theta kernel of `MetaplecticAutomorphicForms §5.1` (Theta kernel) of `ω^{std}`,
`θ(ω_{a,b}(g, h)ℐ_𝕏(Ψ)) = c_𝕏·θ^{std}(g, h; Ψ)`. For `ω` of 2.1 (c), these and 2.3 (a) give
`(ω^{std}(1, h)Ψ)(x) = Ψ(h⁻¹x)`: `G(T)` acts on the Schwartz–Bruhat functions by substitution.

### 7.1 The Siegel–Weil formula of 2.6 and Weil's formula

*Origin:* comparison of 2.6 with the Siegel–Weil formula in Weil's convergent range, Weil (1965): the sum of the zero
terms over the rational Lagrangians is the Siegel Eisenstein series at its point `s₀`, and on Schwartz–Bruhat data 2.6
(c) is a case of Weil's formula; not part of the formal proof.

*Route:* (a) An element of `𝒫` is `n(ν)·P_{Λ₀}.levi(a)` (`WeilRepresentationsOnBanachSpacesOfData §5.1 (b)`, the core
being `0`). The radical element does not change the slice at `0` (`WeilRepresentationsOnBanachSpacesOfData §6.9 (c)`),
and the Levi element multiplies it by `υ^m(det a)·|det a|^{m/2}` (2.3 (a) at `x = 0`, `h = 1`, where `χ = υ^{−m}`).
Continuity comes from the joint continuity of `ω` (`WeilRepresentationsOnBanachSpacesOfData §6.2 (a)`) and the
boundedness of `ev_{Λ₀}`. (b) By 2.1 (d), `ev_Λ(u)` is the mean of `θ(ϱ(z)u)` over the adelic `z ∈ Hom(S, T)`
vanishing on `Λ`, modulo the rational ones. For `γ ∈ Γ_S`, `ϱ(z)ω(γ, 1) = ω(γ, 1)ϱ(zγ)`
(`WeilRepresentationsOnBanachSpacesOfData §3.5 (b)`), `θ` is invariant under `ω(γ, 1)`
(`WeilRepresentationsOnBanachSpacesOfData §6.2 (a)`), and `z ↦ zγ` carries the maps vanishing on `Λ₀` onto those
vanishing on `γ⁻¹Λ₀`, the rational ones onto the rational ones; so `ev_{Λ₀}(ω(γ, 1)u) = ev_{γ⁻¹Λ₀}(u)`, and
`u = ω(g, 1)f` gives the identity. The map `𝒫(E)γ ↦ γ⁻¹Λ₀` is well defined and injective because `𝒫(E)` is the
stabiliser of `Λ₀` in `Γ_S`; it is onto because every Lagrangian is that of a complete splitting (2.1 (a)), and the
linear map that carries the frames of one complete splitting to those of another is a rational point of `U(S)`.
Absolute convergence and the bound follow from 2.6 (a) and `|ev_Λ(u)| ≤ ‖ev_Λ‖·‖u‖`. (c) is 2.6 (c) for the datum
`ω(g, 1)f`, since `ω(1, h)ω(g, 1) = ω(g, h)`. (d) `ℐ_𝕏` intertwines `ω(g, 1)` with the Weil representation of `g` on
`S(𝕏(𝔸))`, so `sw_{ℐ_𝕏(Ψ)}(g) = c_𝕏·(ω(g)Ψ)(0)`, and the theta kernels are related by the factor `c_𝕏` (the
introduction to this layer); divide (c) by `c_𝕏`. The measure of total mass one on `[U(T)]` is any Haar measure
divided by `vol([U(T)])`, and the Tamagawa measure divided by `τ(U(T))`, as in the Corollary. (e) Both sides of 2.6
(c) are continuous linear forms in `f`: the left side by 2.6 (b), `|∫ θ(ω(1, h)f) dh| ≤ ‖f‖·∫ N`, the right side by
2.6 (a). They agree on the image of `ℐ_𝕏` by (d) and the Corollary, and that image is dense.

Let `S` be a locally standard space with a complete splitting into `p` hyperbolic planes, `T` a locally standard space
of rank `m > 2p` (any signs), `ω` as in 2.1 (c), and `s₀ = (m − p)/2`. Fix a rational Lagrangian `Λ₀` of `S`; let
`𝒫 ⊂ G(S)` be the group of the elements that act on the frame of `P_{Λ₀}` (2.1 (b)), the adelic points of the Siegel
parabolic subgroup of `Λ₀`, and `𝒫(E) = 𝒫 ∩ Γ_S`. For `f ∈ 𝒮(Hom(S, T))` put `sw_f(g) = ev_{Λ₀}(ω(g, 1)f)` for
`g ∈ G(S)`, and `Eis(g, sw_f) = Σ_{γ ∈ 𝒫(E)\Γ_S} sw_f(γg)`; `Eis` is defined in the same way for every function on
`G(S)` left invariant under `𝒫(E)` whose sum converges absolutely.
(a) `sw_f` is continuous, and if `g ∈ 𝒫` acts on the frame of `P_{Λ₀}` by `a`, then
`sw_f(gg′) = υ^m(det a)·|det a|^{m/2}·sw_f(g′)` for every `g′`: `sw_f` has the equivariance of the sections, at
`s = s₀`, of the degenerate principal series of `G(S)` induced from the character `g ↦ υ^m(det a)·|det a|^{s + p/2}`
of `𝒫` (normalised induction, the modulus of `𝒫` being `|det a|^p`); it is such a section when `f` is the image of a
Schwartz–Bruhat function (d), and for a general datum it is only continuous.
(b) For `γ ∈ Γ_S` and `g ∈ G(S)`, `ev_{γ⁻¹Λ₀}(ω(g, 1)f) = sw_f(γg)`, and `𝒫(E)γ ↦ γ⁻¹Λ₀` is a bijection from
`𝒫(E)\Γ_S` onto the set of rational Lagrangians of `S`. Hence the Siegel Eisenstein series `Eis(g, sw_f)` converges
absolutely for every `g`, `Eis(g, sw_f) = Σ_Λ ev_Λ(ω(g, 1)f)`, and `|Eis(g, sw_f)| ≤ (Σ_Λ ‖ev_Λ‖)·‖ω(g, 1)f‖`.
(c) For every `f` and every `g ∈ G(S)`, `∫_{[U(T)]} θ(ω(g, h)f) dh = vol([U(T)])·Eis(g, sw_f)`.
(d) Let `p ≥ 1`, and let `𝕏 ⊕ 𝕐` be the rational Lagrangian decomposition of `Hom(S, T)` induced by `P_{Λ₀}`, as in
the introduction to this layer, `Ψ ∈ S(𝕏(𝔸))`, and `sw^{std}_Ψ(g) = (ω(g)Ψ)(0)` the Siegel–Weil section of
`MetaplecticAutomorphicForms §6.2` (Siegel–Weil section) at `s₀`, `ω(g)` being the Weil representation of `g` on
`S(𝕏(𝔸))`. Then `sw_{ℐ_𝕏(Ψ)} = c_𝕏·sw^{std}_Ψ`, and (c) for `f = ℐ_𝕏(Ψ)`, divided by `c_𝕏`, reads
`vol([U(T)])⁻¹·∫_{[U(T)]} θ^{std}(g, h; Ψ) dh = Eis(g, sw^{std}_Ψ)`, the Eisenstein series of §6.2 at `s₀` being its
absolutely convergent sum. This is the Siegel–Weil formula in Weil's convergent range, in the form of the Corollary of
`ThetaKernelsForUnitaryDualPairs §6.4a` (`MetaplecticAutomorphicForms §6.4` (Anisotropic Siegel–Weil formula) when `T`
is anisotropic), in the case where `E/E⁺` is a CM extension with Weil data, the split space is `S`, of rank `2p`, the
other space is `T`, of rank `m > 2p`, both are locally standard, and the Weil representation is `ω^{std}` of the
introduction to this layer for `a = υ₁^p` and `b = 1`: the splitting character that governs `G(T)` is trivial, as the
Corollary requires, so that `G(T)` acts by `(ω^{std}(1, h)Ψ)(x) = Ψ(h⁻¹x)`, and the one that governs `G(S)` is
`υ^{−m}` in the labelling of `WeilRepresentationsOnBanachSpacesOfData §10.7 (b)`, the equivariance of the Siegel–Weil
section being that of (a).
(e) Conversely, that Corollary on the data `ℐ_𝕏(Ψ)`, together with 2.6 (a) and (b), gives 2.6 (c) for every datum.

2.6 concerns the Siegel Eisenstein series only at `s₀`, where it is the absolutely convergent sum of (b); its
meromorphic continuation in `s` (`AutomorphicLFunctionsAndLocalFactorsPartII §1.3` (degenerate Siegel Eisenstein
continuation)) is not part of 2.6, and the bounds 2.6 (a), (b), uniform in the datum, are not part of the Corollary.

*Needs:* 2.1, 2.3, 2.6; `WeilRepresentationsOnBanachSpacesOfData §§3.5, 5.1, 6.2, 6.9` (Weil representation, parabolic
elements, laws of the pair, mixed models of a pair);
`WeilRepresentationsOnBanachSpacesOfData §§10.1 (d), 10.2 (a), 10.6 (b), 10.7 (b), (e), 10.8 (b)` (rational Lagrangian
decompositions, the comparison map, the theta distribution, the Weil representation and the theta kernels of a pair,
slices); `MetaplecticAutomorphicForms §3.3` (Unitary dual-pair splittings), `§4.5` (Adelic Weil representation),
`§5.1` (Theta kernel), `§6.2` (Siegel–Weil section), `§6.4` (Anisotropic Siegel–Weil formula);
`ThetaKernelsForUnitaryDualPairs §6.4a` (the Siegel–Weil formula in Weil's convergent range, its Corollary).

### 7.2 The doubling identity, the series of translates and the Rallis inner product formula

*Origin:* comparison of Layer 4 and of the series of translates of 1.4 with the doubling method and the Rallis inner
product formula in Weil's convergent range (Rallis (1987), *L-functions and the oscillator representation*; Li
(1992)): the doubling identity is the Siegel–Weil formula for the doubled pair, the inner product formula 4.3 is the
global doubling integral in its unfolded form, and on Hecke eigenforms the series of translates acts by the partial
L-value over the partial denominator of the doubling method; not part of the formal proof.

*Route:* (a) `diag(g, 1)` acts on `f^□` through its first block: `ω(diag(g, 1), 1)f^□` is the doubled datum of
`ω_{1,1}(g, 1)f` and `f′` (`WeilRepresentationsOnBanachSpacesOfData §6.3 (b)`). The zero term along `Λ^□` of the
doubled datum of `f₁` and `f′` is the matrix coefficient `⟨f′, f₁⟩`: by 2.1 (d) it is the mean, over the adelic
`z ∈ Hom(S ⊕ S⁻, T)` vanishing on `Λ^□` modulo the rational ones, of `θ(ϱ(z)(f₁ ⊠ f′^⋆))`; such a `z` is a pair
`(z₁, z₁)`, and `θ(ϱ(z₁)f₁ ⊠ (ϱ(z₁)f′)^⋆) = θ(ϱ(z₁)f₁)·conj θ(ϱ(z₁)f′)`
(`WeilRepresentationsOnBanachSpacesOfData §§3.8, 6.3 (b), (c)`), whose mean
`WeilRepresentationsOnBanachSpacesOfData §3.6 (c)` evaluates as `⟨f′, f₁⟩`; for `f₁ = ω_{1,1}(g, 1)f` this is
`c_1(f, f′; g)`; and `ω_{1,b}(g, 1) = b(det g)⁻¹·ω_{1,1}(g, 1)` (`WeilRepresentationsOnBanachSpacesOfData §6.1`). The
rest is 7.1 (a) for the pair `(S ⊕ S⁻, T)`, the space `S ⊕ S⁻` having rank `2n` and a complete splitting with
Lagrangian `Λ^□`. (b) The theta kernel of `f^□_{g,g′}` at `x` is `θ(ω_{1,b}(g, x)f)·conj θ(ω_{1,b}(g′, x)f′)`
(`WeilRepresentationsOnBanachSpacesOfData §6.3 (b), (c)`), and the factors `a(det x)` of `ω_{a,b}` cancel in the
integrand of 4.2 (a); then 7.1 (b), (c) for `(S ⊕ S⁻, T)` at `g = 1`, which apply since `2n < m`; the graph
`{(x, −δx)}` is `diag(δ⁻¹, 1)Λ^□`, so by 7.1 (b) its zero term at `f^□_{g,g′}` is the zero term along `Λ^□` of the
doubled datum of `ω_{1,b}(δg, 1)f` and `ω_{1,b}(g′, 1)f′`, which is
`⟨ω_{1,b}(g′, 1)f′, ω_{1,b}(δg, 1)f⟩ = c_b(f, f′; g′⁻¹δg)` by the computation of (a); that the other Lagrangians have
zero term `0` for clean `f` is the method of 4.2. (c) By (a), `sw_{f^□}(diag(g, 1)) = b(det g)·c_b(f, f′; g)`, and
`⟨y′_b, R(g)y_b⟩ = b(det g)⁻¹·⟨y′, R(g)y⟩` by the definition of the Petersson product
(`AdelicUnitaryGroupsAndAlgebraicModularForms §5.1`); multiply. (d) By (a) and 4.4 (a) for the trivial character,
`sw_{f^□}(diag(γ, 1)) = c_1(f, f; γ) = Δ(γ)^{−m}·⟨f, f⟩`. Since `f` is fixed by the projection onto the vacua above
`A`, so is `f^□` (`WeilRepresentationsOnBanachSpacesOfData §§3.7 (a), 3.8`), and `ω(k, 1)f^□ = f^□` for `k` in the
stabiliser of the standard lattice of `S ⊕ S⁻` with component `1` outside the places above `v`
(`WeilRepresentationsOnBanachSpacesOfData §3.7 (b)`); with 7.1 (a) and the Iwasawa decomposition
(`AdelicUnitaryGroupsAndAlgebraicModularForms §3.6`), read at the places above `v`, `sw_{f^□}` is there `⟨f, f⟩` times
the spherical vector. The function `mc_{m,b}` is invariant on both sides under `K₀ ∩ G_v` (1.3 (c)), so, for `A` the
set of places above `v`,
`𝒯_{m,b,A}y(g) = ∫_{G_v} mc_{m,b}(h)·y(gh) dh = ∫_{G_v} mc_{m,b}(h)·∫_{K₀∩G_v} y(gkh) dk dh = Z^□_v·y(g)`;
`|sp_v| ≤ 1` because `y` is bounded, so the integral converges absolutely by 1.4 (a). For general `A`, 1.4 (c) on
finite unions of such sets and the absolute summability 1.4 (a), with the multiplicativity 1.3 (c), give the
absolutely convergent product, as in 1.5 (a). `Z^□_v` is the local doubling integral of
`MetaplecticAutomorphicForms §6.11` for the spherical section of the stabiliser of `L ⊕ L`, the lattice datum of
`AutomorphicLFunctionsAndLocalFactorsPartII §2.3`, whose value at `diag(h, 1)` is `Δ(h)^{−m}` at `s₀`, and for the
coefficient `b(det h)⁻¹·sp_v(h)` of the spherical vectors of `Π_v`. The modulus of the spherical section at
`diag(h, 1)` is `[L : L ∩ h⁻¹L]^{−(s + n/2)}`, which decreases as the real part of `s` grows, so the integral
converges absolutely for real parts at least `s₀`, and its value at `s₀` is the limit from the right of the value
`L_v/d_v` that §6.11 gives for the designated spherical data, a rational function of `q_v^{−s}` (at every residue
characteristic, `AutomorphicLFunctionsAndLocalFactorsPartII §2.3`), whose denominator `d_v(s₀)` is finite and nonzero
because `m − r > n + 1` for `r < n`. The twist is read off at a split place `v`, with `w` above `v`: there
`Δ(h)^{−m} = υ_w(det h_w)^m·[L : L ∩ h⁻¹L]^{−m/2}` (`WeilRepresentationsOnBanachSpacesOfData §3.2 (c)`), so the
integrand of `Z^□_v` is `[L : L ∩ h⁻¹L]^{−m/2}` times the spherical function of the representation
`σ = Π_v ⊗ (υ_w^m ∘ det)` of `GL_n(E_w)`, and the unramified doubling integral of `GL_n`, the integral of
`[L : L ∩ h⁻¹L]^{−(s + n/2)}` against the spherical function of `σ`, is
`L(s + ½, σ)·L(s + ½, σ^∨)·∏_{j=1}^{n} (1 − q_v^{−2s−j})`; for `n = 1` this is the sum of the two geometric series of
1.5 (b). At an inert place `υ(ϖ_w) = −1`, so `υ_w^m = υ_w^{−m}`, the base changes of `Π_v` and of `Π_v^∨` have the
same L-factor, and no choice arises. (e) Take for `A` the complement of `S₀` in (d): by 4.4 (e), `K₀ ∩ G_f^{S₀ᶜ} ⊆ J`,
which fixes `y`, and `b ∘ det` is unramified on `S₀ᶜ`; then 4.5 (c) with `𝒯y = Z^□·y`. For `n = 1` and `y = 1`,
`sp_v = 1` and `Z^□_v` is the sum of `mc_{m,b}(r(q))` over the cosets of `K_{{w}}`, `w` above `v`, which is the vacuum
sum of 1.1 (e).

Let `S`, `T` be locally standard of ranks `n`, `m` with `2n < m`, `a`, `b` automorphic characters of `U(1)`, and
`s₀ = (m − n)/2`. Let `S⁻` be `S` with the opposite form, as in `WeilRepresentationsOnBanachSpacesOfData §6.3 (c)`:
the same rational space, its frame being that of `S` adjusted at the finite places by an element `u` with `ūu = −1`
that is a unit of `Ô` (as `WeilRepresentationsOnBanachSpacesOfData §3.8 (b)` requires of the change of coordinates),
so that `S` and `S⁻` have the same standard lattice `L` and the standard lattice of `S ⊕ S⁻` is `L ⊕ L`. For data
`f, f′ ∈ 𝒮(Hom(S, T))` their *doubled datum* is `f^□ = f ⊠ f′^⋆ ∈ 𝒮(Hom(S ⊕ S⁻, T))`, where `f′^⋆` is the image of
`f′` under the conjugate-linear change of coordinates of §6.3 (c), which is the identity in the rational coordinates
of `Hom(S, T)` and `Hom(S⁻, T)`, times the constant of modulus one given there, so that `θ(f′^⋆) = conj θ(f′)`,
`ϱ(z)(f′^⋆) = (ϱ(z)f′)^⋆` for every adelic `z ∈ Hom(S, T)`, and `θ(f^□) = θ(f)·conj θ(f′)`: the datum of the method of
4.2. Let `Λ^□ = {(x, −x)}`, the graph of `−1`, a Lagrangian of `S ⊕ S⁻` (the maps `(z₁, z₂) ∈ Hom(S ⊕ S⁻, T)` that
vanish on it are the pairs `(z, z)`; along the diagonal `{(x, x)}` the zero term of `f^□` is `⟨f′, ω_{1,1}(−1, 1)f⟩`,
not `⟨f′, f⟩`), `sw` and `Eis` as in 7.1 for the pair `(S ⊕ S⁻, T)` and `Λ^□`, `diag(g, g′)` the block-diagonal point
of `G(S ⊕ S⁻)`, `c_1` the coefficient of 4.1 for the trivial character, and `y_b = (b ∘ det)⁻¹·y` for a function `y`
on `G(S)`.
(a) *The doubled section.* `sw_{f^□}(diag(g, 1)) = c_1(f, f′; g) = b(det g)·c_b(f, f′; g)` for `g ∈ G(S)`; and
`sw_{f^□}` has the equivariance of 7.1 (a) for the pair `(S ⊕ S⁻, T)` and `Λ^□`: that of the sections, at `s₀`, of the
degenerate principal series of `G(S ⊕ S⁻)` induced from `υ^m(det t)·|det t|^{s + n/2}`, `t` being the action on the
frame of `Λ^□`.
(b) *The doubling identity.* For `g, g′ ∈ G(S)` let `f^□_{g,g′}` be the doubled datum of `ω_{1,b}(g, 1)f` and
`ω_{1,b}(g′, 1)f′`. The integrand of 4.2 (a) at `x` is the theta kernel `θ(ω(1, x)f^□_{g,g′})` of the doubled pair
(`ω` as in 2.1 (c) for `(S ⊕ S⁻, T)`), so the left side of 4.2 (a) is `vol([U(T)])·Eis(1, sw_{f^□_{g,g′}})`, the
Siegel Eisenstein series of the doubled group at `s₀`, at the identity (7.1 (c)). Its terms are indexed by the
rational Lagrangians of `S ⊕ S⁻` (7.1 (b)); for clean `f` those that are not graphs of points of `Γ_S` vanish, and the
graph `{(x, −δx)}` of `−δ`, for `δ ∈ Γ_S`, gives `c_b(f, f′; g′⁻¹δg)`: this is 4.2 (a). In the doubling method the
Lagrangians that are not graphs are removed by the cuspidality of the forms instead
(`AutomorphicLFunctionsAndLocalFactorsPartII §3.1` (unitary doubling identity)).
(c) *The doubling integral.* For clean `f`, any `f′` and automorphic `y`, `y′` of rapid decay, the right side of 4.3
is `vol([U(T)])·∫_{G(S)} sw_{f^□}(diag(g, 1))·⟨y′_b, R(g)y_b⟩ dg`: the global doubling integral at `s₀` of the section
`sw_{f^□}` and the functions `y_b`, `y′_b`, in its unfolded form, absolutely convergent by 4.3. For factorisable data
and forms, this is the integral that `MetaplecticAutomorphicForms §6.12` (Factorization of theta pairings) factors
into local integrals.
(d) *The unramified factor.* Let `A` be a set of finite places with `b ∘ det` unramified on `A`; for a place `v` of
`E⁺` below `A` let `G_v ⊂ G_f` be the group of the points supported on the places above `v`, with the Haar measure
giving `K₀ ∩ G_v` volume `1`. If `f` is fixed by the projection onto the vacua above `A` and `f^□` is the doubled
datum of `f` and `f`, then `sw_{f^□}(diag(γ, 1)) = Δ(γ)^{−m}·⟨f, f⟩` for `γ ∈ G_f^A`; and if `⟨f, f⟩ ≠ 0`, the
restriction of `sw_{f^□}/⟨f, f⟩` to the points of `G(S ⊕ S⁻)` supported above `v` is the spherical vector, with value
`1` at `1`, for the stabiliser of the standard lattice of `S ⊕ S⁻`. Let `y` be bounded, fixed by `K₀ ∩ G_f^A`, and at
each such `v` an eigenfunction of the spherical Hecke algebra: `∫_{K₀∩G_v} y(gkh) dk = sp_v(h)·y(g)` for all
`g ∈ G(S)` and `h ∈ G_v`. Then `𝒯_{m,b,A}y = Z^□_A·y`, where `Z^□_A = ∏_v Z^□_v` converges absolutely and
`Z^□_v = ∫_{G_v} Δ(h)^{−m}·b(det h)⁻¹·sp_v(h) dh`. `Z^□_v` is the value at `s₀` of the local doubling zeta integral of
`MetaplecticAutomorphicForms §6.11` (Local doubling zeta integral) for that spherical section and the spherical
vectors of the unramified representation `Π_v` of `G_v` whose spherical function is `h ↦ b(det h)⁻¹·sp_v(h)` (that of
`y_b`), and `Z^□_v = L_v(s₀ + ½, BC(Π_v) ⊗ υ^m)/d_v(s₀)`, with the following factors. `L_v(s, BC(Π_v) ⊗ υ^m)` is the
product over the places `w` of `E` above `v` of the standard L-factors of the unramified base change of `Π_v` to
`GL_n(E_w)` twisted by `υ_w^m ∘ det`; at a split place `v`, where `G_v` is `GL_n(E_w)` through the component at a
place `w` above `v` (`AdelicUnitaryGroupsAndAlgebraicModularForms §8.2 (b)`), it is
`L(s, Π_v ⊗ υ_w^m)·L(s, Π_v^∨ ⊗ υ_w^{−m})`, whichever `w` is chosen.
`d_v(s) = ∏_{r=0}^{n−1} L_v(2s + n − r, η_v^{m+r})`, so that `d_v(s₀) = ∏_{r=0}^{n−1} L_v(m − r, η_v^{m+r})`, where
`η_v` is the character of `E⁺_v^×` attached to `E ⊗_{E⁺} E⁺_v` (trivial if `v` splits, unramified with value `−1` at a
uniformiser `ϖ_v` if `v` is inert) and `L_v(x, η_v^k) = (1 − η_v(ϖ_v)^k·q_v^{−x})⁻¹`, `q_v` the order of the residue
field of `E⁺_v`: the denominator `d_n(s, χ)` of `AutomorphicLFunctionsAndLocalFactorsPartII §2.2` (unitary unramified
denominator) for a character `χ` of `(E ⊗_{E⁺} E⁺_v)^×` with restriction `η_v^m` to `E⁺_v^×`, as `υ^m` and `υ^{−m}`
are. The factor `L_v(s, BC(Π_v) ⊗ υ^m)` is equal to `L_v(s, BC(Π_v^∨) ⊗ υ^{−m})`, the two representations being
exchanged by the conjugation of `E` over `E⁺` (`AutomorphicLFunctionsAndLocalFactorsPartII §2.3`); at a split place it
differs in general from `L_v(s, BC(Π_v) ⊗ υ^{−m})`. So `Z^□_A` is the partial L-value over the partial denominator of
the doubling method, the products running over the places of `E⁺` below `A`.
(e) *The inner product formula with its L-value.* In the setting of 4.5 (c), let `y` be moreover an eigenfunction of
the spherical Hecke algebras at the places of `E⁺` below the complement `S₀ᶜ` of `S₀` (the places with at least one
place of `E` above them outside `S₀`), and `Z^□ = Z^□_{S₀ᶜ}`. Then `⟨Ly′, Ly⟩ = C·c·Z^□·⟨y′, y⟩`: an identity of the
form of the Rallis inner product formula in Weil's convergent range, a partial L-value over a partial denominator, the
products over the places of `E⁺` below `S₀ᶜ`, times factors for the real places and for the remaining finite places,
here the constant `C` and the mass `c`; it has the form of `ThetaKernelsForUnitaryDualPairs §6.13a (ii)` for the
linear lift. For `n = 1`, `y = 1`, `m = 2k` and `b = ν·υ₁^k`, `Z^□_A` is the vacuum sum `σ_{1,2k,b}(A)` of 1.1 (e),
and 1.5 (b), (c) evaluate it.

Layer 4 stops before the evaluation of the unramified factor, which it writes as the series of translates, an
operator, and evaluates only in rank one (1.5); it records the local factors at the real places and at `S₀` only as
the constants `C` and `c`. Conversely, 4.3 holds for all rapidly decreasing automorphic functions, and the formula in
L-value form does not give it for functions that are not eigenforms.

*Needs:* 1.1, 1.3, 1.4, 1.5, 2.1, 4.1, 4.2, 4.3, 4.4, 4.5, 7.1;
`WeilRepresentationsOnBanachSpacesOfData §§3.2, 3.6, 3.7, 3.8, 6.1, 6.3` (the finite multiplier, theta functionals,
vacuum projections, products of data and changes of coordinates, the pair representation, sums and negation);
`AdelicUnitaryGroupsAndAlgebraicModularForms §§3.6, 5.1, 8.2 (b)` (Iwasawa decomposition, Petersson product, the
unitary group at a split place); `MetaplecticAutomorphicForms §6.11` (Local doubling zeta integral), `§6.12`
(Factorization of theta pairings); `AutomorphicLFunctionsAndLocalFactorsPartII §2.2` (unitary unramified denominator),
`§2.3` (unramified unitary doubling formula), `§3.1` (unitary doubling identity);
`ThetaKernelsForUnitaryDualPairs §6.13a` (the Rallis inner product formula in Weil's convergent range).

### 7.3 Strong approximation and the constancy theorem 2.7

*Origin:* comparison of 2.7 (a) with strong approximation for the special unitary group of an isotropic hermitian
space (the theorem of Kneser and Platonov; Platonov and Rapinchuk (1994), Chapter 7); not part of the formal proof.

*Route:* (a) is `HermitianFormsAndLattices §2.5 (d)` for `SU(W)` and the set `{v}`, read on `G(W)` through
`AdelicUnitaryGroupsAndAlgebraicModularForms §8.2 (a)`: `W` has rank at least `2`, and `W_v` is isotropic because `W`
contains `H`. The set `{v}` does not contain the archimedean places, and the strong approximation of
`AdelicAlgebraicGroups §4.2` (Strong approximation and arithmetic closures), for sets of places that contain them,
does not give (a). (b) Let `h ∈ SU(W)(𝔸)`. By (a) there are `γ_i ∈ SU(W)(E)` and `ρ_i ∈ SU(W)(E⁺_v)` with
`γ_iρ_i → h`. As `D` is continuous and left invariant under `Γ_W`, `D(hg) = lim D(ρ_ig) = lim D(g·g⁻¹ρ_ig)`, and
`g⁻¹ρ_ig` is a finite point supported on the places above `v`, which lie in `S ∪ S̄`; so `D(g·g⁻¹ρ_ig) = D(g)`. Two
points of `G(W)` with the same determinant differ by a left factor in `SU(W)(𝔸)`. (c) By (b), `D` is left invariant
under the adelic unipotent radical of the stabiliser of the line of `k`, whose points have determinant `1`; the torus
hypothesis of 2.7 (a) then gives `D(levi(t, 1)) = D(1)` for every idele `t`. As `det levi(t, 1) = t/t̄` and `t ↦ t/t̄`
maps the ideles onto `U(1)(𝔸)` (`IdelicReciprocityCountsAndCyclotomicClassGroups §7.1 (a)`), `D` takes the value
`D(1)` everywhere.

Let `W = H ⊥ W₀` be as in 2.7 and `S` a nonempty set of finite places. Let `w ∈ S`, `v` the place of `E⁺` below `w`,
`SU(W)(𝔸) ⊂ G(W)` the group of the points of determinant `1`, `SU(W)(E) = SU(W)(𝔸) ∩ Γ_W`, and `SU(W)(E⁺_v)` the group
of the points of `SU(W)(𝔸)` supported on `{w, w̄}`.
(a) *Strong approximation.* `SU(W)(E)·SU(W)(E⁺_v)` is dense in `SU(W)(𝔸)`.
(b) If `D` is a continuous function on `G(W)`, left invariant under `Γ_W` and right invariant under `G_f^S`, then
`D(hg) = D(g)` for all `h ∈ SU(W)(𝔸)` and `g ∈ G(W)`: `D(g)` depends only on `det g ∈ U(1)(𝔸)`.
(c) Strong approximation implies 2.7 (a): every `D` that satisfies the hypotheses of 2.7 (a) is constant, and of its
level hypotheses only the right invariance under `G_f^S` is used.

2.7 (a) does not give strong approximation: it concludes the constancy of the functions that satisfy its level and
torus hypotheses, not the density (a).

*Needs:* 2.7; `HermitianFormsAndLattices §2.5 (d)` (strong approximation for `SU` with respect to a nonempty finite
set of places at one of which the group is not compact); `AdelicUnitaryGroupsAndAlgebraicModularForms §8.2 (a)`
(`G(W)` as the adelic points of the unitary group over `E⁺`);
`IdelicReciprocityCountsAndCyclotomicClassGroups §7.1 (a)` (`y ↦ y/ȳ` maps the ideles onto `U(1)(𝔸)`).

### 7.4 Hecke's functional equation and the continuation of 6.9

*Origin:* comparison of 6.9 with the continuation and functional equation of Hecke L-functions (Tate (1950), *Fourier
analysis in number fields and Hecke's zeta-functions*, Main Theorem 4.4.1): the function `Λ` of 6.9 is the finite
Hecke L-function of the base change, and 6.9 is the functional equation read in absolute values at real points; not
part of the formal proof.

*Route:* (a) For `w ∈ S` and a unit `x` at `w`, the value of `ν̃` at the idele with component `x` at `w` and `1`
elsewhere is `ψ_w(x mod w)` (`IdelicReciprocityCountsAndCyclotomicClassGroups §7.6 (a)`, as `ψ_{w̄} = 1`), a
nontrivial character of the units trivial on those `≡ 1 mod w`. For a unit `x` at `w̄`, the idele with component `x`
at `w̄` divided by its conjugate is the norm-one point with components `x` at `w̄` and `x̄⁻¹` at `w`, so the value is
`ψ_w(x̄ mod w)⁻¹`, again of conductor exponent `1`. Outside `S ∪ S̄` the base change is unramified (§7.6 (a)). At an
idele `y` with finite part `1`, `ν̃(y) = ∏_τ (y_τ/|y_τ|)^{2μ_τ}` (§8.5 (c) with `r = 0`). (b) Both sides are the Euler
product of `ν̃` over the places outside `S ∪ S̄` (`IdelicReciprocityCountsAndCyclotomicClassGroups §§8.1, 8.5`), the
factors of §2.3a being `1` at the ramified places. (c) In §2.3a for `ω = ν̃`, the conductor scale is
`|D_E|·∏_{w∈S} q_w²`, the archimedean factor is `∏_τ Γ_ℂ(s + μ_τ)`, and the completed function `Λ_H(ν̃, s)` is entire,
as `ν̃` is not of the form `|·|^{it}`; since `1/Γ` is entire, `L(s, ν̃)`, the quotient of `Λ_H(ν̃, s)` by the
conductor power and the archimedean factor, is entire. As `ν̃⁻¹ = conj ν̃`, the Euler products on `Re s > 1` and the
uniqueness of continuation give `Λ_H(ν̃⁻¹, s̄) = conj Λ_H(ν̃, s)`, so for real `x` the functional equation of §2.3a
gives `|Λ_H(ν̃, x)| = |Λ_H(ν̃, 1 − x)|`; for `−min_τ μ_τ < x < 1 + min_τ μ_τ` all the gamma factors are finite and
positive, and dividing by them and by the conductor powers gives the identity. (d) `Λ`, the restriction of an entire
function, is real-analytic; `Λ(x) = L^S(x, ν)` for `x > 1` by (b), and at `x = 1` by continuity (6.2 (a)). For
`1 ≤ z < k + 1 ≤ 1 + min_τ μ_τ`, (c) at `x = z` and `L♯(z) = |L^S(z, ν)|·∏_{w∈S} q_w^{z−1/2}` give
`|Λ(1 − z)|·∏_{w∈S} q_w^{1/2−z} = C(z)·L♯(z)`, with `C(z) > 0`. For 6.9 (b): `Λ(j) = L^S(j, ν) ≠ 0` for `j ≥ 1` by 6.2
(a); for `−k < j ≤ 0`, `z = 1 − j` lies in `[1, k + 1)`, and `|Λ(j)|·∏_{w∈S} q_w^{1/2−z} = C(z)·L♯(z) > 0`.

Let `𝔠 = (ν, S)` be a split tame character of weight `μ`, and `ν̃(y) = ν(y/ȳ)` the base change of `ν`.
(a) `ν̃` is a unitary Hecke character of `E` (a continuous character of `𝔸^×/E^×` of absolute value `1`), with
component `z ↦ (z/|z|)^{2μ_τ}` at the infinite place of `τ ∈ Φ`, in the coordinate given by `τ`; it is unramified
outside `S ∪ S̄` and of conductor exponent `1` at each place of `S ∪ S̄`, so that its conductor has norm
`∏_{w∈S} q_w²`.
(b) For real `x > 1`, `L^S(x, ν) = L(x, ν̃)`, where `L(s, ν̃) = ∏_w L_w(s, ν̃_w)` is the finite Euler product of
`AnalyticNumberTheoryPartI §2.3a` (Hecke continuation and functional equation), whose factors at the places of
`S ∪ S̄` are `1`.
(c) `L(s, ν̃)` continues to an entire function of `s`, and for real `x` with `−min_τ μ_τ < x < 1 + min_τ μ_τ`,
`|L(1 − x, ν̃)| = C(x)·|L(x, ν̃)|·∏_{w∈S} q_w^{2x−1}`, where `C(x) = |D_E|^{x−1/2}·∏_τ Γ_ℂ(x + μ_τ)/Γ_ℂ(1 − x + μ_τ)`,
with `Γ_ℂ` as in §2.3a.
(d) For `k ∈ ℕ` with `k ≤ μ_τ` for every `τ`, 6.9 (a) holds with `Λ` the restriction of `L(·, ν̃)` to `(−k, ∞)` and
with the function `C` of (c), which is positive on `[1, k + 1)` and depends only on `E` and `μ`; and 6.9 (b) follows
from (c) and 6.2 (a). So 6.9 is a consequence of Hecke's continuation and functional equation for `ν̃`, together with
the non-vanishing 6.2 (a).

6.9 records neither the continuation off the real line, nor the root number of `ν̃` and the argument of `Λ(1 − z)`,
nor the value of `C`.

*Needs:* 6.2 (a), 6.9; `IdelicReciprocityCountsAndCyclotomicClassGroups §§7.1, 7.6, 8.1, 8.5` (base change, tame
parts, Euler products, archimedean components); `AnalyticNumberTheoryPartI §2.3a` (Hecke continuation and functional
equation).

### 7.5 The density of Siegel's formula as a product of local densities, and the masses

*Origin:* comparison of the density `δ` of 3.1 (c) with Siegel's singular series, the product of the local
representation densities (Siegel (1935); Braun (1941)), and of 3.5 with the exact mass formula, of which its ratios
are quotients (Gan, Hanke and Yu (2001)); not part of the formal proof.

*Route:* (a) Two characters of `E⁺_v` trivial on `O_v` and on no larger fractional ideal differ by a unit `u`, and
`z ↦ uz` preserves `dz`. The function `z ↦ ∫ Φ_v(x)·ψ′_v(z·x*x) dx` is the Fourier transform of the image measure;
`Φ_v` is a finite combination of indicators of classes `x₀ + ϖ_v^c R_v^n`, and the Gauss sum of a class at a frequency
`z` has modulus at most a constant times `|z|^{−n}` for `|z|` large (a Weyl differencing bound, as in 3.7 (c)), which
is integrable on `E⁺_v` when `n ≥ 2`. Fourier inversion for a finite measure with integrable Fourier transform, `dz`
being self-dual for `ψ′_v`, gives the continuous density and its value at `α`. (b) For a finite adele `t` of `E⁺`,
`ψ_f(t/2)` is the standard character of the finite adeles of `E⁺` at `t`, because the trace of `t` from `E` to `E⁺` is
`2t`; as the trace maps `R_v` onto `O_v` (`E/E⁺` is unramified), `{z : ψ_f(zÔ) = 1}` is the inverse different of `E⁺`,
so the measure of 3.1 (c) on `z` is `∏_v N(𝔡_v)⁻¹·dz`, `𝔡_v` the different of `E⁺_v`, and that on `x` is
`vol(Ô)^n·∏_v dx`. At each `v`, replacing `z` by a generator of `𝔡_v^{−1}` times `z` turns the component at `v` of
that character into a character `ψ′_v` and multiplies the measure by `N(𝔡_v)`. For almost all `v` (`Φ_v = 1_{R_v^n}`,
`α ∈ O_v`), the local integrand is `1` on `O_v` and has modulus `q_v^{−en}` at the `z` of order `−e < 0`: at an inert
place each coordinate gives `(−q_v)^{−e}` (`GeometryOfNumbersAndQuadraticArithmetic §3.2`, the norm Gaussian
`unramified_hermitian_norm_gaussian`), at a split place `x*x` is a sum of products of the two components and each
coordinate gives `q_v^{−e}`; so its integral off `O_v` is at most `2q_v^{1−n}`. As `Σ_v q_v^{−2} < ∞`, for `n ≥ 3` the
product of the integrals of the moduli converges, and the integral over the finite adeles of `E⁺` of the product of
the local integrands is the product of their integrals (Fubini over finite sets of places and dominated convergence).
(c) `GeometryOfNumbersAndQuadraticArithmetic §3.2` (the finite Fourier count `hermitian_finite_fourier_count` for a
source of rank one, and the density `hermitianLocalDensity` as the limit of the normalised counts) writes
`Den(I_n, ⟨α⟩)` as the limit, as `N → ∞`, of the integral defining `δ_v` restricted to `z ∈ ϖ_v^{−N}O_v`, which is
`δ_v` by the absolute convergence of (a). For `α = 1` the local integrand is `ψ′_v(−z)` times the `n`-th power of
`∫_{R_v} ψ′_v(z·x̄x) dx`, which is `1` for `z ∈ O_v` and `(−q_v)^{−e}` (inert) or `q_v^{−e}` (split) for `z` of order
`−e < 0`; and `∫ ψ′_v(−z) dz` over the `z` of order `−e` is `−1` for `e = 1` and `0` for `e ≥ 2`. So
`δ_v(1_{R_v^n}, 1)` is `1 − (−q_v)^{−n}` at an inert place and `1 − q_v^{−n}` at a split place, which is
`L_v(n, η_v^n)⁻¹` in both cases. (d) 3.5 (b), with (c) above for `n = j + 1 ≥ 3`, and `vol(Ô) = 2^f·rd_E^{−f}`
(`AdelicUnitaryGroupsAndAlgebraicModularForms §2.1`, with `|D_E| = rd_E^{2f}`).

For a finite place `v` of `E⁺` let `O_v` be the integers of `E⁺_v`, `q_v` the order of its residue field,
`E_v = E ⊗_{E⁺} E⁺_v` (a field if `v` is inert, `E⁺_v × E⁺_v` if `v` splits) with integers `R_v`, `ψ′_v` a character
of `E⁺_v` trivial on `O_v` and on no larger fractional ideal, and `dz`, `dx` the Haar measures of `E⁺_v` and of
`E_v^n` that give `O_v` and `R_v^n` volume `1`. For a locally constant compactly supported `Φ_v ≥ 0` on `E_v^n` and
`α ∈ E⁺_v` put `δ_v(Φ_v, α) = ∫_{E⁺_v} ∫_{E_v^n} Φ_v(x)·ψ′_v(z(x*x − α)) dx dz`. Let `η` be the quadratic character of
`E/E⁺` (unramified, with `η_v(ϖ_v) = −1` at the inert and `1` at the split places) and
`L(s, η^n) = ∏_v L_v(s, η_v^n)`.
(a) If `n ≥ 2`, the outer integral converges absolutely, `δ_v(Φ_v, α)` does not depend on the choice of `ψ′_v`, and it
is the value at `α` of the continuous density, for `dz`, of the image of the measure `Φ_v(x) dx` under `x ↦ x*x`.
(b) If `n ≥ 3`, `Φ₀ = ⊗_v Φ_v` with `Φ_v = 1_{R_v^n}` for almost all `v`, and `α ∈ E⁺`, then `∏_v δ_v(Φ_v, α)`
converges absolutely and `δ(Φ₀, α) = vol(Ô)^n·∏_v δ_v(Φ_v, α)`.
(c) Let `n ≥ 2`. If `v` is inert and `α ∈ O_v`, `α ≠ 0`, then `δ_v(1_{R_v^n}, α)` is the hermitian local density
`Den(I_n, ⟨α⟩)` of `GeometryOfNumbersAndQuadraticArithmetic §3.2` (Local densities and Siegel polynomials), for the
unramified extension `E_v/E⁺_v`, the target `I_n` and the source of rank one and norm `α`. At every `v`,
`δ_v(1_{R_v^n}, 1) = L_v(n, η_v^n)⁻¹`; hence, for `n ≥ 3`, `δ(1_{Ô^n}, 1) = vol(Ô)^n·L(n, η^n)⁻¹`.
(d) For `j ≥ 2`, `mass(j + 1)/mass(j) = rd_E^{f(2j+1)/2}·(j!/(2π)^{j+1})^f·L(j + 1, η^{j+1})`. This is the ratio of
`HermitianFormsAndLattices §6.4 (b)` for the standard lattices of ranks `j` and `j + 1`, since `|D_{E⁺}| = rd_E^f`
(`E/E⁺` is unramified).

Layer 3 writes the singular series as the one adelic integral `δ` and the masses through ratios; (b) and (c) give the
product of local densities, and (d) the exact ratio, by which 3.5 (d) is equivalent, under its hypotheses, to
`|log L(j + 1, η^{j+1})| ≤ 2/2^u`.

*Needs:* 3.1, 3.5, 3.7 (c); `AdelicUnitaryGroupsAndAlgebraicModularForms §2.1` (standard character, Haar measures,
`vol(Ô)`); `GeometryOfNumbersAndQuadraticArithmetic §3.2` (Local densities and Siegel polynomials);
`HermitianFormsAndLattices §6.4 (b)` (ratios of masses).

## What the library already provides

None of the results of this roadmap is in the Tau Ceti library or in Mathlib in the form needed. One neighbouring
result is there, on other objects:

- Kneser neighbours of integral quadratic `ℤ`-lattices, the neighbour construction, and that neighbours lie in one
  genus: `TauCeti.IntegralLattice.IsNeighbor`, `TauCeti.IntegralLattice.neighbor`,
  `TauCeti.IntegralLattice.IsNeighbor.sameGenus` (no hermitian lattices; 1.2 does not follow from them).

On Tau Ceti's main branch, later than the revision pinned here: Hecke's functional equation for the completed partial
zeta function of an ideal class over any number field, `TauCeti.LFunctions.completedPartialZeta_one_sub` (no
character); and the L-functions of Hecke characters, `TauCeti.LFunctions.Grossencharacter.lFunctionC`, defined as the
meromorphic continuation when one exists, whose existence is not proved there in general. A continuation and
functional equation for Hecke characters in the library would imply 6.9 after identifying the base change of a split
tame character with a Grössencharacter and its Euler product off `S ∪ S̄` (7.4 (a), (b)).

## Results taken from other roadmaps

Witt's extension theorem over a field with involution, in the matrix form used (left invertible `X`, `Y` with
`X*JX = Y*JY` satisfy `gX = Y` with `g ∈ U(J)`), is taken from `HermitianFormsAndLattices §1.1 (b)` (in 2.2 and
6.4), as in `AdelicUnitaryGroupsAndAlgebraicModularForms`. No other result of the route (Layers 1–6) is taken whole
from another
roadmap. The sections that state modest forms of general theorems name, in a closing sentence, the general section
that also implies them: `HermitianFormsAndLattices §2.5 (d)` (2.7), `§5.4` (1.2 (c), (d)), `§6.0a` and `§6.5 (b)`
(3.2, 3.3), `§6.4 (b)` (3.5 (d)); `AdelicAlgebraicGroups §3.4` (2.2); `ThetaKernelsForUnitaryDualPairs §6.4a`
(2.6 (c) for Schwartz–Bruhat data and isotropic `T`); `AnalyticNumberTheoryPartI §2.3a` (6.9). The objects on which
the statements are made (adelic unitary groups, the Weil representation on the Banach space of data, Hecke characters
of `U(1)`, discrete series coefficients) are those of the sibling roadmaps named on the `*Needs:*` lines.

Layer 7 rests on the roadmaps of the standard objects:
`WeilRepresentationsOnBanachSpacesOfData §§10.1 (d), 10.2 (a), 10.4 (a), (b), 10.6 (b), 10.7 (b), (e), 10.8 (b)`, for
the comparison of the data, the Weil representation, the theta functional and the slices with the Schwartz–Bruhat
model, and `AdelicUnitaryGroupsAndAlgebraicModularForms §§8.1 (b), 8.2 (a), (b), 8.5`, for the groups and the forms;
`MetaplecticAutomorphicForms §3.3` (Unitary dual-pair splittings), `§4.5` (Adelic Weil representation), `§5.1` (Theta
kernel), `§6.2` (Siegel–Weil section), `§6.4` (Anisotropic Siegel–Weil formula), `§6.11` (Local doubling zeta
integral) and `§6.12` (Factorization of theta pairings), `AutomorphicLFunctionsAndLocalFactorsPartII §1.3` (degenerate
Siegel Eisenstein continuation), `§2.2` (unitary unramified denominator), `§2.3` (unramified unitary doubling formula)
and `§3.1` (unitary doubling identity), and `ThetaKernelsForUnitaryDualPairs §§6.4a, 6.13a` (7.1, 7.2);
`HermitianFormsAndLattices §2.5 (d)` (7.3; `AdelicAlgebraicGroups §4.2` (Strong approximation and arithmetic closures)
states strong approximation only for sets of places that contain the archimedean ones);
`AnalyticNumberTheoryPartI §2.3a` (Hecke continuation and functional equation) (7.4);
`GeometryOfNumbersAndQuadraticArithmetic §3.2` (Local densities and Siegel polynomials) and
`HermitianFormsAndLattices §6.4 (b)` (7.5).

## References

- `[ShortProof]`: the folder `grh` of <https://github.com/lsernau/grh-lean> at commit
  `72fead102f663d5c7a407964a13dc0cf9d977207`; this roadmap covers `src/Lib/SiegelWeil`.
- S. Böcherer, *Über die Fourier-Jacobi-Entwicklung Siegelscher Eisensteinreihen*, Math. Z. 183 (1983).
- H. Braun, *Zur Theorie der hermitischen Formen*, Abh. Math. Sem. Hamburg 14 (1941).
- Eischen, Harris, Li, Skinner.
- E. Freitag, *Singular Modular Forms and Theta Relations*, Lecture Notes in Math. 1487, Springer (1991).
- W. T. Gan, J. Hanke, J.-K. Yu, *On an exact mass formula of Shimura*, Duke Math. J. 107 (2001).
- M. Greenberg, J. Voight, *Lattice methods for algebraic modular forms on classical groups* (2014).
- M. Kirschmer, *Definite quadratic and hermitian forms with small class number* (2016).
- J.-S. Li, *Non-vanishing theorems for the cohomology of certain arithmetic quotients*, Crelle 428 (1992).
- J.-S. Li, *Automorphic forms with degenerate Fourier coefficients*, Amer. J. Math. 119 (1997).
- Y. Liu (2011).
- V. Platonov, A. Rapinchuk, *Algebraic groups and number theory* (1994).
- S. Rallis, *On the Howe duality conjecture*, Compositio Math. 51 (1984).
- S. Rallis, *Injectivity properties of liftings associated to Weil representations*, Compositio Math. 52 (1984).
- S. Rallis, *L-functions and the oscillator representation*, Lecture Notes in Math. 1245 (1987).
- C. L. Siegel, *Über die analytische Theorie der quadratischen Formen*, Ann. of Math. 36 (1935).
- J. Tate, *Fourier analysis in number fields and Hecke's zeta-functions* (thesis, 1950).
- A. Weil, *Sur la formule de Siegel dans la théorie des groupes classiques*, Acta Math. 113 (1965).
- C. Wu, *Irreducibility of theta lifting for unitary groups*, J. Number Theory 133 (2013).
