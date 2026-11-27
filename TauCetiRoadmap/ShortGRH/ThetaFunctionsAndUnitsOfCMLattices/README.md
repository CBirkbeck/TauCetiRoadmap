# Theta functions and units of CM lattices

**Summary.** This roadmap is the complex multiplication that the family `ShortGRH` uses, in one variable. Its objects
are lattices `Λ ⊂ ℂ` with complex multiplication by the integers of `K = ℚ(√−d)`, `d` a prime `≡ 7 (mod 8)`, each with
the point `t` of order two that neither prime of `K` above `2` kills and scaled so that `℘″(t) = 2` (the *CM lattices*);
the sigma function of a lattice, normalised as the odd theta function of the form `(π/A)·l̄z`; the theta function `θ`
of a CM lattice, the translate of `σ` by `t`; the coordinates `x`, `y` of the model `y² + a₁xy = x³ + x` with origin at
the image of `t`; and the spaces of theta functions (*sections*) of every degree.

The reference is the standard theory of elliptic curves with complex multiplication by `𝒪_K`, and the roadmap states
its results on the standard objects through Layer 6 (Comparison with the standard theory). There a CM lattice
describes an elliptic curve over `ℂ` with complex multiplication by `𝒪_K` and a point of order two on it, given by the
Weierstrass model `y² + a₁xy = x³ + x` with its origin moved to that point (6.2). The sigma function `σ_Λ` of this
roadmap is not the function that the name denotes in the literature, Weierstrass's sigma function `σ_W`, but
`σ_W·exp(−s₂z²/2)` for a constant `s₂ = s₂(Λ)` (6.1), and `θ` is Weierstrass's function at the half-period `t` times
the same factor (6.2). Torsion values of `σ` are Klein forms, and a value of a Siegel function is a Klein form times a
twelfth root of the discriminant of the lattice (6.3); the ring of integral series in `y` is that of the formal group
of the Weierstrass model (6.4); by the main theorem of complex multiplication, the adele of 5.3 is the inverse of a
finite idele whose Artin symbol, for the Artin map in the arithmetic normalisation, is the given automorphism on the
maximal abelian extension of `K` (6.5); and the class mean of logarithmic periods of 5.4 is equivalent to the
Chowla–Selberg formula (6.6). The objects of Layers 1–5 (normalised theta functions, torsion values, the ring
`𝒪[[y]]`, the adele of 5.3) are one way to prove these results, and the proofs of the route are stated on them.

The argument of the family runs as follows: a one-sided bound for a sum over primes gives a half-plane free of zeros
of Dirichlet L-functions, and the one-sided bound comes from comparing an upper and a lower bound for the covolume of a
lattice of theta lifts (OneSidedPrimeSumBoundsAndAdmissibleData). Both bounds rest on the Taylor coefficients of theta
functions of CM lattices: their divisibility at each prime and their size at each conjugate
(DivisibilityOfThetaDerivatives). This roadmap supplies what those statements take from the theory of one CM elliptic
curve: integrality at every prime, `2` and `d` included; the formal group at every prime with the Lubin–Tate scaling;
the action of the automorphisms of `ℂ` over `K` on Taylor coefficients; and the Chowla–Selberg formula, which fixes the
archimedean scale. It also defines the numbers attached to a prime (`π_p`, `q_p`, `ρ_p`, `γ_p`) that
CompositeThetaLiftsAndShortForms and DivisibilityOfThetaDerivatives use.

The headline theorems are these.

(1) *Units* (2.2, 3.1). For every CM lattice, every prime `p` and every ring homomorphism `ι : ℂ → ℂ_p`, the
discriminant `g₂³ − 27g₃² = a₁⁴ − 64` has `|ι(a₁⁴ − 64)| = 1`, and at every torsion point `u` the normalised values
`σ[u]`, `θ[u]` are integral and not both non-units.

(2) *The integrality principle* (3.3). A section of degree `m` whose values at all torsion points are integral at `p`
is an integral combination of the monomials `θ^aσ^{2b}G^c` (`c ≤ 1`), and its Taylor series at `0` lies in
`θ^m·𝒪[[y]]`, the integral series in the coordinate `y`.

(3) *The formal parameter* (4.3). At every prime `p` there is `ϖ ∈ ℂ_p` with `|ϖ| = p^{−ρ_p}` such that
`Y := T(ϖz)/ϖ`, `T` the part of `y` in the degrees `≡ 1 (mod q_p − 1)`, is integral, `Y − Y^{q_p} ≡ z` and
`Y ≡ Σ_j z^{q_p^j}` modulo `π_p`.

(4) *Complex multiplication and Chowla–Selberg* (5.3, 5.5). For the lattice `Ω₀𝒪_K` and an automorphism `σ` of `ℂ`
over `K`, one finite adele of `K` describes how `σ` acts on the Taylor coefficients of the translates of `θ` by the
points of `KΩ₀`; and there is one number `u`, a unit at every prime, with
`area(ℂ/Λ^σ)·|σ(u)|² = π·exp(γ − (L′/L)(1, χ_K))·2π/√d` for every conjugate lattice `Λ^σ`.

**In standard terms.** Write `W_C` for the curve `y² + a₁xy = x³ + x` of a CM lattice, an elliptic curve over `ℂ` with
complex multiplication by `𝒪_K` (6.2). In (1), `a₁⁴ − 64` is the discriminant of `W_C`; with `Λ = c(ℤτ + ℤ)`,
`t = c(r°₁τ + r°₂)` and `u = c(r₁τ + r₂)`, `r ∈ ℚ²`, `σ[u]` is the Klein form of `Λ` at `u`, and
`|ι(σ[u])| = |ι(g_r(τ))|` if `r ∉ ℤ²`, `|ι(θ[u])| = |ι(g_{r+r°}(τ))|` if `r + r° ∉ ℤ²`, for the Siegel functions `g_r`
(6.3); so (1) says that the discriminant of `W_C` is a unit at every prime and that, for `r ∈ ℚ²` with
`r, r + r° ∉ ℤ²`, the Siegel values `g_r(τ)`, `g_{r+r°}(τ)` at the CM point `τ` are integral and not both non-units.
In (2) and (3), `𝒪[[y]]` is the ring of integral series in a parameter of the formal group of `W_C` over `𝒪`, `T` is
another parameter of it, and `T(π_pz)` is the multiplication by `π_p` of that formal group written in the parameter
`T`, whose reduction has order `q_p`; so the reduction of `W_C` is ordinary exactly when `p` splits in `K` (6.4). In
(4), by the main theorem of complex multiplication the adele is the inverse of a finite idele whose Artin symbol, in
the arithmetic normalisation, is `σ` on the maximal abelian extension of `K` (6.5); and the right side is
`π·d^{−1/2}·∏_{a=1}^{d−1}Γ(a/d)^{χ_K(a)/h}`, the period of the Chowla–Selberg formula (6.6).

There are six layers. Layer 1 is the sigma function of a lattice, the CM lattices and their sections, with the
addition and duplication formulas. Layer 2 is the arithmetic of the lattices: their ideal classes, the unit
discriminant, and their finiteness. Layer 3 is integrality at torsion points and of Taylor series. Layer 4 is the formal
group at a prime. Layer 5 is Kronecker's limit formula, complex multiplication and the Chowla–Selberg formula. Layer 6
compares the objects of Layers 1–5 with the standard theory and states the results on the standard objects.

## Conventions and notation

- *Labels.* Under each section heading, `*Origin:*` says where its statement comes from and `*Method of the formal
  proof:*` how [ShortProof] proves it. [ShortProof] is the shorter formal proof of the family `ShortGRH`; the line
  "[ShortProof], `path` (`declarations`)" at the end of a section names the file (under `src/`) and the declarations
  where it proves the statement. The names of [ShortProof] occur only on that line. The sections of Layer 6, which
  [ShortProof] does not prove, have a `*Proof route:*` in place of the method of the formal proof and no such line.
- *The field.* `d` is a prime with `d ≡ 7 (mod 8)`, `K = ℚ(√−d)` is the subfield of `ℂ` generated by `√−d := i√d`,
  `𝒪_K` its ring of integers (read inside `ℂ`), `ω := (1 + √−d)/2`, so `𝒪_K = ℤ + ℤω`; `χ_K` is the quadratic
  character of `K`, equal to the Legendre symbol `(·/d)`; `h` is the class number and `Cl(K)` the class group. In the
  argument of the family `d` is the prime of OneSidedPrimeSumBoundsAndAdmissibleData; every statement here holds for
  every prime `d ≡ 7 (mod 8)`.
- *Lattices.* A lattice is a discrete subgroup `Λ ⊂ ℂ` of rank two; `A = area(ℂ/Λ)` its covolume; `℘ = ℘_Λ`, `g₂`,
  `g₃` its Weierstrass function and invariants in Mathlib's normalisation (`℘′² = 4℘³ − g₂℘ − g₃`), and
  `Δ(Λ) := g₂³ − 27g₃²`, which is never `0`. A point of order two is `u ∉ Λ` with `2u ∈ Λ`; a torsion point is `u ∈ ℂ`
  with `nu ∈ Λ` for some integer `n ≥ 1`.
- *Primes and valuations.* `p` is a prime and `ι : ℂ → ℂ_p` a ring homomorphism; every statement at `p` holds for every
  such `ι`. `|·|` is the absolute value of `ℂ_p` with `|p| = p^{−1}`, `v` the valuation with `v(p) = 1`, `𝒪` the
  valuation ring and `𝔪` its maximal ideal. A complex number `c` is *integral at `ι`* if `|ι(c)| ≤ 1` and a *unit at
  `ι`* if `|ι(c)| = 1`. A series over `ℂ_p` is *integral* if its coefficients lie in `𝒪`; congruences of series modulo
  `π ∈ 𝒪` are coefficientwise.
- *Taylor series.* For `f` analytic at `0`, its Taylor series at `0` read through `ι` is `Σ_n ι(f^{(n)}(0)/n!)·z^n ∈
  ℂ_p[[z]]`; where no confusion arises, `θ`, `x`, `y` and the sections also denote these series. For a series `F` and
  `a ∈ ℂ_p`, `F(az)` is the substitution `z ↦ az`; for `a ∈ ℂ` it means `z ↦ ι(a)z`.
- *Constants.* `γ` is Euler's constant; `L(s, χ_K)` the Dirichlet L-function of `χ_K`.

### Table of symbols

| Symbol | Meaning | Defined |
|---|---|---|
| `d, K, 𝒪_K, ω, χ_K, h, Cl(K)` | the prime `d ≡ 7 (mod 8)`, `ℚ(√−d) ⊂ ℂ`, its integers, `(1 + √−d)/2`, its character, class number and class group | Conventions |
| `p, ι, 𝒪, 𝔪, v, |·|` | a prime, a ring homomorphism `ℂ → ℂ_p`, the valuation ring of `ℂ_p`, its maximal ideal, the valuation, the absolute value | Conventions |
| `A, ℘, g₂, g₃, Δ` | the covolume of a lattice, its Weierstrass function and invariants, `g₂³ − 27g₃²` | Conventions |
| `H, E, ε` | the form `(π/A)·l̄z`, the Riemann form `Im(ūv)/A`, the sign `ε(l) = ±1` (`+1` exactly on `2Λ`) | 1.1 |
| `Th_m(Λ, χ), T^m_y` | theta functions of degree `m` with multiplier `χ`, twisted translation | 1.1 |
| isogeny of degree `N` | `aΛ ⊂ Λ′` and `|a|²·area(Λ) = N·area(Λ′)` | 1.1 |
| `σ = σ_Λ` | the sigma function of `Λ` (an odd theta function, not the Weierstrass product) | 1.2 |
| `C = (Λ, t, a₁)` | a normalised pointed lattice; a CM lattice | 1.3 |
| `θ, x, y, G, χ_C, Sect_m(C), M_e` | the theta function, the coordinates, the section `yθ³`, the multiplier, the sections of degree `m`, the monomials | 1.3 |
| `F_c` | the quartic forms of doubling | 1.6 |
| `[𝒞]`, class of a CM lattice | the ideal class of `𝔞` when `Λ = u𝔞` | 2.1 |
| `s_Λ(u)` | `288℘(u)²/℘″(u) − 64` at a point of order two | 2.2 |
| `G[u], t_i` | the torsion value of a function of a given degree, the points `t/2^i` | 3.1 |
| `𝒪[[T]], 𝒪[[y]], 𝒪[[y(μz)]]` | integral series in a parameter `T`, in `y`, in the `y(μ_iz)` | 3.2, 3.6 |
| `g` | `−log θ`, a series over `ℂ_p` | 3.5 |
| `π_p, v(π_p), q_p, ρ_p, γ_p, I_p°, I_p` | the numbers and exponent sets at a prime | 4.1 |
| `o(α)` | the order of `y(αz)` in `y` modulo `𝔪` | 4.2 |
| `T, ϖ, Y` | the formal parameter, the scale, the scaled parameter | 4.3 |
| `C^σ` | a CM lattice with `a₁(C^σ) = σ(a₁(C))`, fixed for each `σ` | 5.2 |
| `σ_W, ζ_W, η, s₂` | Weierstrass's sigma function (the canonical product), `σ_W′/σ_W`, the quasi-period map `Λ → ℂ`, the constant with `η(l) = s₂l + (π/A)l̄` | 6.1 |
| `σ_{W,t}, W_C, P_C, W_Λ, φ_Λ, φ_C, ψ_C` | Weierstrass's function at the half-period `t`, the curve `y² + a₁xy = x³ + x`, its point `(0, 0)`, the normalised Weierstrass model of `Λ`, its uniformisation, the uniformisation of `W_C`, `z ↦ (x(z), y(z))` | 6.2 |
| `η_ℝ, 𝔨(u; L), σ_L[u], j(L), g_r` | the `ℝ`-linear extension of `η`, the Klein form, the torsion value of `σ_L`, the `j`-invariant `1728g₂³/Δ`, the Siegel function | 6.3 |
| `ξ, λ_C, Ê_C, 𝔶_C, Ê^y_C, ξ̂, h_a, [α]_C, 𝔱_p` | the parameter `−x/y` at `O`, the expansion of `−1/y`, the formal group law of `W_C` in `ξ`, the expansion of `y` translated by `P_C`, the formal group law in `y`, the Taylor series of `x/(y + a₁x)`, the formal homomorphism of an isogeny, that of `α ∈ 𝒪_K`, the change of parameter from `y` to `T` | 6.4 |
| `art_K, κ, Ô, κ𝒪_K, Ω_κ` | the Artin map in the arithmetic normalisation, a finite idele, the integral finite adeles, the fractional ideal `K ∩ κÔ`, the scale of the conjugate lattice | 6.5 |
| `𝒵(τ, s)` | Epstein's zeta function of `ℤτ + ℤ` | 6.6 |

## Layer 1: Sigma functions, CM lattices and their sections

This layer works over `ℂ`. The sigma function of a lattice is defined as the odd theta function of the form
`(π/A)·l̄z` with derivative `1` at `0`; its addition and duplication formulas (1.2) give, for a lattice with a
normalised point `t` of order two, the theta function `θ`, the model `y² + a₁xy = x³ + x` and the addition formula for `θ`
(1.4). Sections of each degree pull back along isogenies, can be divided by translates of `θ` along their zeros, and
are spanned by the monomials `θ^aσ^{2b}G^c` (1.5). The duplication formulas for `θ` and `σ` (1.6) drive the integrality
at torsion points in Layer 3.

### 1.1 Theta functions on a lattice

*Origin:* definitions and conventions.

*Method of the formal proof:* definitions; the integrality of `E` on `Λ` and the Appell–Humbert property of `ε` are
short computations with a basis of `Λ`.

Let `Λ ⊂ ℂ` be a lattice of area `A`. Put `H(l, z) := (π/A)·l̄·z` (real-linear in `l`, complex-linear in `z`) and
`E(u, v) := Im(ū·v)/A`, the Riemann form of `H`; `E` is integer valued on `Λ × Λ`, positive (`E(u, iu) > 0` for
`u ≠ 0`), and `±1` on a basis of `Λ`. Let `ε(l) := 1` if `l ∈ 2Λ` and `ε(l) := −1` otherwise.

- An *Appell–Humbert multiplier* for `H` is a `χ : Λ → ℂ^×` with `(H, χ)` Appell–Humbert data for `Λ`, and for
  `m ≥ 0` the *theta functions of degree `m`* `Th_m(Λ, χ) := Θ(mH, χ^m)` and the *twisted translation* `T^m_y := U_y`
  of degree `m` by `y ∈ ℂ` are those of the form `mH`, as in AbelianSchemesWithThetaStructuresAndTheirCohomology §1.1.
  The sign `ε` is an Appell–Humbert multiplier.
- For lattices `Λ`, `Λ′` and `a ∈ ℂ`, multiplication by `a` is an *isogeny of degree `N`* (`N ∈ ℕ`) from `Λ` to `Λ′` if
  `aΛ ⊂ Λ′` and `|a|²·area(Λ) = N·area(Λ′)`.

*Needs:* AbelianSchemesWithThetaStructuresAndTheirCohomology §1.1 (Appell–Humbert data, theta spaces, translations);
Mathlib `PeriodPair`, Mathlib `PeriodPair.weierstrassP`.

[ShortProof], `Lib/CM/Sigma/Basic` (`PeriodPair.area`, `PeriodPair.hermitianForm`, `PeriodPair.IsIsogeny`,
`New.sigmaSign`, `New.isAppellHumbert_hermitianForm`, `New.riemannForm_hermitianForm`); the theta spaces and twisted
translations are defined in `Lib/Shimura/ComplexTheta/AppellHumbertData` (`New.RealComplexForm.thetaSpace`,
`New.RealComplexForm.thetaShift`, `New.IsAppellHumbert`)

### 1.2 The sigma function of a lattice: addition and duplication

*Origin:* adapted from the theory of the Weierstrass sigma function (Silverman, *The Arithmetic of Elliptic Curves*,
VI, and *Advanced Topics in the Arithmetic of Elliptic Curves*, I.5; Weil, *Elliptic Functions according to Eisenstein
and Kronecker*): here `σ` is defined as the odd theta function of degree one for `(H, ε)` with derivative `1` at `0`,
with the dimension of the theta spaces in one variable, its zeros, the theta functions of degree two, and its addition
and duplication formulas.

*Method of the formal proof:* (a) is AbelianSchemesWithThetaStructuresAndTheirCohomology §1.2 (c) for the data
`(mH, χ^m)`: the dual of `Λ` for the Riemann form `mE` is `(1/m)Λ`, of index `m²`. (c) comes before (b): `f²` and
`℘f²` are independent in the two-dimensional space `Th_2(Λ, χ)`, so they span it, and as that space has no base point
(AbelianSchemesWithThetaStructuresAndTheirCohomology §1.3 (a)), a zero of `f` off `Λ` or a multiple zero is impossible.
For (b), the odd part of a nonzero element of `Th_1(Λ, ε)` is not zero (by (c), applied to a translate by a half-period,
no nonzero element is even), and its simple zero at `0` allows the normalisation; uniqueness is (a) for `m = 1`. In (d)
both sides, as functions of `u`, lie in `Th_2(Λ, ε)`, so by (c) the left side is `σ(u)²` times a polynomial of degree
one in `℘(u)`, whose two coefficients are found by evaluation; (e) is the derivative of (d) in `v` at `v = u`.

Let `Λ` be a lattice, with `H`, `E`, `ε` of 1.1.
(a) For every Appell–Humbert multiplier `χ` for `H` and every `m ≥ 1`, `dim_ℂ Th_m(Λ, χ) = m`.
(b) There is an odd `σ_Λ ∈ Th_1(Λ, ε)` with `σ_Λ′(0) = 1`, and by (a) with `m = 1` it is the only one: the *sigma
function* of `Λ`. So `σ(z + l) = ε(l)·exp((π/A)·l̄·(z + l/2))·σ(z)` for `l ∈ Λ`.
(c) Let `χ` be an Appell–Humbert multiplier and `f ∈ Th_1(Λ, χ)`, `f ≠ 0`, `f(0) = 0`. Then the zeros of `f` are exactly
the points of `Λ`, all simple, and `Th_2(Λ, χ)` is spanned by `f²` and `℘f²` (extended to `Λ` by the value `f′(l)²`).
In particular `σ(z) = 0` exactly for `z ∈ Λ`.
(d) *Addition.* `σ(u + v)σ(u − v) = (℘(v) − ℘(u))·σ(u)²σ(v)²` for `u, v ∉ Λ`.
(e) *Duplication.* `σ(2z) = −℘′(z)·σ(z)⁴` for `z ∉ Λ`.

**In standard terms.** In this roadmap *the sigma function* of `Λ` is `σ_Λ`, the normalised odd theta function of (b);
in the literature the sigma function of a lattice is Weierstrass's canonical product `σ_W` (`latticeSigma` of
ModularCurvesPartII §1.4a), a different function. By 6.1, `σ_Λ = σ_W·exp(−s₂z²/2)` for the constant `s₂ = s₂(Λ)` with
`η(l) = s₂l + (π/A)l̄`, `η` the quasi-period map of `σ_W`. Through this identity the law in (b) is the
quasi-periodicity of `σ_W`, the last clause of (c) is the description of the zeros of `σ_W`, and (d), (e) are
equivalent to the classical addition and duplication formulas `σ_W(u + v)σ_W(u − v) = (℘(v) − ℘(u))·σ_W(u)²σ_W(v)²`
and `σ_W(2z) = −℘′(z)·σ_W(z)⁴` (6.1 (c)).

The libraries at the pins have no sigma function. On Tau Ceti's main branch, later than the revision pinned here:
`PeriodPair.weierstrassSigma`, the classical product, a different function; passing from it to `σ` needs Legendre's
relation between the periods and the quasi-periods (`η(ω₁)ω₂ − η(ω₂)ω₁ = 2πi`), which neither library has.

*Relation to the sigma functions of other roadmaps.* `σ_Λ(z) = σ_W(z)·exp(−s₂z²/2)`, with `σ_W` the Weierstrass
product of `Λ` (`latticeSigma` of ModularCurvesPartII §1.4a) and `s₂ = s₂(Λ)` the constant with
`η(l) − s₂·l = (π/A)·l̄` for all `l ∈ Λ`, `η` the quasi-period of that section. Such an `s₂` exists by the oriented
Legendre relation of that section (`η(ω₁)ω₂ − η(ω₂)ω₁ = 2πi = (π/A)(ω̄₁ω₂ − ω̄₂ω₁)` for a positive basis), and then
`latticeSigma_quasiPeriod` says that `σ_W(z)·exp(−s₂z²/2)` is an odd element of `Th_1(Λ, ε)` with derivative `1` at
`0` (the sign `(−1)^{a+b+ab}` is `ε`), so it is `σ_Λ` by (b). Hence `σ_Λ` is the *reduced theta function* `θ` of
ThetaChainsOnDefiniteUnitaryGroups §3.1c, which that section takes for the lattice `Λ_K` of its §3.1a, with the same
`s₂`; and for every lattice the twisted translation `T¹_y` of 1.1 is the *Fock translation* `U_y` of
ThetaChainsOnDefiniteUnitaryGroups §3.1a on `ℂ`, `(U_yf)(z) = f(z + y)·exp(−(π/A)zȳ − (π/(2A))|y|²)`. [ShortProof]
does not prove this comparison (it needs Legendre's relation), and Layers 1–5 do not use it; 6.1 states it, with its
proof.

*Needs:* 1.1; AbelianSchemesWithThetaStructuresAndTheirCohomology §§1.2, 1.3 (Frobenius's formula, base-point-free
multiples); Mathlib `PeriodPair.weierstrassP_add_coe`, Mathlib `PeriodPair.analyticOnNhd_weierstrassP`, Mathlib
`PeriodPair.order_weierstrassP` (`℘` periodic, double poles on `Λ`).

[ShortProof], `Lib/CM/Sigma/Basic` (`New.addSubgroupOf_dualLattice_nsmul_eq_range`,
`New.IsAppellHumbert.finrank_thetaSpace_nsmul`, `New.exists_odd_mem_thetaSpace_deriv_eq_one`, `PeriodPair.σ`,
`New.sigma_add_of_mem_lattice`, `New.IsAppellHumbert.thetaSpace_two_eq_span`, `New.sigma_eq_zero_iff`,
`New.sigma_add_mul_sigma_sub`, `New.sigma_two_mul`)

### 1.3 Normalised pointed lattices and CM lattices

*Origin:* definitions and conventions.

*Method of the formal proof:* definitions.

- A *normalised pointed lattice* is a triple `C = (Λ, t, a₁)` of a lattice `Λ`, a point `t` of order two
  (`t ∉ Λ`, `2t ∈ Λ`) and `a₁ ∈ ℂ`, such that `g₂(Λ) = 12℘(t)² − 4` (equivalently `℘″(t) = 2`, as
  `℘″ = 6℘² − g₂/2`) and `a₁² = 12℘(t)`. Its area is that of `Λ`.
- A *CM lattice* (for the prime `d`) is a normalised pointed lattice with `𝒪_K·Λ ⊂ Λ` and `ωt ∉ Λ`, `ω̄t ∉ Λ`: so `t`
  represents the point of order two of `ℂ/Λ` that neither prime of `K` above `2` annihilates.
- Its *theta function* is `θ = θ_C := T¹_tσ / (T¹_tσ)(0)`, that is
  `θ(z) = exp(−(π/A)·t̄z)·σ(z + t)/σ(t)`; its *coordinates* are `x(z) := ℘(z + t) − ℘(t)` and
  `y(z) := (℘′(z + t) − a₁x(z))/2`; and `G := σ·(σ′θ − σ·(θ′ + (a₁/2)θ))`, an entire function.
- Its *multiplier* is `χ_C(l) := ε(l)·exp(2πi·E(l, t))` on `Λ`, an Appell–Humbert multiplier for `H`; its *sections of
  degree `m`* form `Sect_m(C) := Th_m(Λ, χ_C)`.
- For `e = (a, b, c) ∈ ℕ³` the *monomial* `M_e := θ^a·σ^{2b}·G^c` has *degree* `deg e := a + 2b + 3c`.
- An isogeny from `C` to `C′` is an isogeny between their lattices.

**In standard terms.** A CM lattice describes an elliptic curve over `ℂ` with complex multiplication by `𝒪_K` together
with a point of order two and a scaling (6.2). Through `z ↦ (x(z), y(z))`, `ℂ/Λ` is the curve
`W_C : y² + a₁xy = x³ + x`, with `0` carried to the point `P_C = (0, 0)`; for the uniformisation with origin at
infinity, `P_C` is the image of `t`, the only point of order two of `W_C` killed by neither prime of `K` above `2`;
the endomorphism ring of `W_C` is `𝒪_K`; and every elliptic curve over `ℂ` with endomorphism ring isomorphic to `𝒪_K`
is isomorphic to some `W_C` (6.2 (c), (d)). Here *CM lattice* names the triple `(Λ, t, a₁)` with its marked point and
its scaling `℘″(t) = 2`; in the literature a lattice with complex multiplication is any lattice stable under
multiplication by an order of an imaginary quadratic field, with no marked point and no scaling. The theta function is
`θ = σ_{W,t}·exp(−s₂z²/2)`, `σ_{W,t}` being Weierstrass's function at the half-period `t` (6.2 (a)), and `x`, `y` are
the coordinates of `W_C`, which `X = x + ℘(t)`, `Y = y + a₁x/2` carry to those of the normalised Weierstrass model of
`Λ` (6.2 (b)).

*Relation to the theta function `θ₀` of other roadmaps.* ThetaChainsOnDefiniteUnitaryGroups §3.1c (for the lattice
`Λ_K`) and GluedTargetAndDivisionInequality §8.24d (for a lattice `Λ = δ·𝔠` in any ideal class) scale a lattice with
complex multiplication by `𝒪_K` by `Δ(Λ) = 1`, and put `θ₀ := U_{t₀}θ/(U_{t₀}θ)(0)` for the point `t₀` of order two
killed by neither `(1 ± √−d)/2`. A CM lattice is scaled by `℘″(t) = 2` instead, and has `Δ(Λ_C) = a₁⁴ − 64` (1.4 (c)).
So `Λ_C = c·Λ` with `Δ(Λ) = 1` exactly when `c^{−12} = a₁⁴ − 64`; then `t = c·t₀` modulo `Λ_C` (the conditions
`ωt, ω̄t ∉ Λ_C` single out one point of order two), `σ_{Λ_C}(cz) = c·σ_Λ(z)`, and, by the comparison of 1.2,
`θ_C(cz) = θ₀(z)` and `(T¹_{cu}θ_C)(cz) = (U_uθ₀)(z)`. By 2.2 (d) the factor `c` is a unit at every prime. The theta
function `θ_C` is thus the `θ₀` of those sections in another scaling of the lattice; the scaling by `℘″(t) = 2` is kept
here because the model `y² + a₁xy = x³ + x` of 1.4 depends on it. [ShortProof] does not prove this comparison, which
rests on that of 1.2, and nothing below uses it.

*Needs:* 1.1, 1.2.

[ShortProof], `Lib/CM/Sigma/Basic` (`New.CMLattice`, `New.CMLattice.θ`, `New.CMLattice.translatedX`,
`New.CMLattice.translatedY`, `New.CMLattice.translatedYThetaCube`, `New.CMLattice.multiplier`,
`New.CMLattice.sections`, `New.CMLattice.twistedTranslate`, `New.quadGen`, `New.quadInt`), `Lib/CM/Sigma/ThetaSections`
(`New.CMLattice.monomialSection`, `New.CMLattice.monomialDeg`, `New.CMLattice.isAppellHumbert_multiplier`)

### 1.4 The Weierstrass equation and the addition formula for `θ`

*Origin:* adapted from the published theory of the sigma and Weierstrass functions of a lattice: here, for the translate
`θ` of `σ` by a point of order two of a normalised pointed lattice, the model `y² + a₁xy = x³ + x` with origin at that
point, its discriminant `a₁⁴ − 64`, an addition formula for `θ` and the section `G = yθ³`.

*Method of the formal proof:* (a) carries 1.2 (a)–(c) over to `θ` by the twisted translation by `t`; `θ` is even
because `σ` is odd and the transformation law of `σ` at the period `2t` has the sign `ε(2t) = −1`. In (b), the first
identity is 1.2 (d) at the pair `(t, z)`, using that `θ` is even. For `σ² = xθ²`: `xθ²` is entire (the double poles
of `x` on `t + Λ` meet double zeros of `θ²`) and lies in `Th_2(Λ, ε)`, so 1.2 (c) writes it as a combination of `σ²`
and `℘σ²`; the value `0` at `0` removes the term with `℘`, and second derivatives at `0` show that the constant is `1`.
Since `℘′(t) = 0`, the cubic equation of `℘` at `t` gives `g₃` in (c), and (d) follows from the differential equation
of `℘` with the normalisations `℘″(t) = 2`, `a₁² = 12℘(t)`. (e) is 1.2 (d) at `z + t` and `w`, rewritten with (b).
Identities between entire functions are proved off a countable set and extended by continuity; (f) passes them to the
Taylor series at `0`.

Let `C = (Λ, t, a₁)` be a normalised pointed lattice.
(a) `θ ∈ Sect_1(C)`, `θ(0) = 1`, `θ` is even, `Sect_1(C) = ℂθ`, and `T¹_lθ = χ_C(l)·θ` for `l ∈ Λ`. The zeros of `θ` are
exactly the points of `t + Λ`, all simple.
(b) `θ(z)² = (℘(z) − ℘(t))·σ(z)²` for `z ∉ Λ`; `σ(z)² = x(z)·θ(z)²` and `G(z) = y(z)·θ(z)³` for `z ∉ t + Λ`; and
`x(z)·x(z + t) = 1` for `z ∉ Λ`, `z ∉ t + Λ`.
(c) `g₃ = 4℘(t)³ − g₂℘(t)`, hence `Δ(Λ) = g₂³ − 27g₃² = a₁⁴ − 64`.
(d) Off `t + Λ`: `x′ = 2y + a₁x`, `x′² = x·(4x² + a₁²x + 4)`, `y² + a₁xy = x³ + x` and `y′ = 1 + 3x² − a₁y`; moreover
`y(0) = 0`, `y′(0) = 1`, and `G² + a₁σ²θG = σ⁶ + σ²θ⁴` on all of `ℂ`.
(e) *Addition.* `θ(z + w)θ(z − w) = θ(z)²·(θ(w)² − x(z)σ(w)²)` for `z ∉ t + Λ` and all `w`.
(f) For every field `F` and ring homomorphism `ι : ℂ → F`, the Taylor series at `0` of `x`, `y` read through `ι` satisfy
`y² + ι(a₁)xy = x³ + x`, and, if `F` has characteristic `0`, `x′ = 2y + ι(a₁)x` and `y′ = 1 + 3x² − ι(a₁)y`; the Taylor
series of `M_e` is `θ^{deg e}·x^b·y^c`.

**In standard terms.** Statements (c) and (d) say, by 6.2 (b) and (c), that `W_C : y² + a₁xy = x³ + x` is carried by
`X = x + ℘(t)`, `Y = y + a₁x/2` to the normalised Weierstrass model of `Λ` (ModularCurvesPartII §1.1), so that its
discriminant is `a₁⁴ − 64 = Δ(Λ)`, and that `z ↦ (x(z), y(z))` is the uniformisation of `W_C` followed by the
translation by its point `(0, 0)` of order two, along which the invariant differential `dx/(2y + a₁x)` pulls back to
`dz`. By 6.2 (a), the zeros in (a) are those of Weierstrass's function `σ_{W,t}` at the half-period `t`, and (b) and
(e) are equivalent to the same identities for `σ_{W,t}` and `σ_W`. (f) is the expansion at the point `(0, 0)`, in the
parameter `y` of the formal group of `W_C` (6.4).

*Needs:* 1.2, 1.3.

[ShortProof], `Lib/CM/Sigma/ThetaSections` (`New.CMLattice.theta_mem`, `New.CMLattice.theta_zero`,
`New.CMLattice.theta_neg`, `New.CMLattice.theta_eq_zero_iff`, `New.CMLattice.deriv_θ_ne_zero`,
`New.CMLattice.twistedTranslate_theta_of_mem`, `New.CMLattice.theta_sq`, `New.CMLattice.g₃_eq`, `New.CMLattice.disc_eq`,
`New.CMLattice.deriv_translatedX`, `New.CMLattice.deriv_translatedX_sq`, `New.CMLattice.weierstrass_equation`,
`New.CMLattice.deriv_translatedY_eq`, `New.CMLattice.theta_add_mul_theta_sub`,
`New.CMLattice.sigma_sq_eq_translatedX_mul_theta_sq`, `New.CMLattice.translatedX_mul_translatedX_add_t`,
`New.CMLattice.translatedYThetaCube_eq_translatedY_mul_theta_cube`, `New.CMLattice.translatedYThetaCube_sq_add`,
`New.CMLattice.taylorVia_curve_eq`, `New.CMLattice.derivative_taylorVia_translatedX`,
`New.CMLattice.derivative_taylorVia_translatedY`, `New.CMLattice.taylorAtZero_monomialSection_eq`)

### 1.5 Sections: isogenies, division and the spanning monomials

*Origin:* particular to this proof: the sections of a normalised pointed lattice, their pull-back along isogenies of CM
lattices and their division by translates of `θ`, and their spanning by the monomials `θ^aσ^{2b}G^c` with `c ≤ 1`.

*Method of the formal proof:* (a) unwinds the definition of `Th_m` in 1.1; a section of degree `0` is a periodic
entire function, hence constant. For (b), the values at `ωl` and `ω̄l` come first. For `a = ω` or `ω̄`, the definition
of `χ_C` and the Appell–Humbert property of `ε` (1.1) give `χ_C(al) = −ε(2t + al)`, which is `1` unless
`t + al/2 ∈ Λ`; that point cannot lie in `Λ`, since then so would `āt = (1 − a)(t + al/2) − (aā/2)·l`, `Λ` being
stable under `𝒪_K` and `aā = (1 + d)/4` being even, against `ωt, ω̄t ∉ Λ`. The Appell–Humbert rule for the sum
`l = ωl + ω̄l`, both of whose terms have multiplier `1`, then gives `χ_C(l) = exp(πi·E(ω̄l, ωl)) = exp(πi·n(l))`, where
`n(l) = E(ω̄l, l)` (as `Im ω = √d/2`) is an integer because `ω̄l ∈ Λ`. In (c), the pull-back along `z ↦ az`
multiplies the form `H` by the degree `N`, and with (b) the multipliers agree, as `n(al) = N·n(l)`; (d) follows from (c)
and the composition of twisted translations. For (e), the simple zeros of `g` (1.4 (a)) make `f/g` entire, with the
quotient of the two transformation laws. For (f), induction on `m`, starting from `m = 0` ((a)) and `m = 1` (1.4 (a)):
a monomial of degree `m + 2` without the factor `θ` is nonzero at the zeros of `θ` (1.4 (d) at `−t`), so a multiple of
it can be subtracted from a section of degree `m + 2` to leave one that vanishes there, which (e) divides by `θ`.

Let `C`, `C′`, `D` be normalised pointed lattices, `A` the area of `Λ = Λ_C`.
(a) `f ∈ Sect_m(C)` if and only if `f` is entire and `T^m_lf = χ_C(l)^m·f` for all `l ∈ Λ`. `Sect_0(C)` consists of the
constants.
(b) If `C` is a CM lattice: for `l ∈ Λ` the number `n(l) := |l|²√d/(2A)` is an integer, `χ_C(l) = (−1)^{n(l)}`, and
`χ_C(ωl) = χ_C(ω̄l) = 1`. (For `Λ = u𝔞`, `n(ua) = N(a)/N(𝔞)` by 2.1 (c); for `Λ = δ_K𝒪_K` this is the semicharacter
`(−1)^{N(·)}` that ThetaChainsOnDefiniteUnitaryGroups §3.1a, Check (i), and §3.1c name for `θ₀`.)
(c) Let `a` be an isogeny of degree `N` from `C` to `C′`. Then `H_{C′}(au, av) = N·H_C(u, v)`, and
`T^{nN}_u(G∘a) = (T^n_{au}G)∘a` for every function `G`, every `n` and every `u`. If `C`, `C′` are CM lattices (for the
same `d`), then `χ_{C′}(al) = χ_C(l)^N` for `l ∈ Λ`, and `g∘a ∈ Sect_{kN}(C)` for every `g ∈ Sect_k(C′)`.
(d) Let `C` be a CM lattice, `δ ∈ ℂ` such that multiplication by `δ̄` is an isogeny of degree `N` from `Λ` to `Λ`, and
`u ∈ ℂ` with `δu ∈ Λ`. Then `z ↦ (T¹_uθ)(δ̄z)` lies in `Sect_N(C)`.
(e) *Division.* Let `a ≠ 0`, `u ∈ ℂ` and `g(z) := (T¹_uθ_D)(az)`. The zeros of `g` are simple. If `g ∈ Sect_m(C)`,
`f ∈ Sect_{m+k}(C)`, and `f` vanishes at every zero of `g`, then `f = c·g` with `c ∈ Sect_k(C)`.
(f) *Spanning.* `M_e ∈ Sect_{deg e}(C)`, and `M_e = θ^{deg e}x^by^c` off `t + Λ`. For every `m`, `Sect_m(C)` is spanned
by the `M_e` with `c ≤ 1` and `deg e = m`.

*Needs:* 1.2, 1.3, 1.4.

[ShortProof], `Lib/CM/Sigma/ThetaSections` (`New.CMLattice.mem_sections_iff_twistedTranslate`,
`New.CMLattice.mem_sections_iff`, `New.CMLattice.sections_zero_le_const`,
`New.CMLattice.exists_int_twistedTranslate_theta_eq_neg_one_zpow`, `New.CMLattice.multiplier_quadGen_mul`,
`New.CMLattice.multiplier_eq_canonicalMultiplier`, `New.CMLattice.hermitianForm_mul_of_isIsogeny`,
`New.CMLattice.twistedTranslate_comp_isogeny`, `New.CMLattice.multiplier_mul_of_isIsogeny`,
`New.CMLattice.comp_mul_mem_sections`, `New.CMLattice.twistedTranslate_comp_mem`,
`New.CMLattice.deriv_twistedTranslate_theta_comp_mul_ne_zero`, `New.CMLattice.exists_mul_eq_of_mem_sections`,
`New.CMLattice.monomialSection_mem`, `New.CMLattice.monomialSection_eq`,
`New.CMLattice.sections_le_span_monomialSection`)

### 1.6 Duplication formulas for `θ` and `σ`

*Origin:* adapted from the classical formulas for theta and sigma functions at twice the argument (NIST DLMF, Chapters
20 and 23): here for `θ` and `σ` of a normalised pointed lattice, in the polynomial form that gives the quartic forms of
doubling.

*Method of the formal proof:* in (a), `c₀⁴ = 1` follows by translating `σ² = xθ²` by `t` and using `x(z)x(z + t) = 1`
(1.4 (b)); the other identities are the composition of twisted translations and 1.1. (b) is 1.4 (e) with `w = z`,
rewritten by 1.4 (b). (c) is the duplication formula 1.2 (e) at the point `z + t`, written in terms of `θ` with (a).
(d) is the square of (c) with `x′²` replaced by the cubic of 1.4 (d).

Let `C = (Λ, t, a₁)` be a normalised pointed lattice, and `c₀ := (T¹_tσ)(0)`.
(a) `c₀⁴ = 1`, `T¹_tσ = c₀θ` and `c₀·T¹_tθ = −σ`; multiplication by `2` is an isogeny of degree `4` from `Λ` to `Λ`.
(b) `θ(2z) = θ(z)⁴ − σ(z)⁴` for all `z`.
(c) `σ(2z) = x′(z)·θ(z)⁴` for `z ∉ t + Λ`.
(d) `σ(2z)² = θ(z)²σ(z)²·(4θ(z)⁴ + a₁²θ(z)²σ(z)² + 4σ(z)⁴)` for all `z`.
For a commutative ring `R` and `c ∈ R`, the *quartic forms of doubling* are
`F_c(w₀, w₁) := ((w₀² − w₁²)², w₀w₁·(4w₀² + c²w₀w₁ + 4w₁²))`; by (b), (d), `F_{a₁}` maps `(θ(z)², σ(z)²)` to
`(θ(2z)², σ(2z)²)`. They are the homogenised division polynomials `(Φ₂, ΨSq₂)` of the curve `y² + cxy = x³ + x`, whose
discriminant is `c⁴ − 64`.

*Needs:* 1.2, 1.4.

[ShortProof], `Lib/CM/Integrality/Doubling` (`New.CMLattice.isIsogeny_two`,
`New.CMLattice.twistedTranslate_t_sigma_zero_pow_four`, `New.CMLattice.sigma_add_t`, `New.CMLattice.theta_add_t`,
`New.CMLattice.theta_two_mul`, `New.CMLattice.sigma_two_mul_eq`, `New.CMLattice.sigma_two_mul_sq`,
`New.doublingForms`, `New.doublingForms_smul`)

## Layer 2: Ideal classes and the unit discriminant

A CM lattice is a complex multiple of a fractional ideal of `K`, and each ideal has normalised multiples (2.1). The
numbers `s(u) = 288℘(u)²/℘″(u) − 64` at the three points of order two of any lattice have sum `−48` and product
`−2¹²`, and isogenies of degree two relate them; chains of such isogenies close up in the finite class group, and this
forces `a₁⁴ − 64`, the discriminant of a CM lattice, to be a unit at every prime, `2` included (2.2). The scaling
`℘″(t) = 2` leaves finitely many CM lattices, which bounds the values of translates of `θ` uniformly (2.3).

### 2.1 CM lattices and ideals

*Origin:* adapted from the theory of complex multiplication of elliptic curves (Silverman, *Advanced Topics in the
Arithmetic of Elliptic Curves*: a lattice stable under `𝒪_K` is a complex multiple of a fractional ideal): here for the
normalised CM lattices of 1.3, with the existence of a normalised multiple of every ideal, the area, and the classes of
CM lattices.

*Method of the formal proof:* (a): in a basis `ω₁, ω₂` of `Λ`, `ωω₂` is an integral combination of `ω₁` and `ω₂`, so
`ω₂/ω₁` lies in `K` and `ω₁^{−1}Λ` is a fractional ideal. (b): the points `l/2`, `l ∈ 𝔠`, killed by `ω` form a proper
subgroup modulo `𝔠`, since `ω/2 ∉ 𝒪_K`, and likewise for `ω̄`; a point `t` outside both has `℘″(t) ≠ 0`, because `℘(t)`
is a simple root of `4X³ − g₂X − g₃`, and a complex scaling makes `℘″(t) = 2`. (c) is a determinant in the basis `1, ω`
of `𝒪_K`. (d): `h` is odd (see Needs), so the class of `𝔞` is a square. (e) assembles (a) and (b); for its last
clause, with `Λ_C = c𝔞` and `Λ_D = c′𝔞′`, the ideal `𝔟𝔞/𝔞′` has trivial class, so it is principal, and with a
generator `γ`, `Λ_D = (c′/(cγ))·𝔟·Λ_C`.

Let `C` be a CM lattice, `𝔞`, `𝔠`, `𝔟` nonzero fractional ideals of `K`.
(a) `Λ_C = u𝔞` for some `u ∈ ℂ^×` and some `𝔞`.
(b) For every `𝔠` there are `u ∈ ℂ^×` and a CM lattice with lattice `u𝔠`; for every `𝔠` and `C` there are `u ∈ ℂ^×` and a
CM lattice `D` with `Λ_D = u·𝔠·Λ_C`.
(c) If `Λ_C = u𝔞`, then `area(ℂ/Λ_C) = |u|²·N(𝔞)·√d/2`.
(d) `Λ_C = w𝔠²` for some `w ∈ ℂ^×` and a nonzero integral ideal `𝔠`.
(e) Say that `C` lies in the class `𝒞 ∈ Cl(K)` if `Λ_C = c𝔞` with `c ∈ ℂ^×` and `[𝔞] = 𝒞`. Every class contains a CM
lattice, and there is a family `(D_𝒞)_{𝒞∈Cl(K)}` of CM lattices, `D_𝒞` in the class `𝒞`, with `D_𝒞 = C` for the class of
`C`. If `C` lies in `𝒞` and `D` in `𝒞·[𝔟]`, then `Λ_D = u·𝔟·Λ_C` for some `u ∈ ℂ^×`.

On Tau Ceti's main branch, later than the revision pinned here: the correspondence between homothety classes of lattices
with complex multiplication by an imaginary quadratic order and the Picard group of the order
(`TauCeti.BinaryQuadraticForm.cmHomothetyClassEquivPic`), in the model `QuadraticAlgebra ℚ (−n) 0` with the hypothesis
on the multiplier ring; (a) can be built on it after the comparison of the two models of `K`, its integers and
`ClassGroup`. The libraries at the pins do not have this correspondence, and (b)–(e) are in neither.

*Needs:* 1.3; Tau Ceti `TauCeti.Multiquadratic.twoRank_eq_ncard_ramifiedPrimes_sub_one`, Tau Ceti
`TauCeti.Multiquadratic.ramifiedPrimes_eq_singleton`, Tau Ceti
`TauCeti.ClassGroup.card_elementaryTwoQuotient_eq_two_pow_twoRank`, Tau Ceti
`TauCeti.card_elementaryTwoQuotient_eq_index_square` (the class number is odd); Tau Ceti
`TauCeti.BinaryQuadraticForm.cmHomothetyClassEquivPic`.

[ShortProof], `Lib/CM/GoodReduction` (`New.CMLattice.latticeModule`, `New.QuadField.scaledIdeal`,
`New.CMLattice.exists_latticeModule_eq_scaledIdeal`, `New.QuadField.exists_cmLattice_latticeModule_eq_scaledIdeal`,
`New.CMLattice.exists_latticeModule_eq_scaledIdeal_mul`, `New.QuadField.area_eq_of_eq_scaledIdeal`,
`New.CMLattice.IsInClass`, `New.CMLattice.exists_forall_isInClass`, `New.CMLattice.IsInClass.exists_eq_scaledIdeal_mul`),
`Lib/CM/ChowlaSelberg` (`New.CMLattice.exists_latticeModule_eq_scaledIdeal_sq`)

### 2.2 The discriminant of a CM lattice is a unit at every prime

*Origin:* adapted from the theory of Siegel units (Kubert and Lang, *Modular Units*) and of Weber's class invariants
(Birch, *Weber's class invariants*, 1969): here the unit property at every prime, `2` included, of the discriminant
`a₁⁴ − 64` of a CM lattice normalised at its point `t` of order two (the point killed by `2` and by neither prime of `K`
above `2`), and the integrality of `a₁`.

*Method of the formal proof:* (a) is algebra in the three roots `℘(u_i)` of `4X³ − g₂X − g₃`, with `℘″(u_i)` written
through them. For (b), `℘″` at a point of order two is the lattice sum `6Σ_l(l − u)^{−4}`, and the sum over `L′` splits
into two sums over `L`. For (c), take `b = ω` or `ω̄`: the isogeny of degree two whose kernel is generated by `bt` leads
from a CM lattice in a class `𝒞` to one in the class `𝔤𝒞`, for a fixed class `𝔤` (that of the fractional ideal
`(1, b/2)`, the inverse of a prime above `2`). On each lattice (a), and between consecutive lattices (b), give relations
among the numbers `s(bt)`, `s((1 − b)t)`, `s(t)`. As the class group is finite, the classes `𝒞, 𝔤𝒞, 𝔤²𝒞, …` return to
`𝒞`, and along this closed chain the ultrametric inequality bounds all the `|ι(s)|` by `1`; multiplying one of the
relations over all classes leaves `∏_𝒞 s(t_𝒞) = (−1)^h`. (d) follows, since integral numbers with a unit product are
units, and `a₁⁴ = (a₁⁴ − 64) + 64` is then integral.

For a lattice `L` and a point `u` of order two of `ℂ/L` put `s_L(u) := 288℘(u)²/℘″(u) − 64` (here `℘″(u) ≠ 0`); if `L`
is scaled so that `℘″(u) = 2`, then `s_L(u)` is the discriminant `Δ(L)`. For a normalised pointed lattice,
`s(t) = a₁⁴ − 64` (1.4 (c)).
(a) If `u₁, u₂, u₃` are the three points of order two of `ℂ/L`, then `s(u₁) + s(u₂) + s(u₃) = −48` and
`s(u₁)s(u₂)s(u₃) = −2¹²`.
(b) If moreover `c ≠ 0` and `L′` is the lattice with `cx ∈ L′ ⟺ (x ∈ L or x + u₁ ∈ L)` (that is, `L′ = c(L + ℤu₁)`), then
`s_L(u₁)·s_{L′}(cu₂) = 2¹²`.
(c) Let `(D_𝒞)_{𝒞∈Cl(K)}` be CM lattices, `D_𝒞` in the class `𝒞` (2.1 (e)), with points `t_𝒞`. For every prime `p` and
every ring homomorphism `ι : ℂ → ℂ_p`, the numbers `s(ωt_𝒞)`, `s(ω̄t_𝒞)`, `s(t_𝒞)` (for the lattice of `D_𝒞`) are integral
at `ι`, and `∏_{𝒞} s(t_𝒞) = (−1)^h`.
(d) For every CM lattice `C`, every prime `p` and every ring homomorphism `ι : ℂ → ℂ_p`: `|ι(a₁⁴ − 64)| = 1` and
`|ι(a₁)| ≤ 1`.

**In standard terms.** By 6.3 (c), `s_L(u) = σ_L[u]¹²·Δ(L)`, the twelfth power of the Klein form of `L` at `u` times
the discriminant; for `L = c(ℤτ + ℤ)` and `u = c(r₁τ + r₂)` it is `g_r(τ)¹²`, `g_r` the level-two Siegel function of
ImaginaryQuadraticClassNumber §3.2; and the three numbers `s_L(u_i)` are the roots of Weber's cubic
`(X + 16)³ − j(L)X`, of which (a) gives the sum and the product. The integrality of the three numbers in (c) is also a
consequence of the integrality of the values of Siegel functions at CM points (6.3 (e)). (d) says that
`g_{r°}(τ)¹² = a₁⁴ − 64`, for `Λ_C = c(ℤτ + ℤ)` and `t = c(r°₁τ + r°₂)`, is a unit at every prime, `2` included.

The library has Weber's cubic for the level-two Siegel functions, `(X + 16)³ − jX`, whose roots, the twelfth powers of
those functions, have the same sum `−48` and product `−2¹²`
(`TauCeti.ModularForm.prod_X_sub_C_siegelFunction_pow_twelve`); as the cubic is monic over `ℤ[j]`, its roots are
integral wherever `j(τ)` is. It does not have the integrality of `j` at CM points, nor any unit statement. The
integrality of `a₁` in (d) also follows from ImaginaryQuadraticClassNumber §3.2 (the last item of its list of targets:
the values of the Siegel functions at CM points are integral) together with Weber's cubic; the unit property at the
primes above `2` does not.

*Needs:* 1.4, 2.1.

[ShortProof], `Lib/CM/GoodReduction` (`PeriodPair.IsOrderTwo`, `PeriodPair.scaledDisc`,
`PeriodPair.IsOrderTwo.scaledDisc_sum_prod`, `PeriodPair.IsOrderTwo.scaledDisc_mul_of_isogeny`,
`New.CMLattice.scaledDisc_t`, `New.CMLattice.scaledDisc_sum_prod`, `New.CMLattice.scaledDisc_two_isogeny`,
`New.CMLattice.exists_class_scaledDisc_mul`, `New.norm_le_one_of_cycle`,
`New.CMLattice.norm_scaledDisc_le_one`, `New.CMLattice.prod_scaledDisc_t`, `New.CMLattice.norm_disc_eq_one`),
`Lib/CM/Integrality/TorsionValues` (`New.CMLattice.norm_a₁_le_one`)

### 2.3 Finitely many CM lattices

*Origin:* particular to this proof: finiteness of the set of lattices of CM lattices for `d`, the dependence of the area
and of `θ` on the lattice alone, and a bound for the values at `0` of the translates of `θ`, uniform in the CM lattice
and in the point.

*Method of the formal proof:* (a): `z ↦ cz` carries the marked point of `C` to that of `D` modulo `Λ_D` (of the three
points of order two of a CM lattice, exactly one is killed by neither `ω` nor `ω̄`), and `℘″` at it, the sum
`6Σ_l(l − t)^{−4}`, is multiplied by `c^{−4}`; both values are `2`. With 2.1 (e) this gives (b): each lattice of a CM
lattice is a fourth root of unity times one of `h` fixed lattices. (c) is 2.1 (c) for the area, and 1.4 (a) for `θ`:
`Sect_1` is a line, and `θ` is its element with value `1` at `0`. (d): on one lattice `u ↦ |(T¹_uθ)(0)|` is continuous
and invariant under `Λ`, since the multiplier has absolute value one, hence bounded; by (b) and (c) finitely many
lattices occur.

Let `C`, `D` be CM lattices.
(a) If `cΛ_C = Λ_D` with `c ≠ 0`, then `c⁴ = 1`. If `C` and `D` lie in the same class, `Λ_C = cΛ_D` with `c⁴ = 1`.
(b) The set `{Λ_C : C a CM lattice for d}` is finite.
(c) If `Λ_C = Λ_D`, then `area(Λ_C) = area(Λ_D)` and `θ_C = θ_D`.
(d) There is `M = M(d)` with `|(T¹_uθ_C)(0)| ≤ M` for every CM lattice `C` and every `u ∈ ℂ`.

**In standard terms.** By 6.3 (a), (d), `|(T¹_uθ_C)(0)| = |θ[u]| = |𝔨(u + t; Λ_C)|`, so (d) says that the Klein forms
`𝔨(·; Λ_C)` of the lattices of all CM lattices for `d` are bounded on `ℂ` by one constant.

On Tau Ceti's main branch, later than the revision pinned here: the correspondence of 2.1 counts the homothety classes
(`TauCeti.BinaryQuadraticForm.nat_card_cmHomothetyClass`). The statements on the normalised lattices are in neither
library.

*Needs:* 1.4, 1.5, 2.1.

[ShortProof], `Lib/CM/FiniteLattices` (`New.CMLattice.pow_four_eq_one_of_mul_mem_iff`,
`New.CMLattice.IsInClass.exists_pow_four_eq_one_and_eq_scaledIdeal_mul`, `New.CMLattice.finite_range_latticeModule`,
`New.CMLattice.area_eq_of_latticeModule_eq`, `New.CMLattice.theta_eq_of_latticeModule_eq`,
`New.CMLattice.exists_norm_twistedTranslate_theta_le`)

## Layer 3: Integrality at torsion points and of Taylor series

Everything here is at one prime `p` and one ring homomorphism `ι : ℂ → ℂ_p`, for CM lattices. Doubling acts on the
pair `(θ[u]², σ[u]²)` of normalised values at a torsion point by the quartic forms of 1.6, which have good reduction
because the discriminant is a unit; since the doubles of a torsion point repeat modulo the lattice, the pair has norm
one (3.1). At the points `t/2^i` this gives units, which serve as interpolation nodes: a section with integral values at
torsion points is an integral combination of the monomials, with Taylor series in `θ^m·𝒪[[y]]` (3.2, 3.3).
Isogenies act integrally (3.4); so does multiplication by elements of `𝒪_K` on `−log θ`, which gives the integrality of
`√−d·g″(0)` (3.5). The group law is integral in `y` (3.6).

### 3.1 Torsion values

*Origin:* adapted from the theory of Siegel units (Kubert and Lang, *Modular Units*: the values of Siegel functions at
torsion points are integral, and units when two distinct primes divide the annihilator of the point) and of Weber's
class invariants, integral for `d ≡ 7 (mod 8)` (Birch, *Weber's class invariants*): here, for a CM lattice and every
prime `p` (`2` and `d` included), the integrality of the normalised values of `σ`, `θ` and the monomials at every
torsion point, the statement that `σ[u]`, `θ[u]` are not both non-units, and units at the points `t/2^i`.

*Method of the formal proof:* (a) comes from the composition of twisted translations and from 1.5 (c); (b) restates
1.6 (b), (d) for torsion values. For (c): by (a), `|w(u)|` depends only on the class of `u` modulo `Λ`, and for a
torsion point `u` there are `i < j` with `2^iu ≡ 2^ju (mod Λ)`. By (b) and `|F_{ι(a₁)}(w)| = |w|⁴` (from 2.2 (d), see
Needs), `|w(2^ku)| = |w(u)|^{4^k}` for every `k`, so `|w(u)|^{4^i} = |w(u)|^{4^j}`; as `w(u) ≠ 0` (`θ` and `σ` have no
common zero), `|w(u)| = 1`. (d) follows from (a) and (c), and for `G` from its quadratic equation. (e) uses a criterion
for two pairs of norm one: if the same number of doublings takes one to the form `(0, ∗)` and the other to the form
`(∗, 0)`, their reductions are distinct points of `ℙ¹` over the residue field, so their determinant is a unit. Repeated
doubling takes `t_{i+1}` to `t`, where `θ` vanishes, and then into `Λ`, where `σ` vanishes; the criterion, applied to
the pairs `w` at the points `t_i`, `t` and `2t`, gives the units `θ[t_{i+1}]`, `σ[t_i]` and the differences of the
`x(t_{i+1})`, and 1.6 (c) gives `x′(t_{i+1}) = σ[t_i]/θ[t_{i+1}]⁴`. (f) divides the relations `σ² = xθ²` and `G = yθ³`
of 1.4 (b) by the unit `θ[u]`.

Let `C` be a normalised pointed lattice. For a function `G` *of degree `n`* (that is, read with the twisted translations
of degree `n`) and `u ∈ ℂ`, the *torsion value* is `G[u] := (T^n_uG)(0) = exp(−nπ|u|²/(2A))·G(u)`. `G` *has integral
torsion values* (at `ι`) if `|ι(G[u])| ≤ 1` for every torsion point `u`. The degrees used are `1` for `θ` and `σ`, `deg e`
for `M_e`, `m` for `f ∈ Sect_m(C)`. Put `t_i := t/2^i`.
(a) *Rules* (any normalised pointed lattice). `(FG)[u] = F[u]·G[u]` in the degrees `m + n`, `m`, `n`; for an isogeny `a`
of degree `N` from `C` to `C′`, the torsion value of `G∘a` in degree `nN` at `u` is that of `G` in degree `n` at `au`; and
`(T^n_vG)[u] = exp(−nπi·Im(uv̄)/A)·G[u + v]`, the factor being a root of unity when `u`, `v` are torsion points.
Consequently the property of having integral torsion values is stable under products, powers, pull-back along
isogenies of CM lattices and twisted translation by torsion points.
From here on `C` is a CM lattice and `p` any prime.
(b) For `w(u) := (ι(θ[u])², ι(σ[u])²) ∈ ℂ_p²` and the forms `F_c` of 1.6: `w(2u) = F_{ι(a₁)}(w(u))`.
(c) For every torsion point `u`: `max(|ι(σ[u])|, |ι(θ[u])|) = 1`. In particular `σ` and `θ` have integral torsion values.
(d) Every monomial `M_e` has integral torsion values in degree `deg e`; so does `G = M_{(0,0,1)}`, by
`G[u]² + a₁σ[u]²θ[u]G[u] = σ[u]⁶ + σ[u]²θ[u]⁴`.
(e) *Units at the points `t_i`.* For all `i ≥ 0`: `|ι(σ[t_i])| = 1` and `|ι(θ[t_{i+1}])| = 1`; for `i ≠ j`,
`|ι(x(t_{i+1}) − x(t_{j+1}))| = 1`; and `|ι(x′(t_{i+1}))| = 1`.
(f) If `u` is a torsion point with `|ι(θ[u])| = 1`, then `u ∉ t + Λ` and `x(u)`, `y(u)` are integral at `ι`.

**In standard terms.** By 6.3 (a), (d), the torsion value `σ[u]` is the Klein form `𝔨(u; Λ)`, and `θ[u]` is a root of
unity times `𝔨(u + t; Λ)` at every torsion point `u`. Write `Λ = c(ℤτ + ℤ)`, `t = c(r°₁τ + r°₂)` and `u = c(r₁τ + r₂)`
with `r ∈ ℚ²`; for a CM lattice, `τ` is a CM point and, the discriminant being a unit (2.2 (d)),
`|ι(σ[u])| = |ι(g_r(τ))|` if `r ∉ ℤ²` and `|ι(θ[u])| = |ι(g_{r+r°}(τ))|` if `r + r° ∉ ℤ²`, `g_r` the Siegel functions
of ImaginaryQuadraticClassNumber §3.2. So (c) says that the values `g_r(τ)` are integral at every `ι`, and that for
every `r ∈ ℚ²` with `r, r + r° ∉ ℤ²` the two values `g_r(τ)`, `g_{r+r°}(τ)` are not both non-units at `ι`; and (e)
gives units among the values at the points `t_i`. The integrality in (c) is also a consequence of the integrality of
the values of Siegel functions at CM points (6.3 (e)); the unit statements of (c) and (e) are particular to this
roadmap.

*Needs:* 1.4, 1.5, 1.6, 2.2; ArithmeticDynamics §6.3 (the resultant of `(Φ₂, ΨSq₂)` is `Δ(E)²`) and ArithmeticDynamics
§2.32 (`‖F(x)‖ = ‖x‖^d` for a lift with good reduction): with 1.6 and 2.2 (d), `|F_{ι(a₁)}(w)| = |w|⁴` for all
`w ∈ ℂ_p²`.

[ShortProof], `Lib/CM/Integrality/TorsionValues` (`New.CMLattice.IsTorsion`, `New.CMLattice.torsionValue`,
`New.CMLattice.HasIntegralValues`, `New.CMLattice.torsionValue_mul`, `New.CMLattice.torsionValue_comp_isogeny`,
`New.CMLattice.torsionValue_twistedTranslate`, `New.CMLattice.norm_torsionValue_twistedTranslate`,
`New.CMLattice.HasIntegralValues.mul`, `New.CMLattice.HasIntegralValues.pow`,
`New.CMLattice.HasIntegralValues.comp_isogeny`, `New.CMLattice.HasIntegralValues.translate`,
`New.CMLattice.squarePair_two_mul`, `New.CMLattice.norm_squarePair`, `New.CMLattice.max_norm_torsionValue`,
`New.CMLattice.hasIntegralValues_sigma`, `New.CMLattice.hasIntegralValues_theta`,
`New.CMLattice.hasIntegralValues_translatedYThetaCube`, `New.CMLattice.hasIntegralValues_monomialSection`),
`Lib/CM/Integrality/Doubling` (`New.norm_doublingForms`, `New.norm_det_eq_one_of_iterate_doublingForms`),
`Lib/CM/Integrality/IntegralSections` (`New.CMLattice.halvingPoint`, `New.CMLattice.norm_torsionValue_theta_halvingPoint`,
`New.CMLattice.norm_torsionValue_sigma_halvingPoint`, `New.CMLattice.norm_translatedX_halvingPoint_sub`,
`New.CMLattice.norm_deriv_translatedX_halvingPoint`, `New.CMLattice.add_t_notMem_of_norm_eq_one`,
`New.CMLattice.norm_translatedX_le_one`, `New.CMLattice.norm_translatedY_le_one`)

### 3.2 The ring `𝒪[[y]]`

*Origin:* particular to this proof: the ring of integral series in a parameter `T = z + ⋯` over `ℂ_p`, and, for a CM
lattice, that `x` lies in the ring `𝒪[[y]]` of integral series in the coordinate `y`, which `d/dz` maps into itself.

*Method of the formal proof:* (a) is algebra of substitution in `𝒪[[Z]]`, resting on the fact that a series `Z + ⋯`
with coefficients in `𝒪` has a compositional inverse with coefficients in `𝒪`. For (b), the equation of 1.4 (f) makes
`x` a zero of a monic cubic in `X` whose coefficients are polynomials in `y` and `a₁`, and `a₁` is integral by 2.2 (d).
With `y` replaced by a variable `Z`, the cubic has coefficients in `𝒪[[Z]]` and reduces modulo `Z` to `X³ + X`, with
the simple zero `0`; Hensel's lemma for `𝒪[[Z]]` and the ideal `(Z)` lifts it to a zero in `Z·𝒪[[Z]]`. Substituting `y`
for `Z` in this zero gives a zero of the first cubic in `ℂ_p[[z]]` without constant term, and the uniqueness of the lift
of a simple zero in the complete local ring `ℂ_p[[z]]` makes it equal to `x`. Stability under `d/dz` is the chain rule
with `y′ = 1 + 3x² − a₁y` (1.4 (f)).

For `T ∈ ℂ_p[[z]]` with `T = z + O(z²)` let `𝒪[[T]] := {G(T) : G ∈ 𝒪[[Z]]}`, a subring of `ℂ_p[[z]]`.
(a) The map `G ↦ G(T)` is injective. `𝒪[[T]]` contains `T`, is closed under multiplication by elements of `𝒪` and under
coefficientwise limits; the constant and linear coefficients of its elements are integral, and so is the coefficient of
`z²` when the linear one vanishes. An element whose constant term is a unit is invertible in `𝒪[[T]]`. If `f ∈ 𝒪[[T]]` and
`f = z + O(z²)`, then `𝒪[[f]] = 𝒪[[T]]`. If `a ∈ ℂ_p` and `T(az) ∈ 𝒪[[T]]`, then `f(az) ∈ 𝒪[[T]]` for every `f ∈ 𝒪[[T]]`.
(b) Let `C` be a CM lattice and `y`, `x` its coordinates read through `ι`. Then `y = z + O(z²)`, `x ∈ 𝒪[[y]]`,
`x = z² + O(z³)`, and `d/dz` maps `𝒪[[y]]` into itself.

**In standard terms.** By 6.4 (b), the Taylor series of `y` is `𝔶_C(ξ̂)`, where `ξ̂`, the Taylor series of
`x/(y + a₁x)`, is the expansion along the uniformisation of the standard parameter `−x/y` of `W_C` at its origin `O`,
and `𝔶_C ∈ ξ + ξ²ℤ[a₁][[ξ]]`. For a CM lattice `𝒪[[y]] = 𝒪[[ξ̂]]`: it is the ring of integral series in a parameter of
the formal group of `W_C` over `𝒪`, and (b) places `x` in it.

*Needs:* 1.4, 2.2 (d); Mathlib `IsAdicComplete.henselianRing` (Hensel for `𝒪[[Z]]` and `(Z)`).

[ShortProof], `Lib/CM/FormalGroup/IntegralParameter` (`New.IsSeriesGenerator`, `New.IsSeriesGenerator.exists_subst_inverse`,
`New.IsSeriesGenerator.smul_mem`, `New.IsSeriesGenerator.norm_constantCoeff_le_one_and_norm_coeff_one_le_one`,
`New.IsSeriesGenerator.of_mem`, `New.IsSeriesGenerator.exists_mul_eq_one`, `New.IsSeriesGenerator.rescale_mem`,
`New.IsSeriesGenerator.subst_injective`, `New.CMLattice.integralSeriesRing`,
`New.CMLattice.isSeriesGenerator_translatedY`, `New.exists_isRoot_cubic_constantCoeff_eq_zero`,
`New.CMLattice.taylorVia_translatedX_mem_integralSeriesRing`, `New.CMLattice.derivative_mem_integralSeriesRing`),
`Lib/CM/Integrality/LogTheta` (`New.IsSeriesGenerator.isClosed`, `New.IsSeriesGenerator.norm_coeff_two_le_one`,
`New.CMLattice.X_sq_dvd_taylorVia_translatedX`, `New.CMLattice.coeff_two_taylorVia_translatedX`)

### 3.3 The integrality principle

*Origin:* adapted from Bannai and Kobayashi, *Algebraic theta functions and the p-adic interpolation of
Eisenstein–Kronecker numbers* (2010), who expand theta functions of CM elliptic curves integrally at ordinary primes
`p ≥ 5`: here, for a CM lattice and every prime `p`, the structure of the sections with integral torsion values:
integral coefficients in the monomials and Taylor series in `θ^m·𝒪[[y]]`.

*Method of the formal proof:* (a) rewrites the spanning 1.5 (f) with `M_e = θ^{deg e}x^by^c`; for even `f`, comparing
`f(z)` with `f(−z)` gives `x′·P₁(x) = 0`, as `x` is even and `y(z) − y(−z) = x′(z)` (1.4 (d)), so `P₁ = 0`. For (b),
the values of `P₀(x) + yP₁(x)` at the points `±t_{i+1}` are quotients of torsion values of `f` and of `θ^m`, hence
integral by 3.1 (e), (f). Their difference is `x′(t_{i+1})·P₁(x(t_{i+1}))`, with `x′(t_{i+1})` a unit (3.1 (e)), so
the values of `P₁` at the nodes `x(t_{i+1})` are integral, and then so are those of `P₀`, as `y(t_{i+1})` is integral
(3.1 (f)). The nodes have unit differences (3.1 (e)), so Lagrange interpolation makes the coefficients of `P₀` and `P₁`
integral. (c) follows from (b), 1.4 (f) and `x ∈ 𝒪[[y]]` (3.2 (b)).

Let `C = (Λ, t, a₁)` be a normalised pointed lattice and `f ∈ Sect_m(C)`.
(a) There are polynomials `P₀`, `P₁` with `2·deg P₀ ≤ m` and `2·deg P₁ + 3 ≤ m` such that
`f = θ^m·(P₀(x) + y·P₁(x))` off `t + Λ`; if `f` is even, one can take `P₁ = 0`.
Let now `C` be a CM lattice, `p` a prime, and suppose that `f` has integral torsion values at `ι` (3.1).
(b) The coefficients of `P₀`, `P₁` are integral at `ι`, and `f` is a combination, with coefficients integral at `ι`, of the
monomials `M_e` with `c ≤ 1` and `deg e = m`. If `f` is even, `f = Σ_{i ≤ m/2} R_i·θ^{m−2i}σ^{2i}` with `R_i` integral at
`ι`, and the Taylor series of `f` is `θ^m·R(x)` with `R = Σ R_iX^i`.
(c) The Taylor series of `f` read through `ι` lies in `θ^m·𝒪[[y]]`.

**In standard terms.** Statement (c) says, by 6.4 (b), that the Taylor series of `f` is `θ^m` times an integral series
in the parameter `ξ̂` of the formal group of `W_C` over `𝒪`, equivalently in its parameter `y`.

*Needs:* 1.4, 1.5, 3.1, 3.2.

[ShortProof], `Lib/CM/Integrality/IntegralSections` (`New.norm_coeff_le_one_of_norm_eval_le_one`,
`New.CMLattice.exists_eq_theta_pow_mul_eval`, `New.CMLattice.exists_eq_theta_pow_mul_eval_of_even`,
`New.CMLattice.norm_coeff_le_one_of_norm_eval_halvingPoint_le_one`, `New.CMLattice.norm_coeff_le_one_of_hasIntegralValues`,
`New.CMLattice.mem_span_monomialSection`, `New.CMLattice.IsIntegralEvenExpansion`, `New.CMLattice.exists_polynomial_of_even`,
`New.CMLattice.exists_taylorVia_eq_theta_pow_mul_of_mem_span`, `New.CMLattice.exists_taylorVia_eq_theta_pow_mul`)

### 3.4 Isogenies act integrally

*Origin:* adapted from the theory of formal groups of elliptic curves with good reduction (Silverman, *The Arithmetic of
Elliptic Curves*; on the formal groups an isogeny is a power series with integral coefficients): here for isogenies
between CM lattices, in the parameter `y`, with the pull-back of sections and of translates of `θ`.

*Method of the formal proof:* (a): `N` is the value of the Riemann form of `Λ′` (1.1) at the images under `a` of a
positive basis of `Λ`, an integer. (b): by 1.5 (c) and 3.1 (a), `G(az)` is a section of `C` of degree `Nn` with integral
torsion values, and 3.3 (c) applies. (c): (b) for `θ_{C′}` and for `G_{C′} = y_{C′}θ_{C′}³` (3.1 (c), (d)); dividing
the second by the cube of the first is allowed in `𝒪[[y_C]]` because the integral factor of `θ_{C′}(az)` has constant
term `1` (3.2 (a)). (d) reads off the linear coefficient `ι(a)` of `y_{C′}(az) ∈ 𝒪[[y_C]]` (3.2 (a)). (e) is (b) for the
section of 1.5 (d), whose torsion values are integral by 3.1 (a), (c).

Let `C`, `C′` be CM lattices, `p` a prime, and `a ∈ ℂ` with `aΛ_C ⊂ Λ_{C′}`.
(a) There is `N ∈ ℕ` such that `a` is an isogeny of degree `N` from `C` to `C′`; this holds for any two lattices.
(b) If `G ∈ Sect_n(C′)` has integral torsion values at `ι`, the Taylor series of `G(az)` lies in `θ_C^{Nn}·𝒪[[y_C]]`.
(c) `θ_{C′}(az) ∈ θ_C^N·𝒪[[y_C]]` and `y_{C′}(az) ∈ 𝒪[[y_C]]`.
(d) `|ι(a)| ≤ 1`.
(e) If `δ ≠ 0`, multiplication by `δ̄` is an isogeny of degree `N` from `Λ_C` to itself, and `δv ∈ Λ_C`, then the Taylor
series of `z ↦ (T¹_vθ_C)(δ̄z)` lies in `θ_C^N·𝒪[[y_C]]`.

**In standard terms.** By 6.4 (c), the series `h_a ∈ 𝒪[[Z]]` with `y_{C′}(az) = h_a(y_C)`, given by (c), is a
homomorphism over `𝒪` from the formal group of `W_C` to that of `W_{C′}`, in the parameters `y`, with linear
coefficient `ι(a)`: the integral formal homomorphism induced by the isogeny `z ↦ az`; (d) is the integrality of that
coefficient.

The libraries at the pins have no formal series of an isogeny. On Tau Ceti's main branch, later than the revision pinned
here: over a field, the homomorphism of formal groups induced by an isogeny of Weierstrass curves
(`TauCeti.Isogeny.formalGroupHom`), without integrality and in the parameter `−x/y` at infinity.

*Needs:* 1.5, 3.1, 3.2, 3.3.

[ShortProof], `Lib/CM/Sigma/Basic` (`New.exists_isIsogeny_of_mul_mem_lattice`), `Lib/CM/Integrality/IsogenyIntegrality`
(`New.CMLattice.exists_rescale_eq_theta_pow_mul`, `New.CMLattice.exists_rescale_theta_eq_theta_pow_mul`,
`New.CMLattice.rescale_translatedY_mem_integralSeriesRing`, `New.CMLattice.norm_le_one_of_mapsTo_lattice`,
`New.CMLattice.exists_rescale_twistedTranslate_eq_theta_pow_mul`)

### 3.5 The logarithm of `θ`

*Origin:* adapted from the classical identity `(σ′/σ)′ = −℘` for the Weierstrass sigma function: here, for a CM
lattice and every prime `p`, the identity `g″ = g″(0) + x` for `g = −log θ`, the integrality of
`θ(αz)/θ(z)^{αᾱ}` in `𝒪[[y]]` for `α ∈ 𝒪_K` and its `p`-adic limits, and the integrality of `√−d·g″(0)`.

*Method of the formal proof:* (a) is the second derivative in `w`, at `w = 0`, of the addition formula 1.4 (e), divided
by `θ(z)²`; it is an identity of complex functions and passes to the series over `ℂ_p`. For (b), multiplication by
`α ∈ 𝒪_K` is an isogeny of degree `αᾱ` from a CM lattice to itself, so 3.4 (c) applies; the general `(δ, s)` follow
because both series depend continuously, coefficient by coefficient, on `(δ, s)` and `𝒪[[y]]` is closed under such
limits (3.2 (a)). For (c), the series of (b) for `α` is `1` plus terms of degree at least two, with coefficient
`ι(α(ᾱ − α))·g″(0)/2` in degree two, integral by 3.2 (a); the difference of these coefficients for `α = ω̄` and `α = ω`
is `ι(√−d)·g″(0)/2`.

Let `C` be a normalised pointed lattice and `p` a prime. Put `g := −log θ ∈ ℂ_p[[z]]`, the formal logarithm of the Taylor
series of `θ` read through `ι` (constant term `1`), so `g(0) = 0`, the linear coefficient of `g` vanishes, and
`θ = exp(−g)`.
(a) `g″ = g″(0) + x`.
Let now `C` be a CM lattice.
(b) For `α ∈ 𝒪_K`: `exp(αᾱ·g(z) − g(αz)) = θ(αz)/θ(z)^{αᾱ}` lies in `𝒪[[y]]`. More generally, for every `(δ, s) ∈ ℂ_p²` in
the closure of `{(ι(α), ι(αᾱ)) : α ∈ 𝒪_K}`: `y(δz) ∈ 𝒪[[y]]` and `exp(s·g(z) − g(δz)) ∈ 𝒪[[y]]`.
(c) `ι(α(ᾱ − α))·g″(0)/2 ∈ 𝒪` for every `α ∈ 𝒪_K`, and `ι(√−d)·g″(0) ∈ 𝒪`.

**In standard terms.** By 6.1 (c) and 6.2 (a), the complex function `−log θ` has second derivative `℘(z + t) + s₂(Λ)`,
so (a) is the classical identity `(σ_W′/σ_W)′ = −℘` at `z + t`, read as an identity of series over `ℂ_p`; and
`g″(0) = ℘(t) + s₂(Λ)`.

On Tau Ceti's main branch, later than the revision pinned here: the classical `(σ′/σ)′ = −℘` for the Weierstrass
product (`PeriodPair.hasDerivAt_logDeriv_weierstrassSigma`). (a) is stated for the `σ` of 1.2 and as an identity of
series over `ℂ_p`.

The nearest existing statement to (c) is ThetaChainsOnDefiniteUnitaryGroups §3.1c (a). By the comparison of 1.2,
`g″(0) = ℘(t) + s₂(Λ_C) = s₂ + b₂/12`, with `b₂ = a₁²` the coefficient of the model `y² + a₁xy = x³ + x`. For the
lattice `Λ_K` scaled to discriminant `1` that section states `s₂ + b₂/12 ∈ 𝒪` at every prime `p ≠ d` other than `3`,
and at `p = 3` when `3` splits in `K`, and `√−d·s₂ ∈ 𝒪` at `p = d`; by the comparison of 1.3 (the factor `c` is a unit,
and `a₁²/12` is integral at `d`) this gives (c) for the CM lattices of the principal class at those primes. (c) is
used for every CM lattice and at every prime, `3` included when `3` is inert in `K`, so it is a target here, with the
proof above, which does not pass through the Weierstrass product.

*Needs:* 1.4, 3.2, 3.4; Mathlib `PowerSeries.exp`, Mathlib `PowerSeries.log`, Mathlib `PowerSeries.subst`, Mathlib
`PowerSeries.logOf` (`exp`, `log(1 + X)`, substitution, `log f`); Tau Ceti `PowerSeries.subst_exp_logOf`, Tau Ceti
`PowerSeries.logOf_subst_exp`, Tau Ceti `PowerSeries.logOf_mul`, Tau Ceti `PowerSeries.logDeriv_mul` (rules for `exp`
and `log`).

[ShortProof], `Lib/CM/Integrality/LogTheta` (`New.CMLattice.deriv_theta_zero`, `New.CMLattice.deriv_theta_sq`,
`New.CMLattice.negLogTheta`, `New.CMLattice.coeff_one_negLogTheta`, `New.CMLattice.derivative_derivative_negLogTheta`,
`New.CMLattice.expSubst_sub_rescale_eq`, `New.CMLattice.expSubst_sub_rescale_mem_of_mem_quadInt`,
`New.CMLattice.rescale_translatedY_mem_of_mem_normPairClosure`, `New.CMLattice.expSubst_sub_rescale_mem`,
`New.CMLattice.mul_coeff_two_negLogTheta_mem_valRingCp`, `New.CMLattice.norm_sqrt_mul_coeff_two_negLogTheta_le_one`);
the closure is `New.normPairClosure` of `Lib/General/NumberTheory/PadicLimitsValuation`

### 3.6 The group law is integral in `y`

*Origin:* adapted from the theory of the formal group of a Weierstrass curve, whose group law has its coefficients in
the ring of definition (Silverman, *The Arithmetic of Elliptic Curves*, IV.1 and IV.2): here for the cubic of a CM
lattice, in the parameter `y` at the image of the point `t`, through the complex uniformisation.

*Method of the formal proof:* (a) is algebra of substitution in several variables, as in 3.2 (a). For (b): over `ℂ_p`
a series in `z₀`, `z₁` is determined by its restriction to `z₀ = 0` and its image under `∂/∂z₀ − ∂/∂z₁`, and for
`y(z₀ + z₁)` these are `y(z₁)` and `0`. A second series with the same restriction and image comes from Euler's addition
formula on the cubic `y² + a₁xy = x³ + x` (the check uses the equation and the differential equations of 1.4 (f)); it is
formed by sums and products from `a₁`, the series `x(z_i)`, `y(z_i)` and `1/(1 − x(z₀)x(z₁))`, whose denominator has
constant term `1`, so by 3.2 (b) and (a) it lies in `𝒪[[y(z₀), y(z₁)]]`.

Let `C` be a CM lattice and `p` a prime. For linear forms `μ_1, …, μ_k` over `ℂ_p` in variables `z_1, …, z_n` let
`𝒪[[y(μz)]] := {G(y(μ_1z), …, y(μ_kz)) : G ∈ 𝒪[[Y_1, …, Y_k]]}`.
(a) `𝒪[[y(μz)]]` is a subring of `ℂ_p[[z_1, …, z_n]]` closed under multiplication by elements of `𝒪`; its elements have
integral constant terms, and those with a unit constant term are invertible in it. For `v ∈ 𝒪[[y]]` and every `i`,
`v(μ_iz) ∈ 𝒪[[y(μz)]]`.
(b) `y(z₀ + z₁) ∈ 𝒪[[y(z₀), y(z₁)]]`.

**In standard terms.** By 6.4 (b), `y(z₀ + z₁) = Ê^y_C(y(z₀), y(z₁))`, where `Ê^y_C ∈ ℤ[a₁][[Z₀, Z₁]]` is the formal
group law of `W_C` carried by the translation by the point `(0, 0)` to that point, in the parameter `y`; (b) is the
integrality of this law at `ι`, `a₁` being integral (2.2 (d)). The change of origin and the identification of the
analytic addition with the formal group law, named in the next paragraph, are 6.4 (a) and (b).

(b) also follows from the integrality of the formal group law of a Weierstrass curve over its coefficient ring (Tau Ceti
library, `WeierstrassCurve.formalGroup`) applied to `y² + a₁xy = x³ + x` over `𝒪`, together with two comparisons that
the library does not have: the change of origin to the point of order two, an integral change of parameter because `a₁`
is integral, and the identification of the analytic addition with the formal group law.

*Needs:* 1.4, 3.2.

[ShortProof], `Lib/CM/Integrality/LogTheta` (`New.CMLattice.multiSeriesRing`, `New.CMLattice.mem_multiSeriesRing_iff`,
`New.CMLattice.C_mem_multiSeriesRing`, `New.CMLattice.smul_mem_multiSeriesRing`,
`New.CMLattice.norm_constantCoeff_le_of_mem_multiSeriesRing`, `New.CMLattice.exists_mul_eq_one_of_mem_multiSeriesRing`,
`New.CMLattice.subst_mem_multiSeriesRing`, `New.eulerAddition`, `New.CMLattice.translatedY_add_mem_multiSeriesRing`)

## Layer 4: The formal group at a prime

At a prime `p` the multiplication by `π_p` (`√−d` at `d`, `p` otherwise) acts on the parameter `y` by an integral series
whose reduction has order at most `q_p` (4.2; as in Deuring's criterion, this limits the height of the formal group, here
at every prime). The part `T` of `y` in the degrees `≡ 1 (mod q_p − 1)` is then a parameter in which the
multiplication by `π_p` has the first two terms of a Lubin–Tate series:
`T(π_pz) = π_pT + b₁T^{q_p} + ⋯` with a unit `b₁`, and after the scaling `ϖ^{q_p−1} = −π_p/b₁` the series `T(ϖz)/ϖ` is
congruent to `Σ_j z^{q_p^j}` modulo `π_p` (4.3).

### 4.1 Numbers at a prime

*Origin:* definitions and conventions.

*Method of the formal proof:* definitions; (a), (c) and (d) are computations from the decomposition of `p` in `K`, and
(b) sums geometric series.

For a prime `p`:
- `π_p := √−d` if `p = d`, and `π_p := p` otherwise; `v(π_p) := 1/2` if `p = d` and `1` otherwise;
- `q_p := p²` if `p` is inert in `K` (`χ_K(p) = −1`), and `q_p := p` otherwise (the norm of a prime of `K` above `p`);
- `ρ_p := v(π_p)/(q_p − 1)` and `γ_p := 1/(p − 1) − ρ_p`;
- `I_p°` is the set of odd `e ≥ 0` if `p` is inert, of all `e ≥ 0` if `p = d`, and is empty if `p` splits in `K`;
  `I_p := {e ∈ I_p° : e > 0}`.

Facts:
(a) `ρ_p = 1/(p − 1)`, `1/(p² − 1)`, `1/(2d − 2)` and `γ_p = 0`, `p/(p² − 1)`, `1/(2d − 2)` for `p` split, inert, `p = d`;
`0 ≤ ρ_p ≤ 1/(p − 1)`, `0 ≤ γ_p ≤ 1/(p − 1)` and `γ_p ≤ 1`.
(b) `γ_p = v(π_p)·Σ_{e∈I_p} p^{−e}`; more generally `Σ_{e∈I_p} c·p^{−e} = c·γ_p/v(π_p)` for every real `c`.
(c) `q_p` is a positive power of `p`, `q_p > 1`, and `p` is prime to `q_p − 1`.
(d) `π_p ∈ 𝒪_K`, `π_p ≠ 0`; if `p` does not split in `K`, `π_p·π̄_p = q_p`. Under every ring homomorphism `ι : ℂ → ℂ_p`,
`|ι(π_p)| = p^{−v(π_p)} < 1`, and `v(π_p) = (q_p − 1)·ρ_p`.

*Needs:* 1.3; Tau Ceti `NumberField.ncard_primesOver_quadratic_iff`, Tau Ceti
`NumberField.exists_isPrime_and_absNorm_eq_of_legendreSym_eq_one` (splitting of primes in `K`).

[ShortProof], `Lib/CM/FormalGroup/PrimeNotation` (`New.piPrime`, `New.piPrimeValuation`, `New.varpiValuation`, `New.gammaPrime`, `New.partnerExponents`, `New.positivePartnerExponents`,
`New.varpiValuation_of_split`, `New.varpiValuation_of_inert`, `New.varpiValuation_self`, `New.gammaPrime_of_split`,
`New.gammaPrime_of_inert`, `New.gammaPrime_self`, `New.varpiValuation_le_one_div_sub_one`, `New.gammaPrime_nonneg`,
`New.gammaPrime_le_one_div`, `New.gammaPrime_le_one`, `New.hasSum_gammaPrime`,
`New.hasSum_div_pow_positivePartnerExponents`, `New.exists_primeNorm_eq_pow`, `New.one_lt_primeNorm`,
`New.coprime_primeNorm_sub_one`, `New.piPrime_mem_quadInt`, `New.piPrime_ne_zero`, `New.piPrime_mul_conj`,
`New.norm_piPrime`, `New.norm_piPrime_lt_one`, `New.norm_piPrime_eq_rpow_pow`); `q_p` is `New.primeNorm` of
`Lib/General/NumberTheory/ImaginaryQuadraticField`

### 4.2 The inseparable degree

*Origin:* adapted from the theory of the reduction of isogenies of elliptic curves (the inseparable degree of the
reduction is at most the degree; Deuring's criterion: Deuring, *Die Typen der Multiplikatorenringe elliptischer
Funktionenkörper*; Blake, *A Deuring criterion for abelian varieties*, Theorem 1.1; Bluher, *Formal groups, elliptic
curves, and some theorems of Couveignes*, 3.2 and 6.1): here for the multiplications by elements of `𝒪_K` on a CM
lattice, as the order modulo `𝔪` of `y(αz)` in the parameter `y`, at every prime.

*Method of the formal proof:* (a): over the residue field of `𝒪` orders add under products and multiply under
substitution (Tau Ceti `PowerSeries.order_subst`); the cubic of 1.4 (f) reads `y² = x·(1 + x² − a₁y)` with a unit
second factor, so `ord(x) = 2`; and the linear coefficient of `y(αz)` is `ι(α)`. (b): for `ν := αᾱ`, the even section
`σ(αz)²` of degree `2ν` (1.5 (c)) has integral torsion values (3.1), so by 3.3 (b) its series is `θ^{2ν}R(x)` with
`R` integral and `deg R ≤ ν`. Its torsion value at `t/α` is that of `σ²` at `t` (3.1 (a)), a unit (3.1 (e)), so some
coefficient of `R` in degree at most `ν` is a unit. By 3.4 (c), `θ(αz)` is `θ^ν` times a unit of `𝒪[[y]]`, so
`x(αz) = σ(αz)²/θ(αz)²` is a unit times `R(x)`, and comparing orders gives `2o(α) ≤ 2ν`. (c): a power of the prime of
`K` above `p` selected by `ι` is principal (the class group is finite), and its generator `α` has the required
properties. (d) is (b) for `π_p` if `p` does not split (4.1 (d)); if `p` splits, (a)–(c) give
`o(p)^h = o(α)·o(ᾱ) = o(α) ≤ p^h`.

Let `C` be a CM lattice, `p` a prime. For `f ∈ 𝒪[[y]]` write `f = G(y)` with `G ∈ 𝒪[[Z]]` (3.2 (a)) and let `ord(f)` be the
order of the reduction of `G` modulo `𝔪` (`∞` if it is `0`). For `α ∈ 𝒪_K`, `y(αz) ∈ 𝒪[[y]]` (3.4 (c)); put
`o(α) := ord(y(αz))`.
(a) `ord(fg) = ord(f) + ord(g)` for `f, g ∈ 𝒪[[y]]`; `ord(x) = 2`. For `α, β ∈ 𝒪_K`: `o(αβ) = o(α)·o(β)`, `o(α^n) = o(α)^n`,
and `o(α) = 1` if `ι(α)` is a unit.
(b) For `α ∈ 𝒪_K`, `α ≠ 0`: `o(α) ≤ αᾱ`.
(c) If `p` splits in `K`, there are `h ≥ 1` and `α ∈ 𝒪_K` with `αᾱ = p^h` and `|ι(ᾱ)| = 1`.
(d) `o(π_p) ≤ q_p`.

**In standard terms.** Here the *inseparable degree* `o(α)` is the order of a reduced power series; in the literature
the inseparable degree is a degree of an isogeny of curves, or of an extension of fields, and `o(α)` is not defined as
one. By 6.4 (c), `o(α)` is the order of the reduction modulo `𝔪` of the endomorphism `[α]_C` of the formal group of
`W_C` over `𝒪`, the multiplication by `α`; with 4.3 (d), (d) gives `o(p) = p` if `p` splits in `K` and `o(p) = p²`
otherwise: the formal group of the reduction of `W_C` has height one or two, and the reduction is supersingular
exactly when `p` does not split, which is Deuring's criterion (ComplexMultiplicationAndExplicitReciprocity §5.1) for
it (6.4 (d)).

The library has, over a field, the inseparable degree of an isogeny (`TauCeti.Isogeny.inseparableDegree`, with
`TauCeti.Isogeny.separableDegree_mul_inseparableDegree`), but no formal series of an isogeny and no reduction of
isogenies with control of the degree. On Tau Ceti's main branch, later than the revision pinned here: over a field, the
order of the formal series of an isogeny is its inseparable degree (`TauCeti.Isogeny.order_formalSeries`).

*Needs:* 3.1, 3.2, 3.3, 3.4, 4.1; Tau Ceti `PowerSeries.order_subst`.

[ShortProof], `Lib/CM/FormalGroup/InseparableDegree` (`New.CMLattice.reducedOrder`, `New.CMLattice.reducedOrder_mul`,
`New.CMLattice.reducedOrder_subst`, `New.CMLattice.reducedOrder_translatedX`, `New.CMLattice.insepDegree`,
`New.CMLattice.insepDegree_mul`, `New.CMLattice.insepDegree_eq_one`, `New.CMLattice.insepDegree_pow`,
`New.CMLattice.isTorsion_t_div`, `New.CMLattice.exists_rescale_sigma_sq_eq`,
`New.CMLattice.exists_rescale_theta_eq_pow_mul_of_mem_quadInt`, `New.CMLattice.insepDegree_le`,
`New.CMLattice.insepDegree_piPrime_le`), `Lib/CM/FormalGroup/PrimeNotation` (`New.QuadField.star_ne_of_chiK_eq_one`,
`New.exists_mul_conj_eq_pow`)

### 4.3 The formal parameter and multiplication by `π_p`

*Origin:* adapted from Lubin and Tate, *Formal complex multiplication in local fields* (the functional equation
`Y(πz) = πG(Y)` and the congruence `[π](Z) ≡ Z^q`): here, at every prime `p` (split, inert and `p = d`), for the part
`T` of the coordinate `y` of a CM lattice in the degrees `≡ 1 (mod q_p − 1)`, with the exact scaling `ϖ` of valuation
`ρ_p`.

*Method of the formal proof:* (a): the coefficient of `z^n` in `Y(πz) = πG(Y)` determines the `n`-th coefficient of
`Y`, multiplied by the unit `π^{n−1} − 1`, from the lower ones, which gives integrality by induction; reducing the
equation modulo `π` gives the congruence for `Y − Y^q`, and over the residue ring, of characteristic `p`, the series
`Σ_j z^{q^j}` is the only `S` with `S(0) = 0` and `S − S^q = z`. (b) is the orthogonality of the `m`-th roots of unity.
(c): if `α ∈ 𝒪_K` reduces under `ι` to the residue of `ζ` and `ᾱ` to that of `ζ^p`, then the pairs belonging to the
powers `α^{q_p^n}` converge to `(ζ, ζ^{p+1})`, and 3.5 (b) applies. (d): by (b), `T` is the mean of the series
`ζ^{−1}y(ζz)` over the `(q_p − 1)`-th roots of unity, which lie in `𝒪[[y]]` by (c); as `T = z + O(z²)`, 3.2 (a) gives
`𝒪[[T]] = 𝒪[[y]]`. By 3.5 (b) and 3.2 (a), `T(π_pz)` is an integral series `g_p` in `T`, and by (b) only degrees
`≡ 1 (mod q_p − 1)` occur in it; if `b₁` were not a unit, the reduction of `g_p` modulo `𝔪` would have order greater
than `q_p`, against 4.2 (d). (e): with `ϖ^{q_p−1} = −π_p/b₁`, the series `T(ϖz)/ϖ` satisfies an equation of the form
of (a) for `π = π_p` and `q = q_p`, and `|ϖ| = p^{−ρ_p}` by 4.1 (d). (f) follows from (e), and for the low degrees
from `T ≡ z` modulo `z^{q_p}`.

Let `p` be a prime, `ι : ℂ → ℂ_p` a ring homomorphism, and `q > 1` an integer.
(a) *A functional equation.* Let `π ∈ 𝒪` with `0 < |π| < 1`, `G ∈ 𝒪[[Z]]` with `G = Z + O(Z²)`, and `Y ∈ ℂ_p[[z]]` with
`Y = z + O(z²)` and `Y(πz) = π·G(Y)`. Then `Y` is integral. If `G = Z − Z^q + πE(Z)` with `E ∈ Z²𝒪[[Z]]`, then
`Y − Y^q ≡ z (mod π)`. If `π` is not a unit, `π | p`, `q` is a power of `p`, `S ∈ 𝒪[[z]]`, `S(0) = 0` and
`S − S^q ≡ z (mod π)`, then `S ≡ Σ_{j≥0} z^{q^j} (mod π)`.
(b) *Congruence parts.* For integers `m ≥ 1`, `r ≥ 0` and `f ∈ ℂ_p[[z]]` let `f_{[r]}` be the part of `f` in the degrees
`≡ r (mod m)`. Then `f_{[r]} = (1/m)·Σ_ζ ζ^{−r}f(ζz)`, the sum over the `m`-th roots of unity `ζ ∈ ℂ_p`; `f_{[r]}(az)` is
the part of `f(az)` in those degrees; and `(F(T))_{[r]} = F_{[r]}(T)` for every series `T` with `T(0) = 0` that has only
degrees `≡ 1 (mod m)`.
Let now `d` be a prime `≡ 7 (mod 8)`, `C` a CM lattice, `q = q_p`, and `T := y_{[1]}` for `m = q_p − 1` (the *formal
parameter*).
(c) If `ζ ∈ ℂ_p` and `ζ^{q_p−1} = 1`, then `(ζ, ζ^{p+1})` lies in the closure of `{(ι(α), ι(αᾱ)) : α ∈ 𝒪_K}`; hence
`y(ζz) ∈ 𝒪[[y]]` and `exp(ζ^{−(p+1)}·g(ζz) − g(z)) ∈ 𝒪[[y]]` (`g = −log θ`, 3.5).
(d) `T = z + O(z²)` and `𝒪[[T]] = 𝒪[[y]]`. There is `g_p ∈ 𝒪[[Z]]` with `T(π_pz) = g_p(T)`,
`g_p = π_pZ + b₁Z^{q_p} + Σ_{i≥2} b_iZ^{1+i(q_p−1)}`, and `b₁` a unit.
(e) There are `ϖ ∈ ℂ_p` with `|ϖ| = p^{−ρ_p}` and `Y ∈ 𝒪[[z]]` with `T(ϖz) = ϖ·Y`, `Y − Y^{q_p} ≡ z` and
`Y ≡ Σ_{j≥0} z^{q_p^j}` modulo `π_p`.
(f) For every `ϖ′ ∈ ℂ_p` with `|ϖ′| ≤ p^{−ρ_p}` and every `f ∈ 𝒪[[y]]`, `f(ϖ′z)` is integral; and the coefficients of `f`
in the degrees `< q_p` are integral.

**In standard terms.** By 6.4 (e), `T` is a parameter of the formal group of `W_C` over `𝒪`
(`𝒪[[T]] = 𝒪[[y]] = 𝒪[[ξ̂]]`), and `g_p` in (d) is the multiplication by `π_p` of that formal group written in the
parameter `T`; its reduction has order `q_p`, which gives the heights of 6.4 (d).

*Needs:* 3.2, 3.5, 4.1, 4.2.

[ShortProof], `Lib/CM/FormalGroup/IntegralParameter` (`New.mem_range_seriesToCp_of_rescale_eq`,
`New.mem_range_seriesToCp_of_rescale_eq_X_sub_X_pow`, `New.C_dvd_sub_pow_sub_X_of_rescale_eq`,
`New.exists_seriesToCp_eq_of_rescale_eq`, `New.dvd_coeff_sub_of_C_dvd_sub_pow_sub_X`, `New.congruencePart`,
`New.congruencePart_rescale`, `New.congruencePart_eq_sum`, `New.congruencePart_subst`), `Lib/CM/FormalGroup/FormalParameter`
(`New.mem_normPairClosure_of_pow_eq_one`, `New.CMLattice.rescale_translatedY_mem_of_pow_eq_one`,
`New.CMLattice.expSubst_rescale_sub_mem_of_pow_eq_one`, `New.CMLattice.formalParam`,
`New.CMLattice.isSeriesGenerator_formalParam`, `New.CMLattice.isUnit_coeff_primeNorm_of_rescale_formalParam_eq`,
`New.CMLattice.exists_rescale_piPrime_formalParam_eq`, `New.CMLattice.exists_scaled_formalParam`,
`New.CMLattice.rescale_mem_range_seriesToCp`, `New.CMLattice.norm_coeff_le_one_of_lt`), with the limit of (c) from
`Lib/General/NumberTheory/PadicLimitsValuation` (`New.mem_normPairClosure_of_pow_eq`)

## Layer 5: Kronecker's limit formula, complex multiplication, Chowla–Selberg

Kronecker's first limit formula (5.1) gives the constant term at `s = 1` of the lattice sums, in terms of the area and
the discriminant. An automorphism `σ` of `ℂ` over `K` carries a CM lattice to a CM lattice with conjugate `a₁`, whose
Taylor series of `x`, `y`, `θ` are the conjugates (5.2); sections and isogenies are transported with them, which gives,
for the lattice `Ω₀𝒪_K`, the action of `σ` on the Taylor series of the translates of `θ` by points of `KΩ₀` through one
finite adele, without the reciprocity law (5.3). Summing Kronecker's formula over the classes and comparing with
`ζ(s)L(s, χ_K)` gives the Chowla–Selberg class mean (5.4); with the unit discriminant and the transport of isogenies,
the conjugates of a single number `u`, of absolute value one at every prime, rescale each conjugate lattice to the area
that the mean gives (5.5).

### 5.1 Kronecker's first limit formula

*Origin:* adapted from Kronecker's first limit formula (Siegel, *Lectures on Advanced Analytic Number Theory*, Chapter I,
Theorem 1; a proof along the same lines: Chamizo, *A simple evaluation of a theta value, the Kronecker limit formula and
a formula of Ramanujan*, Prop. 3.1): here a one-sided real expansion at `s = 1` for every lattice, with the constant
written through the area and the discriminant `g₂³ − 27g₃²`, without analytic continuation.

*Method of the formal proof:* the lattice is written `a(ℤτ + ℤ)` with `Im τ > 0` (see Needs), and the sum is taken
row by row. For `m ≥ 1` the sum over `n` of `|mτ + n|^{−2s}` is replaced by the integral of `|mτ + u|^{−2s}` over
`u ∈ ℝ`, a beta factor times `|m·Im τ|^{1−2s}`; summed over `m`, these integrals give a multiple of `ζ(2s − 1)`, whose
pole at `s = 1` produces the main term, while the differences between sums and integrals, bounded with the mean value
theorem, add up to a function continuous for `1 ≤ s ≤ 2`. Its value at `s = 1` is computed from the partial fraction
expansion of the cotangent, which brings in `log|∏_{n≥1}(1 − q^n)|`, `q = e^{2πiτ}`; the product formula
`Δ(Λ) = (2π/a)^{12}Δ(τ)`, with `Δ(τ) = q∏_{n≥1}(1 − q^n)^{24}`, turns this into `log|Δ(Λ)|`.

Let `Λ` be a lattice of area `A` and `Δ = Δ(Λ) = g₂³ − 27g₃²`, and let `k > 0`. There is `F : ℝ → ℝ` with
`F(s) = (s − 1)·Σ_{0≠l∈Λ} (|l|²/(kA))^{−s}` for `1 < s < 2` (the series converges), `F(1) = πk`, and right derivative at
`1` equal to `πk·(2γ − log(A/(kπ²)) − (1/6)·log|Δ|)`. Equivalently, as `s ↓ 1`,
`Σ_{0≠l∈Λ} (|l|²/A)^{−s} = π/(s − 1) + π·(2γ − log(A·|Δ|^{1/6}/π²)) + o(1)`.

**In standard terms.** By 6.6 (a), for `Λ = a(ℤτ + ℤ)` the sum is Epstein's zeta function `𝒵(τ, s)` and the constant
is `2π(γ − log 2 − (1/2)log Im τ − (1/12)log|Δ(τ)|)`; so this is Kronecker's first limit formula restricted to real
`s > 1`, a consequence of it, which does not record the continuation of `𝒵(τ, s)` to a neighbourhood of `1`.

*Needs:* 1.1; Mathlib `riemannZeta`, Mathlib `ModularForm.eta` (zeta, eta product); Tau Ceti
`PeriodPair.exists_lattice_eq_smul_periodPair` (every lattice is `a(ℤτ + ℤ)`); Tau Ceti `UpperHalfPlane.g₂_periodPair`,
Tau Ceti `UpperHalfPlane.g₃_periodPair`, Tau Ceti `UpperHalfPlane.weierstrassCurve_Δ_periodPair` (`Δ` through `Δ(τ)`).

[ShortProof], `Lib/CM/KroneckerLimit` (`New.hasSum_pnat_rpow_neg`, `New.betaFactor`, `New.shiftedTerm`,
`New.meanError`, `New.hasSum_shiftedTerm`, `New.continuousOn_tsum_meanError`, `New.tsum_meanError_one`,
`New.regularPart`, `New.sub_one_mul_tsum_norm_mul_add_rpow`, `New.kronecker_limit`)

### 5.2 Conjugate CM lattices

*Origin:* adapted from the main theorem of complex multiplication for elliptic curves (see 5.3): here the existence of
a CM lattice with conjugate `a₁`, the conjugation of the Taylor series of `x`, `y`, `θ` and of the sections, and the
transport of isogenies, all without the reciprocity law.

*Method of the formal proof:* (a): by 1.4 (f), `x` and `y` are the solution without constant terms of a system of
differential equations whose coefficients are polynomials in `a₁` with integer coefficients, and the system fixes all
their coefficients. (b): the monomials `M_e` have the series `θ^{deg e}x^by^c` (1.4 (f)), so (a) transports them, and
they span the sections (1.5 (f)); the point `u` is obtained by uniformisation (see Needs) from the preimage under `σ` of
the point of the cubic of `C′` with coordinates `x(z)`, `y(z)`. (c): `g₂` and `g₃` are polynomials in `a₁` (1.3,
1.4 (c)), so uniformisation gives a lattice with the conjugate invariants, and on any such lattice the point of order
two at which `℘` takes the conjugate value of `℘(t)` gives a normalised pointed lattice `C′` with
`a₁(C′) = σ(a₁(C))`. It is a CM lattice by (d), whose proof does not use (c), applied with `D = C` and `D′ = C′` to
the multiplications by the elements `a` of `𝒪_K`, for which `σ(a) = a`: they map `Λ_{C′}` into itself, and
`at_{C′} ∈ Λ_{C′}` would give `at_C ∈ Λ_C`, so `ωt_{C′}, ω̄t_{C′} ∉ Λ_{C′}`. (d): by (b), the sections `σ_D(az)²` and
`θ_D(az)` of `C` (1.5 (c)) correspond to sections of `C′` whose quotient is `σ_{D′}(σ(a)z)²/θ_{D′}(σ(a)z)²`, and their
zeros (1.2 (c), 1.4 (a)) locate the periods. (e): by (b), applied to the isogeny `z ↦ ωz` (1.5 (c)), `Q(ωz) = Q(z)^{ωω̄}`;
a lowest term of `Q − 1` in degree `n` would force `ω^n = ωω̄`, impossible since `|ω| > 1` and `ω` is not real.

Let `σ` be a field automorphism of `ℂ`.
(a) If `C`, `C′` are normalised pointed lattices with `a₁(C′) = σ(a₁(C))`, the Taylor series at `0` of `x_{C′}`, `y_{C′}`
are obtained from those of `x_C`, `y_C` by applying `σ` to the coefficients.
(b) Under (a), put `Q := θ_{C′}·σ(θ_C)^{−1}`, a series (`σ` applied to the coefficients of the Taylor series). For every
`z ∈ ℂ` there are `u ∈ ℂ` and `μ ∈ ℂ^×`, with `u = t_C` if `θ_{C′}(z) = 0`, such that every `f ∈ Sect_m(C)` has a
`g ∈ Sect_m(C′)` with Taylor series `Q^m·σ(f)` and `g(z) = μ^m·σ(f(u))`. For the monomials, the Taylor series of
`M_e(C′)` is `Q^{deg e}·σ(M_e(C))`.
From here on `σ` fixes `K`, and `C`, `D` are CM lattices for `d`.
(c) Every lattice `L` with `g₂(L) = σ(g₂(Λ_C))` and `g₃(L) = σ(g₃(Λ_C))` is the lattice of a CM lattice `C′` with
`a₁(C′) = σ(a₁(C))`; in particular such `C′` exist. For each `σ`, fix one and call it `C^σ`. (This is the conjugate
lattice `Λ^ρ` of GluedTargetAndDivisionInequality §8.24e, "the lattice with invariants `ρ(g₂(Λ))`, `ρ(g₃(Λ))`", with
its point `t_ρ`, in the scaling of 1.3: if `Λ_C = c·Λ` with `Δ(Λ) = 1` as in 1.3, then
`Λ^σ = σ(c)^{−1}·Λ_{C^σ}` and one may take `t_σ = σ(c)^{−1}·t_{C^σ}`, because `g₂(Λ) = c⁴g₂(Λ_C)` and
`g₃(Λ) = c⁶g₃(Λ_C)`.)
(d) If `a` is an isogeny of degree `N` from `C` to `D`, and `C′`, `D′` are normalised pointed lattices with
`a₁(C′) = σ(a₁(C))`, `a₁(D′) = σ(a₁(D))`, then `σ(a)Λ_{C′} ⊂ Λ_{D′}`; and if `σ(a)t_{C′} ∈ Λ_{D′}`, then `at_C ∈ Λ_D`.
(e) If `a₁(D) = σ(a₁(C))`, then the Taylor series of `θ_D` is `σ` applied to that of `θ_C`; so `Q = 1`, and the Taylor
series of every monomial of `D` is the conjugate of that of `C`.

**In standard terms.** By 6.2 (b), the curve `W_{C^σ}` of `C^σ` is the conjugate `σ(W_C)` of `W_C` (`σ` applied to
`a₁`), and (c) chooses a lattice of it normalised as in 1.3; (a) and (e) say that `σ` conjugates coefficientwise the
expansions at the point `(0, 0)` of the coordinates and of `θ`. For `Λ_C = Ω₀𝒪_K`, the main theorem of complex
multiplication gives, for every finite idele `κ` whose Artin symbol, in the arithmetic normalisation, is `σ` on the
maximal abelian extension of `K`, a scale `Ω_κ ∈ ℂ^×` with `Λ_{C^σ} = Ω_κ·κ^{−1}𝒪_K`, where `κ^{−1}𝒪_K` is the
fractional ideal of `κ^{−1}` (6.5 (a)).

*Needs:* 1.4, 1.5, 2.1; Tau Ceti `PeriodPair.exists_g₂_g₃_eq`, Tau Ceti `PeriodPair.weierstrassPoint_surjective`
(uniformisation).

[ShortProof], `Lib/CM/ConjugateCurve` (`New.thetaQuotient`, `New.map_taylorAtZero_translatedX_and_translatedY`,
`New.taylorAtZero_monomialSection`, `New.exists_conjugate_point`, `New.exists_conjugate_section`,
`New.exists_conj_isogeny_sections`, `New.conj_isogeny_mul_mem_lattice`, `New.mul_t_mem_of_conj_isogeny_mul_t_mem`,
`New.map_eq_self_of_mem_quadInt`, `New.CMLattice.exists_galConjugate_of_g₂_g₃`, `New.CMLattice.exists_galConjugate`,
`New.CMLattice.galConjugate`, `New.CMLattice.galConjugate_a₁`, `New.CMLattice.exists_eq_const_mul_twistedTranslate_theta`,
`New.rescale_thetaQuotient_of_conj_isogeny`, `New.CMLattice.thetaQuotient_eq_one`,
`New.CMLattice.taylorAtZero_monomialSection_eq_taylorVia`, `New.CMLattice.taylorAtZero_theta_eq_taylorVia`)

### 5.3 Complex multiplication for translates of `θ`

*Origin:* adapted from the main theorem of complex multiplication for elliptic curves (Shimura, *Introduction to the
Arithmetic Theory of Automorphic Functions*, Thm 5.4; Milne, *Complex Multiplication*, 9.17): here, for `K = ℚ(√−d)`
and the lattice `Ω₀𝒪_K`, the action of an automorphism of `ℂ` over `K` on the Taylor series of the translates of `θ`
by the points of `KΩ₀`, through one finite adele of `K`, with the conjugate lattice `Ω′𝔠²/N(𝔠)`; the adele is not
identified with an Artin symbol.

*Method of the formal proof:* (a): after a multiplication `z ↦ nz` that makes `nS` integral, the translates of `θ_C` by
the points `sΩ₀` become sections of `C` (1.5 (d)). The transport 5.2 (b) between `C` and `D` (with `Q = 1` by 5.2 (e))
matches a point of `Λ_D` with `Ω₀` and so defines `v`; the transported sections and the corresponding translates of `θ_D`
have the same zeros, so by the division 1.5 (e) they differ by a constant factor. To see that it is `1`, the proof
evaluates at the points where `nz` is `−sΩ₀/2` (for `C`) and `−sv/2` (for `D`), which the transport matches: there a
translate by `sΩ₀`, resp. `sv`, has the value of `θ_C` at `sΩ₀/2`, resp. of `θ_D` at `sv/2`, and the transport of
`θ_C(nz)`, which is `θ_D(nz)` by 5.2 (e), relates these two values in the same way; so the factor is `1` unless
`θ_C(sΩ₀/2) = 0`, and in that case the values at `0`, which are `−1` on both sides, give it. (b): by 2.1 (d) the
lattice of `C^σ` is `w𝔠²` for an integral ideal `𝔠`, and `Ω′ := wN(𝔠)`. For growing finite sets `S`, the points `v` of
(a) are `Ω′` times elements of a fixed compact set of finite adeles (see Needs), and the adele `β` is a cluster point.
Since a translate of `θ_{C^σ}` by `x′Ω′` does not change when `x′` moves by a suitable multiple of `𝒪_K` (1.4 (a)), the
finite approximations give the neighbourhoods of `βx`.

Let `C` be a CM lattice with `Λ_C = Ω₀𝒪_K`, `Ω₀ ∈ ℂ^×`, and `σ` an automorphism of `ℂ` over `K`.
(a) If `D` is a CM lattice with `a₁(D) = σ(a₁(C))`, then for every finite `S ⊂ K` there is `v ∈ Λ_D` such that for all
`s ∈ S`, applying `σ` to the coefficients of the Taylor series at `0` of `T¹_{sΩ₀}θ_C` gives the Taylor series of
`T¹_{sv}θ_D`.
(b) With `C^σ` of 5.2 (c), there are `Ω′ ∈ ℂ^×`, a nonzero ideal `𝔠` of `𝒪_K` and a finite adele `β ∈ 𝔸_{K,f}` such
that: `Λ_{C^σ} = {Ω′·a/N(𝔠) : a ∈ 𝔠²}`; `area(ℂ/Λ_{C^σ}) = |Ω′|²·√d/2`; some positive integral multiple of `Ω′` lies in
`Λ_{C^σ}`; and for every `x ∈ K` there is a neighbourhood `U` of `βx` in `𝔸_{K,f}` such that for every `x′ ∈ K ∩ U`,
applying `σ` to the coefficients of the Taylor series at `0` of `T¹_{xΩ₀}θ_C` gives the Taylor series of
`T¹_{x′Ω′}θ_{C^σ}`.

**In standard terms.** 5.3 is named after the main theorem of complex multiplication, which it does not contain: it
gives the action of `σ` through some adele `β`, and is proved without the reciprocity law. By 6.5 (b), which rests on
that theorem (ShimuraVarieties §5.10; ComplexMultiplicationAndExplicitReciprocity §2.2), every `β` as in (b) is a
finite idele, `β^{−1}` has Artin symbol `σ` on the maximal abelian extension of `K` (Artin map in the arithmetic
normalisation), and the fractional ideal of `β` is `𝔠²/N(𝔠)`; by 6.5 (c), for every finite idele `κ` with this Artin
symbol the last clause of (b) holds with `β = κ^{−1}` and the scale `Ω_κ` of 6.5 (a) in place of `Ω′`.

The main theorem of complex multiplication (ShimuraVarieties §5.10; ComplexMultiplicationAndExplicitReciprocity §2.2)
describes the action of `σ` on torsion points and the conjugate lattice through the Artin map; it does not state the
action on the Taylor coefficients of translates of `θ`, which is what is used.

*Needs:* 1.5, 2.1, 5.2; Mathlib `IsDedekindDomain.FiniteAdeleRing` (finite adeles of `K`); Tau Ceti
`IsDedekindDomain.FiniteAdeleRing.isCompact_integralAdeles` (`Ô` is compact).

[ShortProof], `Lib/CM/ConjugateCurve` (`New.CMLattice.twistedTranslate_theta_add_two_mul`,
`New.CMLattice.twistedTranslate_theta_eq_of_isIntegral`, `New.CMLattice.exists_forall_apply_mul_eq_pow_mul`,
`New.CMLattice.apply_mul_eq_zero_iff_of_transport`, `New.CMLattice.exists_quadInt_of_twistedTranslate_theta_eq_zero`,
`New.CMLattice.eq_one_of_taylorVia_twistedTranslate_theta`, `New.CMLattice.exists_taylorVia_twistedTranslate_theta`),
`Lib/CM/ChowlaSelberg` (`New.CMLattice.exists_finAdele_taylorVia_twistedTranslate_theta`,
`New.CMLattice.IsComplexMultiplicationData`, `New.CMLattice.complex_multiplication_theta`)

### 5.4 The Chowla–Selberg formula as a class mean

*Origin:* adapted from Selberg and Chowla, *On Epstein's zeta-function* (1967), and Gross, *On the periods of abelian
varieties*: the class mean of the logarithmic periods, read off the constant terms at `s = 1` through Kronecker's limit
formula, with the factorisation of the Dedekind zeta function of `K` and its splitting over the ideal classes
(Neukirch, *Algebraic Number Theory*, VII.5 and VII.10): here for `K = ℚ(√−d)` with `d` a prime `≡ 7 (mod 8)`, with the
period written through the area and the discriminant `g₂³ − 27g₃²`.

*Method of the formal proof:* (a): by 2.1 (c), the term of `l = u_𝒞y` is `N(y𝔞_𝒞^{−1})^{−s}`, a power of the norm of an
integral ideal; every nonzero integral ideal arises in this way from exactly one class and from `w` elements `y`, so
the left side is `w·ζ_K(s)`, and `ζ_K = ζ·L(·, χ_K)` (see Needs). (b): Kronecker's formula 5.1 with `k = 2/√d`, summed
over the classes, gives the value and the right derivative at `s = 1` of `s − 1` times the left side of (a); computing
the same two numbers from `w·ζ(s)L(s, χ_K)` and comparing gives (b). For CM lattices, `Δ = a₁⁴ − 64` (1.4 (c)).

Let `d` be a prime `≡ 7 (mod 8)`, `w = 2` the number of units of `𝒪_K`, and for each class `𝒞 ∈ Cl(K)` a lattice
`Λ_𝒞 = u_𝒞𝔞_𝒞` with `u_𝒞 ∈ ℂ^×` and `[𝔞_𝒞] = 𝒞`, of area `A_𝒞`.
(a) For real `s > 1`: `Σ_{𝒞} Σ_{0≠l∈Λ_𝒞} (|l|²·√d/(2A_𝒞))^{−s} = w·ζ(s)·L(s, χ_K)`.
(b) `(1/h)·Σ_{𝒞} [log(A_𝒞/π) + (1/6)·log|Δ(Λ_𝒞)|] = γ + log(2π/√d) − (L′/L)(1, χ_K)`; equivalently
`Σ_{𝒞} (2γ − log(A_𝒞·√d/(2π²)) − (1/6)·log|Δ(Λ_𝒞)|) = h·(γ + (L′/L)(1, χ_K))`.

**In standard terms.** By 6.6 (b), `(L′/L)(1, χ_K) = γ + log(2π) − (1/h)·Σ_{a=1}^{d−1}χ_K(a)·log Γ(a/d)`, and (b) is
equivalent to the Chowla–Selberg formula `∏_{𝒞} A_𝒞·|Δ(Λ_𝒞)|^{1/6}/π = d^{−h/2}·∏_{a=1}^{d−1}Γ(a/d)^{χ_K(a)}`.

The formal proof proves (a) and (b) for lattices `Λ_𝒞` of CM lattices; the general case follows because both sides
depend only on the homothety class. (b) is the case `D = d` of
ArithmeticVolumesAndIntegralFormsOnUnitaryShimuraVarieties §8.5 (a): the summand `log(A_𝒞/π) + (1/6)·log|Δ(Λ_𝒞)|` is
the logarithmic period `Per(Λ_𝒞)` of that section and the right side is its `log Ω_K`. That section states it for
every imaginary quadratic field of discriminant `−D`, `D > 4`, and its route goes through the Faltings height of a CM
elliptic curve; the route here is through (a) and Kronecker's formula 5.1, and (a) is not stated there. It is kept as
a target with this route so that the family does not depend on the heights of that section.

*Needs:* 1.4 (c), 2.1, 5.1; Tau Ceti `TauCeti.NumberField.dedekindZeta_eq_riemannZeta_mul_LFunction`
(`ζ_K = ζ·L(s, χ_K)`); Tau Ceti `TauCeti.LFunctions.sum_LSeries_rayClassCoeff_one` (class Dirichlet series sum to
`ζ_K`).

[ShortProof], `Lib/CM/ChowlaSelberg` (`New.hasSum_ideal_classes`, `New.CMLattice.riemannZeta₁_mul_entireL_eq_sum`,
`New.CMLattice.sum_kronecker_terms`); the constant `γ − Re (L′/L)(1, χ_K)` is `New.chowlaSelbergConst` of
`Lib/General/NumberTheory/ImaginaryQuadraticField`

### 5.5 Chowla–Selberg for the conjugates of one CM lattice

*Origin:* particular to this proof: a single number `u`, of absolute value one at every prime, such that for each
automorphism `σ` of `ℂ` over `K` the conjugate lattice of a CM lattice, rescaled by `σ(u)`, has the area
`π·exp(γ − (L′/L)(1, χ_K))·2π/√d` that the Chowla–Selberg class mean gives.

*Method of the formal proof:* fix fractional ideals `𝔠_𝒞`, one in each class, with `∏_𝒞 𝔠_𝒞 = (1)`, and by 2.1 (b) CM
lattices `D_𝒞` with `Λ_{D_𝒞} = μ_𝒞·𝔠_𝒞·Λ_C`. By 3.4 (d), `μ_𝒞c` is integral at every prime for `c ∈ 𝔠_𝒞`, and so is
`μ_𝒞^{−1}c′` for `c′ ∈ 𝔠_𝒞^{−1}`; as the product of the ideals is `(1)`, `∏_𝒞 μ_𝒞` is a unit at every prime. With
2.2 (d), a `12h`-th root `u` of `∏_𝒞 μ_𝒞^{12}·(a₁(D_𝒞)⁴ − 64)` is then a unit at every prime. For `σ` over `K`, 5.2 (d)
gives the lattices `σ(μ_𝒞)·𝔠_𝒞·Λ_{C^σ}` for the conjugates of the `D_𝒞`, one in each class; their areas (2.1 (c)) and
discriminants, inserted in 5.4 (b), give the area of `Λ_{C^σ}` times `|σ(u)|²`.

Let `d` be a prime `≡ 7 (mod 8)` and `C` a CM lattice. There is `u ∈ ℂ` such that `|ι(u)| = 1` for every prime `p` and
every ring homomorphism `ι : ℂ → ℂ_p`, and such that for every automorphism `σ` of `ℂ` over `K`
`area(ℂ/Λ_{C^σ})·|σ(u)|² = π·exp(γ − (L′/L)(1, χ_K))·2π/√d`, with `C^σ` of 5.2 (c).

**In standard terms.** The right side is `π·d^{−1/2}·∏_{a=1}^{d−1}Γ(a/d)^{χ_K(a)/h}` (6.6 (c)). `Λ_{C^σ}` is the
lattice of periods of the invariant differential `dx/(2y + σ(a₁)x)` of `W_{C^σ} = σ(W_C)` (6.2 (c);
ModularCurvesPartII §1.4), so this section says that the differential `u·dx/(2y + a₁x)` of `W_C` and each of its
conjugates `σ(u)·dx/(2y + σ(a₁)x)` have lattices of periods of that covolume. The section is named after the
Chowla–Selberg formula, which is the evaluation through Gamma values of the class mean of 5.4 (6.6 (b)); the statement
with one number `u`, a unit at every prime, is a refinement particular to this roadmap.

The right side is `π·Ω_K` in the notation of ArithmeticVolumesAndIntegralFormsOnUnitaryShimuraVarieties §8.5. That
section's (c) is the mean form for a lattice `Λ₀` with `Δ(Λ₀) = 1`: the mean over the embeddings of
`log(area(ℂ/Λ₀^s)/π)` is `log Ω_K`. The statement here is finer: one number `u`, a unit at every prime, gives the
area of each conjugate lattice separately.

*Needs:* 1.4 (c), 2.1, 2.2, 3.4, 5.2, 5.4.

[ShortProof], `Lib/CM/ChowlaSelberg` (`New.QuadField.exists_mk_eq_and_prod_eq_one`, `New.CMLattice.norm_prod_le_one`,
`New.QuadField.scaledIdeal_inv_mul_le_iff`, `New.CMLattice.prod_norm_eq_one`,
`New.CMLattice.scaledIdeal_map_mul_galConjugate_le`, `New.CMLattice.latticeModule_galConjugate_eq_mul`,
`New.CMLattice.prod_area_mul_norm_disc_galConjugate`, `New.CMLattice.chowla_selberg`)

## Layer 6: Comparison with the standard theory

This layer relates the objects of Layers 1–5 to the standard theory of elliptic curves with complex multiplication,
owned by the general roadmaps of the library, and states on the standard objects the results that other roadmaps use:
Weierstrass's sigma function and the oriented Legendre relation (6.1); Weierstrass's function at a half-period, the
Weierstrass model of a lattice with its uniformisation, and elliptic curves with complex multiplication by `𝒪_K`
(6.2); Klein forms, Siegel functions and Weber's cubic (6.3); the formal group of the Weierstrass model (6.4); the
main theorem of complex multiplication and the Artin map (6.5); Kronecker's first limit formula and the Chowla–Selberg
formula (6.6). [ShortProof] proves none of these statements; each section gives a `*Proof route:*` in place of the
method of the formal proof.

### 6.1 The sigma function and Weierstrass's sigma function

*Origin:* this roadmap's own formulation: the function `σ_Λ` of 1.2 compared with Weierstrass's sigma function
`latticeSigma` of ModularCurvesPartII §1.4a, through the oriented Legendre relation of that section.

*Proof route:* (a) `η` is additive and `Λ` spans `ℂ` over `ℝ`, so `η` is the restriction of an `ℝ`-linear map `ℂ → ℂ`,
which has the form `u ↦ s₂·u + s′·ū` for unique `s₂, s′ ∈ ℂ`. For a positive basis,
`ω̄₁ω₂ − ω̄₂ω₁ = 2i·Im(ω̄₁ω₂) = 2iA`, so the Legendre relation `η(ω₁)ω₂ − η(ω₂)ω₁ = 2πi`
(`latticeQuasiPeriod_legendre`) reads `s′·2iA = 2πi`, that is `s′ = π/A`. Then
`η(ω₂)ω̄₁ − η(ω₁)ω̄₂ = s₂·(ω₂ω̄₁ − ω₁ω̄₂) = 2iA·s₂`. The product gives `σ_W(cz; cΛ) = c·σ_W(z; Λ)`, hence the
quasi-period of `cΛ` at `cl` is `c^{−1}η(l)`, and `area(ℂ/cΛ) = |c|²A`; comparing the decompositions of `η` for `Λ`
and for `cΛ` gives `s₂(cΛ) = c^{−2}s₂(Λ)`. (b) Put `f(z) := σ_W(z)·exp(−s₂z²/2)`. For `l = aω₁ + bω₂`, `a + b + ab` is
even exactly when `a` and `b` are both even, that is when `l ∈ 2Λ`, so the sign `(−1)^{a+b+ab}` of
`latticeSigma_quasiPeriod` is `ε(l)`. As `s₂(z + l)²/2 − s₂z²/2 = s₂l·(z + l/2)`, (a) gives
`f(z + l) = ε(l)·exp((η(l) − s₂l)(z + l/2))·f(z) = ε(l)·exp((π/A)·l̄·(z + l/2))·f(z)`. So `f` lies in
`Θ(H, ε) = Th_1(Λ, ε)` (AbelianSchemesWithThetaStructuresAndTheirCohomology §1.1, and 1.1), `f` is odd and
`f′(0) = σ_W′(0) = 1`, and `f = σ_Λ` by the uniqueness in 1.2 (b). (c) The factor `exp(−s₂z²/2)` has no zeros. In
`σ(u + v)σ(u − v)` the factors give `exp(−s₂(u² + v²))`, as in `σ(u)²σ(v)²`, and in `σ(2z)` they give `exp(−2s₂z²)`,
as in `σ(z)⁴`; so each identity for `σ_Λ` is the identity for `σ_W` multiplied by a function without zeros. Finally
`σ_Λ′/σ_Λ = ζ_W − s₂z`, and `ζ_W′ = −℘` (ModularCurvesPartII §1.4a).

Let `Λ` be a lattice of area `A` and `σ_W` its Weierstrass sigma function `z·∏_{0≠l∈Λ}(1 − z/l)·exp(z/l + z²/(2l²))`
(`latticeSigma` of ModularCurvesPartII §1.4a); let `ζ_W := σ_W′/σ_W`, and `η : Λ → ℂ` the quasi-period map of that
section (`latticeQuasiPeriod`: `ζ_W(z + l) = ζ_W(z) + η(l)` for `z ∉ Λ`). A basis `(ω₁, ω₂)` of `Λ` is *positive* if
`Im(ω₂/ω₁) > 0`.
(a) There is exactly one `s₂ = s₂(Λ) ∈ ℂ` such that `η(l) = s₂·l + (π/A)·l̄` for all `l ∈ Λ`. For every positive
basis, `s₂ = (η(ω₂)ω̄₁ − η(ω₁)ω̄₂)/(2iA)`; and `s₂(cΛ) = c^{−2}·s₂(Λ)` for `c ∈ ℂ^×`.
(b) `σ_Λ(z) = σ_W(z)·exp(−s₂z²/2)` for all `z ∈ ℂ`.
(c) `σ_Λ` and `σ_W` have the same zeros, so the last clause of 1.2 (c) says that the zeros of `σ_W` are the points of
`Λ`. 1.2 (d) and (e) are equivalent to the classical addition and duplication formulas
`σ_W(u + v)σ_W(u − v) = (℘(v) − ℘(u))·σ_W(u)²σ_W(v)²` for `u, v ∉ Λ` and `σ_W(2z) = −℘′(z)·σ_W(z)⁴` for `z ∉ Λ`. Off
`Λ`, `(σ_Λ′/σ_Λ)′ = −℘ − s₂`.

So `σ_Λ = σ_W` exactly when `s₂ = 0`. If `iΛ = Λ`, or `ρΛ = Λ` with `ρ² + ρ + 1 = 0`, the homogeneity in (a) gives
`s₂ = −s₂`, resp. `s₂ = ρs₂`, so `s₂ = 0`; for `Λ = ℤ[i]` (`A = 1`) this says `η(l) = π·l̄`, and the Legendre relation
for the positive basis `(1, i)` reads `π·i − (−πi)·1 = 2πi`. When `s₂ ≠ 0`, `σ_W` does not lie in `Th_1(Λ, ε)`: its
factor at `l` is that of `σ_Λ` times `exp(s₂l·(z + l/2))`, which depends on `z` for `l ≠ 0`.

*Needs:* 1.1, 1.2; ModularCurvesPartII §1.4a (Sigma, quasi-periods and the oriented Legendre relation);
AbelianSchemesWithThetaStructuresAndTheirCohomology §1.1 (Theta functions, Appell–Humbert data and twisted
translations).

### 6.2 The theta function of a CM lattice and the Weierstrass model

*Origin:* this roadmap's own formulation: the function `θ` of 1.3 compared with Weierstrass's function at a
half-period; the curve `y² + a₁xy = x³ + x` of 1.4 compared with the normalised Weierstrass model and the
uniformisation of ModularCurvesPartII §§1.1, 1.2, with the origin moved to a point of order two; and CM lattices
compared with elliptic curves over `ℂ` with complex multiplication by `𝒪_K`.

*Proof route:* (a) `ζ_W` is odd and `ζ_W(z + 2t) = ζ_W(z) + η(2t)`; at `z = −t` this gives `ζ_W(t) = η(2t)/2`, which
is `s₂t + (π/A)t̄` by 6.1 (a). Inserting 6.1 (b) in `θ(z) = exp(−(π/A)t̄z)·σ(z + t)/σ(t)` (1.3), the exponents add up
to `−(π/A)t̄z − s₂tz − s₂z²/2 = −ζ_W(t)z − s₂z²/2`. In each identity of 1.4 (b) and (e) the factors `exp(−s₂z²/2)`
contributed by the two sides agree, as in 6.1 (c). (b) With `e = ℘(t)`, 1.3 gives `a₁² = 12e` and `g₂ = 12e² − 4`, and
1.4 (c) gives `g₃ = 4e³ − g₂e`; expanding, `(y + a₁x/2)² − (x + e)³ + (g₂/4)(x + e) + g₃/4 = y² + a₁xy − x³ − x`. The
quantities `b₂, b₄, b₆, b₈, c₄`, the discriminant and `j` follow from their definitions for
`(a₁, a₂, a₃, a₄, a₆) = (a₁, 0, 0, 1, 0)`, and `1728g₂³ = (a₁⁴ − 48)³` since `12g₂ = a₁⁴ − 48`. (c) For `z ∉ t + Λ`,
the definitions of 1.3 give `x(z) + e = ℘(z + t)` and `y(z) + a₁x(z)/2 = ℘′(z + t)/2`, the coordinates of
`φ_Λ(z + t)`; `φ_Λ` intertwines addition with the group law (ModularCurvesPartII §1.1), `φ_Λ(t) = (e, 0)` is the image
of `P_C`, and the substitution of (b), an isomorphism of Weierstrass curves, respects the group laws. `x′ = 2y + a₁x`
(1.4 (d)) and `d℘/dz = ℘′` give the pull-backs of the invariant differential. (d) By ModularCurvesPartII §1.2, the
holomorphic endomorphisms of `ℂ/Λ` are the maps `z ↦ uz` with `uΛ ⊂ Λ`, and algebraic and analytic morphisms agree;
for `Λ = c𝔞` (2.1 (a)) the ring `{u : u𝔞 ⊂ 𝔞}` is `𝒪_K`. As `ωω̄ = (1 + d)/4` is even and `ω + ω̄ = 1`, `𝔭` and `𝔭̄`
are distinct primes of norm `2`, and a point `u` of order two is killed by `𝔭` exactly when `ωu ∈ Λ`. As
`𝒪_K`-modules, `(1/2)Λ/Λ ≅ 𝔞/2𝔞 ≅ 𝒪_K/2𝒪_K ≅ 𝒪_K/𝔭 × 𝒪_K/𝔭̄`, in which exactly one element lies outside the two
subgroups killed by `𝔭` and by `𝔭̄`; this is the class of `t` by the definition of a CM lattice (1.3). For the last
clause: an elliptic curve over `ℂ` is `ℂ/L` for a lattice `L` (ModularCurvesPartII §1.2), its endomorphism ring is
`{u : uL ⊂ L}`, a subring of `ℂ` isomorphic to `𝒪_K` and hence equal to it (both embeddings of `K` in `ℂ` have image
`K`); the argument of 2.1 (a) writes `L = u𝔠`, 2.1 (b) gives a CM lattice whose lattice is a complex multiple of `𝔠`,
hence of `L`, and homothetic lattices give isomorphic curves (ModularCurvesPartII §1.2).

Let `C = (Λ, t, a₁)` be a normalised pointed lattice of area `A`, with `σ_W`, `ζ_W`, `η` and `s₂ = s₂(Λ)` of 6.1, and
`e := ℘(t)`.
(a) `θ_C(z) = σ_{W,t}(z)·exp(−s₂z²/2)` for all `z ∈ ℂ`, where `σ_{W,t}(z) := exp(−ζ_W(t)·z)·σ_W(z + t)/σ_W(t)` is
Weierstrass's function at the half-period `t` (the classical `σ_1, σ_2, σ_3` of the three half-periods), and
`ζ_W(t) = η(2t)/2`. The identities of 1.4 (b) and (e) are equivalent to the same identities with `θ`, `σ` replaced by
`σ_{W,t}`, `σ_W`; for instance `θ² = (℘ − e)·σ²` is the classical `σ_{W,t}² = (℘ − e)·σ_W²`.
(b) `W_C : y² + a₁xy = x³ + x` is a Weierstrass curve over the ring `ℤ[a₁] ⊂ ℂ`, with
`(a₁, a₂, a₃, a₄, a₆) = (a₁, 0, 0, 1, 0)`, `b₂ = a₁²`, `b₄ = 2`, `b₆ = 0`, `b₈ = −1`, `c₄ = a₁⁴ − 48`, discriminant
`a₁⁴ − 64 = Δ(Λ)` and `j`-invariant `(a₁⁴ − 48)³/(a₁⁴ − 64) = 1728g₂³/Δ(Λ)`. The substitution `X = x + e`,
`Y = y + a₁x/2` (`e = a₁²/12`) is an isomorphism of Weierstrass curves over `ℂ` from `W_C` onto the normalised
Weierstrass model `W_Λ : Y² = X³ − (g₂/4)X − g₃/4` of ModularCurvesPartII §1.1; it maps the point `P_C := (0, 0)` of
`W_C` to `(e, 0)`, a point of order two.
(c) Let `φ_Λ : ℂ/Λ → W_Λ(ℂ)` be the uniformisation of ModularCurvesPartII §1.1 (`z ↦ (℘(z), ℘′(z)/2)`, `0 ↦ O`), and
`φ_C : ℂ/Λ → W_C(ℂ)` its composite with the inverse of the substitution of (b). Then `φ_C(t) = P_C`, and the map
`ψ_C : ℂ/Λ → W_C(ℂ)` given by `ψ_C(z) := (x(z), y(z))` for `z ∉ t + Λ` and `ψ_C(z) := O` for `z ∈ t + Λ` is
`ψ_C(z) = φ_C(z + t) = φ_C(z) + P_C`. So `ψ_C` is a bijection with `ψ_C(0) = P_C` that carries addition to the law
`(Q, Q′) ↦ Q + Q′ + P_C` of `W_C(ℂ)`, whose neutral element is `P_C`: it is the uniformisation of `W_C` with the
origin moved to the point `P_C` of order two. The invariant differential `dx/(2y + a₁x)` of `W_C` pulls back to `dz`
along `φ_C` and along `ψ_C`.
(d) Let `C` be a CM lattice, and `𝔭 := 2𝒪_K + ω𝒪_K`, `𝔭̄ := 2𝒪_K + ω̄𝒪_K` the two primes of `K` above `2`. Through
`φ_C`, the endomorphisms of `W_C` over `ℂ` are the maps induced by `z ↦ αz`, `α ∈ 𝒪_K`, and their ring is `𝒪_K`. `P_C`
is the only point of order two of `W_C` killed by neither `𝔭` nor `𝔭̄`, that is, the generator of `W_C[2]` as a module
over `𝒪_K/2𝒪_K`. Every elliptic curve over `ℂ` whose endomorphism ring is isomorphic to `𝒪_K` is isomorphic to `W_C`
for some CM lattice `C`.

For `a₁ = 0`, `W_C` is `y² = x³ + x`, of `j`-invariant `1728`: then `℘(t) = 0`, `g₂ = −4` and `g₃ = 0`, the lattice is
homothetic to `ℤ[i]`, and `t` is the point of order two at which `℘` vanishes.

*Needs:* 1.3, 1.4, 2.1, 6.1; ModularCurvesPartII §1.1 (The normalized lattice Weierstrass model); ModularCurvesPartII
§1.2 (Pointed elliptic uniformization); Mathlib `WeierstrassCurve`, Mathlib `WeierstrassCurve.VariableChange` (the
quantities `b₂, …, Δ, j` and changes of variables).

### 6.3 Torsion values, Klein forms and Siegel functions

*Origin:* this roadmap's own formulation: the torsion values of 3.1 and the numbers `s_L(u)` of 2.2 compared with
Klein forms, the Siegel functions of ImaginaryQuadraticClassNumber §3.2 and the roots of Weber's cubic, in the theory
of Siegel units (Kubert and Lang, *Modular Units*).

*Proof route:* (a) By 6.1 (a), `η_ℝ(u)·u = s₂u² + (π/A)|u|²`, and 6.1 (b) gives
`𝔨(u; L) = exp(−π|u|²/(2A))·σ_W(u)·exp(−s₂u²/2) = σ_L[u]`. For the homogeneity, `σ_W(cu; cL) = c·σ_W(u; L)` and the
quasi-period of `cL` at `cl` is `c^{−1}η(l)` (6.1), so the term `η_ℝ(u)·u` is unchanged. (b) Let `L₀ := ℤτ + ℤ`, with
the positive basis `(1, τ)`, so that `η(1)τ − η(τ) = 2πi`. The product
`P(z) := (2πi)^{−1}·exp(η(1)z²/2)·(e^{πiz} − e^{−πiz})·∏_{n≥1}(1 − qⁿe^{2πiz})(1 − qⁿe^{−2πiz})(1 − qⁿ)^{−2}`
converges normally, is odd, has `P′(0) = 1`, vanishes on `L₀`, and satisfies `P(z + 1) = −exp(η(1)(z + 1/2))·P(z)` and
`P(z + τ) = −exp((η(1)τ − 2πi)(z + τ/2))·P(z) = −exp(η(τ)(z + τ/2))·P(z)`. These are the factors of
`latticeSigma_quasiPeriod` for `1` and `τ`, so `P/σ_W` is entire (the zeros of `σ_W` are simple and lie on `L₀`) and
`L₀`-periodic, hence constant, and `P = σ_W`. For `z = r₁τ + r₂`, `η_ℝ(z) = r₁η(τ) + r₂η(1)` and
`η(1)z²/2 − η_ℝ(z)·z/2 = (z/2)·r₁·(η(1)τ − η(τ)) = πir₁z`, so
`2πi·𝔨(z; L₀) = −exp(πi(r₁ − 1)z)·(1 − e^{2πiz})·∏_{n≥1}(1 − qⁿe^{2πiz})(1 − qⁿe^{−2πiz})(1 − qⁿ)^{−2}`; as
`(r₁ − 1)z = (r₁² − r₁)τ + r₂(r₁ − 1)` and `B₂(r₁) = r₁² − r₁ + 1/6`, this is
`g_r(τ)·exp(−πiτ/6)·∏_{n≥1}(1 − qⁿ)^{−2}`. In the twelfth power, `(2πi)¹²·q·∏(1 − qⁿ)²⁴ = (2π)¹²Δ(τ) = Δ(L₀)` (the
product formula, as in 5.1), and the homogeneity of (a) with `Δ(cL₀) = c^{−12}Δ(L₀)` gives
`g_r(τ)¹² = 𝔨(u; L)¹²·Δ(L)`. (c) Differentiate 1.2 (e) at `u`: `℘′(u) = 0`, and by 1.2 (b)
`σ′(2u) = ε(2u)·exp(2π|u|²/A) = −exp(2π|u|²/A)`, as `2u ∉ 2L`; so `2σ′(2u) = −℘″(u)σ(u)⁴` gives `σ[u]⁴ = 2/℘″(u)`. In
the roots `e_i = ℘(u_i)` of `4X³ − g₂X − g₃`: `e₁ + e₂ + e₃ = 0`, `℘″(u_i) = 2(e_i − e_j)(e_i − e_k)` and
`Δ = 16∏_{i<j}(e_i − e_j)²`; so `8Δ/℘″(u_i)³ = 16(e_j − e_k)²/((e_i − e_j)(e_i − e_k))`, which is
`144e_i²/((e_i − e_j)(e_i − e_k)) − 64 = s(u_i)` because `e_j + e_k = −e_i`. The elementary symmetric functions of the
three `s(u_i)` are `−48`, `768 − j(L)` and `−2¹²`, those of the roots of
`(X + 16)³ − j(L)X = X³ + 48X² + (768 − j(L))X + 4096`. (d) 1.6 (a) gives `T¹_tσ = c₀θ` with `c₀ = (T¹_tσ)(0) = σ[t]`,
and 3.1 (a) gives `(T¹_tσ)[u] = exp(−πi·Im(ut̄)/A)·σ[u + t]`; 2.2 gives `s(t) = a₁⁴ − 64`. At a torsion point the
exponential factor is a root of unity, and with `|ι(Δ(Λ))| = 1` (2.2 (d)) the twelfth powers in (b) give the absolute
values. (e) `Λ_C` is a complex multiple of a fractional ideal of `K` (2.1 (a)), so the ratio `τ` of two of its
elements lies in `K`; an algebraic integer is integral at every `ι`.

Let `L` be a lattice of area `A`, with `σ_W`, `η` and `s₂` of 6.1, and let `η_ℝ(u) := s₂u + (π/A)ū` for `u ∈ ℂ`, the
`ℝ`-linear map that extends `η` (6.1 (a)). The *Klein form* of `L` is `𝔨(u; L) := exp(−η_ℝ(u)·u/2)·σ_W(u)`, `u ∈ ℂ`.
Write `σ_L[u] := exp(−π|u|²/(2A))·σ_L(u)` for every `u ∈ ℂ` (the torsion value of 3.1, in degree one), and
`j(L) := 1728g₂³/Δ(L)`.
(a) `𝔨(u; L) = σ_L[u]` for every `u ∈ ℂ`, and `𝔨(cu; cL) = c·𝔨(u; L)` for `c ∈ ℂ^×`.
(b) Let `L = c(ℤτ + ℤ)` with `Im τ > 0` and `c ∈ ℂ^×`, `q := exp(2πiτ)`, `u = c(r₁τ + r₂)` with
`r = (r₁, r₂) ∈ ℚ² ∖ ℤ²`, and `g_r` the Siegel function of ImaginaryQuadraticClassNumber §3.2. Then
`g_r(τ) = 2πi·exp(πiτ/6)·∏_{n≥1}(1 − qⁿ)²·𝔨(r₁τ + r₂; ℤτ + ℤ)`, and `g_r(τ)¹² = σ_L[u]¹²·Δ(L)`.
(c) If `u` is a point of order two of `L`, then `σ_L[u]⁴ = 2/℘″(u)` and `s_L(u) = 8Δ(L)/℘″(u)³ = σ_L[u]¹²·Δ(L)`. The
numbers `s_L(u₁)`, `s_L(u₂)`, `s_L(u₃)` at the three points of order two are the roots of Weber's cubic
`(X + 16)³ − j(L)·X`; by (b), `s_L(c(r₁τ + r₂)) = g_r(τ)¹²` for `r = (0, 1/2)`, `(1/2, 0)`, `(1/2, 1/2)`, in agreement
with Tau Ceti's `TauCeti.ModularForm.prod_X_sub_C_siegelFunction_pow_twelve`.
(d) Let `C = (Λ, t, a₁)` be a normalised pointed lattice, `Λ = c(ℤτ + ℤ)` as in (b), and `t = c(r°₁τ + r°₂)`. Then
`σ[t]⁴ = 1`, `a₁⁴ − 64 = s_Λ(t) = g_{r°}(τ)¹²`, and `θ[u] = σ[t]^{−1}·exp(−πi·Im(ut̄)/A)·σ[u + t]` for every `u ∈ ℂ`,
so that `|θ[u]| = |𝔨(u + t; Λ)|`. If `C` is a CM lattice, then for every prime `p`, every `ι`, every `r ∈ ℚ²` and
`u = c(r₁τ + r₂)`: `|ι(σ[u])| = |ι(g_r(τ))|` if `r ∉ ℤ²`, and `|ι(θ[u])| = |ι(g_{r+r°}(τ))|` if `r + r° ∉ ℤ²`.
(e) If `C` is a CM lattice, `τ` in (d) lies in `K`, and the values of the Siegel functions at `τ` are algebraic
integers (ImaginaryQuadraticClassNumber §3.2, last target). So the integrality of the three numbers of 2.2 (c) follows
from (c) and that integrality; and, given 2.2 (d), so does by (d) the integrality of `σ[u]` and `θ[u]` at torsion
points in 3.1 (c).

For `L = ℤ[i]` (`τ = i`): `℘(i/2) = −℘(1/2)` and `℘((1 + i)/2) = 0`, and (c) gives `s(1/2) = s(i/2) = 8` and
`s((1 + i)/2) = −64`, the roots of `X³ + 48X² − 960X + 4096 = (X − 8)²(X + 64)` in the Checks of
ImaginaryQuadraticClassNumber §3.2, with `g_{(0,1/2)}(i)¹² = 8` and `g_{(1/2,1/2)}(i)¹² = −64`.

*Needs:* 1.2, 1.6, 2.1, 2.2, 3.1, 6.1; ModularCurvesPartII §1.4a (Sigma, quasi-periods and the oriented Legendre
relation); ImaginaryQuadraticClassNumber §3.2 (Siegel functions with exact phases); Tau Ceti
`UpperHalfPlane.weierstrassCurve_Δ_periodPair` (`Δ` through `Δ(τ)`); Tau Ceti `TauCeti.ModularForm.siegelFunction`,
Tau Ceti `TauCeti.ModularForm.prod_X_sub_C_siegelFunction_pow_twelve` (Weber's cubic).

### 6.4 The formal group of the Weierstrass model

*Origin:* this roadmap's own formulation: the ring `𝒪[[y]]` of 3.2, the group law of 3.6, the orders `o(α)` of 4.2 and
the parameter `T` of 4.3 compared with the formal group of the curve `W_C` of 6.2 (Silverman, *The Arithmetic of
Elliptic Curves*, IV.1 and IV.2), read through the complex uniformisation.

*Proof route:* (a) The coordinates of `φ_C(z)` are `x̃ := 1/x` and `ỹ := −(y + a₁x)/x²`: `φ_C(z) = ψ_C(z + t)` (6.2
(c)), `x(z + t) = 1/x(z)` (1.4 (b)), and `2y(z + t) = x′(z + t) − a₁x(z + t)` with `x′ = 2y + a₁x` (1.4 (d)). Hence
`ξ(φ_C(z)) = −x̃/ỹ = x/(y + a₁x)`, which is `z + O(z²)` by 1.4 (d). `φ_C` carries addition to the group law of `W_C`
(ModularCurvesPartII §1.1 for `φ_Λ`; the substitution of 6.2 (b) is an isomorphism of Weierstrass curves). So, in the
group of points of `W_C` over the field of fractions of `ℂ[[z₀, z₁]]`, the point with coordinates `x̃(z₀ + z₁)`,
`ỹ(z₀ + z₁)` is the sum of the points with coordinates `x̃(z₀)`, `ỹ(z₀)` and `x̃(z₁)`, `ỹ(z₁)`: the addition formulas
hold for complex `z₀`, `z₁`, hence as identities of meromorphic functions and of their Laurent series. By the first
step of (b), which does not use the present statement, `x̃ = ξ̂/λ_C(ξ̂)` and `ỹ = −1/λ_C(ξ̂)`: the three points are
the points `(Z/λ_C(Z), −1/λ_C(Z))` for `Z = ξ̂(z₀ + z₁)`, `ξ̂(z₀)`, `ξ̂(z₁)`. `Ê_C` is the expansion of the group law
at `O` in the parameter `ξ` (EllipticCurves Layer 1, item (i)): the sum of the points `(Z₀/λ_C(Z₀), −1/λ_C(Z₀))` and
`(Z₁/λ_C(Z₁), −1/λ_C(Z₁))` is the point `(Z/λ_C(Z), −1/λ_C(Z))` with `Z = Ê_C(Z₀, Z₁)`. Substituting `Z_i = ξ̂(z_i)`
gives `ξ̂(z₀ + z₁) = Ê_C(ξ̂(z₀), ξ̂(z₁))`, a point determining its parameter `ξ`. Over `ℂ`, the formal logarithm is a
series `log_{Ê_C} = Z + O(Z²)` with `log_{Ê_C}(Ê_C(Z₀, Z₁)) = log_{Ê_C}(Z₀) + log_{Ê_C}(Z₁)` (EllipticCurves Layer 1,
item (ii)). So `ℓ := log_{Ê_C}(ξ̂) ∈ ℂ[[z]]` satisfies `ℓ(z₀ + z₁) = ℓ(z₀) + ℓ(z₁)`; hence `ℓ = c·z` with `c ∈ ℂ`, and
`c = 1` because `ℓ = z + O(z²)`: `log_{Ê_C}(ξ̂) = z`. (b) In the coordinates `ξ = −x/y` and `λ = −1/y` the equation of
`W_C` reads `λ = ξ³ + a₁ξλ + ξλ²`, and `λ_C` is its unique solution in `ξℤ[a₁][[ξ]]`. Both `λ_C(ξ̂)` and the Taylor
series of `−1/ỹ` solve `λ = ξ̂³ + a₁ξ̂λ + ξ̂λ²` for an unknown `λ ∈ zℂ[[z]]`, whose solution is unique, the right side
being a contraction for the `z`-adic topology; so they are equal, `x̃ = ξ̂/λ_C(ξ̂)` and `ỹ = −1/λ_C(ξ̂)`. From
`y = −(ỹ + a₁x̃)/x̃²` (the formulas of (a)), `y = (1 − a₁ξ̂)·λ_C(ξ̂)/ξ̂² = 𝔶_C(ξ̂)`; substituting in (a) gives the law
for `y`, and both identities hold coefficientwise after `ι` is applied. For a CM lattice `|ι(a₁)| ≤ 1` (2.2 (d)), so
`𝔶_C`, its compositional inverse and `Ê^y_C` are integral at `ι`, and 3.2 (a) gives `𝒪[[y]] = 𝒪[[ξ̂]]`. (c) By 3.4 (c)
and 3.2 (a), `y_{C′}(az) = h_a(y_C)` for one `h_a ∈ 𝒪[[Z]]`. Substituting `Z_i = y_C(z_i)`, both sides of
`Ê^y_{C′}(h_a(Z₀), h_a(Z₁)) = h_a(Ê^y_C(Z₀, Z₁))` become `y_{C′}(a(z₀ + z₁))` by (b), and this substitution is
injective, `y_C = z + O(z²)` having a compositional inverse; the linear coefficient of `y_{C′}(az)` is `ι(a)`. For
`C′ = C`, `y(αβz) = [α]_C(y(βz))` and `y((α + β)z) = Ê^y_C(y(αz), y(βz))` give the ring homomorphism, and the clause
on `o(α)` is its definition in 4.2. (d) `|ι(a₁⁴ − 64)| = 1` (2.2 (d)), so the reduced discriminant is not `0`; `λ_C`,
`Ê_C`, `𝔶_C` and `Ê^y_C` are given by universal formulas over `ℤ[a₁]`, so their reductions are those of `W̃_C`. By 4.3
(d), `[π_p]_C` is the series `g_p` in the parameter `T`, and the reduction of `g_p` has order `q_p` (`b₁` is a unit,
the linear coefficient `π_p` lies in `𝔪`, and the other terms have degree at least `2q_p − 1`); a change of parameter
`Z ↦ Z + O(Z²)` over `𝒪` does not change orders of reductions (Tau Ceti `PowerSeries.order_subst`), so `o(π_p) = q_p`.
If `p ≠ d`, `π_p = p`; if `p = d`, `d = −π_d²` and `o(−1) = 1`, so `o(d) = d²` by 4.2 (a). An elliptic curve `E` over
an algebraically closed field of characteristic `p` is supersingular, that is, has no point of order `p`
(EllipticCurves Layer 3), exactly when its formal group has height two: `[p]` has degree `p²`, its separable degree is
the number of points that it kills, and its inseparable degree is the order of its formal series (the statement on the
formal series of an isogeny named in 4.2), which is the multiplication by `p` of the formal group law. With the
heights just found this gives the last clause. `a₁` is an algebraic number, because its images under the automorphisms
of `ℂ` over `K` are finite in number: each is `a₁` of a CM lattice (5.2 (c)), there are finitely many lattices of CM
lattices (2.3 (b)), and a lattice determines `t` modulo itself (6.2 (d)), hence `a₁² = 12℘(t)`. So `W_C` is a curve
over the number field `K(a₁)` with complex multiplication by `𝒪_K` and good reduction at the place that `ι` defines,
and the last clause is the dichotomy between split and non-split primes of ComplexMultiplicationAndExplicitReciprocity
§5.1 for it. (e) `T ∈ 𝒪[[y]]` (4.3 (d)) gives `𝔱_p ∈ 𝒪[[Z]]`, with linear coefficient `1` as `T` and `y` are both
`z + O(z²)`; then `g_p(T) = T(π_pz) = 𝔱_p([π_p]_C(y))`, and the injectivity in 3.2 (a) gives
`g_p = 𝔱_p∘[π_p]_C∘𝔱_p^{−1}`.

Let `C = (Λ, t, a₁)` be a normalised pointed lattice, and `W_C`, `P_C`, `φ_C` as in 6.2. Let `ξ := −x/y`, the
parameter of `W_C` at `O`; `λ_C(ξ) ∈ ξ³ + ξ⁴ℤ[a₁][[ξ]]` the expansion of `−1/y` in `ξ`; and
`Ê_C(Z₀, Z₁) ∈ ℤ[a₁][[Z₀, Z₁]]` the formal group law of `W_C` in the parameter `ξ` (EllipticCurves Layer 1, item (i);
Tau Ceti `WeierstrassCurve.formalGroup`). Put `𝔶_C(ξ) := (1 − a₁ξ)·λ_C(ξ)/ξ² ∈ ξ + ξ²ℤ[a₁][[ξ]]`, the expansion in `ξ`
of the function `Q ↦ y(Q + P_C) = −(y(Q) + a₁x(Q))/x(Q)²`, and
`Ê^y_C(Z₀, Z₁) := 𝔶_C(Ê_C(𝔶_C^{−1}(Z₀), 𝔶_C^{−1}(Z₁)))`, a formal group law over `ℤ[a₁]` strictly isomorphic to `Ê_C`
through `𝔶_C`: the formal group law of `W_C` carried to the point `P_C` by the translation by `P_C`, in the parameter
`y`. Let `ξ̂ ∈ ℂ[[z]]` be the Taylor series at `0` of `x/(y + a₁x)`.
(a) `x/(y + a₁x)` is the function `z ↦ ξ(φ_C(z))`; `ξ̂ = z + O(z²)`, `log_{Ê_C}(ξ̂) = z` for the formal logarithm over
`ℂ`, and `ξ̂(z₀ + z₁) = Ê_C(ξ̂(z₀), ξ̂(z₁))` in `ℂ[[z₀, z₁]]`.
(b) The Taylor series of `y` is `𝔶_C(ξ̂)`, and `y(z₀ + z₁) = Ê^y_C(y(z₀), y(z₁))` in `ℂ[[z₀, z₁]]`; both identities
hold with `ι` applied to the coefficients. If `C` is a CM lattice, then for every prime `p` and every `ι` the series
`𝔶_C`, `𝔶_C^{−1}` and `Ê^y_C` read through `ι` have coefficients in `𝒪`, and `𝒪[[y]] = 𝒪[[ξ̂]]` (3.2): `𝒪[[y]]` is the
ring of integral series in the parameter `ξ̂` of the formal group of `W_C` over `𝒪`, and 3.6 (b) is the integrality of
its law `Ê^y_C` in the parameter `y`.
(c) Let `C`, `C′` be CM lattices, `p` a prime and `a` an isogeny from `C` to `C′`. The series `h_a ∈ 𝒪[[Z]]` with
`y_{C′}(az) = h_a(y_C)` (3.4 (c)) is a homomorphism of formal group laws over `𝒪` from `Ê^y_C` to `Ê^y_{C′}`, read
through `ι`, and `h_a = ι(a)Z + O(Z²)`. For `C′ = C` and `α ∈ 𝒪_K` write `[α]_C := h_α`: `α ↦ [α]_C` is a ring
homomorphism from `𝒪_K` to the endomorphisms of `Ê^y_C` over `𝒪`, and `o(α)` of 4.2 is the order of the reduction of
`[α]_C` modulo `𝔪`.
(d) Let `C` be a CM lattice, `p` a prime and `k := 𝒪/𝔪`. The reduction `W̃_C : y² + ā₁xy = x³ + x` of `W_C` through
`ι` is an elliptic curve over `k`, and the reduction of `Ê^y_C` is the formal group law of `W̃_C` formed in the same
way. `o(p) = p` if `p` splits in `K`, and `o(p) = p²` otherwise. So the formal group of `W̃_C` has height one if `p`
splits in `K` and height two otherwise (the height of a formal group law over `k` being the `h` for which its
multiplication by `p` has order `p^h`), and `W̃_C` is supersingular exactly when `p` does not split in `K`: Deuring's
criterion (4.2; ComplexMultiplicationAndExplicitReciprocity §5.1) for `W_C` at the place that `ι` defines.
(e) In the notation of 4.3, `T = 𝔱_p(y)` for one `𝔱_p ∈ Z + Z²𝒪[[Z]]`, so `T` is another parameter of the same formal
group, and `g_p = 𝔱_p∘[π_p]_C∘𝔱_p^{−1}`: the multiplication by `π_p` written in the parameter `T`.

The expansion `𝔶_C(ξ) = ξ + ξ⁵ + 2a₁ξ⁶ + 3a₁²ξ⁷ + O(ξ⁸)` shows that the Taylor series of `y` and `ξ̂` agree up to
degree four.

*Needs:* 1.4, 2.2, 2.3, 3.2, 3.4, 4.2, 4.3, 5.2, 6.2; EllipticCurves Layer 1 (isogenies, the dual, the invariant
differential, and formal groups (AEC II.2, III.4–6, IV)); EllipticCurves Layer 3 (elliptic curves over finite fields —
the Hasse bound (AEC V.1)); ComplexMultiplicationAndExplicitReciprocity §5.1 (Deuring classification, specialization
and lifting); ModularCurvesPartII §1.1 (The normalized lattice Weierstrass model); Tau Ceti
`WeierstrassCurve.formalGroup`; Tau Ceti `PowerSeries.order_subst`.

### 6.5 Complex multiplication and the Artin map

*Origin:* this roadmap's own formulation: the adele of 5.3 (b) identified, through the main theorem of complex
multiplication for elliptic curves (Shimura, *Introduction to the Arithmetic Theory of Automorphic Functions*, Thm
5.4; Milne, *Complex Multiplication*, 9.17), with the inverse of a finite idele whose Artin symbol is the given
automorphism.

*Proof route:* (a) Through `φ_C`, `𝒪_K` acts on `W_C` by the multiplications of `ℂ` (6.2 (d)), so the type of `W_C` is
the inclusion `K ⊂ ℂ`; its reflex field is `K` and its reflex norm is the identity. `W_{C^σ}` is the conjugate
`σ(W_C)`, because `a₁(C^σ) = σ(a₁(C))` (5.2 (c)). ComplexMultiplicationAndExplicitReciprocity §2.2 (the normalized
idele and torsion dictionary, with the arithmetic Artin map), which applies ShimuraVarieties §5.10 and whose `f` is
here `κ^{−1}`, gives a `K`-linear quasi-isogeny `α` from `W_C` to `W_{C^σ}` with `α(κ^{−1}v) = σ(v)` for every `v` in
the rational Tate module of `W_C`. By ModularCurvesPartII §1.2, through `φ_C` and `φ_{C^σ}` the quasi-isogeny `α` is
the multiplication by some `m ∈ ℂ^×`, with `m·Ω₀K = ℚ·Λ_{C^σ}`. Through `φ_C`, the group of torsion points of `W_C` is
`Ω₀K/Λ_C`, its rational Tate module is `Ω₀𝔸_{K,f}`, its integral Tate module is `Ω₀Ô`, the closure of `Λ_C`, and the
torsion point `φ_C(xΩ₀)`, `x ∈ K`, is the class of `xΩ₀` in `Ω₀𝔸_{K,f}/Ω₀Ô`. In the same way, through `φ_{C^σ}` the
rational Tate module of `W_{C^σ}` is `mΩ₀𝔸_{K,f}`, its integral Tate module is the closure `T′` of `Λ_{C^σ}` in it,
and `mΩ₀K ∩ T′ = Λ_{C^σ}`; `α` acts on the rational Tate modules as the multiplication by `m`. As `σ` is a group
isomorphism from the torsion points of `W_C` onto those of `W_{C^σ}`, it maps the integral Tate module onto the
integral Tate module; so `T′ = α(κ^{−1}·Ω₀Ô) = mΩ₀·κ^{−1}Ô`, and
`Λ_{C^σ} = mΩ₀K ∩ T′ = mΩ₀·(K ∩ κ^{−1}Ô) = Ω_κ·κ^{−1}𝒪_K` for `Ω_κ := mΩ₀`. For `x ∈ K`, `σ` maps the class of
`v = xΩ₀` to the class of `α(κ^{−1}v) = Ω_κ·κ^{−1}x` modulo `T′ = Ω_κ·κ^{−1}Ô`, which is the class of `x″Ω_κ` for
every `x″ ∈ K` with `x″ − κ^{−1}x ∈ κ^{−1}Ô`: this is the statement for `φ_C`. Finally `σ` respects the group laws and
maps `P_C = (0, 0)` to `P_{C^σ} = (0, 0)`, so `ψ_C = φ_C + P_C` (6.2 (c)) gives the statement for `ψ_C`. (b) Let
`σ_* : ℂ/Λ_C → ℂ/Λ_{C^σ}` be defined by `ψ_{C^σ}∘σ_* = σ∘ψ_C`; by 6.2 (c) it is a group isomorphism, and
`σ_*(t_C) = t_{C^σ}`, both being sent to `O`. Let `x ∈ K`, `n ≥ 1` with `nx ∈ 𝒪_K`, and `x′ ∈ K ∩ U` as in 5.3 (b). By
1.5 (d), `F(z) := (T¹_{xΩ₀}θ_C)(nz)` lies in `Sect_{n²}(C)`. By 5.2 (b), with `Q = 1` (5.2 (e)), it has a transport
`g ∈ Sect_{n²}(C^σ)` whose Taylor series is `σ` applied to that of `F`, which by 5.3 (b) is the Taylor series of
`(T¹_{x′Ω′}θ_{C^σ})(nz)`; so `g(z) = (T¹_{x′Ω′}θ_{C^σ})(nz)`. Let `z ∈ ℂ`, with `u` and `μ` as in 5.2 (b). For the
sections `θ_C`, `σ_C²` and `G_C` of `C`, of degrees one, two and three, whose transports are those of `C^σ` (5.2 (e)),
5.2 (b) gives `θ_{C^σ}(z) = μ·σ(θ_C(u))`, `σ_{C^σ}(z)² = μ²·σ(σ_C(u)²)` and `G_{C^σ}(z) = μ³·σ(G_C(u))`. If
`θ_{C^σ}(z) ≠ 0`, then `θ_C(u) ≠ 0`, and the quotients `x = σ²/θ²`, `y = G/θ³` (1.4 (b)) give `x_{C^σ}(z) = σ(x_C(u))`
and `y_{C^σ}(z) = σ(y_C(u))`; if `θ_{C^σ}(z) = 0`, then `u = t_C`, and `ψ_{C^σ}(z)` and `ψ_C(u)` are both `O`. In both
cases `σ(ψ_C(u)) = ψ_{C^σ}(z)`, that is `u ≡ σ_*^{−1}(z)` modulo `Λ_C`. As `g(z) = μ^{n²}·σ(F(u))` and the set of
zeros of `F` is stable under `Λ_C`, `g(z) = 0` exactly when `F(σ_*^{−1}(z)) = 0`. By 1.4 (a), the zeros of `g` are the
`z` with `nz ≡ t_{C^σ} − x′Ω′` and those of `F` the `w` with `nw ≡ t_C − xΩ₀`; as `σ_*` is additive, `x′Ω′ ≡ σ_*(xΩ₀)`
modulo `Λ_{C^σ}`. By (a), for `x″ ∈ K` with `x″ − κ^{−1}x ∈ κ^{−1}Ô`, `x′Ω′ − x″Ω_κ ∈ Λ_{C^σ} = Ω_κ·κ^{−1}𝒪_K`. Since
`Ω′·(𝔠²/N(𝔠)) = Ω_κ·κ^{−1}𝒪_K`, `ϱ := Ω′/Ω_κ` lies in `K^×`, and `ϱx′ − κ^{−1}x ∈ κ^{−1}Ô`. Letting `x′` tend to `βx`
in `K ∩ U` (`K` is dense in `𝔸_{K,f}`), and as `κ^{−1}x + κ^{−1}Ô` is closed, `κ·(ϱβ − κ^{−1})·x ∈ Ô` for every
`x ∈ K`; taking `x = 1/N` for all `N ≥ 1` gives `ϱβ = κ^{−1}`. The Artin map is trivial on `K^×`, so
`art_K(β^{−1}) = art_K(ϱκ) = σ|_{K^ab}`, and `β𝒪_K = ϱ^{−1}κ^{−1}𝒪_K = Ω′^{−1}Λ_{C^σ} = 𝔠²/N(𝔠)`. (c) Take `Ω′`, `𝔠`,
`β` from 5.3 (b) and, for `x`, the neighbourhood `U` of `βx` there; by (b), `ϱU` is a neighbourhood of
`ϱβx = κ^{−1}x`, and for `x″ ∈ K ∩ ϱU`, `x′ := x″/ϱ` lies in `K ∩ U` and `x′Ω′ = x″Ω_κ`.

Let `C` be a CM lattice with `Λ_C = Ω₀𝒪_K`, `σ` an automorphism of `ℂ` over `K`, and `C^σ` as in 5.2 (c). Let
`art_K : 𝔸_{K,f}^× → Gal(K^ab/K)` be the Artin map on the finite ideles, normalised so that a uniformiser at a prime
`𝔭` acts on the extensions unramified at `𝔭` as the arithmetic Frobenius `x ↦ x^{N(𝔭)}`; it is trivial on `K^×`. Let
`Ô ⊂ 𝔸_{K,f}` be the integral finite adeles and, for a finite idele `κ`, `κ𝒪_K := K ∩ κÔ` its fractional ideal. Let
`κ` be a finite idele with `art_K(κ) = σ|_{K^ab}`.
(a) (*The main theorem of complex multiplication.*) There is `Ω_κ ∈ ℂ^×` with `Λ_{C^σ} = Ω_κ·κ^{−1}𝒪_K` such that, for
all `x, x″ ∈ K` with `x″ − κ^{−1}x ∈ κ^{−1}Ô`, `σ` maps the point `φ_C(xΩ₀)` of `W_C` to the point `φ_{C^σ}(x″Ω_κ)` of
`W_{C^σ} = σ(W_C)`, and `ψ_C(xΩ₀)` to `ψ_{C^σ}(x″Ω_κ)` (6.2 (c)).
(b) If `Ω′`, `𝔠`, `β` are as in 5.3 (b), then `ϱ := Ω′/Ω_κ` lies in `K^×` and `β = (ϱκ)^{−1}`. So `β` is a finite
idele, `art_K(β^{−1}) = σ|_{K^ab}`, and the fractional ideal of `β` is `𝔠²/N(𝔠)`.
(c) For every `x ∈ K` there is a neighbourhood `U` of `κ^{−1}x` in `𝔸_{K,f}` such that for every `x′ ∈ K ∩ U`,
applying `σ` to the coefficients of the Taylor series at `0` of `T¹_{xΩ₀}θ_C` gives the Taylor series of
`T¹_{x′Ω_κ}θ_{C^σ}`: the last clause of 5.3 (b) holds with `β = κ^{−1}` and `Ω_κ` in place of `Ω′`.

5.3 (b) does not record the relation between `β` and `σ` given by the Artin map, which is the content of the
reciprocity law; the route of 5.3 does not use it.

*Needs:* 1.4, 1.5, 5.2, 5.3, 6.2; ShimuraVarieties §5.10 (Main theorem of complex multiplication);
ComplexMultiplicationAndExplicitReciprocity §2.2 (Reflex ideals, torsion and polarization); ModularCurvesPartII §1.2
(Pointed elliptic uniformization); Mathlib `IsDedekindDomain.FiniteAdeleRing` (finite adeles of `K`).

### 6.6 Kronecker's limit formula and the Chowla–Selberg formula

*Origin:* this roadmap's own formulation: 5.1 compared with Kronecker's first limit formula for Epstein's zeta
function (Siegel, *Lectures on Advanced Analytic Number Theory*, Chapter I, Theorem 1), and 5.4 (b) and the constant
of 5.5 compared with the Chowla–Selberg formula (Selberg and Chowla, *On Epstein's zeta-function*).

*Proof route:* (a) For `l = c(mτ + n)`, `|l|²/A = |mτ + n|²/Im τ`, as `A = |c|²·Im τ`. `Δ(Λ) = c^{−12}Δ(ℤτ + ℤ)` and
`Δ(ℤτ + ℤ) = (2π)¹²Δ(τ)` (the product formula, as in 5.1), so `A·|Δ(Λ)|^{1/6} = 4π²·Im τ·|Δ(τ)|^{1/6}`, and the
constant `π·(2γ − log(A·|Δ|^{1/6}/π²))` of 5.1 becomes the displayed one. If `𝒵(τ, s) − π/(s − 1)` extends
holomorphically to a neighbourhood of `1` with value `V` at `1`, then for `k > 0` the function
`F(s) := (s − 1)·k^s·𝒵(τ, s)` of 5.1 is holomorphic at `1`, `F(1) = πk` and `F′(1) = k·(V + π·log k)`, which is the
right derivative of 5.1 when `V` is the displayed constant. (b) Lerch's formula for the Hurwitz zeta function at `0`,
`ζ(0, x) = 1/2 − x` and `(∂/∂s)ζ(s, x)|_{s=0} = log Γ(x) − (1/2)log(2π)`, with
`L(s, χ_K) = d^{−s}·Σ_{a=1}^{d−1}χ_K(a)ζ(s, a/d)` and `Σ_aχ_K(a) = 0`, gives
`L′(0, χ_K) = −L(0, χ_K)·log d + Σ_{a=1}^{d−1}χ_K(a)·log Γ(a/d)`. `χ_K` is odd and primitive of conductor `d`, with
root number `1`, so `ℒ(s) := (d/π)^{(s+1)/2}·Γ((s + 1)/2)·L(s, χ_K)` satisfies `ℒ(1 − s) = ℒ(s)`. At `s = 0` this
gives `L(0, χ_K) = √d·L(1, χ_K)/π`, which is `h` by the class number formula; and its logarithmic derivative, with
`(Γ′/Γ)(1) = −γ` and `(Γ′/Γ)(1/2) = −γ − 2 log 2`, gives `(L′/L)(1, χ_K) = −(L′/L)(0, χ_K) − log(d/π) + γ + log 2`.
Inserting `L′(0, χ_K)` gives the identity. Then
`γ + log(2π/√d) − (L′/L)(1, χ_K) = (1/h)·Σ_aχ_K(a)·log Γ(a/d) − (1/2)·log d`, and `h` times 5.4 (b), exponentiated, is
the product formula; its second form is (a). (c) By (b), `exp(γ − (L′/L)(1, χ_K)) = (2π)^{−1}·∏_aΓ(a/d)^{χ_K(a)/h}`.

(a) Let `Λ = c(ℤτ + ℤ)` with `Im τ > 0` and `c ∈ ℂ^×`, of area `A`, let `Δ(τ) = q·∏_{n≥1}(1 − qⁿ)²⁴` as in 5.1, and
for real `s > 1` let `𝒵(τ, s) := Σ_{(m,n)∈ℤ²∖{(0,0)}} (Im τ)^s·|mτ + n|^{−2s}`, Epstein's zeta function of `ℤτ + ℤ`.
Then `Σ_{0≠l∈Λ}(|l|²/A)^{−s} = 𝒵(τ, s)` and `A·|Δ(Λ)|^{1/6} = 4π²·Im τ·|Δ(τ)|^{1/6}`. So the expansion of 5.1 reads
`𝒵(τ, s) = π/(s − 1) + 2π·(γ − log 2 − (1/2)·log Im τ − (1/12)·log|Δ(τ)|) + o(1)` as `s ↓ 1`. Kronecker's first limit
formula states that `𝒵(τ, s) − π/(s − 1)` extends holomorphically to a neighbourhood of `s = 1`, with this constant as
its value at `1`; it implies 5.1, which does not record that continuation.
(b) Let `d` be a prime `≡ 7 (mod 8)`. Then `(L′/L)(1, χ_K) = γ + log(2π) − (1/h)·Σ_{a=1}^{d−1}χ_K(a)·log Γ(a/d)`.
Hence 5.4 (b) is equivalent to the Chowla–Selberg formula
`∏_{𝒞∈Cl(K)} A_𝒞·|Δ(Λ_𝒞)|^{1/6}/π = d^{−h/2}·∏_{a=1}^{d−1}Γ(a/d)^{χ_K(a)}`, that is, for `Λ_𝒞` homothetic to
`ℤτ_𝒞 + ℤ`, `∏_{𝒞} 4π·Im τ_𝒞·|Δ(τ_𝒞)|^{1/6} = d^{−h/2}·∏_{a=1}^{d−1}Γ(a/d)^{χ_K(a)}`.
(c) The right side of 5.5 is `π·exp(γ − (L′/L)(1, χ_K))·2π/√d = π·d^{−1/2}·∏_{a=1}^{d−1}Γ(a/d)^{χ_K(a)/h}`.

For `d = 7` (`h = 1`; `χ_K(a) = 1` for `a = 1, 2, 4` and `−1` for `a = 3, 5, 6`) and `τ = (1 + √−7)/2`, both sides of
(b) are `4.1641…`, and `(L′/L)(1, χ_K) = 0.0156…`.

*Needs:* 5.1, 5.4, 5.5; ImaginaryQuadraticClassNumber §2.2 (Analytic specialization and the exact constants); Tau Ceti
`UpperHalfPlane.weierstrassCurve_Δ_periodPair` (`Δ` through `Δ(τ)`); Mathlib
`DirichletCharacter.IsPrimitive.completedLFunction_one_sub` (the functional equation).

## What the library already provides

- The class number of `K = ℚ(√−d)`, `d` a prime `≡ 7 (mod 8)`, is odd (squaring is a bijection of `Cl(K)`): the 2-rank
  formula `TauCeti.Multiquadratic.twoRank_eq_ncard_ramifiedPrimes_sub_one` with
  `TauCeti.Multiquadratic.ramifiedPrimes_eq_singleton` (one ramified prime, so 2-rank `0`), and the statements for a
  commutative group `G`, applied to `G = Cl(K)`, `TauCeti.card_elementaryTwoQuotient_eq_two_pow_twoRank` (its form for
  class groups, with the 2-rank `TauCeti.ClassGroup.twoRank` of the formula, is
  `TauCeti.ClassGroup.card_elementaryTwoQuotient_eq_two_pow_twoRank`) and
  `TauCeti.card_elementaryTwoQuotient_eq_index_square`.
- `ζ_K(s) = ζ(s)·L(s, χ_K)` for a quadratic field and `Re s > 1`:
  `TauCeti.NumberField.dedekindZeta_eq_riemannZeta_mul_LFunction`; the Dirichlet series of the ideal classes sum to
  `ζ_K`: `TauCeti.LFunctions.sum_LSeries_rayClassCoeff_one`.
- Every point of the cubic of a lattice is the image of some `z`: `PeriodPair.weierstrassPoint_surjective` (with
  `PeriodPair.exists_weierstrassP_eq`); `Δ(Λ) ≠ 0`: `PeriodPair.weierstrassCurve_Δ_ne_zero`.
- Every lattice is `a(ℤτ + ℤ)` with `τ` in the upper half-plane: `PeriodPair.exists_lattice_eq_smul_periodPair`; `g₂`,
  `g₃`, `Δ` through `E₄(τ)`, `E₆(τ)`, `Δ(τ)`: `UpperHalfPlane.g₂_periodPair`, `UpperHalfPlane.g₃_periodPair`,
  `UpperHalfPlane.weierstrassCurve_Δ_periodPair`.
- The splitting of primes in a quadratic field: `NumberField.ncard_primesOver_quadratic_iff`,
  `NumberField.exists_isPrime_and_absNorm_eq_of_legendreSym_eq_one`.
- Over a field, the order of `f(g)` is the product of the orders: `PowerSeries.order_subst`.
- Over a `ℚ`-algebra, for series `f` with constant term `1` and `g` with constant term `0`, with `log f` Mathlib's
  `PowerSeries.logOf f` and `exp(g)` Mathlib's `PowerSeries.exp` substituted at `g`: `exp(log f) = f`, `log(exp g) = g`,
  `log(f₁f₂) = log f₁ + log f₂` and `(log f)′·f = f′`: `PowerSeries.subst_exp_logOf`, `PowerSeries.logOf_subst_exp`,
  `PowerSeries.logOf_mul`, `PowerSeries.logDeriv_mul`.
- The integral finite adeles `Ô` of a number field are compact:
  `IsDedekindDomain.FiniteAdeleRing.isCompact_integralAdeles`.

On Tau Ceti's main branch, later than the revision pinned here:

- `ζ_K(s) = ζ(s)·L(s, χ_K)` continued to `s ≠ 1`: `TauCeti.LFunctions.dedekindZetaC_eq_riemannZeta_mul_LFunction`.
- Uniformisation: every `(a, b)` with `a³ − 27b² ≠ 0` is `(g₂, g₃)` of a lattice: `PeriodPair.exists_g₂_g₃_eq`.
- `℘″ = 6℘² − g₂/2`: `PeriodPair.deriv_derivWeierstrassP`; `℘′(z) = 0` if and only if `2z ∈ Λ`:
  `PeriodPair.derivWeierstrassP_eq_zero_iff`.

## Results taken from other roadmaps

- Good reduction of the duplication map on the `x`-coordinate: for a Weierstrass curve with unit discriminant the
  homogenised `(Φ₂, ΨSq₂)` have unit resultant, and a lift with unit resultant multiplies the maximum norm by the power
  `4`. ArithmeticDynamics §6.3 (the resultant bullet) and ArithmeticDynamics §2.32; used in 3.1 for the forms `F_c` of
  1.6 and the curve `y² + a₁xy = x³ + x` over `ℂ_p`.
- Weierstrass's sigma function, its quasi-periods and the oriented Legendre relation; the normalised Weierstrass model
  of a lattice, its uniformisation, its endomorphisms and its homotheties; the periods of the invariant differential.
  ModularCurvesPartII §1.4a (Sigma, quasi-periods and the oriented Legendre relation), §1.1 (The normalized lattice
  Weierstrass model), §1.2 (Pointed elliptic uniformization) and §1.4 (Invariant differentials and periods); used in
  6.1–6.5 and in the comparison paragraph of 5.5.
- The formal group law of a Weierstrass curve over its coefficient ring, and its formal logarithm and exponential over
  a `ℚ`-algebra. EllipticCurves Layer 1 (isogenies, the dual, the invariant differential, and formal groups (AEC II.2,
  III.4–6, IV)); used in 6.4.
- Siegel functions, Weber's cubic and the algebraic integrality of the values of Siegel functions at CM points; the
  class number formula and the functional equation of `L(s, χ_K)`. ImaginaryQuadraticClassNumber §3.2 (Siegel
  functions with exact phases) and §2.2 (Analytic specialization and the exact constants); used in 6.3 and 6.6.
- The main theorem of complex multiplication, in its elliptic case with the arithmetic Artin map. ShimuraVarieties
  §5.10 (Main theorem of complex multiplication) and ComplexMultiplicationAndExplicitReciprocity §2.2 (Reflex ideals,
  torsion and polarization); used in 6.5.
- The notion of a supersingular elliptic curve, and Deuring's criterion for the reduction of an elliptic curve with
  complex multiplication (ordinary exactly at the primes that split). EllipticCurves Layer 3 (elliptic curves over
  finite fields — the Hasse bound (AEC V.1)) and ComplexMultiplicationAndExplicitReciprocity §5.1 (Deuring
  classification, specialization and lifting); used in 6.4.

## References

- `[ShortProof]`: the folder `grh` of <https://github.com/lsernau/grh-lean> at commit
  `72fead102f663d5c7a407964a13dc0cf9d977207`; this roadmap covers `src/Lib/CM`.
- Bannai, Kobayashi, *Algebraic theta functions and the p-adic interpolation of Eisenstein–Kronecker numbers*, Duke
  Math. J. 153 (2010), 229–295 (3.3).
- Birch, *Weber's class invariants* (1969) (2.2, 3.1).
- Blake, *A Deuring criterion for abelian varieties*, arXiv 1311.5454, Theorem 1.1 (4.2).
- Bluher, *Formal groups, elliptic curves, and some theorems of Couveignes*, ANTS-III, LNCS 1423 (1998), 3.2 and 6.1, in
  the numbering of arXiv math/9708215 (4.2).
- F. Chamizo, *A simple evaluation of a theta value, the Kronecker limit formula and a formula of Ramanujan*, Ramanujan
  J. (2022), Prop. 3.1 (5.1).
- Deuring, *Die Typen der Multiplikatorenringe elliptischer Funktionenkörper* (4.2).
- NIST DLMF, Chapters 20 and 23 (1.6).
- B. Gross, *On the periods of abelian varieties*, arXiv 2005.04194 (5.4).
- Kubert, Lang, *Modular Units* (2.2, 3.1, 6.3).
- Lubin, Tate, *Formal complex multiplication in local fields* (4.3).
- J. Milne, *Complex Multiplication* (2020), 9.17 (5.3, 6.5).
- J. Neukirch, *Algebraic Number Theory* (1999), VII.5 and VII.10 (5.4).
- A. Selberg, S. Chowla, *On Epstein's zeta-function*, J. reine angew. Math. 227 (1967), 86–110 (5.4, 6.6).
- G. Shimura, *Introduction to the Arithmetic Theory of Automorphic Functions* (1971), Thm 5.4 (5.3, 6.5).
- C. L. Siegel, *Lectures on Advanced Analytic Number Theory* (1961), Chapter I, Theorem 1 (5.1, 6.6).
- J. Silverman, *The Arithmetic of Elliptic Curves*: VI (1.2); IV.1 and IV.2 (3.6, 6.4); without a place (3.4).
- J. Silverman, *Advanced Topics in the Arithmetic of Elliptic Curves* (1994): I.5 (1.2); without a place (2.1).
- A. Weil, *Elliptic Functions according to Eisenstein and Kronecker* (1976) (1.2).
