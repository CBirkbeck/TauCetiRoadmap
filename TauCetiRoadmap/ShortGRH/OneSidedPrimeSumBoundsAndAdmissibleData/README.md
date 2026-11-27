# Roadmap: one-sided prime sum bounds and admissible data

This roadmap states the frame of the shorter route [ShortProof] to the Riemann hypothesis for Dirichlet L-functions:
the analytic step at the start and at the end, the data on which the arithmetic part is built, and the inequality in
which the arithmetic parts meet. The other roadmaps of the family `ShortGRH` prove the inputs of Theorems A and B,
which this roadmap states (Layer 5), and Theorem C (DeterminantsOfThetaLiftChains §6.3), and refer to its set-up
(Layers 1–4) for their data and letters.

The argument has this shape. Fix a positive multiple `q₀` of `18480` and a prime `d ≡ q₀/2 − 1 (mod q₀)`, and let
`K = ℚ(√−d)` with quadratic character `χ_K = (·/d)`. The remainder `R_{q₀}(y)` is a smoothed sum of `Λ(n)(1 − χ_K(n))`
over the integers `n ≡ 1 (mod q₀)` up to `y`, less its main term and its constant, divided by `y` (0.1); it is
`y^{−1}` times a signed mean of the Riesz remainders of the Dirichlet characters modulo `q₀` and of their twists by
`χ_K` (7.4). An upper bound `R_{q₀}(y) ≤ y^{β−1}` for all large `y`, asked for every prime `d` of a residue class,
excludes zeros of the L-functions modulo `q₀` in `Re s > β` (0.2): only an upper bound is needed, by Landau's theorem.
To prove such a bound at a large integer `x`, one builds admissible data (Layers 2 and 3): a CM field `E = K(ζ_{q₁})`
whose degree `2f` lies between `2x^{11}` and `2x^{12}`, a weight `κ` on its infinite places, three scales
`x ≤ x₁ ≤ b`, ranks, three auxiliary primes and the twists. Prime sums restricted by the place of a Frobenius element
(Layer 4) combine into a total remainder `rem`, which is a positive multiple of `R_{q₀}(x)` up to remainders at the
much larger scale `x₁`. A family of theta lifts of automorphic forms on definite unitary groups carries an upper bound
for its covolume (Theorems A and B) and a lower bound (Theorem C), both read in a twisted lattice (Layer 1): a family
of maps with a test of integrality at each pair `ι` and no lattice of its own, in which index and covolume are
upper-bound predicates. The main amount cancels between them and leaves `m·rem ≤ f·a·(log b)⁵` (6.1). Dividing by the
size of `m·rem` and using the prime number theorem at `x₁` gives `R_{q₀}(x) ≤ (64 φ(q₀) + 3) x^{−1/2+6ε}` (6.2), the
bound that the criterion needs; the last section passes to every Dirichlet character (6.3), and to the critical line
and the Riemann hypothesis (6.4).

The standard theory is the reference, and Layer 7 states what the objects of the route are in its terms; the end
theorems (6.3, 6.4) are standard statements. For an odd prime `d` that does not divide `q`, `y·R_q(y)` is a signed
mean of Riesz remainders, so by the explicit formula `|R_q(y)|` is at most a constant times `y^{β−1}` for `y ≥ 2` when
no L-function of a character modulo `q`, and none of its twist by `χ_K`, vanishes in `Re s > β ≥ 1/2`, and a two-sided
bound of that size for one `d` makes the zeros of the two families cancel in `Re s > β` (7.4); the criterion 0.2 asks
only the upper bound, for every prime `d` of a class, and separates the two families. The bookkeeping of Layer 1
consists of upper-bound predicates named after standard notions: "the colength of `N` in `M` divides `z`" says, over a
discrete valuation ring, that the length of `M/(M ∩ N)` is at most the valuation of `z`, and, over a valuation domain
and for `M` free of finite rank, that `M ∩ N` contains a submodule of `M` whose elementary divisors have product
dividing `z` (7.3); for the constant family of an algebraic number, "height at most `c`" bounds from above minus the
mean of the logarithms of the absolute values of its conjugates, a quantity that is at most its Weil height and can be
negative (7.2); and in the twisted lattice of a lattice on which a rational positive definite form is integral, a
linearly independent family of rational vectors has index at most `δ` and covolume at most `c` exactly when `δ` is at
least the logarithm of the index, in the lattice that the family spans, of the sublattice of its vectors that lie in
the given lattice, and `c` is at least minus twice the Arakelov degree of the lattice that the family spans (7.1). The
target lattice of 5.1 is a twisted lattice with several twists, for which no lattice of integral target forms is
defined, and Theorems A, B and C are stated on its predicates. The objects of the route are one way to reach the end
theorems, and the route's proofs are stated on them.

The roadmaps of the family that prove the inputs are:
`DivisibilityOfThetaDerivatives` (divisibility of jets of theta functions of CM lattices, the field and its characters,
the integral vacuum vector), `ThetaLiftChainsAndTheSeesawIdentity` (source forms, target forms, chains of lifts, the
Poincaré map and the seesaw identity), `CompositeThetaLiftsAndShortForms` (the divisibility and the size of the
composite lift and the short source forms, the inputs of Theorem A), `SecondMomentsOfPoincareSeries` and
`RemainingAndMainTermsOfSecondMoments` (the second moment of the Poincaré map, the input of Theorem B),
`DeterminantsOfThetaLiftChains` (norms of chains, their determinants, auxiliary forms and Theorem C),
`NormsOfThetaLiftsAndExchangeIdentities` (the lower bound for one lift), `PairsOfFramesAtOnePlace` (the local
integrals of the main term), `CongruencesOfTwistedThetaLifts` (congruences and regular families of twists) and
`SelmerBoundsForAnticyclotomicTwists` (the twisting theorem and the local losses).

Layer 0 defines the remainders `R_q` and proves the one-sided criterion. Layer 1 gives the bookkeeping of colengths,
heights and twisted lattices, and the lower bound for a covolume by a twist for each prime. Layer 2 fixes the
parameters, the field `E` and its group of infinite places. Layer 3 defines admissible data, records their sizes, the
twists and the characters of the lifts, and proves that admissible data exist at every large integer. Layer 4 defines
the prime sums and writes the total remainder through `R_{q₀}` and `R₁`. Layer 5 defines the target lattice and the
normalised Poincaré maps, states Theorems A and B, and names Theorem C, which DeterminantsOfThetaLiftChains §6.3
states and proves. Layer 6 proves the main inequality and the one-sided bound, and from them the end theorems, which
GeneralizedRiemannHypothesisFromWindowBounds §§5.1–5.3 state, in all their forms. Layer 7 compares twisted lattices,
heights of families, colength bounds, the remainders `R_q` and the prime sums with lattices and their Arakelov
degrees, norms and Weil heights of algebraic numbers, lengths over discrete valuation rings and elementary divisors
over valuation domains, and Riesz sums and Riesz remainders of Dirichlet characters.

## Conventions and notation

**Labels.** Every section that states something carries, under its heading, `*Origin:*` (one of `published:`,
`adapted from`, `particular to this proof:`, `this roadmap's own formulation:`, `definitions and conventions`) and
`*Method of the formal proof:*`, how [ShortProof] proves it. The last line of a section names where [ShortProof]
proves it, as `[ShortProof], path (declaration)`, with the path relative to its directory `src/`; the names on that
line, which begin `New.`, are declarations of [ShortProof] and not names of this roadmap or of its `Suggested.lean`.
The sections of Layer 7 compare objects of the route with standard ones; [ShortProof] does not state them, so they
carry `*Proof route:*` in place of the method and have no such last line. Theorems A and B (5.3, 5.4) are stated here
and proved from the sections named on their `*Needs:*` lines; Theorem C is DeterminantsOfThetaLiftChains §6.3. A
section of another roadmap of the family is cited by number, `<Roadmap> §k.n`.

**Background.** `ShortGRH background (…)` on a `*Needs:*` line names, in words, a published result that [ShortProof]
proves among its background results (its folder `src/Lib`) and that no roadmap section states in the form used; the
parenthesis gives that form and the declaration of [ShortProof].

**Statements of the formal proof.** The hypotheses, ranges and constants of a target of Layers 0–6 are those of
[ShortProof]; where a section states more, its last sentence says which case [ShortProof] proves.

**Quantifiers.** "For all large `y`" means: there is `Y` with the property for every real `y ≥ Y`; "for every large
integer `x`" likewise over the integers. Constants written as numerals (`10¹²`, `13`, `64 φ(q₀) + 3`, …) are those of
[ShortProof].

**Places of ℂ.** A *pair* `ι` is a prime `ℓ = ℓ(ι)` with a ring isomorphism `ι : ℂ → ℚ̄_ℓ`, `ℚ̄_ℓ` an algebraic closure
of `ℚ_ℓ` with the absolute value extending `|·|_ℓ`. Write `ῑ(z) = ι(z̄)` (a pair with the same prime) and
`𝒪_ι = {z ∈ ℂ : |ι(z)| ≤ 1}`, a valuation ring. `Aut(ℂ)` is the group of all field automorphisms of `ℂ`.

**Analytic notation.** `Λ` is the von Mangoldt function, `φ` Euler's function, `γ` Euler's constant, `z₊ = max(z, 0)`.
For a Dirichlet character `ψ`, `L(s, ψ)` is Mathlib's `DirichletCharacter.LFunction`, imprimitive characters included.

### Table of symbols

| Symbol | Meaning | Defined |
|---|---|---|
| `q₀, d, K, χ_K` | the modulus (a multiple of `18480`), the prime `d ≡ q₀/2 − 1 (mod q₀)`, `K = ℚ(√−d)`, `χ_K = (·/d)` | 2.1 |
| `E_ψ, λ_q, G_q, c_q, R_q` | `L(s, ψ)`, times `s − 1` if `ψ` is principal; the weight `Λ(n)(1 − χ_K(n))` on `n ≡ 1 (mod q)`, a mean of logarithmic derivatives, its real value at `1`, the remainder; `c₁` is the case `q = 1` | 0.1 |
| `s, l₀, T, q₁, q₂` | the exponent of the tower, the least power of `3` above `27s`, `T = 3l₀2^s`, `q₁ = q₀T`, `q₂ = (q₀d)^{s+6}` | 2.1 |
| `E, ζ, Φ, Φ_v, f` | `E = K(ζ)`, `ζ` of order `q₁`; the group of infinite places of `E`, isomorphic to `(ℤ/q₁)^×`; the embedding chosen at `v`; `f = #Φ` | 2.2 |
| `[ν], ν·σ, −νσ` | the place named by an integer `ν` (the identity place if `ν` is not prime to `q₁`); products in `Φ` | 2.2 |
| `rd_E, Ω` | the root discriminant of `E`; `Ω = exp(γ − Re (L′/L)(1, χ_K))·2π/rd_E` | 2.2 |
| `C_P` | a constant depending on `q₀` and `d` only | 3.1 |
| `x, x₁, b, a` | the length of the prime sum, the second cut-off, the weight at the `b`-places (integers), `a = xb` | 3.2 |
| `m, r, k, t, n_j` | the number of lifts (a power of `2`), the rank of the target (a power of `3`), `k = r + 1 − m`, `t = 5r`, `n_j = k + j(t + 1)` | 3.2 |
| `Φ_a, Φ_b` | the `a`-places (class `1` modulo `q₀`) and the `b`-places (a sparse set of places of class `−1`) | 3.2 |
| `κ, Δ, κ_j, κ_{(i)}` | the weight (`b` on `Φ_b`, `a/x₁` elsewhere), the gap `Δ = 2r⁸`, `κ_j = κ + (j + 1/2)Δ`, `κ_{(i)} = κ + (i + 1)Δ/2` | 3.2 |
| `p₀, p₁, M, N, π_M, π_N` | the primes of the principal level, `M = p₀p₁`, the level `N`, `π_M ∈ 𝒪_K` with `π_M π̄_M = M`, `π_N ∈ 𝒪_E` with `π_N π̄_N = N` | 3.2 |
| `N₋` | the lower end of the range of the level | 3.1 |
| `δ_E` | the generator of the different of `E` of DivisibilityOfThetaDerivatives §1.1 (b), whose absolute value at an infinite place `v` is that of `Φ_v(δ_E)` | DivisibilityOfThetaDerivatives §1.1; 3.3 |
| chosen places | the finite places of `E` dividing `π_M` | DivisibilityOfThetaDerivatives §1.5 |
| `ξ, Q(ξ), Nm Q(ξ)` | a twist (written `ϑ` in [ShortProof]), its modulus, the product of the norms of the places of the modulus | 3.4 |
| `μ_j⁰, μ♭, χ, ω, υ` | the character of lift `j`; the characters of weight `−κ₀` and of weight `0` with tame part `ω`; the residue characters at the chosen places; the splitting character on `U(1)` | 3.4; `ω`: DivisibilityOfThetaDerivatives §1.5; `μ♭, χ` (there `χ₀, χ_M`): §1.6 (a); `υ`: §1.4 (c) |
| `s_fin, s_∞, s_main` | the prime sum at an order and a place, the size of a derivative, the expected value | 4.1 |
| `s_p(y, σ), S_p` | the local prime sum at a prime `p` and its total `S_p = Σ_σ s_p(κ(σ), σ)` (written `F(p)` in CompositeThetaLiftsAndShortForms) | 4.1 |
| `h_dir, h_main, rem, u_E` | the direction amount, the main amount `mk·h_dir`, the total remainder, the error unit `f·a·(log b)³` | 4.1 |
| `X_j, Y_j, W_j, V_j` | the definite and indefinite Hermitian spaces of the chains | ThetaLiftChainsAndTheSeesawIdentity §2.1 |
| `𝒮, 𝒮_ram, 𝒯, d_T` | the source forms on `X₀` (there `𝒮_X`), the ramified ones, the target forms on `Y₀`, `d_T = dim 𝒯` | ThetaLiftChainsAndTheSeesawIdentity §2.8 (`𝒮`, `𝒮_ram`), §2.7 (`𝒯`) |
| `Ḡ, ρ, e₀, 𝒫` | the finite group `∏ GL_r(𝔽_w)` over the chosen places (there `𝖦`), its action on forms of principal level on `Y₀`, the central idempotent of the good forms, the Poincaré map | ThetaLiftChainsAndTheSeesawIdentity §2.5 (`Ḡ`, `e₀`), §2.7 (`ρ`), §2.19 (`𝒫`); 5.2 |
| `Θ_ξ, Z(ξ)` | the chain of `m` lifts with twist `ξ` on the target forms, `Z(ξ) = det(Θ_ξ^*Θ_ξ)` | ThetaLiftChainsAndTheSeesawIdentity §2.15; 5.1 |
| `J_m(ξ), ι_ξ, B_ξ(Ψ)` | the level of the forms on `Y_m` for the twist `ξ`; the chain of lifts from `Y₀` to `Y_m` (`ι_ξ = Θ_ξ`); the composite lift with chain datum `Ψ` | ThetaLiftChainsAndTheSeesawIdentity §§2.6, 2.12, 2.15; 5.1, 5.2 |
| `gain_ℓ, err_ℓ, g_ℓ, c_B, c_ss, s𝔭, 𝒮_int` | the divisibility asked at `ℓ`, the allowed error, `⌊gain_ℓ − err_ℓ⌋`, `∏ ℓ^{−g_ℓ}`, the seesaw constant, the normalised Poincaré map translated by `s ∈ Ḡ`, the ramified source forms integral at every pair | 5.2 |
| `‖·‖²_σ` | the squared norm of the conjugate by `σ ∈ Aut(ℂ)` | 1.3, 5.1 |
| `disc(B), 𝒪_F·y` | the discriminant of a lattice `B ⊂ ℚ^C` (the Gram determinant of a basis for `G`); the `𝒪_F`-module spanned by a family `y` | 7.1 |
| `habs(z)` | the absolute logarithmic Weil height of an algebraic number `z` | 7.2 |
| `v_O, len_O` | the normalised valuation of a discrete valuation ring `O`; the length of an `O`-module | 7.3 |
| `ψ°, 𝒢_ψ, 𝒵_χ` | the primitive character that induces `ψ`; the Riesz remainder of `ψ`; the sum over the zeros of the completed L-function of a primitive `χ` | 7.4 |

## Layer 0: the remainders `R_q` and the one-sided criterion

The remainder `R_q` belongs to a signed family: the characters modulo `q` enter with weight `+1` and their twists by
`χ_K` with weight `−1`, so the poles of its transform at zeros of the twisted L-functions have the opposite sign. The
criterion therefore asks the bound for every prime `d` of a residue class and chooses one `d` whose twists have no zero
in the relevant box.

### 0.1 The remainders `R_q`

*Origin:* definitions and conventions.

*Method of the formal proof:* the definitions are those of [ShortProof]; (a) and (b) are read off the definitions, and
(c) writes `R_q(y)` as `∫₁^y 𝓔_q(t) t^{−2} dt − c_q`, with `𝓔_q(t) = Σ_{n≤t} λ_q(n) − t/φ(q)`, and bounds `|𝓔_q(t)| ≤ 13t`
by Chebyshev's bound `Σ_{n≤t} Λ(n) ≤ 6t`.

Let `d` be a prime, `χ_K = (·/d)` the Legendre symbol, and `q ≥ 1`.

- `λ_q(n) = Λ(n)(1 − χ_K(n))` if `n ≡ 1 (mod q)`, and `λ_q(n) = 0` otherwise.
- For a Dirichlet character `ψ` modulo `q` let `E_ψ(s) = L(s, ψ)` if `ψ` is not principal and the entire continuation of
  `(s − 1)L(s, ψ)` if it is; let `ψχ_K` be the product, a character modulo `qd`, and
  `G_q(s) = φ(q)^{−1}(Σ_ψ (E′_{ψχ_K}/E_{ψχ_K}(s) − E′_ψ/E_ψ(s)) − 1)`, the sum over all characters modulo `q`.
- `c_q = Re G_q(1)`, and for real `y > 0`
  `R_q(y) = Σ_{1≤n≤y} λ_q(n)(1/n − 1/y) − (log y)/φ(q) − c_q`.

When `d` varies, `R_q^{(d)}` is written. Facts:

- (a) `0 ≤ λ_q(n) ≤ 2Λ(n)` for every `n`.
- (b) For `0 < z ≤ A`, `A` an integer: `Σ_{n=1}^{A} λ_q(n)(A/n − A/z)₊ = A(R_q(z) + (log z)/φ(q) + c_q)`.
- (c) For `1 ≤ y ≤ z`: `|R_q(z) − R_q(y)| ≤ 13(z − y)/y`.

For odd `d` prime to `q`, `G_q(s)` continues `Σ λ_q(n)n^{−s} − s/(φ(q)(s − 1))` from `Re s > 1`, and `R_q(y) → 0`; so
`c_q` is the constant that makes `R_q` tend to `0` (see 0.2 and 6.2 for where these are used). Write `𝒢_1` and
`𝒢_{χ_K}` for the Riesz remainders of the trivial character and of `χ_K` in
RiemannHypothesisStatementsAndConsequences §8.4a (b) (written `G` there; they are functions of `y`, not the function
`G_q(s)` above). Then `y·R₁(y) = 𝒢_1(y) − 𝒢_{χ_K}(y)` for odd `d`, since `c₁ = −1 − γ + Re (L′/L)(1, χ_K)`.

**In standard terms.** For an odd prime `d` that does not divide `q`, `y·R_q(y) = φ(q)^{−1}Σ_ψ (𝒢_ψ(y) − 𝒢_{ψχ_K}(y))`
for every `y > 0`, the sum over the characters `ψ` modulo `q`, with `𝒢_ψ` the Riesz remainder of `ψ` (7.4 (a)); for a
primitive character it is the remainder of RiemannHypothesisStatementsAndConsequences §8.4a (b), and in general it
differs from the remainder of the primitive character that induces `ψ` by `O(log y)` (7.4 (b)). The identity for `R₁`
above is the case `q = 1`. By the explicit formula of that section, `y·R_q(y)` is, up to `O(log y)`, a signed mean of
sums over the zeros of the completed L-functions of the primitive characters that induce the `ψ` and the `ψχ_K` (7.4
(c)), and if no `L(s, ψ)` and no `L(s, ψχ_K)` vanishes in `Re s > β`, with `β ≥ 1/2`, then `|R_q(y)| ≤ C_q·y^{β−1}`
for every `y ≥ 2` (7.4 (d)).

*Needs:* Mathlib `ArithmeticFunction.vonMangoldt`, `DirichletCharacter.LFunction`, `Chebyshev.psi_le_const_mul_self`.

[ShortProof], `New/Reduction/Zeros/PrimeError` (`New.lambdaKResidueClass`, `New.logDerivMean`, `New.primeRemainder`,
`New.lambdaKResidueClass_le_two_mul_vonMangoldt`, `New.primeRemainder_eq_sum`, `New.re_logDerivMean_one`);
`New/Reduction/Zeros/PrimeNumberTheorem` (`New.abs_primeRemainder_sub_le`)

### 0.2 The one-sided criterion

*Origin:* adapted from Landau (1905): Landau's theorem for Laplace integrals of functions of one sign
(PositivityOfDirichletSeriesWithKernels §6.4), here applied to the remainder `R_{q₀}^{(d)}`, whose characters carry weights of
both signs, under an upper bound asked for every prime `d` of a residue class.

*Method of the formal proof:* by orthogonality modulo `q`, `λ_q` is `φ(q)^{−1}Σ_ψ (ψΛ − ψχ_KΛ)`; for odd `d` prime to `q`
its Dirichlet series is `s/(φ(q)(s − 1)) + G_q(s)` on `Re s > 1`, and partial summation gives the transform
`∫₀^∞ R_q(e^v)e^{(1−s)v} dv = (G_q(s)/s − c_q)/(s − 1)` on `Re s > 2`. The right side is meromorphic on `ℂ`; at `s = 1`
it has no pole, because `G_q(1)` is real (the transform is real on the real axis); elsewhere in `Re s > 0` its poles are
at most simple, with residue `Σ_ψ (ord_s E_ψ − ord_s E_{ψχ_K})/(φ(q)·s(1 − s))`, by the local form of a logarithmic
derivative. Given `β < Re ρ`, the proof chooses a prime `d` of the class for which no `L(s, ψχ_K)` vanishes in
`β ≤ Re s`, `|Im s| ≤ |Im ρ|`. In that box the residue is `Σ_ψ ord_s E_ψ/(φ(q₀)s(1 − s))`, which is `≥ 0` at real
`s > β` (for `s ≥ 1` there is no zero). Landau's lemma for the transform of a function bounded above by `e^{(β−1)v}`
then forbids a pole at `ρ`; so every `E_ψ`, hence every `L(·, ψ)`, is nonzero at `ρ ≠ 1`.

Let `q₀ ≥ 1` with `8 | q₀`, let `d₀ ≡ 7 (mod 8)` be prime to `q₀`, and let `β > 1/2`. Suppose that for every prime
`d ≡ d₀ (mod q₀)` one has `R_{q₀}^{(d)}(x) ≤ x^{β−1}` for all large real `x`. Then `L(ρ, ψ) ≠ 0` for every Dirichlet
character `ψ` modulo `q₀` and every `ρ ≠ 1` with `Re ρ > β`.

**In standard terms.** Every prime `d ≡ d₀ (mod q₀)` is odd and prime to `q₀`. In the other direction, 7.4 (d) gives:
if no `L(s, ψ)` and no `L(s, ψ·(·/d))`, `ψ` modulo `q₀`, vanishes in `Re s > β`, with `β ≥ 1/2`, then
`|R_{q₀}^{(d)}(y)| ≤ C_{q₀}·y^{β−1}` for every `y ≥ 2`, so that `R_{q₀}^{(d)}(y) ≤ y^{β′−1}` for all large `y` at
every `β′ > β`. A two-sided bound `|R_{q₀}^{(d)}(y)| ≤ C_{q₀}·y^{β−1}` for one `d` makes the zeros of the `L(s, ψ)`
and those of the `L(s, ψ·(·/d))` cancel in `Re s > β`, counted with multiplicity (7.4 (e)). The criterion is an
application of Landau's theorem (PositivityOfDirichletSeriesWithKernels §6.4 (Meromorphic and one-sided forms)) to the
transform of `R_{q₀}^{(d)}`, for a prime `d` chosen by ZeroFreeRegionsAndPrimesInShortWindows §3.5: it asks only the
upper bound, but for every prime `d` of the class, and concludes that no `L(s, ψ)`, `ψ` modulo `q₀`, vanishes at a
point `ρ ≠ 1` with `Re ρ > β`.

*Needs:* 0.1; RiemannHypothesisStatementsAndConsequences §8.4a (the transform of a Riesz sum and its poles at zeros);
PositivityOfDirichletSeriesWithKernels §6.4 (Landau's theorem in one-sided form); ZeroFreeRegionsAndPrimesInShortWindows §3.5 (for `β > 1/2`,
real `H` and an invertible class modulo `N` all of whose primes are `≡ 7 (mod 8)` and prime to `N`, some prime `d` of
the class has no zero of any `L(s, ξ·(·/d))`, `ξ` modulo `N`, in `β ≤ Re s`, `|Im s| ≤ H`).

[ShortProof], `New/Reduction/Zeros/Criterion` (`New.LFunction_ne_zero_of_primeRemainder_le`);
`New/Reduction/Zeros/PrimeError` (`New.LSeries_lambdaKResidueClass_eq_add_logDerivMean`,
`New.integral_primeRemainder`, `New.isPolar_primeRemainder`)

## Layer 1: colength, heights and twisted lattices

This layer is general: no data occur. A twisted lattice is a family of maps `Θ_ξ`, one for each twist `ξ`, out of one
complex space; integrality at a pair `ι` is read through the twists allowed at its prime, while sizes are read through
the trivial twist alone. The product formula, in the form of 1.2, turns the three kinds of bounds into the lower bound
for a covolume of 1.4.

### 1.1 Colength dividing an element

*Origin:* particular to this proof: a matrix form of a colength bound, which needs no bases and no inclusion between
the two modules, with its calculus; (f) and (g) rest on the elementary divisor theorem over valuation rings.

*Method of the formal proof:* (b)–(e) compose the matrices, the second part of (e) chaining the bounds along a list;
(f) writes a square matrix over a valuation domain in Smith normal form and adds one coordinate condition at a time,
each of colength dividing one elementary divisor; (g) applies the Smith normal form to the matrix given by the
hypothesis for a finite generating family, and compares with the length of `∏ O/(a_j)` over a discrete valuation
ring.

Let `O` be a commutative ring, `V`, `U` modules over `O`, `M, N, P ⊂ V` submodules and `z ∈ O`. Say that *the colength
of `N` in `M` divides `z`*, written `M ⊸_z N`, if for every `n` and every family `Φ_1, …, Φ_n ∈ M` there is an
`n × n` matrix `m` over `O` with `det m | z` and `Σ_k m_{ik}Φ_k ∈ N` for every `i`. Say that an endomorphism `y` of `V`
is *onto `M` modulo `p^n` up to colength `c`* (`p ∈ O`, `c ∈ ℝ`) if `y(M) ⊂ M` and `M ⊸_{p^l} (y(M) + p^n M)` for some
integer `0 ≤ l ≤ c`.

The name is that of [ShortProof]. In the literature the colength of a submodule `N ⊂ M` is the length of `M/N`; here
no length is defined, and `M ⊸_z N` is a condition on matrices, with no inclusion between `M` and `N`, which over a
discrete valuation ring says exactly that the length of `M/(M ∩ N)` is at most the valuation of `z` (7.3 (b)).

- (a) If `M ⊂ N` then `M ⊸_1 N`; if `M ⊸_z N` and `z | z′` then `M ⊸_{z′} N`.
- (b) `M ⊸_z N` and `N ⊸_a P` give `M ⊸_{za} P`.
- (c) For `f : U → V` linear and `M′, N′ ⊂ U` with `f(M′) ⊂ M` and `x ∈ N′` whenever `x ∈ M′`, `f(x) ∈ N`:
  `M ⊸_z N` gives `M′ ⊸_z N′`.
- (d) For `f : V → U` linear and `M′, N′ ⊂ U` with `M′ ⊂ f(M) + N′` and `f(N) ⊂ N′`: `M ⊸_z N` gives `M′ ⊸_z N′`.
- (e) If an endomorphism `f` keeps `M`, `M ⊸_z (f(M) + aM)` and `M ⊸_{z′} (N + aM)`, then `M ⊸_{zz′} (f(N) + aM)`;
  and if each `y_i` of a finite list is onto `M` modulo `p^n` up to colength `c_i`, the product is onto `M` modulo `p^n`
  up to colength `Σ c_i`.
- (f) Let `O` be a valuation domain and `ι` a finite set. If a square matrix `A` over `O` has `det A | z` and its image
  lies in `L ⊂ O^ι`, then `O^ι ⊸_z L`. In particular `O^ι ⊸_{a^{#ι}} aO^ι`; for a linear form `λ : V → O`,
  `M ⊸_a {v ∈ M : a | λ(v)}`; and for a finite set `S ⊂ V`, `(N + span S) ⊸_{z^{#S}} (N + zV)`.
- (g) Let `O` be a discrete valuation ring and `M` finitely generated. If `M ⊸_z N` then the length of `M/(M ∩ N)` is at
  most the length of `O/(z)`. If `y` is onto `M` modulo `p^n` up to colength `c`, the length of `M/(y(M) + p^nM)` is at
  most `l` times the length of `O/(p)` for some integer `0 ≤ l ≤ c`.

**In standard terms.** Over a discrete valuation ring `O`, `M ⊸_z N` holds exactly when
`len_O(M/(M ∩ N)) ≤ len_O(O/(z))`, and, for `p ≠ 0` and `c ≥ 0`, `y` is onto `M` modulo `p^n` up to colength `c`
exactly when `y(M) ⊂ M` and `len_O(M/(y(M) + p^nM)) ≤ ⌊c⌋·len_O(O/(p))` (7.3 (b), (c)); (g) is one half of these
equivalences, for finitely generated `M`. The route uses the predicate over the valuation rings `𝒪_ι`, which are not
discrete: over them `𝒪_ι/(z)` has infinite length for every nonzero non-unit `z` (7.3), so that a colength bound
cannot be stated through a length there. Over a valuation domain, for `M` free of finite rank, `M ⊸_z N` holds exactly
when there are a basis `Φ′_1, …, Φ′_n` of `M` and `a_1, …, a_n ∈ O` with `a_1⋯a_n | z` and every `a_iΦ′_i` in `N`,
that is, when `M ∩ N` contains a submodule of `M` whose elementary divisors have product dividing `z` (7.3 (d)); (f)
is one half of this equivalence for `M = O^ι`.

*Needs:* Mathlib `Ring.ord_eq_addVal` (over a discrete valuation ring, the length of `O/(z)` is the valuation of
`z`; [ShortProof] `Lib/General/Algebra/FittingIdealsAndLengths.lean` (`New.relLength`,
`New.length_quot_span_eq_addVal`)); ShortGRH background (the Smith normal form of a square matrix over a valuation
domain `O`: `A = L·diag(a)·R` with `L`, `R` invertible over `O`, the `a_j` not required to divide one another;
[ShortProof] `Lib/General/LinearAlgebra/IntegralLattices.lean` (`New.IsValuationPair.smith_normal_form`),
`Lib/General/LinearAlgebra/HermiteForm.lean` (`New.isValuationPair_top`)).

*Relation to the library.* Tau Ceti `Matrix.exists_smith_normal_form_of_isDiscreteValuationRing` gives the Smith normal
form over a discrete valuation ring. Item (f) is used over the valuation rings `𝒪_ι`, which are not discrete, so the
background entry stands.

[ShortProof], `New/Reduction/Lattices/Colength` (`New.ColengthDvd`, `New.ColengthDvd.trans`, `New.ColengthDvd.comap`,
`New.ColengthDvd.map`, `New.ColengthDvd.comp`, `New.IsOntoUpToColength`, `New.IsOntoUpToColength.prod`,
`New.ColengthDvd.of_det_dvd`, `New.colengthDvd_top_smul_top`, `New.colengthDvd_inf_comap_span`,
`New.colengthDvd_sup_span`, `New.ColengthDvd.relLength_le`, `New.IsOntoUpToColength.exists_relLength_le`)

### 1.2 Heights of families over all places

*Origin:* particular to this proof: an upper bound for the height of a family of complex numbers with one member for
each pair `ι`, with a multiplier common to all pairs; its calculus and the product formula.

*Method of the formal proof:* the calculus multiplies the multipliers and adds the exponents. For (f), a multiplier `H`
whose images under all pairs at one prime are bounded is algebraic; the norm `q` of `H` from `ℚ(H)` to `ℚ` is a product
of conjugates, each the image of `H` under some automorphism of `ℂ` or some pair, because every embedding of `ℚ(H)`
extends to such a map; so `log|q| ≤ nα` and `log|q|_ℓ ≤ n h_ℓ log ℓ` with `n = [ℚ(H) : ℚ]`, and the product formula for
`q ∈ ℚ^×` gives `0 ≤ nc`.

A family `y = (y_ι)` of complex numbers indexed by the pairs has *height at most `c`* if there are `H ∈ ℂ^×`, `α ∈ ℝ`
and `h_ℓ ≥ 0` (one for each prime `ℓ`) with `|σ(H)| ≤ e^α` for every `σ ∈ Aut(ℂ)`, `|ι(H y_ι)| ≤ ℓ(ι)^{h_{ℓ(ι)}}` for
every pair `ι`, and `α + Σ_{ℓ∈S} h_ℓ log ℓ ≤ c` for every finite set `S` of primes. Only this upper bound is defined.

The name is that of [ShortProof]. In the literature the height of an algebraic number `z` is its Weil height
`habs(z) ≥ 0`, the sum of `log⁺|z|_v` over the places `v` of `ℚ(z)`, weighted by the local degrees and divided by the
degree of `z`; here "height at most `c`" is a predicate on families indexed by the pairs, which takes one multiplier
`H` for all pairs, the largest absolute value of a conjugate of `H` and, at each prime, the largest of the
`|ι(Hy_ι)|`, and for the constant family of an algebraic number `z` it bounds from above minus the mean of the
logarithms of the absolute values of the conjugates of `z`, which can be negative (7.2).

- (a) If `y` has height at most `c ≤ c′` and `|ι(y′_ι)| ≤ |ι(y_ι)|` for every `ι`, then `y′` has height at most `c′`;
  multiplying each `y_ι` by a real power `N_ι^{e_ι}` with `e_ι ∈ ℚ` and `N_ι` a positive integer prime to `ℓ(ι)` keeps
  the bound.
- (b) If `H ≠ 0`, `|σ(H)| ≤ e^α` for all `σ`, `|ι(Hy_ι)| ≤ e^{e_{ℓ(ι)}}` for all `ι` with real numbers `e_ℓ` of any sign,
  and `α + Σ_{ℓ∈S} e_ℓ ≤ c` for every finite set `S` of primes, then `y` has height at most `c`.
- (c) If `H ≠ 0` and `|σ(H)| ≤ e^c` for all `σ`, the constant family `H^{−1}` has height at most `c`.
- (d) Heights add: if `y` and `y′` have heights at most `c` and `c′`, the product `yy′` has height at most `c + c′`;
  the same for finite products, and `y^n` has height at most `nc`.
- (e) For `q ∈ ℚ` and `B` larger than the numerator and the denominator of `|q|`,
  `log|q| + Σ_{p<B prime} log|q|_p = 0` (with `log 0 = 0`).
- (f) If the constant family `1` has height at most `c`, then `c ≥ 0`. Consequently, if `z ≠ 0`, the constant family
  `z` has height at most `c` and `|σ(z)| ≤ e^{c′}` for every `σ ∈ Aut(ℂ)`, then `−c ≤ c′`.

**In standard terms.** For a nonzero algebraic number `z` of degree `n` over `ℚ`, the constant family `z` has height
at most `n·habs(z)`, and if it has height at most `c` then `|N_{ℚ(z)/ℚ}(z)| ≥ e^{−nc}` and `habs(z) ≥ −c`; for
rational `z` it has height at most `c` exactly when `log|z| ≥ −c` (7.2), `habs` being the absolute logarithmic Weil
height of DiophantineApproximationAndTranscendence §0.2 (Mahler measure, house and absolute height). (f) follows from
7.2 (c), which rests on the product formula, the largest of the `|σ(z)|` being at least their geometric mean (a number
whose conjugates under `Aut(ℂ)` are bounded is algebraic). For a family that varies with the pair no standard height
is defined.

*Needs:* ShortGRH background (a complex number whose images under all isomorphisms `ℂ → ℚ̄_ℓ`, for one prime `ℓ`,
are bounded is algebraic; for a countable ring `K` with injective maps to `ℂ` and to an algebraically closed field `L`
of the cardinality of `ℂ`, some isomorphism `ℂ → L` carries the first map to the second, so every embedding of a number
field into `ℚ̄_ℓ` extends to an isomorphism `ℂ → ℚ̄_ℓ`; [ShortProof] `Lib/General/NumberTheory/PadicLimitsValuation.lean`
(`New.isAlgebraic_of_norm_complexToCp_le`), `Lib/General/Geometry/GaloisCovers.lean` (`New.exists_ringEquiv_extend`));
Mathlib `padicNorm`, `Algebra.norm_eq_prod_embeddings`.

[ShortProof], `New/Reduction/Lattices/Heights` (`New.PrimePadicIso`, `New.HeightLe`, `New.HeightLe.mono`,
`New.HeightLe.rpow_mul`, `New.HeightLe.of_mul_le`, `New.HeightLe.inv_const`, `New.HeightLe.mul`, `New.HeightLe.prod`,
`New.HeightLe.pow`, `New.log_product_formula`, `New.HeightLe.nonneg_of_one`, `New.HeightLe.neg_le_of_norm_map_le`)

### 1.3 Twisted lattices, index and covolume

*Origin:* definitions and conventions.

*Method of the formal proof:* (a)–(d) combine the matrices of the index in diagonal blocks and sort a family by the
set it comes from; (e) is Hadamard's inequality and (f) Fischer's inequality, for the positive semidefinite Gram
matrices taken with the rational matrix `G`; (g) uses that `G` is rational, so that `σ` of a Gram determinant pairs the
conjugates by `σ` and by `z ↦ conj σ(conj z)`, and the Cauchy–Schwarz inequality for the determinant of a pairing.

Let `V` be a complex vector space and `T` a set with an element `1` (the twists, `1` the trivial twist). A *twisted
lattice* on `V` consists of:

- for each `ξ ∈ T` a complex inner product space `S_ξ` and a linear map `Θ_ξ : V → S_ξ`;
- a relation "`ξ` is allowed at `ℓ`" between twists and primes;
- for each `ξ` and each pair `ι` an `𝒪_ι`-submodule `Λ_{ξ,ι} ⊂ S_ξ` (the vectors integral at `ι`), such that
  `|ι⟨φ, φ′⟩| ≤ 1` whenever `ξ` is allowed at `ℓ(ι)`, `φ ∈ Λ_{ξ,ῑ}` and `φ′ ∈ Λ_{ξ,ι}`;
- a finite set `C`, a linear map `coord : S_1 → ℂ^C` and a matrix `G ∈ M_C(ℚ)`, positive definite as a complex matrix,
  with `⟨φ, φ′⟩ = coord(φ)^* G coord(φ′)`.

A vector `v ∈ V` is *integral at `ι`* if `Θ_ξ v ∈ Λ_{ξ,ι}` for every `ξ` allowed at `ℓ(ι)`. For `σ ∈ Aut(ℂ)` let
`σΘ₁v ∈ ℂ^C` be `coord(Θ₁v)` with `σ` applied to each coordinate, and `‖v‖²_σ = (σΘ₁v)^* G (σΘ₁v)`. For a finite family
`y = (y_i)_{i∈I}` in `V`:

- `y` has *index at most `δ`* if there are `δ_ℓ ≥ 0`, one for each `ℓ`, with `Σ_{ℓ∈S} δ_ℓ log ℓ ≤ δ` for every finite
  set `S` of primes, such that for every pair `ι` some matrix `u ∈ M_I(𝒪_ι)` has `|ι(det u)| ≥ ℓ(ι)^{−δ_{ℓ(ι)}}` and
  `Σ_k u_{ik}y_k` integral at `ι` for every `i`; the matrix is the same for all twists;
- `y` has *covolume at most `c`* if `|det((σΘ₁y_i)^* G (σΘ₁y_k))_{i,k}| ≤ e^c` for every `σ ∈ Aut(ℂ)`.

The names are those of [ShortProof]. A twisted lattice is not a lattice: at each pair `ι` the vectors integral at `ι`
form an `𝒪_ι`-module, defined through the twists allowed at `ℓ(ι)`, and no lattice over `ℤ` or over the integers of a
number field is among its data; "index at most `δ`" and "covolume at most `c`" are predicates on families, not
numbers. In the literature a lattice in a hermitian space is a finitely generated module over `ℤ`, or a projective
module over the integers of a number field, that spans a rational structure of the space, and the index of a
sublattice and the covolume are numbers; 7.1 states what the predicates are for the twisted lattice of a lattice over
`ℤ` on which a rational positive definite form is integral. CongruencesOfTwistedThetaLifts §1.5 uses "twisted lattice"
for another notion, a lattice of a Galois representation together with a model of a character.

If `V` is a finite-dimensional inner product space, `Z(ξ) = det(Θ_ξ^*Θ_ξ)`, the Gram determinant of the images of an
orthonormal basis. Facts:

- (a) Index bounds increase with `δ` and do not depend on the numbering of the family.
- (b) If `y` and `y′` have index at most `δ` and `δ′`, the union has index at most `δ + δ′`.
- (c) Let `e_ℓ ≥ 0` with `Σ_{ℓ∈S} e_ℓ log ℓ ≤ δ` for every finite set `S` of primes. If for every pair `ι` some
  `𝒪_ι`-module `M ⊂ V` contains the family and the colength of the vectors integral at `ι` in `M` divides `ℓ(ι)^j`
  (1.1) for an integer `0 ≤ j ≤ e_{ℓ(ι)}`, then the family has index at most `δ`.
- (d) Let `t` be a finite set and `A_s ⊂ V` (`s ∈ t`) sets such that every finite family in `A_s` has index at most
  `δ`. Then every finite family with members in `⋃_{s∈t} A_s` has index at most `#t·δ`.
- (e) If `‖z_i‖²_σ ≤ e^h` for `i = 1, …, n` and every `σ`, then `(z_i)` has covolume at most `nh`.
- (f) If `y` has covolume at most `c` and `‖z_i‖²_σ ≤ e^h` for `i = 1, …, n` and every `σ`, then `y` together with
  `z_1, …, z_n` has covolume at most `c + nh`.
- (g) If `y` has covolume at most `c`, then `|σ(det⟨Θ₁y_i, Θ₁y_k⟩)| ≤ e^c` for every `σ ∈ Aut(ℂ)`.
- (h) `Z(ξ) ≠ 0` if `Θ_ξ` is injective, and `Z(ξ) = det(Θ_ξ^*Θ_ξ)` when `S_ξ` is finite-dimensional.

**In standard terms.** For the twisted lattice of a lattice `L ⊂ ℚ^C` on which `G` is integral (7.1), an `F`-linearly
independent family `y` in `F^C`, `F ⊂ ℂ` a number field, has covolume at most `c` exactly when its Gram determinant
`det(η(y_i)^*Gη(y_k))` is at most `e^c` at every embedding `η : F → ℂ`, and then the hermitian `𝒪_F`-module `𝒪_F·y`
has Arakelov degree at least `−[F:ℚ]c/2` (ArakelovGeometryAndAbelianHeights §1.3 (The Arakelov degree of a hermitian
bundle)); if `y` has index at most `δ`, the index of `𝒪_F·y ∩ 𝒪_F·L` in `𝒪_F·y` is at most `e^{[F:ℚ]δ}`; and for
`F = ℚ` the family has covolume at most `c` and index at most `δ` exactly when `disc(ℤ·y) ≤ e^c` and
`[ℤ·y : ℤ·y ∩ L] ≤ e^δ` (7.1 (b), (c)). Facts (e) and (f) rest on Hadamard's and Fischer's inequalities for Gram
determinants.

*Needs:* 1.1; Tau Ceti `Matrix.det_gram_le_prod_norm_sq` (Hadamard's inequality for Gram determinants) and
`Matrix.PosSemidef.det_fromBlocks_le` (Fischer's inequality: the determinant of a positive semidefinite Hermitian
matrix in block form is at most `det(A)·det(D)` for the diagonal blocks `A`, `D`; [ShortProof]
`Lib/General/LinearAlgebra/MinorProducts.lean` (`New.fischer_det_inequality`, `New.hadamard_det_inequality`),
`Lib/General/LinearAlgebra/GramDeterminant.lean` (`New.norm_det_formGram_le`)); ShortGRH background (the
Cauchy–Schwarz inequality for determinants: for a positive semidefinite Hermitian matrix `G` and two families `(a_i)`,
`(b_i)` of vectors with the same finite index set, `|det(a_i^* G b_k)|² ≤ |det(a_i^* G a_k)|·|det(b_i^* G b_k)|`;
[ShortProof] `Lib/General/LinearAlgebra/GramDeterminant.lean` (`New.norm_det_pairing_sq_le`),
`Lib/General/LinearAlgebra/HermitianMatrices.lean` (`New.norm_det_sq_le_of_posSemidef`)).

[ShortProof], `New/Reduction/Lattices/TwistedLattice` (`New.TwistedLattice`, `New.TwistedLattice.integralVectors`,
`New.TwistedLattice.IndexLe`, `New.TwistedLattice.normSqAt`, `New.TwistedLattice.CovolumeLe`,
`New.TwistedLattice.volume`, `New.TwistedLattice.indexLe_of_colengthDvd`, `New.TwistedLattice.IndexLe.sumElim`,
`New.TwistedLattice.indexLe_card_mul`, `New.TwistedLattice.covolumeLe_of_normSqAt_le`,
`New.TwistedLattice.CovolumeLe.sumElim`, `New.TwistedLattice.CovolumeLe.norm_map_det_gram_le`,
`New.TwistedLattice.volume_ne_zero`)

### 1.4 A twist for each prime

*Origin:* particular to this proof: a lower bound for the covolume of a family in a twisted lattice by its index, the
height of `Z(1)/Z(ξ_ι)` and the sizes and denominators of vectors completing it to a basis, with sizes read for the
trivial twist and valuations for a twist allowed at each prime.

*Method of the formal proof:* write `Gram(ξ)` for the Gram determinant of the images under `Θ_ξ` of the basis
`y ∪ z`; then `Gram(ξ) = Z(ξ)·Gram_V`, with `Gram_V` the Gram determinant of the basis `y ∪ z` in `V`, so
`Gram(1) = |γ(ξ_ι)|^{2n′}Gram(ξ_ι)·|γ(ξ_ι)|^{−2n′}·Z(1)/Z(ξ_ι)` for each pair. At `ι` and at `ῑ`, the matrices of the
index together with the scalar `γ(ξ_ι)` carry the images under `Θ_{ξ_ι}` into the integral vectors, so the
integrality of inner products bounds `|ι(|γ(ξ_ι)|^{2n′}Gram(ξ_ι))|` by `ℓ^{2δ_ℓ}`: that family has height at most `2δ`.
Adding the heights of the three factors (1.2 (d)) bounds the height of the constant family `Gram(1)`, and its
conjugates are at most `e^{c + n′b_short}` by 1.3 (f), (g); the product formula (1.2 (f)) gives the inequality.

Let `V` be a finite-dimensional complex inner product space with a twisted lattice whose maps `Θ_ξ` are all injective.
Let `y_1, …, y_n, z_1, …, z_{n′}` be a basis of `V`, and choose for each pair `ι` a twist `ξ_ι` allowed at `ℓ(ι)`.
Suppose:

- `y` has covolume at most `c` and index at most `δ`;
- `γ : T → ℂ^×` is such that `γ(ξ)Θ_ξz_i ∈ Λ_{ξ,ι}` for every `i`, every pair `ι` and every `ξ` allowed at `ℓ(ι)`;
- `‖z_i‖²_σ ≤ e^{b_short}` for every `i` and every `σ ∈ Aut(ℂ)`;
- the family `ι ↦ |γ(ξ_ι)|^{−2}` has height at most `b_denom`, and the family `ι ↦ Z(1)/Z(ξ_ι)` has height at most
  `b_vol`.

Then `0 ≤ c + 2δ + n′(b_short + b_denom) + b_vol`.

**In standard terms.** For the twisted lattice of a lattice `L ⊂ ℚ^C` on which `G` is integral, with the trivial twist
at every pair, `n′ = 0` and a basis `y` of `ℚ^C`, the conclusion, for all `c` and `δ` that the hypotheses allow, is
the inequality `disc(ℤ·y ∩ L) ≥ 1` for the lattice `ℤ·y ∩ L`, that is, its Arakelov degree is at most `0`; it is a
consequence of the integrality of the discriminant of `L` (7.1 (d)). The other terms account for the completion of `y`
to a basis by vectors of bounded size and denominators, and for reading integrality at `ι` through the twist `ξ_ι`
while sizes are read through the trivial twist.

*Needs:* 1.2, 1.3.

[ShortProof], `New/Reduction/Lattices/TwistedLattice` (`New.TwistedLattice.covolume_add_index_nonneg`,
`New.TwistedLattice.heightLe_pow_mul_det_gram`, `New.TwistedLattice.norm_pow_mul_det_gram_le`)

## Layer 2: the parameters and the field

The parameters `q₀` and `d` are fixed once and for all; the exponent `s`, and with it the field `E`, grows with the
point `x` at which the prime sum is bounded. The infinite places of `E` form a group, the Galois group of `E` over `K`
read through the action on `ζ`; the `a`-places, the `b`-places and the weights live on it.

### 2.1 The parameters

*Origin:* definitions and conventions.

*Method of the formal proof:* the congruence is used in the form of the two divisibilities; the facts are elementary
congruences: every prime of `q₁` divides `q₀`, hence `2(d + 1)`, and `d ≡ −1` modulo `4p` gives `(p/d) = 1` by
reciprocity for the Jacobi symbol; `d² ≡ 1 (mod q₀)` gives the last fact.

*Parameters* `P = (q₀, d)` consist of a positive integer `q₀` divisible by `18480 = 16·3·5·7·11` and a prime `d` with
`q₀ | 2(d + 1)` and `q₀ ∤ d + 1`, that is `d ≡ q₀/2 − 1 (mod q₀)`. Put `K = ℚ(√−d) ⊂ ℂ` and `χ_K = (·/d)`. For `s ≥ 0`
let `l₀(s) = 3^{⌊log₃ s⌋+4}`, `T(s) = 3^{⌊log₃ s⌋+5}·2^s = 3 l₀(s) 2^s`, `q₁(s) = q₀T(s)` and `q₂(s) = (q₀d)^{s+6}`
(with `⌊log₃ 0⌋ = 0`). Then:

- (a) `q₀ ≠ 0`, `d ≡ 7 (mod 8)` and `d > 64`; if `q₀ > 0` is even and `d ≡ q₀/2 − 1 (mod q₀)`, then `q₀ | 2(d + 1)` and
  `q₀ ∤ d + 1`.
- (b) For `s ≥ 1`, `27s < l₀(s) ≤ 81s`; `2^{s+1} | q₁(s)`.
- (c) Every prime `p | q₁(s)` divides `(d + 1)/4` and has `χ_K(p) = 1`; a prime `p` with `χ_K(p) ≠ 1` has `p ≥ 13`.
- (d) `q₁(s)` is prime to `d`, and `q₁(s)d | q₂(s)`.
- (e) No power of `d` is `≡ −1 (mod q₀)`.

So, by the splitting dictionary of ImaginaryQuadraticClassNumber §2.1, `χ_K` is the quadratic character of `K`, the
primes dividing `q₁` split in `K`, and `d` is the only prime ramified in `K`.

**Checks.** `q₀ = 18480` and `d = 9239 = q₀/2 − 1` are parameters: `9239` has no prime factor below `97` and
`97² > 9239`, and `9239 ≡ 7 (mod 8)`.

*Needs:* ImaginaryQuadraticClassNumber §2.1 (the splitting dictionary, for `K` of discriminant `D = −d`: `χ_D` is the
quadratic character of conductor `d`, that is `(·/d)`, and a prime `p` ramifies, splits or is inert in `K` as
`χ_D(p) = 0, 1, −1`); Mathlib `jacobiSym`, `legendreSym`.

[ShortProof], `New/Reduction/Data/FieldsAndPlaces` (`New.Parameters`, `New.Parameters.instPrimeSevenModEight`,
`New.Parameters.sixty_four_lt_d`, `New.l₀`, `New.towerDeg`, `New.Parameters.q₁`, `New.Parameters.q₂`,
`New.Parameters.chiK_eq_one_of_dvd`, `New.Parameters.thirteen_le_of_chiK_ne_one`, `New.Parameters.coprime_q₁_d`,
`New.Parameters.q₁_mul_d_dvd_q₂`, `New.Parameters.d_pow_ne_neg_one`); `New/Reduction/OneSidedBound`
(`New.dvd_two_mul_succ_and_not_dvd_succ`)

### 2.2 The field `E` and its infinite places

*Origin:* definitions and conventions. With `K` and `ι₀`, the field `E` is an abelian CM host in the sense of
FrobeniusRestrictedRieszSums §0.1, whose places are the elements of `Gal(E/K)`; this section fixes the one host
`K(ζ_{q₁})` and the group of its infinite places, and that section is not a supplier.

*Method of the formal proof:* the cyclotomic polynomial of order `q₁` stays irreducible over `K` because `K` embeds in
`ℚ(ζ_d)` by a Gauss sum and `[ℚ(ζ_d, ζ_{q₁}) : ℚ] ≥ φ(d)φ(q₁)`, `q₁` being prime to `d`; `E` is totally complex because
`K` is; two `K`-embeddings with the same place are equal or complex conjugate, and conjugate ones would make the
embedding of `K` real. The group law on the infinite places is transported from `Gal(E/K)` along the bijection that
sends `g` to the place of a fixed `K`-embedding composed with `g` (a bijection because `K`-embeddings with the same place
are equal and all infinite places of `E` lie over the one of `K`); the other objects are defined from it.

Fix parameters `P` and `s ≥ 0`, and write `q₁ = q₁(s)`.

- `E = E_s = K(ζ)`, the cyclotomic extension of `K` of order `q₁`, with a chosen primitive `q₁`-th root of unity `ζ`.
  The cyclotomic polynomial of order `q₁` is irreducible over `K`, so `g ↦ a` with `g(ζ) = ζ^a` is an isomorphism
  `Gal(E/K) ≅ (ℤ/q₁)^×`; `E` is totally complex; and two `K`-embeddings of `E` into `ℂ` inducing the same infinite
  place are equal.
- `Φ = Φ_s`, the set of infinite places of `E`, `f = #Φ`. Fix a `K`-embedding `ι₀ : E → ℂ`. The map
  `Gal(E/K) → Φ`, `g ↦ (place of ι₀∘g)`, is a bijection, by the last fact and because all infinite places of `E` lie
  over the one of `K`; `Φ` carries the group law that makes it an isomorphism, and `Φ ≅ Gal(E/K) ≅ (ℤ/q₁)^×`, the
  second map sending `g` to the class `a` with `g(ζ) = ζ^a`. The embedding chosen at `v ∈ Φ` is `Φ_v = ι₀ ∘ g_v`, `g_v`
  the automorphism of `v`; these form a CM type of `E`.
- For an integer `ν`, `[ν] ∈ Φ` is the place of the class of `ν` if `ν` is prime to `q₁`, and the identity place
  otherwise; for `ν ∈ ℤ` and `σ ∈ Φ`, `νσ` means `[ν]·σ`. For `m | q₁`, the *class modulo `m`* of a place is its image in
  `(ℤ/m)^×`.
- `rd_E` is the root discriminant of `E`, and `Ω = Ω_s = exp(γ − Re (L′/L)(1, χ_K))·2π/rd_E`.

*Needs:* 2.1; Mathlib `IsCyclotomicExtension`, `Polynomial.cyclotomic`, `NumberField.InfinitePlace`.

[ShortProof], `New/Reduction/Data/FieldsAndPlaces` (`New.Parameters.E`, `New.Parameters.ζ`,
`New.Parameters.irreducible_cyclotomic`, `New.Parameters.algHom_eq_of_mk_eq`, `New.Parameters.galOfPlace`,
`New.Parameters.placeMulEquiv`, `New.Parameters.placeOfInt`, `New.Parameters.placeClass`, `New.Parameters.bigOmega`)

### 2.3 Arithmetic of `E`

*Origin:* adapted from the classical theory of cyclotomic fields (Washington (1997), Chapter 2): here the extension of
`K = ℚ(√−d)` by the roots of unity of an order prime to `d`, with its infinite places read as its Galois group.

*Method of the formal proof:* (a) sends `K` into `ℚ(ζ_d) ⊂ ℚ(ζ_{q₁d})` by a Gauss sum, and the cyclotomic polynomial of
order `q₁` splits in `ℚ(ζ_{q₁d})`; (b) compares degrees of cyclotomic polynomials, the one of order `q₁` being the one
of order `q₀` evaluated at `X^T`, since the primes of `T` divide `q₀`; (d) uses that a root of unity of order not
dividing `q₁` would give a primitive `d`-th root of unity in `E`, against `φ(d)φ(q₁) > [E : ℚ]`.

Let `P` be parameters and `s ≥ 0`, `q₁ = q₁(s)`, `T = T(s)`.

- (a) `E` embeds in `ℚ(ζ_{q₁d})`, so `E` is abelian over `ℚ` and over `K`.
- (b) `f = Tφ(q₀)`, and exactly `T` places have class `1` modulo `q₀`.
- (c) `g_v(ζ) = ζ^{a}` with `a` the class of `v`; for `ν` prime to `q₀`, `g_{[ν]}(ζ) = ζ^ν` and the class of `[ν]` modulo
  every `m | q₁` is `ν`; `[ν]^i = [ν^i]`; `Φ_{vv′} = Φ_v ∘ g_{v′}`; the class of `[ν]` modulo `q₀` is `−1` exactly when
  `ν ≡ −1 (mod q₀)`.
- (d) Every root of unity of `E` is a power of `ζ`; `ζ̄ = ζ^{−1}`; `N_{E/K}(ζ) = 1`.
- (e) `∏_{v∈Φ} Φ_v(y) = N_{E/K}(y)` for `y ∈ E`.

*Needs:* 2.1, 2.2; Mathlib `IsCyclotomicExtension`, `Polynomial.cyclotomic`, `NumberField.InfinitePlace`.

[ShortProof], `New/Reduction/Data/FieldsAndPlaces` (`New.Parameters.toCycloField`, `New.Parameters.numInfPlaces_E`,
`New.Parameters.card_placeClass_eq_one_eq_towerDeg`, `New.Parameters.galOfPlace_placeOfInt_zeta`,
`New.Parameters.placeClass_placeOfInt`, `New.Parameters.placeOfInt_pow`,
`New.Parameters.placeClass_placeOfInt_eq_neg_one_iff`, `New.Parameters.exists_zeta_pow_eq`,
`New.Parameters.star_zeta`, `New.Parameters.norm_zeta_eq_one`, `New.Parameters.prod_phi_eq_norm`)

## Layer 3: admissible data

Admissible data are all the choices made at one point `x`. The scales are separated by powers that grow beyond every
constant: `(log b)^{100} ≤ x`, `x^{10⁶} ≤ x₁`, `x₁^{10⁶} ≤ b`. The `b`-places, where the weight is `b`, form a sparse
set built after Behrend; on the other places the weight is `a/x₁`, so the prime sum has length `x` at the `b`-places
and `x₁` elsewhere.

### 3.1 Sparse sets of places, the constant `C_P` and the lower end `N₋`

*Origin:* definitions and conventions.

*Method of the formal proof:* the bound on `log N₋` compares each term: the mean of `log κ` lies in `[0, log b]`,
`1 ≤ rd_E ≤ q₁d` because `q₁d` lies in the different of `E`, so `19 log b ≤ log(M rd_E/2π) ≤ 23 log b`.

Let `P` be parameters and `s ≥ 0`.

- A set `S ⊂ Φ_s` is *sparse for the primes up to `L`* if for every prime `ℓ ≤ L` and all integers `0 < i < j < l₀(s)`
  there are no `σ, τ, ρ ∈ S` (equal or not) and signs `ε, ε′ ∈ {±1}` such that the classes of `τσ^{−1}` and `ρσ^{−1}`
  modulo the part of `q₁(s)` prime to `ℓ` are `εℓ^i` and `ε′ℓ^j`.
- `C_P = c_vac + (2d + 6) + q₀ + |γ − Re (L′/L)(1, χ_K)| + Σ_ξ |log|Φ′_{q₀}(ξ)||`, the sum over the primitive `q₀`-th
  roots of unity `ξ ∈ ℂ`, `Φ_{q₀}` the cyclotomic polynomial and `c_vac ≥ 0` the constant written `C` in
  DivisibilityOfThetaDerivatives §4.6 (b), which bounds the conjugates of the integral vacuum by `exp(C·q₁²)` (it is
  not the scalar written `c_vac` in that section). It depends on `q₀` and `d` only.
- For `m ≥ 1`, `κ : Φ_s → ℕ`, `M ≥ 1` and real `L`,
  `log N₋(s, m, κ, M, L) = m·f^{−1}Σ_{τ∈Φ_s} log κ(τ) + (m − 1)·log(M·rd_E/2π) − (15/2)L`.

Fact: if `m ≥ 2`, `L ≥ 7`, `1 ≤ κ(τ) ≤ e^L` for every `τ`, `e^{20L} ≤ M ≤ e^{22L}` and `q₁(s)d ≤ e^L`, then
`mL ≤ log N₋(s, m, κ, M, L) ≤ 24mL`.

*Needs:* 2.1, 2.2; DivisibilityOfThetaDerivatives §§1.1, 4.6 (from §1.1: the different of `E` is generated by
`c·P′(ζ)·√−d` with `P′(ζ) | q₁`, so the integer `q₁d` lies in it; from §4.6 (b): the constant `C`, here `c_vac`).

[ShortProof], `New/Reduction/Data/AdmissibleData` (`New.Parameters.IsSparse`, `New.Parameters.constantBound`,
`New.Parameters.logLevelMin`, `New.Parameters.logLevelMin_mem_Icc`, `New.rootDiscr_mem_Icc`)

### 3.2 Admissible data

*Origin:* definitions and conventions.

*Method of the formal proof:* the definitions are those of [ShortProof].

Let `P` be parameters. *Admissible data* `D` for `P` consist of:

- integers `x, x₁, b ≥ 1` with `10¹²·C_P ≤ log log b`, `(log b)^{100} ≤ x`, `x^{10⁶} ≤ x₁`, `x₁^{10⁶} ≤ b` and
  `(log x₁)^6 ≤ log b`;
- integers `m`, `r`, `s` with `√x ≤ m ≤ 2√x`, `x⁵ ≤ r ≤ 3x⁵`, `m = 2^e` and `s = 22e` for some `e ≥ 1` (so
  `2^s = m^{22}`), `r = 3^{e′}` for some `e′ ≥ 1`, `s ≤ 32 log x`, and `q₁x₁ | b` with `q₁ = q₁(s)`; the field of the
  data is `E = E_s`;
- a set `Φ_b ⊂ Φ_s` of places of class `−1` modulo `q₀` with `T(s) ≤ #Φ_b·log b`, sparse for the primes up to `kt`,
  where `k = r + 1 − m` and `t = 5r`;
- the weight `κ : Φ_s → ℕ`, `κ(τ) = b` for `τ ∈ Φ_b` and `κ(τ) = xb/x₁` otherwise (an integer, as `x₁ | b`);
- distinct primes `p₀, p₁ ≡ 1 (mod q₂(s)²)` with `b^{10} ≤ p_i ≤ b^{11}`, and `π̄_M ∈ 𝒪_K` with `π̄_M·conj(π̄_M) = p₀p₁`;
- a prime `N ≡ 1 (mod q₂(s)²)` with `log N₋ ≤ log N ≤ log N₋ + √(log b)`, where `log N₋ = log N₋(s, m, κ, p₀p₁, log b)`
  (3.1), and `π_N ∈ 𝒪_E` with `π_N π̄_N = N`.

Derived numbers: `a = xb`; `k = r + 1 − m` (exact by 3.3); `t = 5r`; `n_j = k + j(t + 1)`; `Δ/2 = r⁸` and `Δ = 2r⁸`;
`κ_{(i)}(σ) = κ(σ) + (i + 1)Δ/2` and `κ_j = κ_{(2j)} = κ + (j + 1/2)Δ`; `Δ/2 − (t + 1)/2`; the number `k + j − 1` of
plus signs of `W_j` (ThetaLiftChainsAndTheSeesawIdentity §2.1); `M = p₀p₁`; `π_M = conj(π̄_M)`, read in `𝒪_E`;
`Φ_a ⊂ Φ_s`, the places of class `1` modulo `q₀`; `f = #Φ_s`; `q₁ = q₁(s)`, `q₂ = q₂(s)`, `T = T(s)`, `l₀ = l₀(s)`;
`rd_E` and `Ω = Ω_s` (2.2); the integers `1 ≤ j ≤ m`, which index the lifts.

*Needs:* 2.1, 2.2, 3.1.

[ShortProof], `New/Reduction/Data/AdmissibleData` (`New.Data`, `New.Data.a`, `New.Data.k`, `New.Data.t`, `New.Data.n`,
`New.Data.halfGap`, `New.Data.gap`, `New.Data.reducedHalfGap`, `New.Data.shiftedWeight`, `New.Data.liftWeight`,
`New.Data.posRank`, `New.Data.M`, `New.Data.aPlaces`); `New/Reduction/Data/LevelAndTwists` (`New.Data.LiftIndex`)

### 3.3 Sizes of the data

*Origin:* particular to this proof: the sizes of the data, and the comparisons between them that the later sections
use.

*Method of the formal proof:* every quantity gets an upper and a lower exponent, `|F| ≤ e^l` and `e^{l′} ≤ F`, computed
from its shape (products add exponents, sums take the larger one plus one); an inequality `F ≤ G` is proved by comparing
an upper exponent of `F` with a lower exponent of `G`, which reduces it to a linear inequality between `log x`, `log x₁`,
`log b`, `log log x₁`, `log log b` and `C_P`, settled by the five inequalities between the scales. The root
discriminant is the geometric mean of `|δ_E|_v` over the infinite places, for a generator `δ_E` of the different with
`|δ_E|_v = A_v·T·√d`, `|log A_v| ≤ C_P`.

For admissible data:

- (a) Scales: `C_P ≥ max(64, q₀, d, φ(q₀))` and `C_P ≤ log b`; `x^{10⁶} ≤ x₁`, `x₁^{10⁶} ≤ b`, `(log x₁)⁶ ≤ log b`,
  `(log b)^{100} ≤ x`; `x₁^{3l₀²} ≤ √b`; `x^{999} ≤ a/x₁ ≤ b/x^{999}`.
- (b) Ranks: `x ≤ m² ≤ 4x`, `m ≥ 10⁴`; `m` and `k` are even, `r` and `t` odd; `r + 1 = k + m`, `100m ≤ k ≤ r ≤ 2k`,
  `r + 6 ≤ t`, `k + t + 1 ≤ Δ/2`; `e^{−2}x⁵ ≤ k`, `t ≤ e⁸x⁵`, `x^{11/2} ≤ n_m ≤ e^{12}x^{11/2}`,
  `x^{40} ≤ Δ/2 ≤ Δ ≤ e^{27}x^{40}`; `1 ≤ s ≤ log x₁`, `m^{594} ≤ 2^{l₀}`.
- (c) Field: `x^{11} ≤ m^{22} ≤ f ≤ q₁ ≤ x^{12}`; `f` is even and `f = φ(q₀)T = φ(q₀)·#Φ_a`;
  `x^{11} ≤ T ≤ x^{11}(log b)^{1/5}`; `q₂ ≤ x^{33q₀d}`; `log h_E ≤ x^{30}` for the class number `h_E` of `E`;
  `x^{10} ≤ rd_E ≤ x^{12}`, and `x^{10} ≤ |δ_E|_v ≤ x^{12}` at every infinite place `v`, for the generator `δ_E` of the
  different of `E` of DivisibilityOfThetaDerivatives §1.1 (b) and `|y|_v = |Φ_v(y)|`; `x^{−13} ≤ Ω ≤ 1`.
- (d) Weights: `q₁ | κ(σ)`; `a/x₁ ≤ κ(σ) ≤ a/x = b`; `κ(σ) + x^{42} ≤ 2b`; `κ(σ) ≤ κ_j(σ) − Δ/2` and
  `κ_j = κ + jΔ + Δ/2`; for `i ≤ 4m`, `κ(σ) ≤ κ_{(i)}(σ) ≤ κ(σ) + x^{42}` and `log κ_{(i)}(σ) ≤ log κ(σ) + 1/x`; for
  `j ≤ 2m`, `κ_j(σ) ≤ 2b`.
- (e) Primes and level: `p_i ≡ 1 (mod q₁d)`, `q₂² | p_i − 1`; `b² < p_i < N`; `b^{20} ≤ M ≤ b^{22}`;
  `m log b ≤ log N₋ ≤ 24m log b` and `m log b ≤ log N ≤ 30m log b`, so `N ≥ b^{101}`; `N ≡ 1 (mod q₁d)`;
  `20 log b ≤ log(M/Ω) ≤ 23 log b` and `|log(M·rd_E/2π)| ≤ 23 log b`.

*Needs:* 2.1, 2.3, 3.1, 3.2; DivisibilityOfThetaDerivatives §1.7 (a) (the generator `δ_E` of the different of `E`
has `|δ_E|_v = A_v·T·√d` and `|log A_v| ≤ C_P` at every infinite place `v`), §1.1 (b), (c) (the generator `δ_E`;
`∏_v |δ_E|_v = rd_E^f`);
ExplicitNumberFields §5.3 (the third form, which uses no computational hypothesis: a number field of degree `n` and
discriminant of absolute value `d_E` has `h_E ≤ (2^{n−1}/(n − 1)!)·√d_E·(log d_E)^{n−1}`; as `log d_E ≤ d_E`, this
gives `h_E ≤ (2^n·d_E)^{n+1}`, the form used; [ShortProof] `Lib/General/NumberTheory/SUnitsAndClassNumber.lean`
(`New.classNumber_le`)).

[ShortProof], `New/Reduction/Data/Magnitudes` (`New.Data.HasLogBound`, `New.Data.le_constantBound`,
`New.Data.scale_inequalities`, `New.Data.le_of_hasLogBound`, `New.Data.ten_thousand_le_m`, `New.Data.r_add_one`,
`New.Data.hundred_mul_m_le_k`, `New.Data.k_even`, `New.Data.t_odd`, `New.Data.r_add_six_le_t`,
`New.Data.k_add_t_add_one_le_halfGap`, `New.Data.q₁_dvd_weight`, `New.Data.liftWeight_eq`, `New.Data.M_mem_Icc`,
`New.Data.levelPrime_modEq_one`); `New/Reduction/Data/Sizes` (`New.Data.x₁_pow_le_sqrt_b`, `New.Data.m_sq_mem_Icc`,
`New.Data.r_le_two_mul_k`, `New.Data.m_pow_le_two_pow_l₀`, `New.Data.f_mem_Icc`, `New.Data.f_even`, `New.Data.q₁_le`,
`New.Data.q₂_le`, `New.Data.log_classNumber_le`, `New.Data.a_div_x₁_mem_Icc`, `New.Data.levelPrime_mem_Ioo`,
`New.Data.bigOmega_le_one`, `New.Data.log_M_div_bigOmega_mem_Icc`, `New.Data.abs_log_M_mul_rootDisc_le`);
`New/Reduction/Data/LevelAndTwists` (`New.Data.weight_mem_Icc`, `New.Data.weight_add_x_pow_le_two_mul_b`,
`New.Data.shiftedWeight_mem_Icc`, `New.Data.log_shiftedWeight_le`, `New.Data.liftWeight_le_two_mul_b`,
`New.Data.logLevelTarget_mem_Icc`, `New.Data.log_N_mem_Icc`, `New.Data.N_modEq_one`);
`New/Derivatives/Field/ChosenPlaces` (`New.Data.hasLogBound_deltaE`, `New.Data.rootDisc_mem_Icc`)

### 3.4 The row parameter, twists and the characters of the lifts

*Origin:* definitions and conventions.

*Method of the formal proof:* the definitions are those of [ShortProof]; the weight of `μ_j⁰` adds the weights of its
factors and multiplies their tame parts; the row parameter is rewritten with `κ_j`.

Let `D` be admissible data, `E` its field and `E⁺` its maximal real subfield. `U(1)` is the norm-one torus of `E/E⁺`, a
group over `E⁺`: `U(1)(R) = {u ∈ (E ⊗_{E⁺} R)^× : uū = 1}` for an `E⁺`-algebra `R`. Its adelic points `U(1)(𝔸_{E⁺})`
are the ideles `u` of `E` with `uū = 1` (written `U(1)(𝔸_E)` in the other roadmaps of the family), and its rational
points `U(1)(E⁺)` the `u ∈ E^×` with `uū = 1`. An *automorphic character* of `U(1)` is a continuous homomorphism
`U(1)(𝔸_{E⁺}) → S¹` trivial on `U(1)(E⁺)`. For a finite place `w` of `E` let `𝔽_w` be its residue field and
`Nm w = #𝔽_w`. An automorphic character `μ` has *weight*
`e : Φ → ℤ` and *tame part* `ψ = (ψ_w)_w`, `ψ_w` a character of `𝔽_w^×`, if `ψ_w = 1` for almost all `w` and
`μ(u) = ∏_{v∈Φ} Φ_v(u_v)^{e(v)}·∏_w ψ_w(u_w mod w)` for every `u` whose finite components are integral.

- *The row parameter* at `v ∈ Φ` is the integer sequence `(λ_i(v))_{i≥0}` with `λ_i(v) = k/2 − 1 − i` for `i < k − 1`
  and `λ_i(v) = Δ/2 − κ_j(v) = −(κ(v) + jΔ)` with `j = i + 2 − k` for `i ≥ k − 1` (`k` is even).
- A *tame character* is a triple `(ξ, ψ, Q)`, written `ξ`: an automorphic character `ξ` of weight `0`, a tame part `ψ`
  of `ξ`, and a finite set `Q = Q(ξ)` of finite places of `E`, its *modulus*, such that `ψ_w = 1` for `w ∉ Q`, `Q` is
  disjoint from its complex conjugate, and `Nm Q(ξ) = ∏_{w∈Q} Nm w` is prime to `MN`. The tame part and the modulus
  belong to the datum: the character does not determine `Q`. The power `ξ^n` is `(ξ^n, ψ^n, Q)`.
- A *twist* is a tame character with `ψ_w ≠ 1` for every `w ∈ Q`; an *`m`-fold twist* is one with `ψ_w^n ≠ 1` for every
  `w ∈ Q` and `1 ≤ n ≤ m`, so that `ξ^n` is a twist for `1 ≤ n ≤ m`. The trivial character, with trivial tame part and
  `Q = ∅`, is the trivial twist `1`, an `m`-fold twist.
- *The characters of the lifts.* `μ_j⁰ = μ♭·(υ^{−Δ}χ)^j`, where `μ♭` has weight `−κ₀` and trivial tame part, `χ` has
  weight `0` and tame part `ω`, and `υ` is the splitting character of the Weil data of `E` restricted to `U(1)`, of
  weight `1` and trivial tame part (DivisibilityOfThetaDerivatives §1.6 (a) for `μ♭` and `χ`, there `χ₀` and `χ_M`;
  §1.5 for `ω`; §1.4 (c) for `υ`). For a tame character `ξ`, the character of lift `j`
  twisted by `ξ` is `μ_j⁰ξ`, and the character of lift `j` of the chain of `ξ` is `μ_j⁰ξ^j`.

Fact: `μ_j⁰` has weight `−κ_j` and tame part `ω^j`; `μ_j⁰ξ` has weight `−κ_j` and tame part `ω^jψ`.

*Needs:* 3.2, 3.3; DivisibilityOfThetaDerivatives §1.5 (the chosen places and the residue characters `ω` of order `q₂`
at them), §1.6 (the characters `μ♭` and `χ`), §1.4 (the splitting character `υ` of the Weil data of `E`);
IdelicReciprocityCountsAndCyclotomicClassGroups §7.1 (automorphic characters of `U(1)` of a CM field with a weight and a
tame part in the sense above; weights add and tame parts multiply under products and powers), §7.6 (b) (the restriction
to `U(1)` of the splitting character of Weil data has weight `1` and trivial tame part).

[ShortProof], `New/Reduction/Data/LevelAndTwists` (`New.Data.targetParameter`, `New.Data.targetParameter_eq`,
`New.Data.TameChar`, `New.Data.TameChar.pow`, `New.Data.Twist`, `New.Data.MFoldTwist`, `New.Data.MFoldTwist.powTwist`,
`New.Data.untwistedLiftChar`, `New.Data.untwistedLiftChar_hasWeight`, `New.Data.liftChar`, `New.Data.hasWeight_liftChar`,
`New.Data.chainChar`)

### 3.5 Sets with no relation of bounded length modulo an integer

*Origin:* adapted from Behrend (1946), large sets of integers without three-term arithmetic progressions, and Shapira
(2006), Behrend-type constructions for sets of linear equations (compare Alon and Shapira (2006), Lemma 4.1 in the
preprint numbering): here one set avoids simultaneously every relation `(α + α′)e₂ ≡ αe₁ + α′e₃` with positive
`α, α′` of sum at most `L`, read modulo `o`; the length `n` of the digit vectors is a parameter, and the lower bound for
the size of the set is given in closed form.
FrobeniusRestrictedRieszSums §0.8 states sets of integers with no relation of length `L`, by the same construction;
here the relations are congruences modulo `o` with positive coefficients, and the count `H^n/(nH²)` is explicit
because 3.6 uses it. Neither statement is deduced from the other.

*Method of the formal proof:* the integers whose digits in base `LH` form a vector of `{0, …, H − 1}^n` on a sphere
with the most points; in a congruence among three of them both sides have all digits below the base, so the
congruence holds digit by digit, which makes one vector a strict mean of the other two; on a sphere this forces the
three to be equal.

Let `n, H, L, o` be positive integers with `(LH)^n ≤ o`. There is a set `S ⊂ [0, o)` of at least `H^n/(nH²)` integers
such that, for `e₁, e₂, e₃ ∈ S` and integers `α, α′ > 0` with `α + α′ ≤ L`, `(α + α′)e₂ ≡ αe₁ + α′e₃ (mod o)` implies
`e₁ = e₂ = e₃`.

*Needs:* Mathlib `Behrend.sphere`, `Behrend.map`, `Behrend.map_injOn`, `Behrend.exists_large_sphere`.

[ShortProof], `New/Reduction/Data/Existence` (`New.exists_three_term_free`, `New.eq_of_add_mul_eq_of_sum_sq_eq`)

### 3.6 Large sparse sets of places

*Origin:* particular to this proof: a set of places of class `−1` modulo `q₀`, of size `T(s)` up to a small power, with
no two ratios `±ℓ^i`, `±ℓ^j` from one point modulo the part of `q₁` prime to `ℓ`.

*Method of the formal proof:* let `g = [1 + 3l₀q₀]`; writing `q₀ = 2^v u` with `u` odd, the class of `g` modulo
`2^{s+v}` has order `2^s`. The set is `{−g^e : e ∈ S}` for a set `S` of 3.5 modulo that order, with `L = 2l₀`; these
places have class `−1` modulo `3l₀q₀` and are distinct. For `ℓ = 2` a ratio `±2^i` modulo the part `3l₀ = 3^{c}` of
`q₁` would give `4^i ≡ 1 (mod 3^c)`, against the order `l₀ > i` of `4`. For odd `ℓ`, squaring the two ratios modulo
`2^{s+v}` gives `(2j)(e₂ − e₁) ≡ (2i)(e₃ − e₁)` modulo the order of `g`, a relation excluded by 3.5 unless
`e₁ = e₂ = e₃`; then `ℓ^{2i} ≡ 1 (mod 2^{s+1})`, against the order of `ℓ` there. The second statement chooses the side
`H` as a power of `2` with `H^n ≤ 2^s/W < (2H)^n`.

Let `P` be parameters and `s ≥ 0`, `l₀ = l₀(s)`.

- (a) If `n, H ≥ 1`, `(2l₀H)^n ≤ 2^s` and `2l₀(L + 1) < 2^s`, there is a set of at least `H^n/(nH²)` places of `E_s` of
  class `−1` modulo `q₀`, sparse for the primes up to `L`.
- (b) If `n ≥ 1` and the real `W` satisfies `1 ≤ W ≤ 2^s ≤ W^n`, `(2l₀)^n ≤ W`, `3l₀n2^n ≤ W³`, and
  `2l₀(L + 1) < 2^s`, there is a set `S` of places of class `−1` modulo `q₀`, sparse for the primes up to `L`, with
  `T(s) ≤ #S·W⁶`.

*Needs:* 2.1, 2.3, 3.1, 3.5.

[ShortProof], `New/Reduction/Data/Existence` (`New.Parameters.exists_orderOf_placeClass_eq`,
`New.Parameters.exists_large_isSparse`, `New.Parameters.exists_isSparse`, `New.Parameters.exists_isSparse_of_ranks`)

### 3.7 Admissible data exist at every large integer

*Origin:* particular to this proof: the construction of the data at a given `x`, with explicit scales and ranks.

*Method of the formal proof:* put `W = x^{ε/6}`. Then `m` is the least power of `2` with `m ≥ √x`, `r` the least power
of `3` with `r ≥ x⁵`, `2^s = m^{22}`, `x₁ = ⌊e^W⌋` and `b` the least multiple of `q₁x₁` above `e^{W⁶}`. The `b`-places
come from 3.6 (b) with `L = kt`, so that `T ≤ #Φ_b·W⁶ ≤ #Φ_b log b`. The primes come from windows: fix an integer
`n₀ ≥ 1` with `99q₀d < n₀ε/6`; for large `W` every window `[U, U + W]` with `W ≤ U ≤ W^{n₀+7}` contains `log p` for a
prime `p ≡ 1` modulo `(q₀d)^j`, for each `j > 1` with `(q₀d)^j ≤ W^{n₀+7}`. Taking `h_K + 1` primes
`p ≡ 1 (mod q₂²)` in disjoint windows of `[10 log b, 11 log b]`, each splits in `K` as `𝔭𝔭′` with both factors of
norm `p` (as `p ≡ 1 (mod d)`), and by the pigeonhole principle some product `𝔭_i𝔭′_j` with `i ≠ j` is principal, which
gives `π̄_M` with norm `p_ip_j`. The level `N` is a prime `≡ 1 (mod q₂²)` with `log N` in the window of length
`W ≤ √(log b)` at `log N₋`, and `N ≡ 1 (mod 4)` is a sum of two squares `u² + v²`, so `π_N = u + vi` with `i ∈ E`. The
inequalities between the scales hold for large `x` because `ε < 1/100`.

Let `P` be parameters and `0 < ε < 1/100`. For every large integer `x` there are admissible data `D` with this `x`,
`x₁ = ⌊exp(x^{ε/6})⌋`, `b` the least multiple of `q₁x₁` exceeding `exp(x^ε)`, `m` the least power of `2` with
`m ≥ √x`, `r` the least power of `3` with `r ≥ x⁵`; and then `x^{ε/6} − 1 ≤ log x₁` and
`x^ε ≤ log b ≤ x^ε + 1`.

*Needs:* 2.1, 2.3, 3.1, 3.2, 3.6; AnalyticNumberTheoryPartI §0.32 (primes `≡ 1` modulo a modulus at most a power of
`log p`, with `log p` in a window of length at least `1`); ImaginaryQuadraticClassNumber §2.1 (the splitting
dictionary, for `d` a prime `≡ 7 (mod 8)` and `K = ℚ(√−d)`, of discriminant `D = −d`: `χ_D` is a Dirichlet character
modulo `d`, so a rational prime `p ≡ 1 (mod d)` has `χ_D(p) = 1`, and `p𝒪_K` is then the product of two prime ideals,
each of norm `p`; [ShortProof] `Lib/General/NumberTheory/ImaginaryQuadraticField.lean`
(`New.QuadField.q_eq_iff_chiK_ne_neg_one`, `New.QuadField.prime_inert_or_eq_mul`)); Mathlib
`Ideal.absNorm_span_singleton` (with the norm `ππ̄` of an element `π` of `K`: a principal ideal `(π)` of `𝒪_K` of norm
`n` has `ππ̄ = n`; [ShortProof] the same file (`New.QuadField.absNorm_span_eq_mul_star`)),
`NumberField.classNumber`, `Nat.Prime.sq_add_sq`.

[ShortProof], `New/Reduction/Data/Existence` (`New.eventually_exists_data`, `New.Parameters.IsAdmissibleData`,
`New.Parameters.IsLargeScale.exists_isAdmissibleData`, `New.eventually_exists_data_of_isAdmissibleData`,
`New.Parameters.exists_prime_pair_norm`, `New.Parameters.exists_prime_log_mem_Icc_mul_star_eq`,
`New.exists_isLeast_two_pow_three_pow`)

## Layer 4: prime sums

The prime sum at a place `σ` counts the prime powers `ν` up to the length `y/κ(−νσ)`, which depends on the place
`−νσ` reached from `σ` through the Frobenius class of `ν`. Its main term is the expected value `s_main`; the size
`s_∞(j)` of a derivative of order `j` less the prime sum at the weight is what one direction of a lift costs.

### 4.1 The prime sums of the data

*Origin:* definitions and conventions.

*Method of the formal proof:* the definitions are those of [ShortProof].

Let `D` be admissible data and `d` its prime; `λ₁(ν) = Λ(ν)(1 − χ_K(ν))` (0.1 at `q = 1`), `c₁ = Re G₁(1)`.

- `s_fin(y, σ) = Σ_{1≤ν≤a} λ₁(ν)(y/ν − κ(−νσ))₊` for real `y` and `σ ∈ Φ`. The terms with `ν` not prime to `q₁`, where
  `−νσ = σ` by convention, vanish: such a `ν` with `Λ(ν) ≠ 0` is a power of a prime dividing `q₁`, and `χ_K = 1` there
  (2.1 (c)).
- `s_∞(j) = log j! + j log(M/Ω)` for integers `j ≥ 0`.
- `h_dir = Σ_{σ∈Φ} (s_∞(κ(σ)) − s_fin(κ(σ), σ))` and `h_main = m·k·h_dir`.
- `s_main = a(log a − f^{−1}Σ_{τ∈Φ} log κ(τ) + c₁)` and `rem = Σ_{τ∈Φ_a} (s_fin(a, τ) − s_main)`.
- `u_E = f·a·(log b)³`, the error unit.
- For a prime `p`, the *local prime sum* is `s_p(y, σ) = v(π_p)·Σ_{e∈I_p} (y/p^e − κ(−p^eσ))₊` for real `y` and
  `σ ∈ Φ`, with `v(π_p)` and `I_p` of DivisibilityOfThetaDerivatives §2.1 (`v(π_p) = 1/2` if `p = d` and `1`
  otherwise; `I_p` is the set of odd `e ≥ 1` if `p` is inert in `K`, of all `e ≥ 1` if `p = d`, and is empty if `p`
  splits). Its *total* is `S_p = Σ_{σ∈Φ} s_p(κ(σ), σ)`. So `2 log p·s_p(y, σ)` is the sum of the terms of `s_fin(y, σ)`
  at the powers of `p`, without the bound `ν ≤ a`.

Here `c₁ = −1 − γ + Re (L′/L)(1, χ_K)`, so `s_main = a(log a − 1 − γ + Re (L′/L)(1, χ_K) − mean log κ)`, the main term
`𝔐(a, κ)` of FrobeniusRestrictedRieszSums §1.1; and `s_fin(a, σ)` has the form (iv) of the sum `ℛ(a, σ, κ)` of that
section, the place `−νσ` playing the part of `par_σ(Frob_ν)`. No section here uses these identifications.

**In standard terms.** For `0 ≤ y ≤ a`, `s_fin(y, σ)` is the sum over the classes `u ∈ (ℤ/q₁)^×` of `κ(−uσ)` times the
Riesz sum of `λ₁` over the class `u` at the length `y/κ(−uσ)`, and so, by orthogonality, a combination with
coefficients `κ(−uσ)ψ̄(u)/φ(q₁)` of the Riesz sums of `Λψ` and of `Λψχ_K`, `ψ` modulo `q₁`, in the sense of
RiemannHypothesisStatementsAndConsequences §8.4a (a) (7.4 (f)). By 4.2 (b) and 7.4 (a), the total remainder `rem` is a
combination of the Riesz remainders of the Dirichlet characters modulo `q₀` and `q₀d` at the lengths `x` and `x₁` and
of those modulo `1` and `d` at `x₁`.

*Needs:* 0.1, 2.1, 3.2; DivisibilityOfThetaDerivatives §2.1 (the set `I_p` and the number `v(π_p)` at a prime).

[ShortProof], `New/Reduction/Data/AdmissibleData` (`New.Data.primeSum`, `New.Data.jetSize`, `New.Data.directionAmount`,
`New.Data.errorUnit`); `New/Reduction/PrimeSums` (`New.Data.mainAmount`, `New.Data.mainPrimeSum`,
`New.Data.totalRemainder`); `New/UpperBound/Size/ShortColumns` (`New.Data.localPrimeSum`,
`New.Data.localPrimeSumTotal`)

### 4.2 The total remainder and the sizes of the prime sums

*Origin:* particular to this proof: the sum over the `a`-places of the prime sums at the order `a`, less the expected
value, written through the remainders `R_{q₀}` and `R₁` at the two lengths `x` and `x₁`; with the sizes of the prime
sums and of the main amount.

*Method of the formal proof:* the weight is `a/x₁` except on `Φ_b`, where it is `a/x`; so each term splits into a term
of length `x₁` at every place and, when `−ντ ∈ Φ_b`, a correction. If `−ντ ∈ Φ_b` (class `−1` modulo `q₀`), then `τ`
is an `a`-place exactly when `ν ≡ 1 (mod q₀)`; so as `τ` runs over `Φ_a` the correction occurs `#Φ_b` times if
`ν ≡ 1 (mod q₀)` and never otherwise. The sums over `ν` are then the sums of 0.1 (b) at `q = 1` and `q = q₀`. The main
terms `log x`, `log x₁`, `c₁` cancel against `#Φ_a·s_main`, by `Σ_τ log κ(τ) = f(log a − log x₁) − #Φ_b(log x − log x₁)`
and `f = φ(q₀)#Φ_a`. For the sizes: only `ν ≤ x₁` contribute to `s_fin(y, σ)` for `y ≤ a`, because `κ ≥ a/x₁`, and
`Σ_{ν≤Y} Λ(ν)/ν ≤ 2 log Y` for integers `Y ≥ 1`; `log j! ≤ 2j log b` for `j ≤ a ≤ b²`.

Let `D` be admissible data, and `R_q = R_q^{(d)}` for its prime `d`.

- (a) `#Φ_a = T` and `f = φ(q₀)·#Φ_a`.
- (b) `rem = a(#Φ_b·(R_{q₀}(x) − R_{q₀}(x₁)) + #Φ_a·R₁(x₁))`.
- (c) For `0 ≤ y ≤ a` and every `σ`: `0 ≤ s_fin(y, σ) ≤ 4y log x₁ ≤ y log b`.
- (d) For integers `0 ≤ j ≤ a`: `20j log b ≤ s_∞(j) ≤ 25j log b`; hence
  `κ(σ) log b ≤ s_∞(κ(σ)) − s_fin(κ(σ), σ) ≤ 25κ(σ) log b`.
- (e) `b·#Φ_a ≤ h_dir ≤ 25 f b log b`.
- (f) `x⁴·f·a ≤ h_main`; in particular `h_main ≥ 0`.

*Needs:* 0.1, 2.3, 3.2, 3.3, 4.1.

[ShortProof], `New/Reduction/PrimeSums` (`New.Data.card_aPlaces`, `New.Data.f_eq_card_aPlaces_mul`,
`New.Data.mem_aPlaces_iff_of_mul_mem_bPlaces`, `New.Data.card_filter_mem_bPlaces`, `New.Data.sum_aPlaces_primeSum`,
`New.Data.sum_log_weight`, `New.Data.card_aPlaces_mul_mainPrimeSum`, `New.Data.totalRemainder_eq`,
`New.Data.primeSum_le`, `New.Data.primeSum_mem_Icc`, `New.Data.jetSize_mem_Icc`,
`New.Data.jetSize_sub_primeSum_mem_Icc`, `New.Data.directionAmount_mem_Icc`, `New.Data.le_mainAmount`,
`New.Data.mainAmount_nonneg`)

## Layer 5: the target lattice and Theorems A and B

The target forms `𝒯` have no integral structure of their own; a target form is integral at `ι` when its chains of lifts
are, for every `m`-fold twist of modulus prime to `ℓ(ι)` (5.1). The source is the space `𝒮_ram` of ramified source
forms, carried to the target by the translates `s𝔭` of one normalised Poincaré map (5.2). Theorem A bounds the lifts of
the images of short integral forms from above and their index; Theorem B says that few translates span almost all of
the target; Theorem C bounds from below the covolume plus twice the index of every family that spans almost all of the
target. The objects of this layer are those of the sections named in the table of symbols.

Theorem C is DeterminantsOfThetaLiftChains §6.3, which states and proves it for the target lattice of 5.1; the letter
`d` of that section is `d_T`. It is not a section of this roadmap: 6.1 takes it from there.

### 5.1 The target lattice

*Origin:* definitions and conventions.

*Method of the formal proof:* the twisted lattice is assembled from the chains of lifts; the integrality of inner
products and the identity of the conjugate norms use that the level `J_m(ξ)` is small enough that every stabiliser
`Γ ∩ gJ_m(ξ)g^{−1}` of a class is trivial.

Let `D` be admissible data. The *target lattice* is the twisted lattice (1.3) on `V = 𝒯`, the target forms with the
Petersson inner product, whose twists are the `m`-fold twists (3.4), with:

- `S_ξ` the space of algebraic forms on `Y_m` of the weight of the chains, of level `J_m(ξ)` (trivial at the chosen
  places, block upper triangular at the places of `Q(ξ)`) and of the character formed by the tame characters of the
  lifts, with the class-sum inner product of AdelicUnitaryGroupsAndAlgebraicModularForms §6.6 (f),
  `⟨φ, φ′⟩ = Σ_c ⟨φ(g_c), φ′(g_c)⟩`, the sum over representatives `g_c` of the classes `c ∈ Γ\G_f/J_m(ξ)` of the Gram
  pairings of the values in the Weyl module, `G_f` the finite adelic points of `U(Y_m)` and `Γ` its rational points (the
  stabilisers `Γ ∩ g_cJ_m(ξ)g_c^{−1}` are trivial); for `ξ = 1` this is the form `coord(φ)^* G coord(φ′)` below; and
  `Θ_ξ` the chain of `m` lifts with twist `ξ`;
- `ξ` allowed at `ℓ` when `ℓ` is prime to `Nm Q(ξ)`;
- `Λ_{ξ,ι}` the forms integral at the embedding `ℂ → ℂ_ℓ` given by `ι`, `ℂ_ℓ` the completion of `ℚ̄_ℓ`;
- `coord` the values of a form of `S_1` at representatives of the classes, in the coordinates of the Weyl module dual
  to the basis of products of minors of [ShortProof] (which differs from the semistandard basis by an invertible
  integer matrix), and
  `G` the rational Gram matrix of the invariant Hermitian form on it.

Facts: (a) these data form a twisted lattice; (b) `y ∈ 𝒯` is integral at `ι` exactly when `Θ_ξy` is integral at `ι` for
every `m`-fold twist `ξ` with `Nm Q(ξ)` prime to `ℓ(ι)`; (c) `‖y‖²_σ = ‖Θ₁y‖²_σ`, the sum over the classes of the squared
Gram norms of the conjugates by `σ` of the values of `Θ₁y`; (d) `Z(ξ) = det(Θ_ξ^*Θ_ξ)`, the determinant of the chain;
(e) every `Θ_ξ` is injective on `𝒯`.

**In standard terms.** The spaces `S_ξ` are spaces of algebraic modular forms on the definite unitary group `U(Y_m)`
with the class-sum product, and `Y_m` is the standard definite space of its rank (ThetaLiftChainsAndTheSeesawIdentity
§2.1). For the forms of a level on a standard definite space, AdelicUnitaryGroupsAndAlgebraicModularForms §8.6 (a)
identifies them, after extension of scalars to `ℂ_ℓ`, with the algebraic modular forms of that level with `ℓ`-adic
coefficient action, through the map of that section that extends the values of a form along the embedding `ℂ → ℂ_ℓ`
given by `ι` and twists them by the `ℓ`-adic coefficient action, compatibly with the Hecke operators; and §8.6 (b)
identifies the forms of gauge at most `1` at every point, through which integrality at `ι` is read, with the forms
whose values lie in the lattice spanned over the integers of `ℂ_ℓ` by the minor-product basis. Both apply to the forms
of `S_ξ`, a form of level `J_m(ξ)` with its character being a form of the smaller level on which that character is
trivial. The target lattice is not defined through a lattice of target forms: a target form is tested for integrality
at `ι` through its chains of lifts with the `m`-fold twists allowed at `ℓ(ι)`, and measured through the trivial twist;
the target forms integral at `ι` form an `𝒪_ι`-module, but no lattice of integral target forms, and no index or
covolume as a number, is defined, and Theorems A, B and C are stated on the predicates of 1.3. For the twisted lattice
of a lattice, 7.1 states what these predicates are.

*Needs:* 1.3, 3.4; ThetaLiftChainsAndTheSeesawIdentity §§1.1, 2.7, 2.10, 2.15 (from §2.7 the target forms; from §2.15
the chain `Θ_ξ` of `m` lifts on the target forms, there the lower chain, with its level `J_m(ξ)` and character on
`Y_m`; from §2.10 trivial stabilisers at levels inside the chosen level; from §1.1 the gauge of a vector of a Weyl
module at an embedding `ℂ → ℂ_ℓ`, through which integrality of an algebraic form is read);
DeterminantsOfThetaLiftChains §4.3 (the chain `Θ_ξ` is injective on the target forms);
AdelicUnitaryGroupsAndAlgebraicModularForms §§3.1, 6.6 (algebraic forms of a given level on a definite unitary group,
with the finite adelic points `G_f`, the rational points and the levels of §3.1; from §6.6 (f) the class-sum product
`⟨φ, φ′⟩` on them and, with no condition on the stabilisers, that `n` times the class-sum product of a form integral at
`ῑ` and a form integral at `ι` is integral at `ι`, `n` a common multiple of the orders of the stabilisers of the
classes); IntegralRepresentationsOfGeneralLinearGroups §2.1 (b) (the Gram matrix of the basis of products of minors of
the Weyl module, an integer matrix, is positive definite); ShortGRH background (for algebraic forms of a level at which
every stabiliser of a class is trivial, with `coord(φ)` the values of `φ` at representatives of the classes in the
coordinates of the Weyl module dual to a basis of products of minors, and `G` the rational matrix with one copy, for
each class, of the Gram matrix in that basis, which is positive definite: the class-sum product `⟨φ, φ′⟩` is
`coord(φ)^* G coord(φ′)` and the conjugate norm `‖φ‖²_σ` is `(σ coord(φ))^* G (σ coord(φ))`; [ShortProof]
`Lib/Adelic/AutomorphicForms/PAdicGauge.lean` (`New.LevelPlaces.LevelForm.valueCoord`,
`New.LevelPlaces.LevelForm.valueMetric`, `New.LevelPlaces.LevelForm.posDef_valueMetric`,
`New.LevelPlaces.LevelForm.inner_eq_valueCoord`, `New.LevelPlaces.LevelForm.normSqAt_eq_re_valueCoord`)).

[ShortProof], `New/Reduction/IntegralTargetForms` (`New.Data.targetLattice`,
`New.Data.mem_integralVectors_targetLattice`, `New.Data.normSqAt_targetLattice`, `New.Data.volume_targetLattice`,
`New.Data.injective_lift_targetLattice`, `New.Data.classAut_lastResidueLevel_eq_bot`)

### 5.2 The normalised Poincaré maps

*Origin:* definitions and conventions.

*Method of the formal proof:* the numbers `err_ℓ` and `c_ss` are chosen from the theorems that give them; (a)–(c) are
read off the definitions, with `#S ≤ ⌈x₁⌉`, `log ℓ ≤ x₁` on `S` and `⌈x₁⌉x₁ + log N ≤ b` from 3.3, and `g_ℓ ≥
gain_ℓ − err_ℓ − 1`; (d) uses that `e₀` is central in the group algebra of `Ḡ`.

Let `D` be admissible data. Let `S` be the set of primes `ℓ < x₁` with `χ_K(ℓ) ≠ 1`.

- `gain_ℓ` is the divisibility asked of the chain at `ℓ` (CompositeThetaLiftsAndShortForms §2.1 (c), there `gain(p)`):
  `gain_ℓ = m(Σ_{τ∈Φ_a} s_ℓ(a, τ) + k·S_ℓ)`, with the local prime sums `s_ℓ` and their total `S_ℓ` of 4.1. It vanishes
  when `χ_K(ℓ) = 1` or `ℓ ≥ x₁`.
- Fix numbers `err_ℓ ≥ 0` as given by the divisibility of the composite lift (CompositeThetaLiftsAndShortForms §4.9,
  there `err(p)`): `err_ℓ = 0` unless `ℓ = N` or `ℓ ∈ S`, `Σ_{ℓ∈U} err_ℓ log ℓ ≤ u_E` for every finite set `U`, and the
  local statement §4.9 (d), used in 5.3 (b).
- `g_ℓ = ⌊gain_ℓ − err_ℓ⌋ ∈ ℤ` and `c_B = ∏_{ℓ∈S∪{N}} ℓ^{−g_ℓ} ∈ ℚ_{>0}`.
- The Poincaré map of the data is `𝒫 = 𝒫_{g,t}` (ThetaLiftChainsAndTheSeesawIdentity §2.19) for the archimedean point
  `g` of `U(Y₀)` and the linear form `t` fixed in SecondMomentsOfPoincareSeries §5.3 (b), for which `𝒫` is a Poincaré
  series of the Bessel function.
- Fix `c_ss ∈ ℂ^×` as given by the seesaw identity (ThetaLiftChainsAndTheSeesawIdentity §3.20) for this `t` and this
  `g`: for every twist `ξ` there is a chain datum `Ψ` of `ξ` with `ι_ξ(𝒫φ) = c_ss·B_ξ(Ψ)φ` for every `φ ∈ 𝒮_ram`, where
  `ι_ξ = Θ_ξ` is the chain of lifts from `Y₀` to `Y_m` and `B_ξ(Ψ)` the composite lift (§2.12 there). The constant of
  §3.20 depends on `(g, t)`; `c_ss` is the one for the pair just fixed.
- For `s ∈ Ḡ`, `s𝔭 : 𝒮_ram → 𝒯`, `s𝔭(φ) = c_B·c_ss^{−1}·#Ḡ·e₀ρ(s)𝒫(φ)`.
- `𝒮_int` is the set of `φ ∈ 𝒮_ram` that are integral at every pair `ι`.

Facts: (a) `|c_B|_ℓ = ℓ^{g_ℓ}` for every prime `ℓ`, and `g_ℓ = 0` for primes outside `S ∪ {N}`; (b)
`Σ_{ℓ∈S∪{N}} log ℓ ≤ b`; (c) `log c_B ≤ −Σ_{ℓ∈S} gain_ℓ log ℓ + u_E + b`; (d) `s𝔭 = ρ(s) ∘ 𝔭` with `𝔭 = 1𝔭`, the map
at the identity of `Ḡ`, and the image of `s𝔭` is `#Ḡ·e₀ρ(s)𝒫(𝒮_ram)`.

*Needs:* 3.2, 3.3, 4.1; ThetaLiftChainsAndTheSeesawIdentity §2.8 (the source forms and the ramified ones), §2.7 (the
target forms and the action `ρ`), §2.5 (`Ḡ` and `e₀`), §2.19 (the Poincaré map `𝒫_{g,t}`), §3.20 (the seesaw identity
with its constant); SecondMomentsOfPoincareSeries §5.3 (the point `g` and the form `t` of the data);
CompositeThetaLiftsAndShortForms §2.1 (the gains `gain_ℓ`), §2.4 (integral source forms), §4.9 (the divisibility of the
composite lift with its numbers `err_ℓ`).

[ShortProof], `New/Reduction/ShortAndEnough` (`New.Data.divisibilityError`, `New.Data.gainExponent`,
`New.Data.invGainFactor`, `New.Data.seesawConst`, `New.Data.projectedPoincare`, `New.Data.normalizedPoincare`,
`New.Data.integralRamified`, `New.Data.norm_invGainFactor`, `New.Data.sum_log_smallNonsplitPrimes_union_le`,
`New.Data.log_invGainFactor_le`, `New.Data.coe_normalizedPoincare`, `New.Data.range_normalizedPoincare`)

### 5.3 Theorem A: short forms of small index

*Origin:* particular to this proof: a spanning set of integral source forms whose images under the translates of the
normalised Poincaré map have chains of lifts bounded at every conjugate by the main amount less `m·rem`, and an index
bound for families of such images.

*Method of the formal proof:* (a) the short source forms span `𝒮_ram`; for such `φ` the seesaw identity writes
`ι_1(c_ss^{−1}𝒫φ)` as a composite lift, whose values have squared norm at most
`exp(u_E + h_main − m·rem + 2Σ_{ℓ∈S} gain_ℓ log ℓ + u_E)` at every conjugate; passing to `#Ḡ·e₀ρ(s)` adds `x^{99}`;
the factor `c_B` adds `2 log c_B`, and 5.2 (c) cancels the gains; `x^{99} + 4u_E + 2b ≤ f·a·(log b)⁴`. (b) At a pair
`ι` over `ℓ`, the local statement of the divisibility gives an `𝒪_ι`-module of colength dividing `ℓ^j`,
`j ≤ err_ℓ·dim 𝒮`, in the integral ramified forms, on which every composite lift of a twist of modulus prime to `ℓ` has
valuation at least `gain_ℓ − err_ℓ`; as `v_ι(c_B) = −g_ℓ`, its images are integral vectors of the target lattice. With
`dim 𝒮 ≤ 2 dim 𝒮_ram` and `Σ err_ℓ log ℓ ≤ u_E`, 1.3 (c) bounds the index for one translate and 1.3 (d) for `t`.

Let `D` be admissible data.

- (a) `𝒮_ram` is spanned over `ℂ` by the `φ ∈ 𝒮_int` such that `‖Θ₁(s𝔭φ)‖²_σ ≤ exp(h_main − m·rem + f·a·(log b)⁴)` for
  every `s ∈ Ḡ` and every `σ ∈ Aut(ℂ)`.
- (b) For a finite set `t ⊂ Ḡ`, every finite family `y_1, …, y_n` of target forms with `y_i ∈ s𝔭(𝒮_int)` for some
  `s ∈ t` has index at most `#t·dim 𝒮_ram·2u_E` in the target lattice.

*Needs:* 1.1, 1.3, 3.3, 4.1, 4.2, 5.1, 5.2; CompositeThetaLiftsAndShortForms §§2.11, 4.9, 5.4, 5.5, 5.7 (from §5.7
the short source forms span `𝒮_ram`; from §5.4 the size of the composite lift on short forms; from §5.5 the size and
integrality of `#Ḡ·e₀ρ(s)` applied to a form; from §4.9 the local divisibility of the composite lift; from §2.11
`dim 𝒮_ram ≥ (1 − f/(N − 1)) dim 𝒮`); ThetaLiftChainsAndTheSeesawIdentity §3.20 (the seesaw identity).

[ShortProof], `New/Reduction/ShortAndEnough` (`New.Data.span_short_integralRamified_eq_top`,
`New.Data.indexLe_normalizedPoincare`, `New.Data.normalizedPoincare_mem_integralVectors`,
`New.Data.indexLe_of_mem_image_normalizedPoincare`, `New.Data.finrank_sourceForm_le_two_mul`)

### 5.4 Theorem B: enough forms

*Origin:* particular to this proof: few translates of the image of the ramified source forms span all of the target but
a share `4/b²`, with an explicit count.

*Method of the formal proof:* the second moment of the translates of the Poincaré series shows that the maps
`#Ḡ·e₀ρ(s)𝒫`, `s ∈ Ḡ`, spread with error `3/(16b²) = 3ε/2` for `ε = (8b²)^{−1}` (SecondMomentsOfPoincareSeries §5.7 (d));
the greedy choice of SecondMomentsOfPoincareSeries §1.3 (a) at this `ε` gives a
set `t` with `#t·dim 𝒮 ≤ (5/2)(1 + log(1/(16ε)))d_T ≤ 5d_T log(1 + 2b²)` whose images of all source forms span at least
`(1 − 2/b²)d_T`; passing to `𝒮_ram` loses at most `#t(dim 𝒮 − dim 𝒮_ram) ≤ #t·b^{−8}dim 𝒮 ≤ (2/b²)d_T`
(SecondMomentsOfPoincareSeries §1.3 (b)).

Let `D` be admissible data. Then `d_T > 0`, and there is a finite set `t ⊂ Ḡ` with
`#t·dim 𝒮_ram ≤ 5d_T log(1 + 2b²)` and `dim Σ_{s∈t} s𝔭(𝒮_ram) ≥ (1 − 4/b²)d_T`.

*Needs:* 3.3, 5.2; SecondMomentsOfPoincareSeries §§1.3, 5.7 (from §5.7: the maps `#Ḡ·e₀ρ(s)𝒫` from the source forms to the
target forms spread with error `3/(16b²)`, and `d_T > 0`; from §1.3: for `0 < ε < 1/16` and a family that spreads
with error `3ε/2`, a set `t` with `#t·dim V ≤ (5/2)(1 + log(1/(16ε)))·dim W` whose images span at least
`(1 − 16ε)·dim W`, and the loss on a subspace);
CompositeThetaLiftsAndShortForms §2.11 (`dim 𝒮_ram ≥ (1 − f/(N − 1)) dim 𝒮` and `f/(N − 1) ≤ b^{−8}`).

[ShortProof], `New/Reduction/ShortAndEnough` (`New.Data.enough_forms`,
`New.Data.exists_le_finrank_iSup_range_normalizedPoincare`, `New.Data.five_halves_mul_one_add_log_le`)

## Layer 6: the main inequality and the one-sided bound

### 6.1 The main inequality

*Origin:* particular to this proof: the comparison of the upper and the lower bound for the covolume of one family of
images, in which the main amount cancels and an upper bound for the total remainder is left.

*Method of the formal proof:* take `t` from Theorem B and, among the forms `s𝔭φ` with `s ∈ t` and `φ` short of Theorem
A (a), a basis `y_1, …, y_n` of their span, so `n ≥ (1 − 4/b²)d_T`. By Hadamard (1.3 (e)) its covolume is at most
`n(h_main − m·rem + f·a·(log b)⁴)`; by Theorem A (b) and the count of Theorem B its index is at most
`d_T·10 log(1 + 2b²)·u_E`. Theorem C (DeterminantsOfThetaLiftChains §6.3) bounds `c + 2δ` from below; as `h_main + f·a·(log b)⁴ ≥ 0` and `n ≤ d_T`, the terms
`d_T·h_main` cancel and `n·m·rem ≤ d_T·err` with `err = 4f·a·(log b)⁴ + 20 log(1 + 2b²)u_E`. Dividing by
`n ≥ d_T/2` and `2|err| ≤ f·a·(log b)⁵` gives the inequality.

For all admissible data: `m·rem ≤ f·a·(log b)⁵`.

**In standard terms.** By 4.2 (b) and 7.4 (a), `rem` is a combination of the Riesz remainders of the Dirichlet
characters modulo `q₀` and `q₀d` at the lengths `x` and `x₁` and of those modulo `1` and `d` at `x₁`. If no Dirichlet
L-function modulo `q₀` or modulo `q₀d` has a zero in `Re s > 1/2`, 7.4 (d) gives `|R_{q₀}(y)| ≤ C_{q₀}·y^{−1/2}` and
`|R₁(y)| ≤ C₁·y^{−1/2}` for `y ≥ 2`, with `C_{q₀}` and `C₁` depending on `q₀` and `d` (the zeros of `ζ` and of
`L(s, χ_K)` in `Re s > 0` are zeros of the L-functions of the principal character modulo `q₀` and of its product with
`χ_K`, a character modulo `q₀d`); with `#Φ_a, #Φ_b ≤ f`, `x ≤ x₁` and `m ≤ 2√x` this gives `|rem| ≤ 3C′·f·a·x^{−1/2}`
and `m·|rem| ≤ 6C′·f·a`, `C′ = max(C_{q₀}, C₁)`, hence the inequality for the admissible data with `(log b)⁵ ≥ 6C′`.
The route proves it for all admissible data with no hypothesis on zeros.

*Needs:* 1.3, 3.3, 4.2, 5.1, 5.3, 5.4; DeterminantsOfThetaLiftChains §6.3 (Theorem C: for linearly independent target
forms `y_1, …, y_n` with `n ≥ (1 − 4/b²)d_T`, of index at most `δ` and covolume at most `c` in the target lattice,
`d_T(h_main − 3f·a·(log b)⁴) ≤ c + 2δ`).

[ShortProof], `New/Reduction/MainInequality` (`New.star_inequality`)

### 6.2 The one-sided bound

*Origin:* particular to this proof: an upper bound for `R_{q₀}` at every large point, with the exponent `−1/2 + ε`,
from the main inequality at the data of that point and the prime number theorem at the second cut-off.

*Method of the formal proof:* (a) by 4.2 (b), `R_{q₀}(x) = rem/(a·#Φ_b) + R_{q₀}(x₁) − (#Φ_a/#Φ_b)R₁(x₁)`; 6.1 gives
`rem ≤ f·a·(log b)⁵/m`, and `f = φ(q₀)#Φ_a`, `#Φ_a ≤ #Φ_b log b`. (b) takes the data of 3.7 at `x`, with
`log b ≤ 2x^ε`, `m ≥ √x` and `log x₁ ≥ x^{ε/12}`; the prime number theorem for `R_q`, `|R_q(y)| ≤ (log y)^{−B}` for all
large `y`, at `q = q₀` and `q = 1` with `B ≥ 24/ε`, gives `|R_{q₀}(x₁)|, |R₁(x₁)| ≤ x^{−2}`, and the three terms add up
to at most `(64φ(q₀) + 3)x^{−1/2+6ε}`. [ShortProof] proves that prime number theorem by a Tauberian theorem for the
transform of `v ↦ R_q(e^v)` with the zero-free regions of the finitely many L-functions; it follows from the
Siegel–Walfisz theorem at the moduli `q` and `qd` by orthogonality and partial summation, the constant being `c_q` by the
Dirichlet series of `λ_q` (0.2). (c) passes from integers to real `y` by 0.1 (c), `R(y) − R(⌊y⌋) ≤ 26/y` for `y ≥ 2`,
and `⌊y⌋^u ≤ 2y^u` for `−1 ≤ u ≤ 0`, applying (b) with `min(1/200, ε/7)` in place of `ε`.

Let `P = (q₀, d)` be parameters and `R_q = R_q^{(d)}`.

- (a) For admissible data: `R_{q₀}(x) ≤ φ(q₀)(log b)⁶/m + |R_{q₀}(x₁)| + log b·|R₁(x₁)|`.
- (b) For `0 < ε < 1/100` and every large integer `x`: `R_{q₀}(x) ≤ (64φ(q₀) + 3)x^{−1/2+6ε}`.
- (c) For every `ε > 0` and all large real `y`: `R_{q₀}(y) ≤ y^{−1/2+ε}`.

**In standard terms.** If no Dirichlet L-function modulo `q₀` or modulo `q₀d` has a zero in `Re s > 1/2`, 7.4 (d)
gives the two-sided bound `|R_{q₀}(y)| ≤ C_{q₀}·y^{−1/2}` for every `y ≥ 2`, with `C_{q₀}` depending on `q₀` and `d`,
which implies (b) and (c). So (b) and (c) are consequences of the end theorems; the route proves them with no
hypothesis on zeros, and 6.3 derives the end theorems from (c).

*Needs:* 0.1, 2.1, 3.3, 3.7, 4.2, 6.1; AnalyticNumberTheoryPartI §0.32 (the Siegel–Walfisz theorem);
RieszSumsOverPrimesAndExceptionalZeros §1.4i (the prime number theorem for the Riesz remainder of a character);
RiemannHypothesisStatementsAndConsequences §8.4a (the transform of a Riesz sum, for the value of the constant).

[ShortProof], `New/Reduction/OneSidedBound` (`New.Data.primeRemainder_le`, `New.eventually_exists_data_scales`,
`New.eventually_abs_primeRemainder_exp_le`, `New.eventually_primeRemainder_natCast_le`,
`New.primeRemainder_sub_primeRemainder_floor_le`, `New.eventually_primeRemainder_le_rpow`);
`New/Reduction/Zeros/PrimeNumberTheorem` (`New.eventually_abs_primeRemainder_le`, `New.tendsto_primeRemainder`)

### 6.3 The half-plane and the critical line

*Origin:* particular to this proof: the passage from the one-sided bounds for the moduli `18480N` and the primes
`d ≡ 9240N − 1 (mod 18480N)` to the non-vanishing of every Dirichlet L-function in `Re s > 1/2`, through the
character induced at the modulus `18480N`.

*Method of the formal proof:* choose `β` with `1/2 < β < Re s`; every prime `d ≡ d₀ (mod q₀)` gives parameters
`(q₀, d)`, so the hypothesis with `ε = β − 1/2` is the hypothesis of 0.2 for `q₀`, `d₀`, `β` (`8 | q₀`, `d₀ ≡ 7 (mod 8)`,
`d₀` prime to `q₀ = 2(d₀ + 1)`). Then 0.2 gives `L(s, χ′) ≠ 0` for the character `χ′` modulo `q₀` induced by `χ`, and
`L(s, χ′) = L(s, χ)∏_{p|q₀}(1 − χ(p)p^{−s})`.

Let `N ≥ 1`, `χ` a Dirichlet character modulo `N`, and `s ∈ ℂ` with `Re s > 1/2` and `s ≠ 1`. Put `q₀ = 18480N` and
`d₀ = 9240N − 1`. If for every prime `d ≡ d₀ (mod q₀)` and every `ε > 0` one has `R_{q₀}^{(d)}(y) ≤ y^{−1/2+ε}` for all
large `y`, then `L(s, χ) ≠ 0`.

By 6.2 (c) the hypothesis holds for every `N`: every prime `d ≡ 9240N − 1 (mod 18480N)` gives parameters
`(18480N, d)` (2.1 (a)). So, unconditionally: for every `N ≥ 1`, every Dirichlet character `χ` modulo `N` and every `s`
with `Re s > 1/2`, if `χ ≠ 1` or `s ≠ 1` then `L(s, χ) ≠ 0` (at `s = 1` with `χ ≠ 1` by Mathlib's non-vanishing on
`Re s ≥ 1`). This is the value form `LFunction_ne_zero_of_one_half_lt_re` of
GeneralizedRiemannHypothesisFromWindowBounds §5.3, proved here by this roadmap's route. The other forms of the theorem
are the targets of 6.4.

*Needs:* 0.2, 2.1, 6.2; Mathlib `DirichletCharacter.LFunction_changeLevel`,
`DirichletCharacter.LFunction_ne_zero_of_one_le_re`.

[ShortProof], `New/Reduction/OneSidedBound` (`New.grh`)

### 6.4 The Riemann hypothesis and the forms on the critical line

*Origin:* published: the classical passage from the non-vanishing of `L(s, χ)` in `Re s > 1/2` to the critical line,
by the functional equation. The statements are the end theorems of the family; they are those of GeneralizedRiemannHypothesisFromWindowBounds §§5.1–5.3, reached here from
6.3, without the window bounds of that roadmap.

*Method of the formal proof:* the statements on the critical line reflect a zero `s` to `1 − s` and apply 6.3 at both
points, which gives `Re s ≤ 1/2` and `1 − Re s ≤ 1/2`. For `L(·, χ)` in `0 < Re s < 1` the reflection is the
functional equation, which applies there because the gamma factor has no pole in `Re s > 0`; it carries the zero to
`L(1 − s, χ⁻¹) = 0`. For `ζ`, with `s` neither `1` nor one of `−2, −4, …`, the reflection goes through the completed
zeta function, which vanishes at `s` and is invariant under `s ↦ 1 − s`; 6.3 applies to `ζ` as the L-function of the
trivial character modulo `1`. Here the roadmap takes these passages from RiemannHypothesisStatementsAndConsequences
§§9.3, 9.4, which state them as equivalences.

The statements (a)–(d) are those of GeneralizedRiemannHypothesisFromWindowBounds §§5.1–5.3, which owns them and
declares them in its `Suggested.lean`. The target of this section is their proof by the route of this family, from
6.3.

- (a) *Predicate form.* For every `N` with `NeZero N` and every `χ : DirichletCharacter ℂ N`,
  `χ.GeneralizedRiemannHypothesis`, that is `ZeroFreeRightOf (1/2) χ.LFunction`: the order of `χ.LFunction` at every `s`
  with `Re s > 1/2` is at most `0`. It follows from 6.3 by the value form
  `generalizedRiemannHypothesis_iff_LFunction_ne_zero` of RiemannHypothesisStatementsAndConsequences §9.4.
- (b) *Strip form.* For every `N ≥ 1`, every Dirichlet character `χ` modulo `N`, primitive or not, and every `s` with
  `0 < Re s < 1` and `L(s, χ) = 0`: `Re s = 1/2`. It follows from (a) by the strip form
  `generalizedRiemannHypothesis_iff_re_eq_half` of RiemannHypothesisStatementsAndConsequences §9.4. The case of
  primitive `χ` is the fifth theorem of [ShortProof].
- (c) *The Riemann zeta function.* `riemannZeta s ≠ 0` for every `s` with `Re s > 1/2`; and every `s` with
  `riemannZeta s = 0` that is not `1` and not one of `−2, −4, −6, …` has `Re s = 1/2`. The first is 6.3 at `N = 1`
  (`DirichletCharacter.LFunction_modOne_eq`; at `s = 1` Mathlib's value of `riemannZeta` is not `0`).
- (d) *The Riemann hypothesis.* Mathlib's `RiemannHypothesis` holds. It follows from the first part of (c) by
  `riemannHypothesis_iff_riemannZeta_ne_zero` of RiemannHypothesisStatementsAndConsequences §9.3; the second part of
  (c) is `RiemannHypothesis` written out.

So the route of this family reaches the theorems of GeneralizedRiemannHypothesisFromWindowBounds §5.1 (which is (a)),
§5.2 (which is (d)) and §5.3 (6.3, (b) and (c)); the further forms and consequences that roadmap and
RiemannHypothesisStatementsAndConsequences draw from them (completed L-functions, Dedekind zeta functions, the
predicates of other areas) follow from (a) and (d) as stated there and are not restated here.

**Checks.** The principal character modulo `2` has `L(s) = (1 − 2^{−s})ζ(s)`, with zeros `2πik/log 2` on `Re s = 0`:
(b) excludes them through `0 < Re s`, and a form with `0 ≤ Re s` would be false. `ζ(−2) = 0` with `Re(−2) < 0`: (c)
does not constrain the trivial zeros.

*Needs:* 6.3; RiemannHypothesisStatementsAndConsequences §§9.3, 9.4; Mathlib `RiemannHypothesis`,
`DirichletCharacter.LFunction_modOne_eq`, `riemannZeta_one_ne_zero`.

[ShortProof], `New/Main` (`New.zeros_on_line`, `New.zeta_zeros_on_line`); `Main` (`riemannHypothesis`); the five
statements are in `Statements`

## Layer 7: Comparison with the standard theory

The route states its bookkeeping through predicates named after standard notions, and its analytic input through
remainders of its own normalisation. The standard theory is the reference, and this layer states what these objects
are in its terms. In the twisted lattice of a lattice on which a rational positive definite form is integral, index
and covolume bound the logarithm of an index from above and the Arakelov degree of a hermitian vector bundle from
below, and for linearly independent families of rational vectors they are equivalent to these bounds (7.1). For the
constant family of an algebraic number, "height at most `c`" bounds from above minus the mean of the logarithms of the
absolute values of its conjugates, which is at most its Weil height (7.2). Over a discrete valuation ring the colength
predicate is the bound for the length of a quotient, and over a valuation domain, for a free module of finite rank, it
says that the intersection of the two modules contains a submodule whose elementary divisors have product dividing the
given element (7.3). For an odd prime `d` that does not divide `q`, the remainder `R_q` is `y^{−1}` times a signed
mean of Riesz remainders of Dirichlet characters, to which the explicit formula applies, with the bounds that
zero-free half-planes give, and the prime sums of 4.1 are combinations of Riesz sums of characters (7.4). The target
lattice of 5.1 is a twisted lattice with several twists, for which no lattice of integral target forms is defined, and
Theorems A, B and C are stated on its predicates; the end theorems of 6.3 and 6.4 are standard statements.

### 7.1 The twisted lattice of an integral lattice: index, covolume and the Arakelov degree

*Origin:* this roadmap's own formulation: the twisted lattice of 1.3 attached to a lattice on which a rational
positive definite form is integral, with its index and covolume compared with the index of a sublattice and with the
Arakelov degree of a hermitian vector bundle over the integers of a number field. [ShortProof] states no such
comparison.

*Proof route:* (a) Let `e` be a `ℤ`-basis of `L`. For `φ = Σ_i c_ie_i` with `c_i ∈ 𝒪_ῑ` and `φ′ = Σ_j c′_je_j` with
`c′_j ∈ 𝒪_ι`, `⟨φ, φ′⟩ = Σ_{i,j} conj(c_i)c′_j·e_i^TGe_j`, where `conj(c_i) ∈ 𝒪_ι` because
`|ι(conj(c_i))| = |ῑ(c_i)|`, and `e_i^TGe_j ∈ ℤ`; this is the integrality condition of 1.3. A vector of `ℚ^C` has
rational coordinates in the basis `e`; if it lies in `𝒪_ι·L` they lie in `𝒪_ι ∩ ℚ`, the integers localised at `ℓ`, and
a rational number that lies there for every `ℓ` is an integer. (b) Put `A = 𝒪_F·y ∩ 𝒪_F·L`, of finite index in `𝒪_F·y`
because `𝒪_F·L` spans `F^C` over `F`. For a pair `ι` over `ℓ`, `|ι(·)|` restricted to `F` is the absolute value
`|·|_𝔮` of a prime `𝔮 | ℓ` of `F`, and `𝒪_ι ∩ F` is the local ring `𝒪_{F,𝔮}`; every `𝔮 | ℓ` arises so, since an
embedding `F → ℚ̄_ℓ` inducing `𝔮` extends to an isomorphism `ℂ → ℚ̄_ℓ` (the background of 1.2). Over the discrete
valuation ring `𝒪_{F,𝔮}` the localisation `A_𝔮` has a basis `(Σ_k u_{ik}y_k)_i` with `u ∈ M_n(𝒪_{F,𝔮})`, and the
valuation of `det u` at `𝔮` is the length `len_𝔮` of `(𝒪_F·y/A)_𝔮` (Smith normal form); these vectors lie in `𝒪_ι·L`,
and `|ι(det u)| = ℓ^{−len_𝔮/e(𝔮)}`, `e(𝔮)` the ramification index of `𝔮` over `ℓ`. So the numbers
`δ_ℓ = max_{𝔮|ℓ} len_𝔮/e(𝔮)` serve in 1.3, and `Σ_ℓ δ_ℓ log ℓ ≤ Σ_𝔮 len_𝔮 log Nm 𝔮 = log #(𝒪_F·y/A)`. Conversely,
`𝒪_ι` is torsion-free, hence flat, over `𝒪_{F,𝔮}`, so the vectors of `𝒪_ι·y` that lie in `𝒪_ι·L` form `𝒪_ι·A_𝔮`; a
matrix `u′` over `𝒪_ι` that makes `y` integral at `ι` is then a matrix over `𝒪_ι` times `u`, and
`|ι(det u′)| ≤ ℓ^{−len_𝔮/e(𝔮)}`. Hence numbers `δ_ℓ` that serve for an index bound `δ` have `δ_ℓ ≥ len_𝔮/e(𝔮)` for
every `𝔮 | ℓ`, and `log #(𝒪_F·y/A) = Σ_ℓ Σ_{𝔮|ℓ} f(𝔮)e(𝔮)·(len_𝔮/e(𝔮))·log ℓ ≤ [F:ℚ]·Σ_ℓ δ_ℓ log ℓ ≤ [F:ℚ]δ`, `f(𝔮)`
the residue degree and `ℓ` running over the finitely many primes that divide `#(𝒪_F·y/A)`. For `F = ℚ` there is one
prime over `ℓ`, with `e(𝔮) = f(𝔮) = 1`, and the two bounds agree. (c) `σ(y_i)` depends only on the restriction of `σ`
to `F`, and every embedding `η : F → ℂ` is such a restriction (the background of 1.2, with `ℂ` as the algebraically
closed field). `det h_η(y_i, y_k)` is the squared norm at `η` of `y_1 ∧ … ∧ y_n` for the determinant metric
(ArakelovGeometryAndAbelianHeights §1.2), and this vector generates `det(𝒪_F·y)`, `𝒪_F·y` being free with basis `y`;
so the Arakelov degree of `𝒪_F·y` is `−(1/2)Σ_η log det h_η(y_i, y_k)` (ArakelovGeometryAndAbelianHeights §1.3), which
is at least `−[F:ℚ]c/2` when every term is at most `c`. (d) With `n′ = 0` there are no vectors `z_i`; with `ξ_ι = 1`
and `γ = 1` the families `ι ↦ |γ(ξ_ι)|^{−2}` and `ι ↦ Z(1)/Z(ξ_ι)` are the constant family `1`, which has height at
most `0` (`H = 1`, `α = 0`, all `h_ℓ = 0` in 1.2). By (b) and (c) the `c` and `δ` of 1.4 are those with
`c ≥ log disc(ℤ·y)` and `δ ≥ log[ℤ·y : A]`, `A = ℤ·y ∩ L`, so its conclusion for all of them is
`disc(ℤ·y)·[ℤ·y : A]² ≥ 1`. The discriminant of a sublattice of index `j` is `j²` times that of the lattice; `A` has
finite index in `ℤ·y` and in `L`, so `disc(ℤ·y)·[ℤ·y : A]² = disc(A) = [L : A]²·disc(L)`, and `disc(L)` is a positive
integer because `G` is integral on `L` and positive definite.

Let `C` be a finite set, `G ∈ M_C(ℚ)` positive definite as a complex matrix (so symmetric), and `L ⊂ ℚ^C` a lattice,
the `ℤ`-span of a basis of `ℚ^C`, on which `G` is integral: `w^TGw′ ∈ ℤ` for `w, w′ ∈ L`. The *twisted lattice of `L`*
is the twisted lattice (1.3) on `V = ℂ^C`, with the inner product `⟨φ, φ′⟩ = φ^*Gφ′`, whose only twist `1` is allowed
at every prime, with `S_1 = V`, `Θ₁` and `coord` the identity, and `Λ_{1,ι} = 𝒪_ι·L` the `𝒪_ι`-span of `L`. For a
lattice `B ⊂ ℚ^C` with a `ℤ`-basis `b`, `disc(B) = det(b_i^TGb_k)` is its discriminant, the square of its covolume in
its real span. Let `F ⊂ ℂ` be a number field and `y = (y_1, …, y_n)` an `F`-linearly independent family in `F^C`. The
module `𝒪_F·y = Σ_i 𝒪_Fy_i`, with the hermitian forms `h_η(x ⊗ 1, x′ ⊗ 1) = η(x)^*Gη(x′)` at the embeddings
`η : F → ℂ` (applied to coordinates), is a hermitian vector bundle over `Spec 𝒪_F` in the sense of
ArakelovGeometryAndAbelianHeights §1.1 (Hermitian vector bundles over the ring of integers), the conjugation condition
holding because `G` is real; `𝒪_F·L` is the `𝒪_F`-span of `L` in `F^C`. For `F = ℚ` these are the Euclidean lattice
`ℤ·y` and `L`. Then:

- (a) The twisted lattice of `L` is a twisted lattice. A vector `v ∈ ℂ^C` is integral at `ι` exactly when `v ∈ 𝒪_ι·L`,
  and a vector of `ℚ^C` is integral at every pair exactly when it lies in `L`.
- (b) *Index.* `y` has index at most `log #(𝒪_F·y/(𝒪_F·y ∩ 𝒪_F·L))`; and if `y` has index at most `δ`, then
  `log #(𝒪_F·y/(𝒪_F·y ∩ 𝒪_F·L)) ≤ [F:ℚ]δ`. For `F = ℚ`, `y` has index at most `δ` exactly when
  `log[ℤ·y : ℤ·y ∩ L] ≤ δ`.
- (c) *Covolume.* `y` has covolume at most `c` exactly when `log det(h_η(y_i, y_k)) ≤ c` for every embedding
  `η : F → ℂ`, and then the Arakelov degree of `𝒪_F·y` (ArakelovGeometryAndAbelianHeights §1.3 (The Arakelov degree of
  a hermitian bundle)) is at least `−[F:ℚ]c/2`. For `F = ℚ`, `y` has covolume at most `c` exactly when
  `log disc(ℤ·y) ≤ c`, that is, when the Arakelov degree `−(1/2) log disc(ℤ·y)` of `ℤ·y` is at least `−c/2`.
- (d) *The lower bound of 1.4.* Let `y` be a basis of `ℚ^C`, so `n = #C`. For the twisted lattice of `L`, 1.4 applies
  with `n′ = 0`, `ξ_ι = 1` for every pair, `γ = 1` and `b_denom = b_vol = 0`, and its conclusion `0 ≤ c + 2δ`, for all
  `c` and `δ` such that `y` has covolume at most `c` and index at most `δ`, is the inequality `disc(ℤ·y ∩ L) ≥ 1`: the
  Euclidean lattice `ℤ·y ∩ L` has Arakelov degree at most `0`. This follows from
  `disc(ℤ·y ∩ L) = [L : ℤ·y ∩ L]²·disc(L)` and `disc(L) ≥ 1`, `disc(L)` being a positive integer.

The predicates record less than these numbers. A twisted lattice has no lattice among its data: integrality is tested
at each pair through the twists allowed at its prime, the vectors integral at a pair `ι` forming an `𝒪_ι`-module, and
size through the trivial twist alone. For a family with coordinates in a number field `F ≠ ℚ`, the covolume records
only the largest Gram determinant over the embeddings of `F`, and the index, at each prime `ℓ`, only the largest local
defect over the primes of `F` above `ℓ`, where the Arakelov degree and the index of a sublattice record sums.

**Checks.**

- `F = ℚ(√2)`, `C` a point, `G = (1)`, `L = ℤ` and `y = 1 + √2`: `𝒪_F·y = 𝒪_F` has Arakelov degree `0` and `y` has
  index at most `0`, but `y` has covolume at most `c` only for `c ≥ 2 log(1 + √2)`, the larger of `log|η(y)|²` over
  the two embeddings; the converse of the implication in (c) fails for this `F`.
- `C` a point, `G = (2)`, `L = ℤ` and `y = 1/3`: `ℤ·y ∩ L = ℤ` has index `3` in `ℤ·y`, `disc(ℤ·y) = 2/9`, and (d)
  reads `log(2/9) + 2 log 3 = log 2 = log disc(L) ≥ 0`.

*Needs:* 1.2 (its ShortGRH background: every embedding of a number field into an algebraically closed field of the
cardinality of `ℂ` extends to an isomorphism from `ℂ`), 1.3, 1.4; ArakelovGeometryAndAbelianHeights §1.1 (Hermitian
vector bundles over the ring of integers), §1.2 (Sums, tensor products, duals, determinants, sub-bundles and base
change), §1.3 (The Arakelov degree of a hermitian bundle); Tau Ceti
`Matrix.exists_smith_normal_form_of_isDiscreteValuationRing`; Mathlib `Ring.ord_eq_addVal`.

### 7.2 Heights of constant families, the norm and the Weil height

*Origin:* this roadmap's own formulation: the predicate of 1.2 for a constant family, compared with the norm and with
the absolute logarithmic Weil height of an algebraic number through the product formula. [ShortProof] states no such
comparison.

*Proof route:* The formula for `habs(z)` is `Habs(z) = H_{rel,F}(z)^{1/n}` of DiophantineApproximationAndTranscendence
§0.2 written out, the place of `F` at `𝔮` in Mathlib's product being `|·|_𝔮^{[F_𝔮:ℚ_ℓ]}`. (a) The restriction of `ι`
to `F` is an embedding `F → ℚ̄_ℓ`, and `|ι(·)|` on `F` is an absolute value extending `|·|_ℓ`, hence `|·|_𝔮` for one
prime `𝔮 | ℓ`; conversely an embedding `F → ℚ̄_ℓ` that induces `𝔮` extends to an isomorphism `ℂ → ℚ̄_ℓ` (the
background of 1.2). (b) Take `H = 1`, `α = 0` and `h_ℓ = max_{𝔮|ℓ} log⁺|z|_𝔮/log ℓ`, which vanishes for all but
finitely many `ℓ`; then `|ι(z)| ≤ ℓ^{h_ℓ}` by (a), and `max_{𝔮|ℓ} log⁺|z|_𝔮 ≤ Σ_{𝔮|ℓ} [F_𝔮:ℚ_ℓ] log⁺|z|_𝔮`. (c) Let
`H`, `α`, `h_ℓ` be as in 1.2. By (a), `|ι(z)|` takes finitely many nonzero values at the pairs over one prime, so
`|ι(H)| ≤ ℓ^{h_ℓ}/|ι(z)|` is bounded there and `H` is algebraic (the background of 1.2). Let `F′ = ℚ(z, H)` and
`n_H = [F′:ℚ]`. The product formula for `Hz ∈ F′^×` (Mathlib `NumberField.prod_abs_eq_one`, whose finite places are
the `|·|_𝔔^{[F′_𝔔:ℚ_ℓ]}`) reads `Σ_{η′} log|η′(H)| + Σ_{η′} log|η′(z)| + Σ_𝔔 [F′_𝔔:ℚ_ℓ] log|Hz|_𝔔 = 0`, the first two
sums over the embeddings `η′ : F′ → ℂ`. Each `η′` is the restriction of an automorphism of `ℂ`, so the first sum is at
most `n_H·α`; the second is `(n_H/n) log|N_{F/ℚ}(z)|` (Mathlib `Algebra.norm_eq_prod_embeddings`); and the weights
`[F′_𝔔:ℚ_ℓ]` add up to `n_H` over the `𝔔 | ℓ`, so by (a) for `F′` the third sum is at most `n_H·Σ_{ℓ∈S} h_ℓ log ℓ`,
`S` the finite set of primes below the `𝔔` with `|Hz|_𝔔 > 1`. Hence `0 ≤ n_H·c + (n_H/n) log|N_{F/ℚ}(z)|`. The product
formula for `z` gives the second form, and `Σ_η log|η(z)| ≤ Σ_η log⁺|η(z)| ≤ n·habs(z)`. (d) For `z = ±a/b` with
coprime positive integers `a`, `b`, take `H = ±1/a`, `α = −log a` and `h_ℓ` the exponent of `ℓ` in `b`; the other
direction is (c) with `n = 1`. For the paragraph below,
`−log|N_{F/ℚ}(z)| = Σ_η log|η(z^{−1})| ≤ n·habs(z^{−1}) = n·habs(z)`, the absolute heights of `z` and `z^{−1}` being
equal (DiophantineApproximationAndTranscendence §0.2, `mahlerMeasure_inv`).

Let `z ∈ ℂ^×` be algebraic, `F = ℚ(z) ⊂ ℂ` and `n = [F:ℚ]`; `η` runs over the embeddings `F → ℂ`. For a prime `𝔮` of
`F` over `ℓ`, `|·|_𝔮` is the absolute value of `F` at `𝔮` that extends `|·|_ℓ`. Let `habs(z) = log Habs(z)`, `Habs`
the absolute height of DiophantineApproximationAndTranscendence §0.2 (Mahler measure, house and absolute height); this
is the absolute logarithmic Weil height, `habs(z) = n^{−1}(Σ_η log⁺|η(z)| + Σ_𝔮 [F_𝔮:ℚ_ℓ] log⁺|z|_𝔮) ≥ 0`, the second
sum over the primes of `F`. The *constant family* `z` is the family with `y_ι = z` for every pair `ι`. Then:

- (a) For every pair `ι` over `ℓ` there is a prime `𝔮 | ℓ` of `F` with `|ι(w)| = |w|_𝔮` for every `w ∈ F`, and every
  prime of `F` over `ℓ` arises from some pair.
- (b) The constant family `z` has height at most `Σ_ℓ max_{𝔮|ℓ} log⁺|z|_𝔮`, which is at most
  `n·habs(z) − Σ_η log⁺|η(z)|`.
- (c) If the constant family `z` has height at most `c`, then `n^{−1}Σ_η log|η(z)| ≥ −c`, that is
  `|N_{F/ℚ}(z)| ≥ e^{−nc}`, or equivalently, by the product formula, `n^{−1}Σ_𝔮 [F_𝔮:ℚ_ℓ] log|z|_𝔮 ≤ c`. In particular
  `habs(z) ≥ −c`.
- (d) For `z ∈ ℚ^×`, the constant family `z` has height at most `c` exactly when `log|z| ≥ −c`.

So for a constant family the predicate bounds from above `−n^{−1} log|N_{F/ℚ}(z)|`, which is at most `habs(z)` and can
be negative; it gives no upper bound for `habs(z)`, the constant family `m`, for an integer `m ≥ 1`, having height at
most `−log m` while `habs(m) = log m`. 1.2 (f) follows from (c), the largest of the `|σ(z)|` being at least their
geometric mean. For a family that varies with the pair no standard height is defined.

**Checks.**

- The constant family `1/2` has height at most `c` exactly when `c ≥ log 2`, and the constant family `2` exactly when
  `c ≥ −log 2` (`H = 1/2`), although `habs(2) = habs(1/2) = log 2`: for rational `z` the least `c` is `−log|z|`, not a
  function of the Weil height.

*Needs:* 1.2 (its ShortGRH background: a complex number whose images under the pairs at one prime are bounded is
algebraic, and every embedding of a number field into an algebraically closed field of the cardinality of `ℂ` extends
to an isomorphism from `ℂ`); DiophantineApproximationAndTranscendence §0.2 (Mahler measure, house and absolute
height); Mathlib `NumberField.prod_abs_eq_one`, `Algebra.norm_eq_prod_embeddings`.

### 7.3 Colength, elementary divisors and length

*Origin:* this roadmap's own formulation: the predicate of 1.1 compared, over a discrete valuation ring, with the
length of a quotient module and, over a valuation domain, with the elementary divisors of a submodule of a free module
of finite rank. [ShortProof] proves the implications 1.1 (f) and 1.1 (g), and states no comparison.

*Proof route:* (a) If `z = 0`, the zero matrix carries every family into `N`, and its determinant divides `0`.
Otherwise let `Φ_1, …, Φ_n ∈ M` and let `𝒦 ⊂ O^n` be the kernel of the map `O^n → M/(M ∩ N)` sending the `k`-th basis
vector to the class of `Φ_k`. Then `O^n/𝒦` embeds in `M/(M ∩ N)`, so its length is finite and at most `v_O(z)`; `𝒦` is
free of rank `n`, and a matrix `m` whose rows form a basis of `𝒦` has `v_O(det m) = len_O(O^n/𝒦)` (Smith normal form
over `O`), so `det m` divides `z` and `Σ_k m_{ik}Φ_k ∈ M ∩ N` for every `i`. (b) One direction is (a). For the other,
let `M ⊸_z N` with `z ≠ 0`. A finitely generated submodule `M₀ ⊂ M` has `M₀ ⊸_z N`, a family in `M₀` being a family in
`M`, so by 1.1 (g) the image of `M₀` in `M/(M ∩ N)`, which is `M₀/(M₀ ∩ N)`, has length at most `v_O(z)`. If
`M/(M ∩ N)` had a chain of `v_O(z) + 2` distinct submodules, elements chosen one in each member of the chain outside
the member before it would span a submodule of length at least `v_O(z) + 1`, the image of a finitely generated `M₀`,
against the bound just proved. (c) Apply (b) to `y(M) + p^nM`, which lies in `M`: as `v_O(p^l) = l·v_O(p)`, some
integer `0 ≤ l ≤ c` has `len_O(M/(y(M) + p^nM)) ≤ l·v_O(p)` exactly when `l = ⌊c⌋` has. (d) Applied to the family
`Φ_1, …, Φ_n`, the definition of 1.1 gives `A`. Conversely, let `O` be a valuation domain and `A` such a matrix, and
let `𝒦 ⊂ O^n` be the kernel of (a) for this family. The rows of `A` lie in `𝒦`, so the image of the transpose of `A`
lies in `𝒦`, and its determinant divides `z`; by 1.1 (f), `O^n ⊸_z 𝒦`, and 1.1 (d), for the map `O^n → V` sending the
`k`-th basis vector to `Φ_k`, whose image is `M` and which carries `𝒦` into `N`, gives `M ⊸_z N`. Suppose further that
`Φ_1, …, Φ_n` is a basis of `M`. The Smith normal form over a valuation domain (the background of 1.1) writes
`A = U₁·diag(a_1, …, a_n)·U₂` with `U₁`, `U₂` invertible over `O`; the `Φ′_i = Σ_k (U₂)_{ik}Φ_k` form a basis of `M`,
the vectors `a_iΦ′_i` are the combinations, with the entries of `U₁^{−1}` as coefficients, of the vectors
`Σ_k A_{ik}Φ_k ∈ N`, and `det A` is a unit times `a_1⋯a_n`. Conversely, a basis `(Φ′_i)` and elements `a_i` as in (d)
give the matrix `A = diag(a_1, …, a_n)·U₂`, with `U₂` the matrix of the `Φ′_i` in the basis `(Φ_k)`, which is
invertible over `O`. For the rings `𝒪_ι`: if `z` is a nonzero non-unit, the ideals `{w ∈ 𝒪_ι : |ι(w)| ≤ t}`, for the
values `t ∈ ℓ^ℚ` with `|ι(z)| ≤ t < 1`, form an infinite chain of ideals containing `z`.

Let `O`, `V`, `M`, `N ⊂ V` and `z ∈ O` be as in 1.1. In (a)–(c), `O` is a discrete valuation ring with normalised
valuation `v_O` (`v_O(0) = ∞`), and `len_O` is the length of an `O`-module (Mathlib `Module.length`, with values in
`ℕ ∪ {∞}`), so that `len_O(O/(z)) = v_O(z)` (Mathlib `Ring.ord_eq_addVal`). Then:

- (a) If `len_O(M/(M ∩ N)) ≤ v_O(z)`, then `M ⊸_z N`.
- (b) `M ⊸_z N` holds exactly when `len_O(M/(M ∩ N)) ≤ len_O(O/(z))`: the colength of `M ∩ N` in `M` is at most the
  valuation of `z`. For `z = 0` both hold.
- (c) If `p ∈ O` is nonzero and `c ≥ 0`, an endomorphism `y` of `V` is onto `M` modulo `p^n` up to colength `c`
  exactly when `y(M) ⊂ M` and `len_O(M/(y(M) + p^nM)) ≤ ⌊c⌋·v_O(p)`.
- (d) *Elementary divisors.* Let `Φ_1, …, Φ_n` generate `M`. For every commutative ring `O`, if `M ⊸_z N` then there
  is an `n × n` matrix `A` over `O` with `det A | z` and `Σ_k A_{ik}Φ_k ∈ N` for every `i`. If `O` is a valuation
  domain, the converse holds. If moreover `Φ_1, …, Φ_n` is a basis of `M`, the two conditions are equivalent to: there
  are a basis `Φ′_1, …, Φ′_n` of `M` and `a_1, …, a_n ∈ O` with `a_1⋯a_n | z` and `a_iΦ′_i ∈ N` for every `i`; that
  is, `M ∩ N` contains a submodule of `M` with elementary divisors `a_1, …, a_n` whose product divides `z`.

So over a discrete valuation ring the predicate is the standard bound for a colength, and over a valuation domain, for
a free module of finite rank, it says that `M ∩ N` contains a submodule of `M` whose elementary divisors have product
dividing `z`: it sees `N` only through such submodules, and of their elementary divisors only the product. Over the
valuation rings `𝒪_ι` of the Conventions, whose valuation takes every rational value, `𝒪_ι/(z)` has infinite length
for every nonzero non-unit `z`, so that no bound by a length is available there; the route states its colength bounds
over them through the predicate, and (d) is their form on the standard objects.

**Checks.**

- Over `ℤ_p`, with `M = ℤ_p²` and `N = pℤ_p ⊕ ℤ_p`, `len(M/N) = 1`: `M ⊸_p N` holds, with the matrix `diag(p, 1)` for
  the family of the two basis vectors, and `M ⊸_1 N` does not.
- Over a valuation domain `O`, with `M = O`, the basis `1` and `N = zO`: by (d), `M ⊸_w N` holds exactly when `z`
  divides `w`.

*Needs:* 1.1 (with its ShortGRH background: the Smith normal form of a square matrix over a valuation domain); Mathlib
`Module.length`, `Ring.ord_eq_addVal`; Tau Ceti `Matrix.exists_smith_normal_form_of_isDiscreteValuationRing`.

### 7.4 The remainders `R_q` and the Riesz remainders of Dirichlet characters

*Origin:* this roadmap's own formulation: `R_q` written through the Riesz remainders of
RiemannHypothesisStatementsAndConsequences §8.4a (b), extended to imprimitive characters, with what the explicit
formula there gives under a zero-free half-plane and what a two-sided bound gives for the zeros; and the prime sums of
4.1 written through Riesz sums of characters. 0.1 records the case `q = 1` of (a); [ShortProof] states no such
comparison.

*Proof route:* (a) `y·R_q(y) = Σ_{1≤n≤y} λ_q(n)(y/n − 1) − (y log y)/φ(q) − c_q y`. By orthogonality (Mathlib
`DirichletCharacter.sum_characters_eq`), `φ(q)^{−1}Σ_ψ ψ(n)` is `1` for `n ≡ 1 (mod q)` and `0` otherwise, so
`λ_q(n) = φ(q)^{−1}Σ_ψ Λ(n)(ψ(n) − ψχ_K(n))`. As `d ∤ q`, some `n ≡ 1 (mod q)` prime to `d` has `χ_K(n) = −1`, so no
`ψχ_K` is principal, and the term `−(y log y − y)` occurs once, for the principal `ψ`. `E_ψ` is entire with
`E_ψ(1) ≠ 0` (Mathlib `DirichletCharacter.LFunction_apply_one_ne_zero`,
`DirichletCharacter.LFunctionTrivChar_residue_one`), and by the definition of `G_q`,
`φ(q)^{−1}Σ_ψ((E′_ψ/E_ψ)(1) − (E′_{ψχ_K}/E_{ψχ_K})(1)) = −G_q(1) − φ(q)^{−1}`; `G_q(1) = c_q` is real, the characters
coming in conjugate pairs with `E_{ψ̄}(s̄)` the conjugate of `E_ψ(s)`. So the terms `y/φ(q)` cancel. (b)
`ψ(m) = ψ°(m)` except at the powers of the primes `p | q′` that do not divide the conductor of `ψ°`, where `ψ(m) = 0`,
and `E_ψ(s) = E_{ψ°}(s)∏_p(1 − ψ°(p)p^{−s})` over these primes (Mathlib `DirichletCharacter.LFunction_changeLevel`),
so `(E′_ψ/E_ψ)(1) − (E′_{ψ°}/E_{ψ°})(1) = Σ_p log p·Σ_{k≥1} ψ°(p)^k p^{−k}`. Hence
`𝒢_ψ(y) − 𝒢_{ψ°}(y) = Σ_p log p·(Σ_{k≥1, p^k≤y} ψ°(p)^k + y·Σ_{k: p^k>y} ψ°(p)^k p^{−k})`; each bracket is at most
`log y/log p + 2` in absolute value, `Σ_p log p ≤ log q′`, and there are at most `log q′/log 2` primes `p`. (c) By
(a), (b), and the explicit formula of RiemannHypothesisStatementsAndConsequences §8.4a (b) for each `ψ°` and
`(ψχ_K)°`, whose term besides the zero sum is `O(log y)` for `y ≥ 2`. (d) The zeros of the completed L-function of a
primitive `χ` lie in `0 ≤ Re s ≤ 1`, and those with `Re s > 0` are zeros of `L(s, χ)`, the gamma factor having neither
zeros nor poles there; the factors `1 − ψ°(p)p^{−s}` vanish only on `Re s = 0`. So under the hypothesis every zero `ρ`
in the sums of (c) has `|y^ρ| ≤ y^β` for `y ≥ 1`, and `|𝒵_χ(y)| ≤ y^β·Σ_ρ 1/|ρ(1 − ρ)|`, a convergent sum (§8.4a (b));
with (c) and `log y ≤ C_q·y^β` for `y ≥ 2`, `|y·R_q(y)| ≤ C_q·y^β`. (e) By (a), (b) and the transform of §8.4a (b), on
`Re s > 2`, `∫_1^∞ R_q(y)y^{−s} dy = φ(q)^{−1}Σ_ψ(ℳ_{ψ°}(s) − ℳ_{(ψχ_K)°}(s)) + 𝒥(s)`, with `ℳ_χ` the transform of the
remainder of a primitive `χ` in §8.4a (b), and `𝒥` the transform of the differences of (b), which are `O(log y)` and
so give a function analytic on `Re s > 0`. Under the hypothesis, `R_q` being bounded on bounded intervals, the left
side converges absolutely, so is analytic, on `Re s > β`; so the right side has no pole there. By §8.4a (b) its
residue at `ρ ≠ 1` with `Re ρ > 0` is `φ(q)^{−1}Σ_ψ(ord_ρ L(·, ψ°) − ord_ρ L(·, (ψχ_K)°))/(ρ(1 − ρ))`, and
`ord_ρ L(·, ψ°) = ord_ρ L(·, ψ)` for `Re ρ > 0`. (f) For `ν` prime to `q₁` the place `−νσ` depends only on the class
of `ν` modulo `q₁`, and the terms with `ν` not prime to `q₁` vanish (4.1); `(y/ν − κ)₊ = κ·(y/(κν) − 1)₊` for `κ > 0`;
for `y ≤ a` and `κ ≥ 1` no term with `ν > a` is nonzero; and the indicator of the class `u` is `φ(q₁)^{−1}Σ_ψ ψ̄(u)ψ`
(Mathlib `DirichletCharacter.sum_char_inv_mul_char_eq`).

In (a)–(e), `d` is an odd prime, `χ_K = (·/d)`, `q ≥ 1` is prime to `d`, and `R_q = R_q^{(d)}`. For a Dirichlet
character `ψ` modulo `q′ ≥ 1`, `ψ°` is the primitive character that induces it, `E_ψ` is as in 0.1,
`rieszSum(Λψ, y) = Σ_{1≤m≤y} Λ(m)ψ(m)(y/m − 1)` is the Riesz sum of RiemannHypothesisStatementsAndConsequences §8.4a
(Riesz sums and the explicit formula for the Riesz remainder), and the *Riesz remainder* of `ψ` is, for real `y > 0`,
`𝒢_ψ(y) = rieszSum(Λψ, y) + y·(E′_ψ/E_ψ)(1)` if `ψ` is not principal and
`𝒢_ψ(y) = rieszSum(Λψ, y) − y log y + y + y·(E′_ψ/E_ψ)(1)` if it is. For primitive `ψ` this is the Riesz remainder of
§8.4a (b) (for the character modulo `1`, that of `ζ`, as `(E′_ψ/E_ψ)(1) = γ` there), so `𝒢_1` and `𝒢_{χ_K}` are those
of 0.1. For a primitive `χ`, `𝒵_χ(y) = Σ'_ρ y^ρ/(ρ(1 − ρ))` is the sum over the zeros `ρ` of its completed L-function,
repeated according to multiplicity, in the explicit formula of §8.4a (b). For `ψ` modulo `q`, `ψχ_K` is the character
`n ↦ ψ(n)χ_K(n)` modulo `qd`, and sums over `ψ` run over the characters modulo `q`. Then:

- (a) For every real `y > 0`, `y·R_q(y) = φ(q)^{−1}Σ_ψ (𝒢_ψ(y) − 𝒢_{ψχ_K}(y))`.
- (b) For `ψ` modulo `q′` and `y ≥ 1`, `|𝒢_ψ(y) − 𝒢_{ψ°}(y)| ≤ 2(1 + log y)·log q′`.
- (c) *The explicit formula.* There is `C_q`, depending on `q` and `d`, with
  `|y·R_q(y) − φ(q)^{−1}Σ_ψ (𝒵_{ψ°}(y) − 𝒵_{(ψχ_K)°}(y))| ≤ C_q log y` for every `y ≥ 2`.
- (d) *Zero-free half-planes.* Let `β ≥ 1/2`. If no `L(s, ψ)` and no `L(s, ψχ_K)` vanishes in `Re s > β`, there is
  `C_q`, depending on `q`, `d` and `β`, with `|R_q(y)| ≤ C_q·y^{β−1}` for every `y ≥ 2`. In particular, if no
  Dirichlet L-function modulo `q` or modulo `qd` has a zero in `Re s > 1/2`, then `|R_q(y)| ≤ C_q·y^{−1/2}` for every
  `y ≥ 2`.
- (e) *A two-sided bound for one `d`.* Let `β ≥ 0`. If `|R_q(y)| ≤ C_q·y^{β−1}` for all large `y`, then
  `Σ_ψ ord_ρ L(·, ψ) = Σ_ψ ord_ρ L(·, ψχ_K)` for every `ρ ≠ 1` with `Re ρ > β`, `ord_ρ` being the order of vanishing
  at `ρ`.
- (f) *The prime sums of 4.1.* Let `D` be admissible data with prime `d`, `0 ≤ y ≤ a` and `σ ∈ Φ`, and for a class
  `u ∈ (ℤ/q₁)^×` write `κ(−uσ)` for the value of `κ(−νσ)` at the integers `ν` of the class `u`. Then
  `s_fin(y, σ) = Σ_u κ(−uσ)·Σ_{1≤ν≤y/κ(−uσ), ν≡u (mod q₁)} λ₁(ν)(y/(κ(−uσ)ν) − 1)`, and
  `s_fin(y, σ) = φ(q₁)^{−1}Σ_u Σ_ψ κ(−uσ)ψ̄(u)·(rieszSum(Λψ, y/κ(−uσ)) − rieszSum(Λψχ_K, y/κ(−uσ)))`, here with `ψ`
  over the characters modulo `q₁` and `ψχ_K` modulo `q₁d`.

So `R_q` is `y^{−1}` times a signed mean of Riesz remainders, the characters modulo `q` with weight `+1` and their
twists by `χ_K` with weight `−1` (a), and by the explicit formula `y·R_q(y)` differs by at most `C_q log y`, for
`y ≥ 2`, from the same signed mean of the sums over zeros (c). Zero-free half-planes for both families give the
two-sided bound (d); conversely, a two-sided bound for one `d` makes the zeros of the two families cancel in
`Re s > β`, counted with multiplicity (e). The criterion 0.2 separates the two families: it asks only the upper bound,
but for every prime `d` of a residue class, and obtains the absence of zeros of each `L(s, ψ)` from Landau's theorem
(PositivityOfDirichletSeriesWithKernels §6.4 (Meromorphic and one-sided forms)) and a choice of `d` whose twists have
no zero in a box (ZeroFreeRegionsAndPrimesInShortWindows §3.5).

**Checks.**

- At `q = 1`, (a) reads `y·R₁(y) = 𝒢_1(y) − 𝒢_{χ_K}(y)` with `𝒢_1(y) = rieszSum(Λ, y) − y log y + (1 + γ)y` and
  `𝒢_{χ_K}(y) = rieszSum(Λχ_K, y) + y·(L′/L)(1, χ_K)`: the constants differ by `1 + γ − (L′/L)(1, χ_K) = −c₁`, as 0.1
  requires.
- For the principal character `ψ` modulo `2`, `ψ°` is the character modulo `1` and
  `𝒢_ψ(y) − 𝒢_1(y) = log 2·(⌊log y/log 2⌋ + 2y/2^k)`, `2^k` the least power of `2` above `y`; it grows like `log y`,
  so the difference in (b) is not bounded.

*Needs:* 0.1, 3.2, 4.1; RiemannHypothesisStatementsAndConsequences §8.4a (Riesz sums and the explicit formula for the
Riesz remainder): the Riesz sums of (a) and, for a primitive character, the remainder of (b) with its transform, its
poles in `Re s > 0`, its size and its explicit formula; Mathlib `DirichletCharacter.sum_characters_eq`,
`DirichletCharacter.sum_char_inv_mul_char_eq`, `DirichletCharacter.LFunction_changeLevel`,
`DirichletCharacter.LFunction_apply_one_ne_zero`, `DirichletCharacter.LFunctionTrivChar_residue_one`.

## Downstream consumers

- The other roadmaps of `ShortGRH` (DivisibilityOfThetaDerivatives, ThetaLiftChainsAndTheSeesawIdentity,
  CompositeThetaLiftsAndShortForms, SecondMomentsOfPoincareSeries, RemainingAndMainTermsOfSecondMoments,
  DeterminantsOfThetaLiftChains, CongruencesOfTwistedThetaLifts, SelmerBoundsForAnticyclotomicTwists,
  NormsOfThetaLiftsAndExchangeIdentities and PairsOfFramesAtOnePlace) take the set-up of Layers 1–4: the parameters,
  the field `E` and its places, the admissible data with their sizes, the twists and the characters of the lifts, the
  prime sums, colengths (1.1), heights (1.2) and twisted lattices (1.3, 1.4).
- CompositeThetaLiftsAndShortForms §§4.9, 5.4, 5.5, 5.7 and SecondMomentsOfPoincareSeries §5.7
  prove the inputs of Theorems A and B (5.3, 5.4); DeterminantsOfThetaLiftChains §6.3 is Theorem C. 6.1 consumes the
  three.
- GeneralizedRiemannHypothesisFromWindowBounds §§5.1–5.3 state the theorems that 6.3 and 6.4 reach, and draw their
  further forms and consequences.

## Scope and ownership

### Owned here

- the remainders `R_q` and the one-sided criterion (Layer 0);
- colength bounds, heights of families over all pairs, twisted lattices with index and covolume, and the lower bound by
  a twist for each prime (Layer 1);
- the parameters, the field `E` with its group of places, the admissible data, their sizes, the row parameter, twists
  and the characters of the lifts, and the existence of admissible data (Layers 2 and 3);
- the prime sums, the local prime sums `s_p` with their total `S_p`, the main amount, the total remainder and its
  expression through `R_{q₀}` and `R₁` (Layer 4);
- the target lattice, the normalised Poincaré maps, and Theorems A and B (Layer 5);
- the main inequality, the one-sided bound, the passage to all Dirichlet characters, and the derivation of the end
  theorems from 6.3 by this route (Layer 6);
- the comparison of these objects with the standard theory (Layer 7): the twisted lattice of an integral lattice with
  its index, covolume and Arakelov degree, heights of constant families against the norm and the Weil height, colength
  against length over a discrete valuation ring and against elementary divisors over a valuation domain, and the
  remainders `R_q` and the prime sums against Riesz sums and Riesz remainders of Dirichlet characters, with the bounds
  that zero-free half-planes give.

### Not owned here

- the objects of Layer 5 (spaces, source and target forms, chains of lifts, the Poincaré map, the seesaw identity):
  ThetaLiftChainsAndTheSeesawIdentity;
- the proofs of the inputs of Theorems A and B: CompositeThetaLiftsAndShortForms; SecondMomentsOfPoincareSeries with
  RemainingAndMainTermsOfSecondMoments and PairsOfFramesAtOnePlace;
- Theorem C and its proof: DeterminantsOfThetaLiftChains §6.3, with NormsOfThetaLiftsAndExchangeIdentities,
  CongruencesOfTwistedThetaLifts and SelmerBoundsForAnticyclotomicTwists;
- the field arithmetic of `E` beyond 2.3 (its integers, its different, the chosen places and their characters):
  DivisibilityOfThetaDerivatives §§1.1–1.7;
- the statements of the end theorems in their value, predicate and strip forms, with Mathlib's `RiemannHypothesis`:
  GeneralizedRiemannHypothesisFromWindowBounds §§5.1–5.3 (6.3 and 6.4 prove them by this route);
- the transform of a Riesz sum (RiemannHypothesisStatementsAndConsequences §8.4a), Landau's theorem
  (PositivityOfDirichletSeriesWithKernels §6.4), the Siegel–Walfisz theorem (AnalyticNumberTheoryPartI §0.32), and the
  equivalences between the forms of the hypothesis, which 6.4 uses (RiemannHypothesisStatementsAndConsequences
  §§9.3, 9.4);
- the standard objects of Layer 7: hermitian vector bundles over rings of integers, their determinants and their
  Arakelov degree (ArakelovGeometryAndAbelianHeights §1.1 (Hermitian vector bundles over the ring of integers), §1.2
  (Sums, tensor products, duals, determinants, sub-bundles and base change), §1.3 (The Arakelov degree of a hermitian
  bundle)); the absolute height of an algebraic number (DiophantineApproximationAndTranscendence §0.2 (Mahler measure,
  house and absolute height)); Riesz sums and the remainder of a primitive Dirichlet character with its transform and
  its explicit formula (RiemannHypothesisStatementsAndConsequences §8.4a (Riesz sums and the explicit formula for the
  Riesz remainder)); and the comparison of algebraic modular forms and their gauge with the standard theory
  (AdelicUnitaryGroupsAndAlgebraicModularForms §8.6), which 5.1 cites.

## References

- [ShortProof] The shorter Lean formalization of the Riemann hypothesis and of the Riemann hypothesis for Dirichlet
  L-functions, a rewriting by the same method of the formal proof that the family RiemannHypothesisForDirichletLFunctions
  states: the folder `grh` of github.com/lsernau/grh-lean at commit `72fead1`; paths are relative to its directory
  `src/`. It is the reference of every target whose origin is particular to this proof.
- E. Landau, *Über einen Satz von Tschebyschef*, Math. Ann. 61 (1905), 527–550: Landau's theorem on Laplace and Mellin
  transforms of functions bounded on one side (0.2, through PositivityOfDirichletSeriesWithKernels §6.4).
- F. A. Behrend, *On sets of integers which contain no three terms in arithmetical progression*, Proc. Nat. Acad. Sci.
  USA 32 (1946), 331–332; Shapira, *Behrend-type constructions for sets of linear equations*, Acta Arith. (2006);
  Alon and Shapira, *A characterization of easily testable induced subgraphs* (2006), Lemma 4.1 (preprint
  numbering): 3.5.
- L. C. Washington, *Introduction to Cyclotomic Fields*, second edition, Springer (1997), Chapter 2: 2.3.
