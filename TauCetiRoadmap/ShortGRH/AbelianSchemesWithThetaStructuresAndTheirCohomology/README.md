# Abelian schemes with theta structures and their cohomology

**Summary.** The argument of the family runs as follows: a one-sided bound for a sum over primes gives a half-plane
free of zeros of Dirichlet L-functions, and the one-sided bound comes from comparing an upper and a lower bound for the
covolume of a lattice of theta lifts (OneSidedPrimeSumBoundsAndAdmissibleData). The lower bound controls congruences
between lifts by Galois representations attached to eigenforms on definite unitary groups
(GaloisRepresentationsOfUnitaryEigenforms). This roadmap supplies the geometry from which those representations are cut
out. It builds, for a CM field `E`, a tower of Kuga–Sato varieties over a smooth projective base over a localisation of
`𝓞_E`, whose complex points are tori of signature `(1, n − 1)` at one place and definite at the others, with Hecke
correspondences at split places and the congruence relation between them and Frobenius. It compares the count of fixed
points of these correspondences with a sum over the definite unitary group, and cuts out of the cohomology of the tower
a Galois representation for each Hecke eigensystem that occurs.

The construction avoids a moduli problem. The base is the reduced closure of the theta values of the level points of
complex tori in a product of projective spaces, in the manner of the theta-null embedding; the family on it is built from
dense complex points, its smoothness comes from an upper bound for first-order deformations, and its good reduction from
an analytic multiplicativity property of theta functions at torsion points. PELModuli builds the moduli problem of
unitary PEL data and its smooth models; this roadmap does not use it, and 3.2, 6.1, 7.4, 7.5, 8.1, 8.2 and Layer 10
say how their
objects relate to those of PELModuli; the base of the universal theta family is not compared with a PEL moduli space
(7.4). The cohomology is the theory of CohomologyOfFunctorsOnTestRings, which that roadmap compares with ℓ-adic étale
cohomology.

The standard theory is the reference for the objects of the route, and Layer 10 states the results on the standard
objects: PEL data give unitary PEL data, moduli points up to isomorphism correspond to open and closed parts of the
double coset spaces of unitary similitude groups that describe the complex points of PEL moduli problems, the theta
group with a level subgroup gives theta structures, full level structures over `ℂ` are Tate trivialisations, the Hecke
algebra maps onto the double-coset ring, definite forms are direct sums of spaces of functions on definite unitary
groups, which are algebraic modular forms when the coefficients are algebraic, types of supercuspidal representations
given by characters are cuspidal types, the pointwise congruence relation gives an identity of correspondences of the
form of the congruence relation, and the Galois representations of Layer 9 can be taken to be eigenquotients of ℓ-adic
étale cohomology, crystalline in Fontaine's sense at the safe places over `ℓ`, with the weights in which the
eigensystem occurs among their Hodge–Tate weights, the cyclotomic character having weight `−1`. The objects of the
route are one way to prove these results; the route's proofs are stated on them.

Along the way the roadmap states the
classical theory of theta functions on complex tori that the route uses elsewhere: Frobenius' dimension formula with the
irreducibility of the translations by the dual lattice, Schur orthogonality for theta translates, Riemann's theta
relation, and the existence half of the Appell–Humbert theorem.

The headline theorems are these.

(1) *Frobenius' dimension formula* (1.2). For Appell–Humbert data `(B, χ)` with positive Riemann form on a full lattice
`L ⊂ V`, the space `Θ(B, χ)` of theta functions has `(dim Θ(B, χ))² = [L^⊥ : L]`, and the twisted translations by the
dual lattice `L^⊥` span its endomorphisms.

(2) *The universal theta family* (7.4). For PEL data `D` over a CM field `E` and a localisation `R` of `𝓞_E` all of whose
maximal ideals lie over primes good for `D`, there is an abelian scheme with `𝓞_E`-action, theta coordinates and level
points over a smooth projective `R`-scheme of relative dimension `n − 1`, together with a dense family of complex
points of the base, one for each analytic family of theta tori (5.5) and each parameter, at which the fibre is modelled
on the theta torus of that family at that parameter. "Universal" refers to this dense family of modelled points: the
family represents no moduli problem, and no moduli property is claimed.

(3) *The model and its congruence relation* (8.4). From such a family, at a neat level, one obtains a tower of reduced
projective covers of the base with Hecke legs, finite deck groups, complex points described by linear algebra, the
tangent polynomials at fixed points, and the congruence relation `Σ_A (−1)^r q^{r(r−1)/2} [Frob^{(n−r)f} p_{g_A}] = 0` at
every safe split place.

**In standard terms.** The model is a structure given by a list of properties (8.2), not a model of a given variety.
Its congruence relation holds at each point of the special fibre, and it implies, at every safe split place that is
not inverted in the base ring, an identity of correspondences on the special fibre of the form of the congruence
relation, `Σ_j (−1)^j q^{j(j−1)/2}·(1 × F^{n−j})_*T_j = 0` for the correspondences `T_j` that the legs of the model
define and the `q`-power Frobenius `F` (10.7 (c)).

(4) *The Galois representation of an eigensystem* (9.8). For a Hecke eigensystem `θ` at the safe places that occurs in
a multiset of weights, there is a continuous ℓ-adic representation of `Gal(Ē/E)`, cut out of the total cohomology of
the base of the model by `θ`, unramified or crystalline at each safe place, with those weights among its Hodge–Tate
jumps, and with each geometric Frobenius killed by the Hecke polynomial of `θ`.

**In standard terms.** The representation can be taken to be the largest quotient of `ℚ̄_ℓ ⊗ ⊕_k H^k_ét(Z_Ω, ℚ_ℓ)`,
the ℓ-adic étale cohomology of the base `Z` of the model, on which the Hecke operators act by `θ` (10.10, 10.12): it
is unramified at the safe places prime to `ℓ`, with each geometric Frobenius killed by the Hecke polynomial,
crystalline in Fontaine's sense at the safe places over `ℓ`, with the Hecke polynomial at `w` killing the power
`φ^{f_w}` of the crystalline Frobenius on `D_cris`, where `q_w = ℓ^{f_w}`, and it has the given weights among its
Hodge–Tate weights, the cyclotomic character having weight `−1` (10.11). A representation attached to `θ` in the usual
sense, with the Hecke polynomials as characteristic polynomials and these weights, has these properties (10.12); the
theorem gives neither the dimension `n` nor the characteristic polynomials.

There are ten layers. Layer 1 is theta functions on complex tori; Layer 2 their sizes at torsion points and the analytic
form of good reduction; Layer 3 PEL data, theta tori and their theta coordinates. Layer 4 treats abelian schemes, line
bundle classes and theta structures over a base; Layer 5 complex uniformisation; Layer 6 theta families and objects
modelled on tori; Layer 7 the universal theta family and the bound for its tangent spaces. Layer 8 builds the Hecke
elements, the tower and its congruence relation; Layer 9 passes to cohomology, counts fixed points and cuts out the
Galois representations. Layer 10 compares the objects of the route with the standard ones and states the results on
the standard objects.

## Conventions and notation

- *Labels.* Under each section heading, `*Origin:*` says where its statement comes from and `*Method of the formal
  proof:*` how [ShortProof] proves it. [ShortProof] is the shorter formal proof of the family `ShortGRH`; the line
  "[ShortProof], `path` (`declarations`)" at the end of a section names the file (under `src/`) and the declarations
  where it proves the statement. Its names occur only on that line. Where a section states more than [ShortProof]
  proves, its last sentence says which case [ShortProof] proves. [ShortProof] proves none of the statements of Layer
  10; there `*Proof route:*` takes the place of the method of the formal proof, and no closing line names
  declarations.
- *Schemes and points.* Schemes are over a base `S`; a `T`-point of an `S`-scheme `X` is an `S`-morphism `T → X`. For a
  ring `C`, `X(C)` are the points with source `Spec C`. A *valuative arc* is a valuation ring `O ⊂ ℂ` with fraction field
  `ℂ` (of any rank, not necessarily Noetherian); `Spec ℂ → Spec O` is its generic point. The *complex points* of an
  `O`-scheme `X` are the `ℂ`-points of its generic fibre, with the classical topology when `X` is of finite type.
- *Line bundles.* A *linear system* on `X` is a line bundle `N` with global sections `s_i`, `i ∈ ι` finite, without
  common zero; the `s_i(x)` are the *homogeneous coordinates* of a point `x`. A linear system is a *projective embedding*
  of `X` over `S` when `X` is proper over `S` and the morphism `X → ℙ^ι_S` given by the coordinates is a monomorphism
  (so a closed immersion). `[N] ∈ Pic(X)` is the class of `N`; `Pic` is written additively. [ShortProof] encodes line
  bundles by trivialisations on a cover with transition functions on ring-valued points; this is an encoding of the
  standard object, and the statements are made on the standard one.
- *Complex tori.* `V` is a finite-dimensional complex vector space and `L ⊂ V` a full lattice (a discrete subgroup that
  spans `V` over `ℝ`). A *form* `B` on `V` is a map `V × V → ℂ` that is `ℝ`-linear in the first and `ℂ`-linear in the
  second variable; it need not be hermitian. `e(t) = exp(2πit)`. AbelianSchemesAndArithmeticModuli §§A5.2–A5.3 write
  the line bundle of a hermitian form `H` (linear in the first variable) and a semicharacter `α` through the factor of
  automorphy `α(λ)·exp(π H(z, λ) + π H(λ, λ)/2)`, with Riemann form `E = Im H`; the same bundle has here the type
  `(B, χ)` with `B(u, v) = π H(v, u)` and `χ = α`, so that `E_B = −E`. Thus `E_B` (1.1) is the first Chern class, which
  §A5.3 identifies with `−E`, and positivity of `E_B` (1.1) is positivity of `H`.
- *The CM field.* `E` is a CM field with complex conjugation `a ↦ ā`, together with a CM type `Φ` (an embedding
  `Φ_v : E → ℂ` for each infinite place `v`) and a base infinite place `v₀`; `E` has at least two infinite places, and
  `f` is their number. Where a section says so, `E` contains an imaginary quadratic field `K₀ = ℚ(√−d₀)` with
  `d₀ ≡ 3 (mod 4)`, and `β₀ = (1 + √−d₀)/2`. A *split place* of `E` is a finite place lying over a prime of `E⁺` that
  splits in `E`; `k_w` is the residue field of `w` and `q_w = #k_w`.
- *Adeles.* The finite adeles `𝔸_f` of `E`, their integral elements `Ô` and the character `ψ_f` of `𝔸_f` (trivial on
  `Ô`, `ψ_f(a) = e(Tr_{E/ℚ}(a))` for `a ∈ E`) are as in AdelicUnitaryGroupsAndAlgebraicModularForms §2.1; `Ẑ` is the
  ring of integral finite adeles of `ℚ`. [ShortProof] uses its own model of the adeles; this is an encoding, and the
  statements are made on the standard object.
- *Cohomology.* For a prime `ℓ`, an algebraic closure `Ω` of `ℚ` and a scheme `Y` of finite type over a subring of `Ω`,
  `Vⁿ(Y) = ℚ_ℓ ⊗ Hⁿ(Y_Ω, ℤ_ℓ)` is the `ℓ`-adic cohomology of CohomologyOfFunctorsOnTestRings §§1.3, 3.4 (for
  `Ω′ = Ω`), with its action of the automorphisms of `Ω` over the base and its pull-backs. "ℓ-adic cohomology" names
  this theory here; in the literature the name means ℓ-adic étale cohomology `Hⁿ_ét(Y_Ω, ℚ_ℓ)`. The route uses no
  comparison between the two; for proper `Y` they agree through CohomologyOfFunctorsOnTestRings Layer 8 (Comparison
  with the standard theory), and 10.10–10.12 state the results of Layer 9 on étale cohomology. "Crystalline" is in the
  sense of
  CrystallineRepresentationsAndKisinModules §3.1 (defined through `B_max`), which
  CrystallineRepresentationsAndKisinModules Layer 7 (Comparison with the standard theory) compares with Fontaine's
  notion; 10.11 states 9.8 in Fontaine's terms.

### Table of symbols

| Symbol | Meaning | Defined |
|---|---|---|
| `E_B, U_a, L^⊥` | the Riemann form `Im(B(u, v) − B(v, u))/2π`, the twisted translation, the dual lattice | 1.1 |
| `Θ(B, χ)` | the theta functions of type `(B, χ)` | 1.1 |
| `χ_b, N_x` | the canonical multiplier of a map `b`, the normalised translation | 1.3 |
| `(R, F, β)` | a hermitian action of a ring with involution on a torus | 1.5 |
| `s_f, ‖f‖_v, Ball(f)` | the size of `f` at torsion points, its theta norm at a valuation `v`, the ball of radius `‖f‖_v` | 2.1, 2.3 |
| `T_n, [y]_g` | the module `(𝔸_f/Ô)ⁿ`, the class of `g⁻¹y` | 3.1 |
| `GU, GU⁺, K(𝔑)` | unitary similitudes of the standard form, those with integral inverse, the principal level | 3.1 |
| `a = (x, J, P), a·(g, α), ≅_K` | moduli points, their translates, isomorphisms at a level `K` | 3.1 |
| `D = (β, 𝔑, ξ, n, r, i, T, Λ)` | PEL data | 3.2 |
| `Λ_S, β₁, χ_D, ϑ, θ_t, c_u` | lattices over groups of classes, `|T|β − ⌊|T|/2⌋`, the multiplier, the Lagrangian theta function, theta coordinates, the theta characters | 3.3 |
| `σ_j` | `⌊√#{y : r^j y ∈ T}⌋`, the expected ranks | 3.2 |
| `⟨x, y⟩_c` | the pairing `(x + y)^*c − x^*c − y^*c + 0^*c` | 4.1 |
| `K([N])` | the sections `z` with `⟨z, id⟩_{[N]} = 0` | 4.5 |
| `𝒳 = (A, N, λ)` | a theta family: abelian scheme, linear system, level points | 6.1 |
| `𝒰` | a universal family | 7.4 |
| `τ_{w,j}, 𝓗(𝔑)` | the Hecke elements at a safe place, the Hecke algebra of `K(𝔑)` | 8.1 |
| `𝓜 = (Z, W_i, p_g, Δ_i, m_α)` | a Kuga–Sato model | 8.2 |
| `Vⁿ(Y)` | the `ℓ`-adic cohomology of CohomologyOfFunctorsOnTestRings §3.4 | Conventions |
| `H_β, ψ_β, L_x, G_β, h_J` | the hermitian and the alternating form of a matrix with a frame `x`, its lattice, its similitude group, the `h` of a reflection | 10.1 |
| `GU¹, U_β, X_β` | the similitudes with multiplier in `Ẑ^×`, the unitary group of `β`, the reflections positive for `β` | 10.2 |

## Layer 1: Theta functions on complex tori

This layer is the analytic theory of theta functions on a complex torus `V/L` for a form that need not be hermitian:
the definitions (1.1), Frobenius' dimension formula with the irreducibility of the twisted translations by the dual
lattice (1.2), the absence of base points for multiples and the canonical multiplier (1.3), Schur orthogonality for
theta translates (1.4), and tori with an action of a ring with involution, for which an averaged pull-back is a scalar
of known modulus (1.5).

### 1.1 Theta functions, Appell–Humbert data and twisted translations

*Origin:* definitions and conventions.

*Method of the formal proof:* the facts below are direct computations with the factor of automorphy; (f) solves a
first-order linear differential equation along lines.

Let `L ⊂ V` be a full lattice and `B` a form on `V`, with Riemann form `E_B(u, v) = Im(B(u, v) − B(v, u))/2π`, a real
alternating form. For `χ : V → ℂ` the *theta functions of type `(B, χ)`* are the entire functions `f` on `V` with
`f(z + l) = χ(l)·exp(B(l, z) + B(l, l)/2)·f(z)` for all `l ∈ L`, `z ∈ V`; they form a complex vector space `Θ(B, χ)`.
`(B, χ)` are *Appell–Humbert data* for `L` if `Re B` is symmetric, `|χ(l)| = 1` for `l ∈ L`, and
`χ(l + m) = χ(l)χ(m)·exp(πi E_B(m, l))` for `l, m ∈ L`. The Riemann form is *positive* if `E_B(u, iu) > 0` for `u ≠ 0`.
The *twisted translation* by `a ∈ V` is `(U_a f)(z) = exp(−B(a, z) − B(a, a)/2)·f(z + a)`, on all functions `V → ℂ`, and
the *dual lattice* is `L^⊥ = {v ∈ V : E_B(v, l) ∈ ℤ for all l ∈ L}`.

Let `(B, χ)` be Appell–Humbert data for `L`.
(a) `E_B` is integral on `L × L`, so `L ⊂ L^⊥`, and `χ(l) ≠ 0` for `l ∈ L`.
(b) `U_u U_v = exp(πi E_B(u, v))·U_{u+v}`, hence `U_u U_v = e(E_B(u, v))·U_v U_u`, for all `u, v ∈ V`.
(c) `U_l f = χ(l)·f` for `f ∈ Θ(B, χ)` and `l ∈ L`, and `U_a` maps `Θ(B, χ)` into itself for every `a ∈ L^⊥`.
(d) If `(B′, χ′)` are Appell–Humbert data for `L`, so are `(B + B′, χχ′)` and `(mB, χ^m)` for `m ∈ ℕ`, and
`fg ∈ Θ(B + B′, χχ′)`, `f^m ∈ Θ(mB, χ^m)` for `f ∈ Θ(B, χ)`, `g ∈ Θ(B′, χ′)`.
(e) If some `f ∈ Θ(B, χ)` has no zero, then `E_B = 0`, `χ = 1` on `L`, and `f(z) = f(0)·exp(B(z, z)/2)`.
(f) Let `f` be a holomorphic function on `V` without zeros such that, for each `l ∈ L`, the logarithmic derivative of
`z ↦ f(z + l)/f(z)` is a constant `ℂ`-linear form. Then there is a form `B` with `Re B` symmetric and
`f(z + l) = f(z)·exp(B(l, z))·f(l)/f(0)` for all `l ∈ L`, `z ∈ V`.

*Needs:* Mathlib (`IsZLattice`, `Differentiable`).

[ShortProof], `Lib/Shimura/ComplexTheta/AppellHumbertData` (`New.RealComplexForm.thetaSpace`, `New.IsAppellHumbert`,
`New.IsPosRiemann`, `New.RealComplexForm.thetaShift`, `New.RealComplexForm.dualLattice`,
`New.IsAppellHumbert.le_dualLattice`, `New.IsAppellHumbert.thetaShift_thetaShift`, `New.IsAppellHumbert.thetaShift_comm`,
`New.IsAppellHumbert.thetaShift_mem_of_mem_dualLattice`, `New.thetaSpace.mul`, `New.thetaSpace.pow`,
`New.IsAppellHumbert.eq_exp_of_ne_zero`, `New.exists_factor_of_automorphy`)

### 1.2 Frobenius' dimension formula and irreducibility

*Origin:* adapted from Frobenius' dimension formula and the irreducibility of the theta group (G. Frobenius, *Über die
Grundlagen der Theorie der Jacobischen Functionen*, Crelle 97 (1884); Birkenhake–Lange, *Complex Abelian Varieties*,
3.2.7, 4.1.5, 6.4; a survey of proofs in D. Bump, A. Pekker, Proc. Amer. Math. Soc. 130 (2002), 3473–3481): no
symplectic basis enters the statement, which reads `(dim Θ)² = [L^⊥ : L]`; the form `B` is not assumed hermitian; and
the spanning of `End_ℂ(Θ)` by the twisted translations by `L^⊥` is stated with it.

*Method of the formal proof:* subtracting from `B` its part that is complex-linear in the first variable gives a form
`B + T` with the same Riemann form and `Re (B + T)(x, x) = π E_B(x, ix) > 0`; a Poincaré series for `B + T`, which
converges normally, gives a nonzero theta function, and multiplication by `exp((B − B − T)(z, z)/2)` carries it to type
`(B, χ)`. A pairing integral over the torus embeds `Θ(B, χ)` into the functions on `L^⊥/L`, so it is
finite-dimensional; the translations by representatives of `L^⊥/L` are linearly independent endomorphisms, and comparing
`#(L^⊥/L)` with `dim End(Θ)` gives the formula and the spanning. No symplectic basis is chosen.

Let `(B, χ)` be Appell–Humbert data for the full lattice `L` with positive Riemann form, and `Θ = Θ(B, χ)`.
(a) `Θ` is finite-dimensional and not zero, and `L` has finite index in `L^⊥`.
(b) The restrictions to `Θ` of the twisted translations `U_a`, `a ∈ L^⊥`, span `End_ℂ(Θ)`; those attached to a set of
representatives of `L^⊥/L` are linearly independent.
(c) `(dim Θ)² = [L^⊥ : L]`.
(d) (*irreducibility*) A complex vector space of functions `V → ℂ` that contains `U_a f` for all `a ∈ L^⊥` and one
nonzero `f ∈ Θ` contains `Θ`; an endomorphism of `Θ` that commutes with all `U_a`, `a ∈ L^⊥`, is a scalar.
(e) Some integer `N ≥ 1` (for example `[L^⊥ : L]`) has `N·L^⊥ ⊂ L`.

*Needs:* 1.1.

Among the roadmaps, SpecialFunctionsTheta §7.4 has the dimension `N^g` of the theta functions of order `N` for a period
matrix `Ω ∈ 𝔥_g` (the principal type), and AbelianSchemesAndArithmeticModuli §A5.4 (2) has `h⁰(L) = d` and
`deg λ = d²` for a polarised complex abelian variety, from Riemann–Roch; the statement here is on the space of theta
functions itself, for every type and for a form `B` that need not be hermitian, and includes (b) and (d).
On Tau Ceti's main branch, later than the revision pinned here: the case of dimension one for the classical factor of
automorphy, `TauCeti.finrank_thetaSections` (dimension `k` of the level-`k` theta functions on `ℂ/(ℤ + τℤ)`), which
does not give the statement. `Suggested.lean` states (a) and (c) on Mathlib's carriers.

[ShortProof], `Lib/Shimura/ComplexTheta/DimensionFormula` (`New.IsAppellHumbert.summable_and_analyticAt_tsum`,
`New.IsAppellHumbert.exists_mem_thetaSpace_ne_zero`, `New.IsAppellHumbert.finite_thetaSpace`,
`New.IsAppellHumbert.finrank_sq_eq_relIndex`, `New.IsAppellHumbert.thetaSpace_le_of_thetaShift_mem`,
`New.IsAppellHumbert.schur_lemma`, `New.IsAppellHumbert.exists_nsmul_mem_of_mem_dualLattice`)

### 1.3 Multiples without base points, and the canonical multiplier

*Origin:* adapted from the published theory of theta functions on complex tori: here the base-point freeness of the
multiples `n ≥ 2` of a positive type, and the multiplier `exp(πi E_B(bx, x))` attached to an "adjoint half" `b`.

*Method of the formal proof:* (a): if all theta functions of type `(nB, χ^n)` vanished at `z`, the products of the
translates of `f^{n−1}` by `a` and of `f` by `−(n − 1)a`, which have that type, would vanish at `z` for every `a`, so the
product of two nonzero entire functions of `a` would be zero. (b), (c): computation of the phases.

(a) Let `(B, χ)` be Appell–Humbert data for the full lattice `L` with positive Riemann form. For every `n ≥ 2` and
`z ∈ V` there is `f ∈ Θ(nB, χ^n)` with `f(z) ≠ 0`.
(b) Let `B` be a form with `Re B` symmetric and `b` a complex-linear endomorphism of `V` with
`E_B(bu, w) + E_B(u, bw) = E_B(u, w)` for all `u, w`, and `E_B(bl, m) ∈ ℤ` for `l, m ∈ L`. The *canonical multiplier*
is `χ_b(x) = exp(πi E_B(bx, x))`, `x ∈ V`. Then `(B, χ_b)` are Appell–Humbert data for `L`.
(c) In the situation of (b), the *normalised translation* `N_x = χ_b(x)^{−1}·U_x` satisfies
`N_x N_y = e(E_B(bx, y))·N_{x+y}`, and `Θ(B, χ_b)` consists of the entire functions `f` with `N_l f = f` for all `l ∈ L`.

*Needs:* 1.1, 1.2.

[ShortProof], `Lib/Shimura/ComplexTheta/DimensionFormula` (`New.IsAppellHumbert.exists_mem_thetaSpace_nsmul_apply_ne_zero`,
`New.ThetaTori.canonicalMultiplier`, `New.ThetaTori.normalizedShift`, `New.ThetaTori.isAppellHumbert_canonicalMultiplier`,
`New.ThetaTori.mem_thetaSpace_iff_normalizedShift`, `New.IsAppellHumbert.normalizedShift_normalizedShift`)

### 1.4 Schur orthogonality for theta translates

*Origin:* adapted from Schur orthogonality for the irreducible representation of the theta group: here it is an identity
for the twisted translates of theta functions by an orbit of the dual lattice, proved without building the theta group,
with an integral consequence over a valuation ring of `ℂ`.

*Method of the formal proof:* for fixed `w` the left side of (a), as a function of `g`, defines an endomorphism of `Θ`
that commutes with the translations by `L^⊥`, hence a scalar by 1.2 (d); its trace is computed with 1.2 (c). (b) follows
from (a) by choosing `f`, `g` and scalars. The library has Schur orthogonality for unitary irreducible representations
of finite groups (`ContRepresentation.schur_orthogonality_self_sum`); using it would require building the theta group as
a finite group acting unitarily on `Θ`, which the formal proof does not do.

Let `(B, χ)` be Appell–Humbert data for the full lattice `L` with positive Riemann form, and `Θ = Θ(B, χ)`.
(a) Let `T` be a finite set and `a : T → L^⊥` such that for every `t ∈ L^⊥` some permutation `e` of `T` has
`t + a_s − a_{e(s)} ∈ L` for all `s`. Then for all `f, g ∈ Θ` and `z, w ∈ V`:
`√[L^⊥ : L] · Σ_{s ∈ T} (U_{−a_s} g)(z)·(U_{a_s} f)(w) = |T|·f(z)·g(w)`.
(b) Let `O ⊂ ℂ` be a valuative arc, `N ∈ ℕ` a unit of `O` with `N·L^⊥ ⊂ L`, `(f_i)_{i ∈ I}` and `(g_k)_{k ∈ K}` finite
families in `Θ` with some `f_i ≠ 0` and some `g_k ≠ 0`, and `c : V → ℂ` with `c(a)c(−a) ∈ O^×` for `a ∈ L^⊥`. Then there
is `γ ≠ 0` such that for every `O`-module `M` of functions `V → ℂ` stable under all `c(a)·U_a`, `a ∈ L^⊥`: all `g_k`
lie in `M` if and only if all `γ f_i` lie in `M`.

*Needs:* 1.1, 1.2.

[ShortProof], `Lib/Shimura/ThetaNormality/NormalGeneration` (`New.IsAppellHumbert.sum_shift_mul_shift`,
`New.IsAppellHumbert.exists_proportional_orbit_lattice`)

### 1.5 Tori with a hermitian action and the theta identity

*Origin:* particular to this proof: for a torus with multiplications by a ring with involution, the averaged pull-back
of theta functions along an element `c` with `c̄ = d` is a scalar `μ` with `μ⁸ = det(d)⁸`; the inputs are the order of
kernels of multiplications and the reality of the fourth power of a quadratic Gauss sum, obtained by unfolding a
Poincaré kernel.

*Method of the formal proof:* the averaged pull-back commutes with the normalised translations by the dual lattice, so
it is a scalar by 1.2 (d); evaluating the scalar on the Poincaré kernel writes it as `#(d⁻¹L/L)` times the mean over the
torus of `x ↦ K(dx, cx)`; unfolding the kernel writes that mean as a Gauss sum over `κ⁻¹L/L`, `κ = c − c̄`, times a
Gaussian integral, and the fourth power of the Gauss sum is real; comparing with the complex conjugate gives `μ⁸`.

A *hermitian action* on `V/L` is a commutative domain `R` with an involution `a ↦ ā`, finite over `ℤ`, a ring
homomorphism `F : R → End_ℂ(V)` with `F(a)L ⊂ L`, a positive definite hermitian form `B` on `V` with `E_B` integral on
`L`, such that `F(ā)` is the adjoint of `F(a)` for `B`, and an element `β ∈ R` with `β̄ = 1 − β`. Its multiplier is
`χ = χ_{F(β)}` and `N_x` its normalised translations (1.3). For `a ≠ 0`, `a⁻¹L = {y : F(a)y ∈ L}`.

Let `(R, F, B, β)` be a hermitian action on `V/L`, `L` full.
(a) `(B, χ)` are Appell–Humbert data for `L` with positive Riemann form and `χ(l)² = 1` for `l ∈ L`.
(b) For `a ≠ 0` in `R`, `#(a⁻¹L/L) = det F(a)·conj(det F(a))`.
(c) For `a ≠ 0`, `f` with `N_{F(a)l} f = f` for `l ∈ L`, and a character `ξ` of `a⁻¹L/L`, the sum
`s = Σ_{k ∈ a⁻¹L/L} ξ(−k)·N_{F(a)k} f` (independent of representatives) satisfies `N_{F(a)y} s = ξ(y)·s` for `y ∈ a⁻¹L`.
(d) For `κ ≠ 0`, `r ∈ R` and a function `q` on `κ⁻¹L/L` with `q(x) = exp(B(x, F(r)x))` for every representative `x`,
`(Σ_z q(z))⁴ = (Σ_z conj q(z))⁴`.
(e) (*the theta identity*) Let `c ∈ R`, `d = c̄`, with `c ≠ d`, `c` and `d` coprime, and `F(c)a − a ∈ L`,
`F(d)a − a ∈ L` for all `a ∈ L^⊥`. Then there is `μ ∈ ℂ` with `μ⁸ = (det F(d))⁸` such that for every `t ∈ Θ(B, χ)`:
`Σ_{z ∈ d⁻¹L/L} N_{F(d)z}(t ∘ F(c) ∘ F(d)^{−1}) = μ·t`.

*Needs:* 1.1, 1.2, 1.3.

[ShortProof], `Lib/Shimura/GoodReduction/GaussSums` (`New.ThetaTori.IsHermitianAction`,
`New.ThetaTori.IsHermitianAction.isAppellHumbert`, `New.ThetaTori.IsHermitianAction.card_mulKernel`,
`New.ThetaTori.IsHermitianAction.normShift_sum_eq_char_smul`,
`New.ThetaTori.IsHermitianAction.sum_conj_pow_four_eq_sum_pow_four`,
`New.ThetaTori.IsHermitianAction.isSelfAdjoint_quotMean_pow`); `Lib/Shimura/GoodReduction/MultiplicativeNorm`
(`New.ThetaTori.IsHermitianAction.isAmpleType`, `New.ThetaTori.IsHermitianAction.exists_sum_normShift_eq_smul`,
`New.ThetaTori.IsHermitianAction.exists_theta_identity`)

## Layer 2: Sizes at torsion points and good reduction

A valuation `v` of `ℂ` measures theta functions at the torsion points of `V/L`. Good reduction of a torus at `v`, in the
analytic form used here, is the multiplicativity of the supremum of these sizes (2.1); it follows from shift bounds on
kernels of multiplications that expand (2.2), and it gives normal generation over the valuation ring with the expected
ranks after reduction (2.3).

### 2.1 Sizes, the theta norm and good reduction

*Origin:* particular to this proof: an analytic form of good reduction of a complex torus at a valuation of `ℂ`, the
multiplicativity of the supremum of the sizes of theta functions at torsion points, with the elementary properties of
sizes; the nearest published notion is good reduction of a polarised abelian variety.

*Method of the formal proof:* sizes are periodic because the factors of automorphy at torsion points are roots of unity,
of valuation 1; boundedness follows from periodicity and finiteness of the torsion of bounded order; (c) is the identity
theorem along lattices of small mesh; (e) compares sizes in degree `B` and `B′` through a theta function of type
`B − B′`.

Let `v : ℂ → ℝ_{≥0}` be a (multiplicative, non-archimedean) valuation of `ℂ`, possibly trivial. The *torsion points* of
`V/L` are the `a ∈ V` with `ma ∈ L` for some `m ≠ 0`. `(B, χ)` are *of ample type* for `L` if they are Appell–Humbert
data with positive Riemann form and `χ^m = 1` on `L` for some `m ≠ 0`. The *size* of `f : V → ℂ` in degree `B` at a
torsion point `x` is `s_f(x) = v(exp(−B(x, x)/2)·f(x)) = v((U_x f)(0))`, and its *theta norm* is
`‖f‖_v = sup_x s_f(x)`. A *size of degree `B`* is `s_f` for some `f ∈ Θ(B, χ)` with `(B, χ)` of ample type. `L` has a
*multiplicative norm* at `v` if `sup(φψ) = sup φ · sup ψ` for all forms `B, C` and all sizes `φ` of degree `B` and `ψ` of
degree `C`. `(B, χ)` have *good reduction at `v` with level `r`* if they are of ample type, some `N ∈ ℕ` with `v(N) = 1`
has `N·L^⊥ ⊂ L`, `r ≥ 2` with `v(r) = 1`, and `L` has a multiplicative norm at `v`. A torsion point `w` has the
*constant `C` in degree `B`* if `φ(y)² ≤ C·sup_x φ(x)φ(x + w)` for every size `φ` of degree `B` and every torsion `y`.
"Good reduction" names here this analytic condition on the data and the valuation; in the literature good reduction of
a polarised abelian variety at a valuation is the existence of an abelian scheme over the valuation ring extending it,
and no statement of this roadmap relates the two.

Let `L` be full.
(a) Sizes take the same value at torsion points congruent modulo `L`, are bounded, and `‖f‖_v > 0` for `0 ≠ f ∈ Θ(B, χ)`
of ample type.
(b) If `φ`, `ψ` are sizes of degrees `B`, `B′` and `w` is a torsion point, `x ↦ φ(x)ψ(x + w)` is a size of degree
`B + B′`.
(c) A holomorphic function on `V` that vanishes at all torsion points is zero.
(d) If `(B, χ)` has good reduction at `v` with level `r`, so has `(r^j B, χ^{r^j})` for every `j`.
(e) If `(B, χ)` is of ample type, `E_{B−B′}` is positive, and `s_f(y)² ≤ C·sup_x s_f(x)s_f(x + w)` for all
`f ∈ Θ(B, χ)` and all `y`, then `w` has the constant `C` in degree `B′`. If `B + B′` has the constant `1` at `y − x − w`,
then `φ(x)ψ(y) ≤ sup_z φ(z)ψ(z + w)` for sizes `φ`, `ψ` of degrees `B`, `B′`.
(f) If `(B, χ)` is of ample type, then for every form `A` and all large `m`, `E_{mB − A}` is positive.

*Needs:* 1.1, 1.2.

[ShortProof], `Lib/Shimura/GoodReduction/TorsionSizes` (`New.ThetaTori.IsAmpleType`, `New.ThetaTori.LatticeForm.sizeAt`,
`New.ThetaTori.LatticeForm.thetaNorm`, `New.ThetaTori.LatticeForm.sizes`, `New.ThetaTori.HasMultiplicativeNorm`,
`New.ThetaTori.HasGoodReduction`, `New.ThetaTori.LatticeForm.HasShiftBound`, `New.ThetaTori.bddAbove_of_mem_sizes`,
`New.ThetaTori.IsAmpleType.thetaNorm_pos`, `New.ThetaTori.mul_shift_mem_sizes`, `New.ThetaTori.eq_zero_of_torsionPoints`,
`New.ThetaTori.LatticeForm.HasShiftBound.of_isPosRiemann_sub`, `New.ThetaTori.mul_le_iSup_of_hasShiftBound`,
`New.ThetaTori.IsAmpleType.eventually_isPosRiemann_smul_sub`); `Lib/Shimura/ThetaNormality/NormalGeneration`
(`New.ThetaTori.HasGoodReduction.pow`)

### 2.2 The multiplicative norm from expanding multiplications

*Origin:* particular to this proof: a criterion for the analytic form of good reduction (2.1) of a torus with a
hermitian action at a valuation over a prime `p`, by multiplications that divide a power of `p`, are prime to their
conjugates and expand arbitrarily; the nearest published results are criteria for good reduction of abelian varieties
with many endomorphisms.

*Method of the formal proof:* (a): the theta identity 1.5 (e) for `c` writes a size at `dq` as a sum over the kernel of
`d` of differences weighted by `e(E_B(cg, cz)) − 1`, whose valuation is `< 1` because these are `p`-power roots of
unity; this gives the constant `1` on the kernel of `c`. (b): pulling back along `c` multiplies the constant by
`v(#(c⁻¹L/L))^{−2}`. (c): a fixed-point argument on the constants of the degrees `2^k B` (2.1 (e)) and the contraction
along right inverses of `F(c)` close to `0` give the equality of suprema.

Let `(R, F, B, β)` be a hermitian action on `V/L` (1.5), `L` full, and `v` a valuation of `ℂ`.
(a) Let `c ≠ 0`, `d = c̄`, with `c ≠ d`, `c` and `d` coprime, `F(c)`, `F(d)` the identity on `L^⊥/L`, `p` a prime with
`v(p) < 1`, `v(det F(d)) = 1`, and `A` a form with `E_{B−A}` positive. Then every torsion point `w` with `F(c)w ∈ L` and
`p^m w ∈ L` for some `m` has the constant `1` in degree `A`.
(b) Let `c ≠ 0` be such that every torsion `y` with `F(c)y ∈ L` has the constant `1` in every degree, and let `A` be a
form with `E_{c^*B − A}` positive, `c^*B(u, w) = B(F(c)u, F(c)w)`. If `F(c)w` has the constant `C` in degree `B`, then
`w` has the constant `C·v(#(c⁻¹L/L))^{−2}` in degree `A`.
(c) If arbitrarily close to `0` in `End_ℂ(V)` there are `e` with `F(c)e = id` for some `c ≠ 0` in `R` such that every
torsion `y` with `F(c)y ∈ L` has the constant `1` in every degree, then `L` has a multiplicative norm at `v`.
(d) Let `R` have characteristic zero, `p` be a prime with `v(p) < 1`, and `m` an integer prime to `p` with `m·L^⊥ ⊂ L`.
Suppose that arbitrarily close to `0` in `End_ℂ(V)` there are right inverses of `F(c)` for elements `c ∈ R` that are not
units, are coprime to `c̄`, divide a power of `p`, and have `v(det F(c̄)) = 1`. Then `L` has a multiplicative norm at
`v`.

*Needs:* 1.5, 2.1.

[ShortProof], `Lib/Shimura/GoodReduction/MultiplicativeNorm`
(`New.ThetaTori.IsHermitianAction.mul_normShift_eq_mul_normShift_sub_sum`,
`New.ThetaTori.IsHermitianAction.hasShiftBound_one_of_ker`, `New.ThetaTori.IsHermitianAction.hasShiftBound_of_torsionAction`,
`New.ThetaTori.IsHermitianAction.eventually_hasShiftBound`,
`New.ThetaTori.IsHermitianAction.hasMultiplicativeNorm_of_frequently_hasShiftBound`,
`New.ThetaTori.hasMultiplicativeNorm_of_expanding`)

### 2.3 Integral normal generation under good reduction

*Origin:* adapted from the theorems on projective normality of abelian varieties and on its persistence under good
reduction (S. Koizumi, *Theta relations and projective normality of abelian varieties*, Amer. J. Math. 98 (1976);
T. Sekiguchi, J. Math. Soc. Japan 29 (1977), in characteristic `p`; G. Kempf, *Multiplication over abelian varieties*,
Amer. J. Math. 110 (1988)). The version here is analytic: theta functions on a complex torus, the valuation ring of a
valuation of `ℂ` at which the torus has good reduction in the sense of 2.1 in place of a base, balls of the theta norm in
place of integral sections, and only the degrees `r^j`; the proof rests on 1.4 (b) and the multiplicative norm, not on
cohomology.

*Method of the formal proof:* the multiplicative norm gives `Ball(f)^r ⊂ Ball(f^r)`; for the converse, 1.4 (b) and the
translations by the dual lattice of `L₀ ⊃ r⁻¹L` show that `Ball(f^r)` is generated by products, and induction on `j`
gives (a). (c) counts dimensions with 1.2 (c) after the scaling of (b).

Let `(B, χ)` have good reduction at `v` with level `r` (2.1), `O` the valuation ring of `v`, and for a theta function
`f ≠ 0` let `Ball(f)` be the `O`-module of `g ∈ Θ(B, χ)` with `‖g‖_v ≤ ‖f‖_v`.
(a) Let `f ∈ Θ(B, χ)` also be a theta function of type `(B, ζ)` for Appell–Humbert data `(B, ζ)` on a full lattice
`L₀ ⊃ r⁻¹L`. Then for every `j`, the `O`-module spanned by the products of `r^j` elements of `Ball(f)` is
`Ball(f^{r^j})`, taken in degree `r^j B` (for the good reduction of 2.1 (d)).
(b) Every `g ∈ Θ(B, χ)` is `c·y` with `c ∈ ℂ`, `y ∈ Ball(f)` and `‖g‖_v = v(c)·‖f‖_v`.
(c) Let `W` be a finite `O`-module with an `O`-linear map onto `Ball(f)`, `φ : O → k` onto a field, and `W → Q` a
`φ`-semilinear map to a `k`-vector space vanishing exactly at the `w` whose image has theta norm `< ‖f‖_v`. Then the
`k`-span of its image has dimension `dim_ℂ Θ(B, χ)`.
(d) If points `p_b` meet every class of `L^⊥` modulo `L`, then an element of `Ball(f)` has theta norm `< ‖f‖_v` if and
only if, for each `b`, its value at `p_b` lies in the maximal ideal after the common scaling that makes the values at
`p_b` of all elements of `Ball(f)` integral with one of them a unit.

*Needs:* 1.2, 1.4, 2.1.

[ShortProof], `Lib/Shimura/ThetaNormality/NormalGeneration` (`New.ThetaTori.HasGoodReduction.normBall`,
`New.ThetaTori.HasGoodReduction.exists_smul_thetaNorm_eq`, `New.ThetaTori.HasGoodReduction.normBall_pow`,
`New.ThetaTori.HasGoodReduction.normBall_pow_pow`, `New.ThetaTori.HasGoodReduction.exists_eq_smul_normBall`,
`New.ThetaTori.HasGoodReduction.finrank_reduction_eq`, `New.ThetaTori.HasGoodReduction.thetaNorm_lt_iff_coords`)

## Layer 3: PEL data and theta tori

The data of the route are frames and moduli points over a CM field (3.1), PEL data with a Lagrangian subgroup of a
finite group `T` of torsion classes (3.2), and the theta tori they define, with canonical theta coordinates `θ_t`,
`t ∈ T` (3.3). Theta tori have good reduction at the primes good for the data (3.4), satisfy Riemann's theta relation
(3.5), and their theta vectors reduce, at a good prime, to a set whose ideals are cut out by the level points (3.6). PEL
data exist at every level divisible by a suitable integer (3.7).

### 3.1 Frames, similitudes and moduli points

*Origin:* definitions and conventions.

*Method of the formal proof:* (a) by the compactness of `Ô`; (b) from the discreteness of `𝓞_E` in `E ⊗ ℝ`.

Let `n` be a finite index set and `|n|` its size. `T_n = (𝔸_f/Ô)ⁿ`, an `𝓞_E`-module isomorphic to `(E/𝓞_E)ⁿ`; for
`g ∈ GL_n(𝔸_f)` and `y ∈ Eⁿ`, `[y]_g ∈ T_n` is the class of `g⁻¹y`. `x ∈ GL_n(𝔸_f)` is a *frame* for `β ∈ M_n(E)` if
`xᴴβx = ε·1` with `ε ∈ Ẑ^×`. The *unitary similitudes* `GU ⊂ GL_n(𝔸_f)` are the `g` with `c·gᴴg = ε·1` for some
rational `c > 0` and `ε ∈ Ẑ^×`; `GU⁺ ⊂ GU` is the monoid of those with `g^{−1} ∈ M_n(Ô)`. For `𝔑 ≠ 0` in `𝓞_E` the
*principal level* is `K(𝔑) = GU ∩ {g ∈ GL_n(Ô) : g ≡ 1 mod 𝔑}`. A *reflection* is a matrix `J = uwᵀ − 1 ∈ M_n(ℂ)` with
`wᵀu = 2` (it is `1` on a line and `−1` on a complement). `(x, J)` is a *signed frame* if `x` is a frame for some
`β ∈ M_n(E)` with `Φ_w(β)` positive definite for every infinite `w ≠ v₀` and `Φ_{v₀}(β)J` positive definite. A *moduli
point* with `ν` marked vectors is `a = (x, J, P)` with `(x, J)` a signed frame, `J` a reflection and
`P = (P_1, …, P_ν) ∈ ((E ⊗ ℝ)ⁿ)^ν`. For `g ∈ GU⁺` and `α ∈ 𝓞_E^ν`, `a·(g, α) = (xg, J, (α_i P_i)_i)`. For a subgroup
`K ⊂ GL_n(𝔸_f)`, `z ∈ GL_n(E)` is an *isomorphism `a ≅_K b` at level `K`* if `x_b^{−1} z x_a ∈ K`,
`Φ_{v₀}(z) J_a Φ_{v₀}(z)^{−1} = J_b`, and `zP_{a,i} − P_{b,i}` lies in the image of `Eⁿ ∩ x_b Ôⁿ` for each `i`. A
*period map for `J`* is an `ℝ`-linear isomorphism `Q : (E ⊗ ℝ)ⁿ → V` that carries the complex structure `iJ` at `v₀`
(through `Φ_{v₀}`) and `i` at the other infinite places to multiplication by `i`. `GU` is the group of finite adelic
points of the unitary similitude group of the standard hermitian form `zᴴy`, with multiplier in `ℚ_{>0}·Ẑ^×`. A moduli
point is a datum of linear algebra, not a point of a moduli space; 10.2 relates the moduli points up to isomorphism at
a level to the double cosets that describe the complex points of PEL moduli problems.
(a) Every `𝓞_E`-linear map `Eⁿ → T_n` is `y ↦ class of hy` for some `h ∈ M_n(𝔸_f)`.
(b) For `x ∈ GL_n(𝔸_f)` the image of `Eⁿ ∩ xÔⁿ` in `(E ⊗ ℝ)ⁿ` is a full lattice; for a period map `Q`,
`dim_ℂ V = |n|·f`.

*Needs:* AdelicUnitaryGroupsAndAlgebraicModularForms §2.1 (the adeles).

[ShortProof], `Lib/Shimura/Uniformisation/AdelicFrames` (`New.CMBase`, `New.AdelicTorsion`, `New.Variety.IsFrameFor`,
`New.Variety.GU`, `New.Variety.GUPlus`, `New.Variety.IsSignedFrame`, `New.Variety.ModuliPoint`,
`New.Variety.ModuliPoint.act`, `New.Variety.ModuliPoint.IsLevelIso`, `New.Variety.IsPeriodMap`,
`New.Variety.exists_matrix_torsionClass_eq`, `New.Variety.IsPeriodMap.finrank_eq_abelianDim`);
`Lib/Shimura/HeckeTower/HeckeData` (`New.Variety.levelGU`)

### 3.2 PEL data and good primes

*Origin:* definitions and conventions.

*Method of the formal proof:* none (definitions).

The data below describe theta-embedded families of abelian varieties with `𝓞_E`-action of signature `(1, n − 1)` at
`v₀` and definite elsewhere, with a theta structure on a finite group `T` of odd order, and the numerical conditions
that the construction needs. *PEL data* `D` over `E` consist of: `β ∈ 𝓞_E` with `β̄ = 1 − β`; a level `𝔑 ∈ 𝓞_E`, `𝔑 ≠ 0`; `ξ ∈ E` with `Φ_v(ξ)`
purely imaginary with positive imaginary part for every infinite `v`; a rank `n ≥ 1` (indices `1, …, n`); integers
`r ≥ 3` and `i ≥ 0`; and subgroups `Λ ⊂ T ⊂ T_n` such that:
- `T` is the set of classes `[y]` with `ψ_f(ξ·zᴴy) = 1` for every integral `z ∈ Ôⁿ`, and `#T` is odd;
- `Λ` is its own annihilator: `[y] ∈ Λ` if and only if `ψ_f(ξ·zᴴy) = 1` for all `z` with `[z] ∈ Λ`; and `Λ` contains
  every class killed by `r`;
- (*degree bound*) every monomial ideal in variables indexed by `T` that omits at most `σ_j` monomials of degree `r^j`
  for each `j ≤ i` does so for every `j`, where `σ_j = ⌊√#{y ∈ T_n : r^j y ∈ T}⌋`;
- for `j ≤ i`, every `y ∈ T_n` with `r^j y ∈ T` is killed by `𝔑`;
- (*paddings*) for `c = 1` and `c = β`: `r = c̄c + 3 + Σ_{l=1}^{r−3} ā_l a_l` for some `a_l ∈ 𝓞_E` that span `𝓞_E`
  over `ℤ`;
- `Φ_v(β) = Φ_{v₀}(β̄)` for every infinite `v ≠ v₀`, and `Φ_{v₀}(β̄) ≠ Φ_{v₀}(β)`.
`D` is *good* at an ideal `w` of `𝓞_E` if `r ∉ w`, `#T ∉ w`, and there are a prime number `p ∈ w` and `b ∈ ℤ` with
`β − b ∈ w`, `β − b` and `β̄ − b` coprime, `(𝔑) + w·(p, β̄ − b) = 𝓞_E`, and some finite place `v ≠ w` containing `p`
and `β − b`. For a subring `R ⊂ E` containing `𝓞_E`, `D` is *good over `R`* if it is good at the contraction to `𝓞_E`
of every maximal ideal of `R`. Write `T[r]` for the `r`-torsion of `T`.

*Needs:* 3.1.

Relation to PELModuli §M5.5 (unitary PEL data): `ξ` plays the part of `δ` there (`ξ̄ = −ξ` and `Im Φ_v(ξ) > 0` for every
`v`), and for a matrix `β_Y` with a frame `g` (3.3) the form `Tr_{E/ℚ}(ξ·zᴴβ_Y y)` on `Eⁿ` is the scalar form `ψ` of
§M5.5 for the hermitian form `(y, z) ↦ zᴴβ_Y y`; for a theta torus this form has signature `(1, n − 1)` at `Φ_{v₀}` and is
positive definite at the other places of the CM type. PEL data in the sense here fix no hermitian space, since the
frames and the matrices `β_Y` vary, and they add to the field, the CM type and `ξ` the level `𝔑`, the group `T` with its
Lagrangian `Λ` and the numerical conditions of the construction. In the literature a PEL datum is a tuple
`(B, *, V, ⟨·,·⟩, h)` with a fixed space (PELModuli §§M0.5–M0.6); "PEL data" names here data of the other kind above.
10.1 attaches to `D` and each matrix with a signed frame unitary data of §M5.5, with an integral lattice whose dual
quotient is `T`.

[ShortProof], `Lib/Shimura/ThetaModuli/PELThetaTori` (`New.PEL`, `New.Variety.HasPadding`, `New.PEL.levelTorsion`,
`New.PEL.IsGoodAt`, `New.PEL.rTorsion`); `Lib/Shimura/ThetaModuli/FlatClosure` (`New.Variety.ThetaNull.IsCutDegree`,
`New.Variety.ThetaNull.thetaRanks`); `Lib/Shimura/ThetaModuli/UniversalFamily` (`New.Variety.ThetaNull.IsGoodOver`)

### 3.3 Theta tori and their theta coordinates

*Origin:* particular to this proof: canonical theta coordinates, indexed by the finite group `T`, on complex tori with
`𝓞_E`-action defined by a frame and a reflection, with the theta law under translations by rational points; the nearest
published notion is Mumford's theta structure on a polarised abelian variety.

*Method of the formal proof:* the dual of a lattice over a group of classes is computed with the adelic pairing; the
multiplier is the canonical multiplier of 1.3 (b) for `b = β₁`, which is adjoint-half because `β + β̄ = 1`; the theta
functions for the lattice over the Lagrangian `Λ` form a line by 1.2 (c), since `Λ` is its own annihilator; the theta
law is the Heisenberg law 1.3 (c).

Let `D` be PEL data, `g ∈ GL_n(𝔸_f)`, `ℓ` a complex matrix and `V` a complex vector space. A *polarised period map* for
`(g, ℓ)` is a matrix `β_Y ∈ M_n(E)` for which `g` is a frame, a period map `Q : (E ⊗ ℝ)ⁿ → V` for `ℓ` (3.1), and a form
`B` on `V` with `Re B` symmetric, positive Riemann form, and `E_B(Qy, Qz) = Σ_v 2 Re(Φ_v(ξ)·Φ_v(z)ᴴΦ_v(β_Y)Φ_v(y))` for
`y, z ∈ (E ⊗ ℝ)ⁿ`; on `Eⁿ` this is `Tr_{E/ℚ}(ξ·zᴴβ_Y y)`. `𝓞_E` acts on `V` through `Q`. It is a *theta torus* if
moreover `ℓ` is a reflection, `B(cy, z) = B(y, c̄z)` for `c ∈ 𝓞_E`, and in suitable complex coordinates
`V ≅ ℂ × ℂ^{n−1} × ∏_{w ≠ v₀} ℂⁿ` each `c ∈ 𝓞_E` acts by `Φ_{v₀}(c)` on the line, `conj Φ_{v₀}(c)` on `ℂ^{n−1}` and
`Φ_w(c)` on the factor of `w`. For a subgroup `S ⊂ T_n` let `Λ_S = Q({y ∈ Eⁿ : [y]_g ∈ S})`; `Λ_0` is the *period
lattice*. Let `β₁ = #T·β − ⌊#T/2⌋` and `χ_D(u) = exp(πi E_B(β₁u, u))`.

Let `Y = (β_Y, Q, B)` be a polarised period map for `(g, ℓ)`.
(a) `Λ_0` and `Λ_Λ` are full lattices, `[Λ_{S′} : Λ_S] = [S′ : S]` for `S ⊂ S′`, and the vectors of
`Λ_{T_n}` in the dual of `Λ_S` for `E_B` form `Λ_{S′}`, `S′` the annihilator of `S` for `(y, w) ↦ ψ_f(ξ·wᴴy)`. In
particular the dual lattice of `Λ_0` is `Λ_T`, and `#T·Λ_T ⊂ Λ_0`.
(b) `(B, χ_D)` are Appell–Humbert data for every sublattice of `Λ_Λ`, in particular for `Λ_0`.
(c) The theta functions of type `(B, χ_D)` for `Λ_Λ` form a line; let `ϑ` be a generator. For `t ∈ T` let
`θ_t = N_{a_t}ϑ`, the normalised translate (1.3, with `b = β₁`) by `a_t = Q(y)` for a representative `y ∈ Eⁿ` of `t`;
it does not depend on the representative. Each `θ_t` is a nonzero element of `Θ(B, χ_D)` for `Λ_0`, and `θ_s = θ_0`
for `s ∈ Λ`.
(d) (*theta law*) For `y ∈ Eⁿ` with `[y]_g = s ∈ T` and `u = Q(y)`: `U_u θ_t = χ_D(u)·c_u(t)·θ_{s+t}`, where
`c_u(t) = e(E_B(β₁u, a_t))` is a character of `T`, and `c_{a_s}(−t) = c_{a_t}(s)`; both `χ_D(u)` and `c_u(t)` are roots
of unity.
(e) There is `ε ∈ ℂ` with `θ_t(−z) = ε·θ_{−t}(z)` for all `z`, `t`.
(f) The `θ_t`, `t ∈ T`, have no common zero.

*Needs:* 1.1, 1.2, 1.3, 3.1, 3.2.

[ShortProof], `Lib/Shimura/ThetaModuli/PELThetaTori` (`New.ThetaTori.PeriodMap`, `New.ThetaTori.ThetaTorus`,
`New.Variety.polarisationForm`, `New.ThetaTori.PeriodMap.latticeOver`, `New.ThetaTori.PeriodMap.relIndex_latticeOver`,
`New.ThetaTori.PeriodMap.dualLattice_inf_latticeOver_top`, `New.ThetaTori.PeriodMap.dualLattice_periodLattice`,
`New.ThetaTori.PeriodMap.isAppellHumbert_of_le`, `New.ThetaTori.PeriodMap.exists_generator_thetaSpace`,
`New.ThetaTori.PeriodMap.thetaCoord`, `New.ThetaTori.PeriodMap.thetaCoord_eq_normalizedShift`,
`New.ThetaTori.PeriodMap.thetaShift_thetaCoord`, `New.ThetaTori.PeriodMap.bicharacter_neg_eq_swap`,
`New.ThetaTori.PeriodMap.exists_thetaCoord_sign_smul`, `New.ThetaTori.PeriodMap.thetaCoord_vector_ne_zero`,
`New.ThetaTori.PeriodMap.valuation_multiplier_mul_bicharacter_eq_one`); `Lib/Shimura/ComplexTheta/AppellHumbertData`
(`New.IsAppellHumbert.exp_riemannForm_pow_eq_one`)

### 3.4 Good reduction of theta tori at good primes

*Origin:* particular to this proof: theta tori have good reduction in the analytic sense of 2.1 at every valuation of
`ℂ` over a prime good for `D`, and `#T` is a unit there; the nearest published result is the good reduction of unitary
PEL abelian varieties with many endomorphisms (properness of PEL moduli spaces in the compact case: K.-W. Lan,
*Elevators for degenerations of PEL structures*, Math. Res. Lett. 18 (2011); R. Kottwitz, *Points on some Shimura
varieties over finite fields*, J. Amer. Math. Soc. 5 (1992), §5; in the CM case B. Conrad, *Semistable reduction for
abelian varieties* (notes), Prop. 6.3, after Serre and Tate, Ann. of Math. 88 (1968)).

*Method of the formal proof:* averaging `B` over multiplication by `i` gives a positive hermitian form with the same
Riemann form, for which `𝓞_E` with `β` is a hermitian action, so 1.5 applies; 2.2 (d) is applied with `c = ā`, where
`a` generates a high power of the second place `v ≠ w` that goodness provides (containing `p` and `β − b`) and is large
at all complex embeddings; `#T·Λ_T ⊂ Λ_0` gives the integer `m` of 2.2 (d).

Let `Y` be a theta torus for PEL data `D`, `B` its form and `χ_D` its multiplier (3.3).
(a) At the trivial valuation, `(B, χ_D)` have good reduction for `Λ_0` with level `r`.
(b) Let `v` be a valuation of `ℂ` with valuation ring `O_v`, and `ρ : 𝓞_E → O_v` a ring homomorphism with
`ρ(c) = Φ_{v₀}(c)`, such that `D` is good at `ρ^{−1}(𝔪_v)`. Then `(B, χ_D)` have good reduction at `v` with level `r`,
and `v(#T) = 1`.

*Needs:* 1.5, 2.1, 2.2, 3.2, 3.3.

[ShortProof], `Lib/Shimura/GoodReduction/MultiplicativeNorm`
(`New.ThetaTori.ThetaTorus.hasGoodReduction_and_val_card_eq_one`); `Lib/Shimura/ThetaModuli/PELThetaTori`
(`New.ThetaTori.PeriodMap.hasGoodReduction_one`)

### 3.5 Riemann's theta relation

*Origin:* adapted from Riemann's theta formula and its generalisations (C.-L. Chai, *Riemann's theta formula* (2014),
Theorem 1.2; A. Nagano, *On Riemann type relations for theta functions on bounded symmetric domains of type I*, arXiv
2301.09243 (2023), Theorem 1.1; D. Mumford, *On the equations defining abelian varieties I*, Invent. Math. 1 (1966), §3;
G. Kempf, *Linear systems on abelian varieties*, Amer. J. Math. 111 (1989), 65–94). The identity here is derived from
1.4; its coefficients `a_k, b_k` are integers of `E`, where the classical formula has an orthogonal matrix with entries
`±1/2`; and it links products of theta coordinates of one theta torus taken at the points `a_k z + b_k w`, of total
degree `r` in the sense that `Σ ā_k a_k = r`.

*Method of the formal proof:* the product `P(μ; z)` transforms under the twisted translations of degree `rB` like a theta
function whose index is shifted by `Σ āμ`, by the theta law 3.3 (d); the relation is then 1.4 (a) applied in degree
`rB` to the orbit of `T` acting through the coefficients.

Let `Y` be a theta torus for `D`, with theta coordinates `θ_s`, `s ∈ T`. For a finite set `K` and
`p = (a_k, b_k)_{k ∈ K}` in `𝓞_E × 𝓞_E` with `Σ_k ā_k a_k = r` and `Σ_k ā_k b_k = 0` (a *Riemann tuple*), for
`μ : K → T` and `w ∈ V`, let `P_p(μ; z) = Π_k θ_{μ_k}(a_k z + b_k w)`. Let `p`, `q = (a′_k, b′_k)` be Riemann tuples and
`μ, μ′ : K → T` with `Σ_k ā_k μ_k = Σ_k ā′_k μ′_k`. Then for all `z ∈ V`:
`#T · P_q(μ′; 0) · P_p(μ; z) = √[T : T[r]] · Σ_{s ∈ T} P_p(μ − a·s; 0) · P_q(μ′ + a′·s; z)`,
both products taken at the same `w`, where `(μ − a·s)_k = μ_k − a_k s`.

*Needs:* 1.4, 3.3.

[ShortProof], `Lib/Shimura/ThetaNormality/RiemannRelation` (`New.ThetaTori.ThetaTorus.IsRiemannTuple`,
`New.ThetaTori.ThetaTorus.thetaProduct`, `New.ThetaTori.ThetaTorus.thetaShift_thetaProduct`,
`New.ThetaTori.ThetaTorus.thetaShift_periodPoint_thetaProduct`, `New.ThetaTori.ThetaTorus.riemann_relation`,
`New.paddingTuple`)

### 3.6 The reduced theta vectors are cut out by the level points

*Origin:* particular to this proof: when the torus has good reduction at the valuation, the values of the integral forms
of degree `r^j` in the theta coordinates fill exactly a ball of the theta norm, and the ideal of the reduced theta
vectors is cut out, in the degrees `r^j`, by the reduced theta vectors of the level points with the expected ranks; the
nearest published results are the equations of abelian varieties in theta coordinates.

*Method of the formal proof:* (a) from 2.3 (a), the coordinates being translates of one function by representatives of
the dual lattice; (b) from the theta law and the multiplicativity of the norm; (c) from 2.3 (c), (d), the level points
representing `Λ_0^⊥` modulo `Λ_0` in the degrees `r^j`, `j ≤ i`, and the paddings (Riemann tuples) to pass between
degrees.

An ideal `I` of `k[X_j : j ∈ J]` (`k` a field, `J` finite) is *cut out in the chart `c ∈ J` by points `p_a ∈ k^J` with
ranks `σ` up to `i`* if `X_c − 1 ∈ I`, the forms of degree `r^j` span a space of dimension `σ_j` modulo `I` for every
`j`, and for `j ≤ i` a form of degree `r^j` lies in `I` if and only if it vanishes at all `p_a`. For linear systems
`N_a` on a scheme `S` with coordinates indexed by `J`, a point `t ∈ S(k)` and a set `Z ⊂ k^J`, the ideals of `Z` are
*cut out at `t` by the `N_a`* if for every choice of charts `l_a` of the `N_a` containing `t` and every `c ∈ J`, the
ideal of the polynomials vanishing at all `v/v_c`, `v ∈ Z` with `v_c ≠ 0`, is cut out in the chart `c` by the affine
coordinates of the `N_a` at `t` in the charts `l_a`.

Let `Y` be a theta torus for `D` with theta coordinates `θ_t`, `v` a valuation of `ℂ` at which `(B, χ_D)` have good
reduction with level `r`, and `O_v` its valuation ring.
(a) For every `c ∈ T` and `j`, the `O_v`-module of values `F(θ)`, `F` running over the forms of degree `r^j` over `O_v`
in variables indexed by `T`, is `Ball(θ_c^{r^j})` (2.3).
(b) If `v(#T) = 1`, then for every `s ∈ T` there is `u ∈ T` such that `θ_u(0)`, `θ_{−u}(0)` and `θ_{s−u}(0)` have the
largest valuation among the `θ_t(0)`.
(c) Let `φ : O_v → k` be onto a field, for `z ∈ V` let `q(z) ∈ O_v^T` be integral homogeneous coordinates of
`(θ_t(z))_t` with a unit entry, and for each level point `l` (a class killed by `𝔑`) let `p(l)` be such coordinates of
`(θ_t(a_l))_t`. Let `N_l` be linear systems on a scheme `S` with coordinates indexed by `T` and `t ∈ S(k)` a point at
which `N_l` has homogeneous coordinates `φ(p(l))`. Then the ideals of `{φ(q(z)) : z ∈ V}` are cut out at `t` by the
`N_l`, with ranks `σ` (3.2) up to `i`.

*Needs:* 2.3, 3.2, 3.3, 3.4, 3.5.

[ShortProof], `Lib/Shimura/ThetaModuli/PELThetaTori` (`New.ThetaTori.PeriodMap.formSpan_eq_normBall`,
`New.ThetaTori.PeriodMap.thetaNorm_thetaCoord`); `Lib/Shimura/ThetaNormality/RiemannRelation`
(`New.ThetaTori.ThetaTorus.exists_forall_valuation_thetaCoord_zero_le`, `New.ThetaTori.ThetaTorus.isCutOutAt_reduction`);
`Lib/Shimura/ThetaModuli/FlatClosure` (`New.Variety.ThetaNull.IsCutOut`, `New.Variety.ThetaNull.IsCutOutAt`)

### 3.7 Existence of PEL data

*Origin:* particular to this proof: existence of the PEL data of 3.2 with `β = β₀`, of any rank, at every nonzero level
divisible by a suitable integer avoiding a given finite set of places, good at all safe places (8.1); the nearest
published inputs are the existence of Lagrangian subgroups and of CM types with prescribed behaviour.

*Method of the formal proof:* an isotropic subset of a finite group with a nondegenerate pairing lies in a
self-annihilating subgroup; `ξ` is chosen with the prescribed signs, and the paddings and the degree bound are
satisfied by taking `r` and `i` large (FlatClosure's finiteness of degree bounds); the integer `N` collects the bad
primes.

Let `d ≡ 3 (mod 4)`, let `E ⊃ ℚ(√−d)` be a CM field containing the `5040`-th roots of unity, `n ≥ 1`,
`σ : E → ℂ` an embedding and `B` a finite set of finite places of `E`. Then there are a CM type with base place `v₀` with
`Φ_{v₀} = σ` and `Φ_v|_{ℚ(√−d)} ≠ Φ_{v₀}|_{ℚ(√−d)}` for `v ≠ v₀`, and an integer `N ≥ 1` lying in no place of `B`, such
that for every `𝔑 ≠ 0` in `𝓞_E` divisible by `N` there are PEL data of rank `n` and level `𝔑` with `β = β₀` (for
`d₀ = d`) that are good at every finite place safe for `𝔑` (8.1). Also: in a finite abelian group with a nondegenerate
alternating-type pairing of the kind of 3.2, every isotropic subset lies in a subgroup equal to its own annihilator.

**In standard terms.** For every matrix `β` with a signed frame `x`, PEL data of this section give the unitary data of
PELModuli §M5.5 of 10.1, of signature `(1, n − 1)` at `Φ_{v₀}` and definite at the other places of the CM type, with
the integral lattice `Eⁿ ∩ xÔⁿ`, whose dual quotient is `T`, of odd order (10.1 (a), (b)). The level, the Lagrangian
`Λ`, `r`, `i` and goodness at the safe places are conditions of the construction with no counterpart in a PEL datum.

*Needs:* 3.2, 8.1 (safe places, as a definition).

[ShortProof], `Lib/Shimura/IntegralModel/PELDataExistence` (`New.Variety.exists_lagrangian`, `New.Variety.IsSafeGoodPEL`,
`New.Variety.exists_pel`)

## Layer 4: Abelian schemes, line bundle classes and theta structures

This layer is the algebraic geometry over a base that the construction uses: abelian schemes and the pairing attached to
a line bundle class (4.1, 4.2), quasi-finite homomorphisms (4.3), coordinates at the origin and infinitesimal points
(4.4), and lifts of translations to sections with theta structures and their rigidity (4.5).

### 4.1 Abelian schemes and the pairing of a line bundle class

*Origin:* definitions and conventions.

*Method of the formal proof:* (b) the fibre over the zero section of a finite morphism to a separated group scheme is
affine and finite; (c) global functions on an integral abelian variety over a field are constant, and this passes to an
affine base change.

A *commutative group scheme* over `S` is a commutative group object of schemes over `S`, written additively; an *action*
of a commutative ring `O` on it is a ring homomorphism from `O` to its endomorphisms. An *abelian scheme* over `S` is a
commutative group scheme that is smooth and proper over `S` and on which multiplication by every integer `m ≠ 0` is
surjective. (This is the usual notion. AbelianSchemesAndArithmeticModuli §A0.1 defines abelian schemes with
geometrically connected fibres in place of the surjectivity of every `[m]`, and without commutativity in the structure;
the two definitions give the same objects. A geometric fibre that is not connected has a nontrivial finite group of
components, which `[m]` kills for `m` its order, so surjectivity of every `[m]` forces connected geometric fibres;
conversely an abelian scheme of §A0.1 is commutative by §A1.2 (2), and on it `[m]`, `m ≠ 0`, is finite locally free of
positive rank by §A3.2 (1), hence surjective.) A
*homomorphism* is a morphism compatible with addition; an *isogeny* is a homomorphism that is finite, flat and
surjective. For a class `c ∈ Pic(A)` and `T`-points `x, y` of `A`, `x^*c ∈ Pic(T)` and
`⟨x, y⟩_c = (x + y)^*c − x^*c − y^*c + 0^*c ∈ Pic(T)`; `c` satisfies the *parallelogram law* if
`(x + y)^*c + (x − y)^*c + 2·0^*c = 2(x^*c + y^*c)` for all `T` and all `T`-points `x, y`.
(a) The base change of an abelian scheme along any `S′ → S` is an abelian scheme, with the induced action of `O`.
(b) Let `B` be a separated commutative group scheme over `Spec R` and `f : A → B` a finite morphism. The fibre of `f`
over the zero section is `Spec` of a finite `R`-algebra, flat if `f` is flat.
(c) Let `A` be an integral abelian scheme over a field `k` and `X = A ×_k Spec C`. A regular function on `X` takes equal
values at any two ring-valued points of `X` with the same image in `Spec C`.

*Needs:* Mathlib (`AlgebraicGeometry.Smooth`, `AlgebraicGeometry.IsProper`, group objects in `Over S`).

[ShortProof], `Lib/Shimura/AbelianScheme/Basic` (`New.AddObj`, `New.ModuleObj`, `New.IsAbelianScheme`, `New.IsIsogeny`,
`New.IsGroupBaseChange`, `New.Pic.atPoint`, `New.Pic.pairing`, `New.Pic.ParallelogramLaw`,
`New.Variety.exists_finite_kernel_ring`, `New.Variety.hasConstFunctions_of_isPullback`); `Lib/Shimura/AbelianScheme/Pairings`
(`New.Variety.isGroupBaseChange_counit`)

### 4.2 Classes with the parallelogram law

*Origin:* adapted from the published theory of line bundles on abelian schemes (theorem of the cube and its
consequences): here for classes that satisfy the parallelogram law, with a quasi-finiteness criterion and a descent of
identities between pairings along fpqc covers.

*Method of the formal proof:* (a) a positive-dimensional fibre of `f` would carry a nonzero multiple of an ample class
pulled back from a point; (c) by induction on `m` from the parallelogram law, the classes pulled back from the local
base being zero; (d) by descent of classes along `f × 1`, using that a frame of a class trivial on `A × A′` differs at
two points with the same image by a factor independent of the second coordinate.

Let `A` be a commutative group scheme over `S` and `c ∈ Pic(A)`.
(a) Let `N` be a projective embedding of `A` over `S`, `B` separated over `S`, and `f : A → B` an `S`-morphism with
`f^*c′ = m[N]` for some `c′ ∈ Pic(B)` and `m ≠ 0`. Then `f` is locally quasi-finite.
(b) `⟨x, y⟩_c = ⟨y, x⟩_c`, and `⟨x, y⟩_{f^*c} = ⟨fx, fy⟩_c` for a homomorphism `f`. If `c` satisfies the parallelogram
law, then `⟨mx, y⟩_c = m⟨x, y⟩_c = ⟨x, y⟩_{mc}` for `m ∈ ℕ`.
(c) If `S = Spec R` with `R` local and `c` satisfies the parallelogram law, then `[m]^*c = m²c` for every `m ∈ ℕ`.
(d) Let `A′` be the base change to `S` of an integral abelian variety over a field, `f : A → A₁` flat, surjective and
quasi-compact, `a, a′` morphisms from `A₁`, `b, b′` homomorphisms from `A′`, and `c, c′` classes on their targets. If
`⟨a(fx), b(y)⟩_c = ⟨a′(fx), b′(y)⟩_{c′}` for all points `x` of `A` and `y` of `A′`, then
`⟨a(x), b(y)⟩_c = ⟨a′(x), b′(y)⟩_{c′}` for all points `x` of `A₁` and `y` of `A′`.

*Needs:* 4.1.

Relation to AbelianSchemesAndArithmeticModuli §A1.5 (the theorem of the cube): there `[n]^*L ≅ L^{n²}` is proved for a
symmetric rigidified `L` on an abelian scheme over any base, and the sum–difference statement of §A1.5 is the
parallelogram law for such `L`. Here the last assertion of (b) and (c) assume the parallelogram law instead and hold for
every commutative group scheme. On an abelian scheme over a local base the two agree: a class with the parallelogram
law is symmetric (take `x = 0`), every class is rigidified there, and (c) is then the symmetric case of §A1.5.

[ShortProof], `Lib/Shimura/AbelianScheme/Pairings` (`New.Variety.locallyQuasiFinite_of_pull_picClass`,
`New.Variety.pairing_comm`, `New.Variety.pairing_comp`, `New.Pic.ParallelogramLaw.pairing_nsmul_left`,
`New.Pic.ParallelogramLaw.nsmul_pairing_eq_pairing_nsmul`, `New.Variety.pull_nsmul_eq_sq_smul`,
`New.Variety.eq_pull_zero_section`, `New.Variety.pairing_eq_of_fpqc_cover`)

### 4.3 Quasi-finite surjective homomorphisms of abelian schemes are isogenies

*Origin:* adapted from the theory of isogenies of abelian schemes (B. Edixhoven, G. van der Geer, B. Moonen, *Abelian
Varieties* (draft), ch. IV §3, (5.1)–(5.2), ch. VI §1; The Stacks project, Section 0BF9; EGA IV; S. Bosch,
W. Lütkebohmert, M. Raynaud, *Néron Models* (1990), 7.3, 8.1): here over a local base, with quasi-finiteness as the
hypothesis.

*Method of the formal proof:* properness and local quasi-finiteness give finiteness (Zariski's main theorem, in
Mathlib); flatness is proved by descent along the fpqc cover `(a, d) ↦ f(a) + u(d)` of `B`, for a flat map `u` from a
local `R`-algebra whose maximal ideal is generated by that of `R`, where the pull-back of `f` is flat by a fibrewise
criterion. For multiplication by `a`, which divides its norm `N`: `[N]` pulls the class of the embedding back to `N²`
times itself (4.2 (c)), so it is locally quasi-finite (4.2 (a)) and surjective, and both properties pass to `a`.

Let `R` be a local ring, `A` and `B` abelian schemes over `Spec R`, and `f : A → B` a homomorphism that is surjective and
locally quasi-finite. Then `f` is finite and flat, so an isogeny. In particular, let `A` be an abelian scheme over a local
ring with an action of `𝓞_E` and a projective embedding whose class satisfies the parallelogram law (4.1); then
multiplication by every nonzero `a ∈ 𝓞_E` is an isogeny of `A`. The formal proof proves this for the abelian scheme of
an object of a theta family (6.1).

*Needs:* 4.1, 4.2; AbelianSchemesAndArithmeticModuli §A3.1 (isogenies over a base, the field case of flatness); Mathlib
(`AlgebraicGeometry.IsFinite.of_isProper_of_locallyQuasiFinite`).

The factorisation of homomorphisms through an isogeny that [ShortProof] proves beside this (over an Artinian base) is
in the library (see the closing list). The use is at a field, at the dual numbers over a field, and over every local
ring.

[ShortProof], `Lib/Shimura/AbelianScheme/IsogenyFlatness` (`New.Variety.flat_left_of_isPullback_flat`,
`New.Variety.flat_of_isPullback_of_map_maximalIdeal_eq`, `New.Variety.isIsogeny_of_locallyQuasiFinite`);
`Lib/Shimura/HeckeTower/Model` (`New.ThetaObject.isIsogeny_smul_id`)

### 4.4 Coordinates at the origin, infinitesimal points and unramified torsion

*Origin:* adapted from the published theory of the formal group and the Lie algebra of a smooth group scheme: here
through étale coordinates evaluated on points that vanish modulo a square-zero ideal, with a rank-one signature
condition for an action of a ring.

*Method of the formal proof:* étale coordinates come from the local structure of smooth morphisms; on infinitesimal
points the coordinates are additive and the action is linear; for (f), (e) applied to the section along its zero locus
shows that the ideal `I` of that locus is contained in `I²`, and Nakayama's lemma gives `I = 0`.

A *square-zero extension* is a surjective ring homomorphism `ψ : C → C′` whose kernel has square zero; a `C`-point `y` of
a group scheme `A` is *infinitesimal for `ψ`* if its image in `A(C′)` is `0`. For regular functions `z_1, …, z_g` on an
open `U ⊂ A` containing the zero point, `dz(y) = (z_i(y) − z_i(0))_i`. The `z_i` are *étale coordinates* on `U` if along
every square-zero extension a point in `U` lifts uniquely with prescribed lifts of the values `z_i`. Over
`s : Spec B → S`, with an action of `O` on `A`, `(U, z, m)` is a *Lie chart* with matrices `m(a) ∈ M_g(B)` if the `z_i`
are étale coordinates, and for every `φ : B → C` and every square-zero `C → C′`, the zero `C`-point lies in `U`, and on
infinitesimal points `dz(y + x) = dz(y) + dz(x)` and `dz(ay) = φ(m(a))·dz(y)`. For `ρ : O → B` and `b, b′ ∈ O`, the
matrices satisfy the *signature condition* if some vector `X` with a unit entry has `m(a)X = ρ(a)X` for all `a` and
`m(b) − ρ(b′)·1 = Xξᵀ` for some vector `ξ`.
(a) If `A → S` is smooth of relative dimension `d`, every point of `A` has a neighbourhood with `d` étale coordinates.
(b) If `A` is a commutative group scheme with `O`-action, smooth of relative dimension `g`, and `s : Spec B → S` with `B`
local, there are `U`, `z_1, …, z_g` and matrices `m(a)` forming a Lie chart over every `Spec C → Spec B → S`, with the
matrices `φ(m(a))`.
(c) For étale coordinates on `U` containing the zero point and a square-zero `ψ`, each vector with entries in `ker ψ` is
`dz(y)` for exactly one infinitesimal `y`.
(d) If ring maps `σ_k : B → D` have no common nonzero kernel element and the signature condition holds after each
`σ_k`, it holds after every `φ : B → C` to a local ring with `φ(ρ(b) − ρ(b′))` a unit.
(e) Let `A → S` be smooth of constant relative dimension and `y` infinitesimal over a point that factors through a local
`Spec B`. If `m` is a unit in `C` and `my = 0`, then `y = 0`; if `m = 0` in `C`, then `my = 0`.
(f) Let `A` be an abelian scheme of relative dimension `g` over a local ring `R` and `m` a unit of `R`. A section `x`
with `mx = 0` that vanishes at some point `Spec K → Spec R`, `K ≠ 0`, is zero.

*Needs:* 4.1; Mathlib (`AlgebraicGeometry.SmoothOfRelativeDimension`).

[ShortProof], `Lib/Shimura/AbelianScheme/TangentCoordinates` (`New.IsSqZeroExt`, `New.IsInfinitesimal`,
`New.tangentCoords`, `New.IsEtaleChart`, `New.IsLieChart`, `New.HasSignature`, `New.exists_isEtaleChart`,
`New.exists_isLieChart`, `New.IsEtaleChart.existsUnique_tangentCoords_eq`, `New.HasSignature.of_points`,
`New.IsInfinitesimal.eq_zero_of_isUnit_and_nsmul_eq_zero_of_cast_eq_zero`,
`New.Variety.eq_zero_of_nsmul_eq_zero_of_comp_eq_zero`)

### 4.5 Lifts of translations and rigidity of theta structures

*Origin:* adapted from the theory of theta groups and theta structures on abelian varieties (D. Mumford, *On the
equations defining abelian varieties I*, Invent. Math. 1 (1966), §§1–2): here the lift of a
translation to the sections of a linear system exists exactly over `K([N])`, a theta structure is a linear system whose
coordinates are permuted by lifts of `y ↦ ±y + η(s)` up to characters, and theta structures are rigid along
homomorphisms.

*Method of the formal proof:* a lift is pull-back of sections followed by an isomorphism of line bundles, which exists
exactly when the classes agree; over a local ring the class `t_z^*[N] − [N] = ⟨z, id⟩` decides it. Rigidity: the lift of
`f` intertwines the two actions of the theta characters, so by the irreducibility of the action of `H` (an orthogonality
of characters, `#H` odd and invertible) it maps coordinates to a common multiple of coordinates.

Let `X, X′` be schemes over rings `R, R′`, `f : X′ → X` over a ring map, `L` and `L′` line bundles. A map
`Φ : H⁰(X, L) → H⁰(X′, L′)` is a *lift of `f`* if it is pull-back along `f` followed by an isomorphism `f^*L ≅ L′`. For
an `R`-point (section) `z` of a commutative group scheme `A` over `R`, a *lift of the translation `t_z`* to `L` is an
`R`-linear endomorphism of `H⁰(A, L)` that is a lift of `t_z` with `L′ = L`. For a linear system `N` on `A` with
coordinates `X_t` indexed by a finite abelian group `H` whose order is a unit of `R`, a homomorphism
`η : H → A(R)`, characters `c(s) : H → R^×` with `c(s)(−t) = c(t)(s)`, and a subgroup `Λ ⊂ H`, `N` is a *theta
structure* if for every `s ∈ H` and sign `±`, the map `y ↦ ±y + η(s)` has a lift to `N` sending `X_t` to
`c(s)(t)·X_{±(s+t)}`, `X_s = X_0` for `s ∈ Λ`, and `Σ_{l ∈ Λ} c(s)(l)² = 0` for `s ∉ Λ`. In the literature a theta
structure on `(A, L)` is an isomorphism of the theta group of `L` with a Heisenberg group; "theta structure" names
here a linear system with the conditions above, and 10.3 (a) obtains such linear systems from the theta group and a
symmetric level subgroup.
(a) A lift of `f` from `L` to `L′` exists only if `[L′] = f^*[L]`; if `X′`, `X` are over the same ring `R` and `f` is an
`R`-morphism with `[L′] = f^*[L]`, an `R`-linear lift exists; a lift along a quasi-compact scheme-theoretically dominant
`f` is injective; two lifts are proportional (by an element of `R′`) when `X′` is a commutative group scheme over `R′` on
which global functions are constant on the fibres over `R′`; lifts compose.
(b) Lifts of `t_z` and `t_w` multiply to a lift of `t_{z+w}`. If `R` is local, `t_z` lifts to `L` if and only if
`⟨z, id⟩_{[L]} = 0` in `Pic(A)`, that is `z ∈ K([L])`.
(c) (*rigidity*) Let `N` on `A` and `N′` on `A′` be theta structures for the same `H` of odd order and the same `Λ`, with
`η`, `η′`. Assume that global functions on `A` are constant on the fibres over `R` and that the coordinates of `N` span
`H⁰(A, N)`. If a homomorphism `f : A → A′` has `f∘η = η′` and `[N] = f^*[N′]`, then `f^*N′ = N` as linear systems
(coordinates match).
(d) Under the hypotheses of (c), if `N` is a projective embedding and `t_y` lifts to `N`, then `#H·y = 0`.

*Needs:* 4.1, 4.2.

Relation to AbelianSchemesAndArithmeticModuli §A3.6 (theta groups): for an abelian scheme over a local ring `R` and a
line bundle `L` (rigidified, as every line bundle is over `R`), `K([L])` here is the group of `R`-points of the kernel
`K(L)` of the Mumford map there, and a lift of `t_z` is the action on `H⁰(A, L)` of an element of the theta group `G(L)`
over `z`; so (b) is, for abelian schemes, the case `T = Spec R` of §A3.6 (1), where lifts exist Zariski locally on `T`.
Here (a) is stated for arbitrary schemes and (b) for every commutative group scheme over `R`, and the theta structures
with their rigidity, (c) and (d), have no counterpart there.

[ShortProof], `Lib/Shimura/ThetaGroup` (`New.Variety.IsSectionLift`, `New.Variety.IsTranslationLift`,
`New.Variety.coordSection`, `New.Variety.exists_isSectionLift`, `New.Variety.IsSectionLift.picClass_eq`,
`New.Variety.IsSectionLift.injective`, `New.Variety.IsSectionLift.exists_eq_smul`, `New.Variety.IsSectionLift.comp`,
`New.Variety.IsTranslationLift.mul`, `New.Variety.exists_isTranslationLift_iff`, `New.Variety.IsThetaStructure`,
`New.Variety.IsThetaStructure.pull_eq_of_picClass_eq`,
`New.Variety.IsThetaStructure.card_nsmul_eq_zero_of_isTranslationLift`)

## Layer 5: Complex uniformisation

This layer passes between the algebraic and the analytic side over a valuative arc: holomorphic families of complex
points, uniformisations and theta coordinates (5.1), the uniformisation of complex abelian varieties by an exponential
map (5.2), the existence half of Appell–Humbert (5.3), the extension of homomorphisms of theta-polarised tori over an
arc (5.4), and analytic families of theta tori over a ball (5.5).

### 5.1 Holomorphic families, uniformisations and theta coordinates

*Origin:* particular to this proof: a calculus of holomorphic families of complex points of schemes over a valuative
arc without analytification, with uniformisations and theta coordinates; the nearest published notions are the analytification of a
scheme of finite type over `ℂ` and the uniformisation of a complex abelian variety.

*Method of the formal proof:* jets are read on regular functions; (a) counts the `m`-torsion of `V/L`; (b) compares the
action of `O` on `V` with the matrices of a Lie chart (4.4) through the derivative of the uniformisation at `0`;
(d) by 1.1 (e) applied to the quotient of two coordinates.

Let `O` be a valuative arc, `X` an `O`-scheme and `P` a finite-dimensional complex space. A family `φ : P → X(ℂ)` is
*holomorphic at `w`* if every regular function on an open neighbourhood of `φ(w)` pulls back to a function analytic at
`w`; it is *constant to first order in the direction `v`* if its jet at `w` in the direction `v` is the constant point
over `ℂ[ε]`; it is a *holomorphic immersion at `w`* if it is holomorphic at `w` and constant to first order only in the
direction `0`. For a commutative group scheme `A` over `O`, a *uniformisation* of `A` by `V` is a surjective homomorphism
`e : V → A(O)` whose kernel is a full lattice `L`, which is a holomorphic immersion at every point (on complex points),
and through which every homomorphism `W → A(O)` from a finite-dimensional complex space that is holomorphic at `0`
factors by a `ℂ`-linear map. For a linear system `N` on `X` with coordinates indexed by `ι`, a family `φ : P → X(ℂ)`, a
lattice `L ⊂ P`, Appell–Humbert data `(B, χ)` for `L` and `θ : P → ℂ^ι`, `N` has *theta coordinates `θ` of type
`(B, χ)` along `φ`* if each `θ_i ∈ Θ(B, χ)` and `θ(z)` is a vector of homogeneous coordinates of `φ(z)` for every `z`.
In the literature the uniformisation of a complex abelian variety is the exponential map from its tangent space at `0`
to its analytification; a uniformisation here includes a universal property in its definition, and by 10.4 (b) that
exponential is one. By 10.4 (a), when `X` is locally of finite type over `O`, a family is holomorphic at `w` in the
sense above exactly when it is holomorphic near `w` as a map to the analytification of the generic fibre.
(a) Jets of holomorphic families exist, are unique, and obey the chain rule; on a commutative group scheme smooth of
relative dimension `d`, if `φ` is holomorphic at `w` and `mφ` is constant to first order at `w` in a direction for some
`m ≠ 0`, so is `φ`.
(b) If `e` uniformises `A` by `V`, then for `m ≠ 0` exactly `m^{2 dim V}` points of `A(O)` are killed by `m`.
(c) Let `O` act on `A` (a ring of endomorphisms), `e` uniformise the fibre of a group scheme `𝒜` at a complex point `s`
compatibly with the action, `F(a)` the action on `V`, and `(U, z, m)` a Lie chart of `𝒜` over `s` (4.4) with
`dim V = g`. Then the matrices `m(a)` satisfy the signature condition for `ρ, b, c` if and only if some `Y ≠ 0` in `V`
has `F(a)Y = ρ(a)Y` for all `a` and `F(b) − ρ(c)` maps `V` into `ℂY`.
(d) Theta coordinates pass to pull-backs along maps induced by `ℂ`-linear maps of lattices, to tensor powers (monomials
of degree `m`, type `(mB, χ^m)`), to translates (twisted translates of the coordinates, with `χ` multiplied by
`e(E_B(·, a))`) and to tensor products (products, type `(B + B′, χχ′)`).
(e) Let `N`, `M` have theta coordinates `θ`, `θ′` of types `(B, χ)`, `(B′, χ′)` along an everywhere holomorphic family
`φ` that is `L`-periodic, and let `N ⊗ M^{−1}` have a nowhere vanishing section `w`. Then `E_B = E_{B′}`, `χ = χ′` on
`L`, and along `φ` one has `w = c·exp((B − B′)(z, z)/2)·θ′/θ` (in the charts where both coordinates are nonzero) for a
constant `c`. Without the frame condition, an `L`-invariant section `w` of `N ⊗ M^{−1}` is `G·θ′/θ` for some
`G ∈ Θ(B − B′, χχ′^{−1})`.

*Needs:* 1.1, 4.1, 4.4.

[ShortProof], `Lib/Shimura/Uniformisation/HolomorphicFamilies` (`New.ValuativeArc`, `New.ComplexPoint`,
`New.HolomorphicAt.exists_isJet`, `New.IsJet.unique`, `New.isJet_comp_iff`, `New.IsHolomorphicImmersionAt`,
`New.HolomorphicAt.isFirstOrderConst_of_nsmul`, `New.Uniformisation`, `New.HasThetaCoords`,
`New.Uniformisation.card_torsion`, `New.Uniformisation.hasSignature_iff`, `New.HasThetaCoords.pull`,
`New.HasThetaCoords.pow`, `New.HasThetaCoords.pull_translate`, `New.HasThetaCoords.mul`,
`New.HasThetaCoords.exists_theta_of_isSection`, `New.HasThetaCoords.riemannForm_eq_of_isFrame`)

### 5.2 The exponential of a compact commutative group, and uniformisation of complex abelian varieties

*Origin:* adapted from the published theory of compact commutative Lie groups and the uniformisation of complex abelian
varieties (for the latter, D. Mumford, *Abelian Varieties*, §§1–2): here for a compact commutative topological group
with one chart at `0` in which addition is analytic, the exponential obtained without solving a differential equation,
and the uniformisation of an abelian variety embedded by a linear system.

*Method of the formal proof:* for (a), `e(v)` is defined as a limit, along an ultrafilter on `ℕ`, of the `n`-fold sum of
`ψ(v/n)`; such limits exist because `G` is compact, and the analyticity of addition in the chart makes `e` additive with
derivative the identity at `0`. Its image is then an open subgroup, of finite index as `G` is compact, and its kernel
is discrete and cocompact. (b) takes the étale coordinates of 4.4 (a) as the chart; (c) bounds homogeneous coordinates
on the unit sphere; (d) applies (a) to `A(ℂ)`, which is compact by (c), with the chart of (b).

(a) Let `G` be a compact commutative topological group, `V` a finite-dimensional complex space, and `φ : G → V`,
`ψ : V → G` with `φ(0) = 0`, `ψ∘φ = id` near `0`, `φ∘ψ = id` near `0`, `φ` continuous near `0`, `ψ` continuous at `0`,
and `(p, q) ↦ φ(ψ(p) + ψ(q))` analytic at `0`. Then there is a homomorphism `e : V → G` whose kernel is a full lattice,
with `ψ∘φ∘e = e` near `0`, `φ∘e` analytic at `0` with derivative the identity, image of finite index, and such that every
homomorphism `γ : W → G` from a finite-dimensional complex space, continuous at `0` with `φ∘γ` differentiable at `0`, is
`e∘F` for a continuous `ℂ`-linear `F`.
(b) A scheme smooth of relative dimension `d` over `ℂ` has at every complex point `x` a holomorphic chart: maps
`φ : X(ℂ) → ℂ^d`, `ψ` back, with `φ(x) = 0`, mutually inverse near `x` and `0`, `ψ` holomorphic at `0`, and, for every
family `γ` that is holomorphic at a parameter `w` with `γ(w) = x`, `φ∘γ` analytic at `w`, with zero derivative at `w` in
the directions where `γ` is constant to first order at `w`.
(c) The complex points of a scheme over `ℂ` with a projective embedding are compact.
(d) An abelian scheme over `ℂ`, smooth of relative dimension `d`, with a projective embedding, has a uniformisation by
`ℂ^d` (5.1).

*Needs:* 4.1, 4.4, 5.1.

The library has the exponential of a commutative Lie group with lattice kernel in the compact case
(`TauCeti.lieExpAddMonoidHom`, `TauCeti.isZLattice_ker_lieExpAddMonoidHom`); using it would need a Lie group structure
on `A(ℂ)`, which (b) does not provide. On Tau Ceti's main branch, later than the revision pinned here: the holomorphy of
that exponential for a complex Lie group, `TauCeti.mdifferentiable_mulInvariantExp_complex`.

Relation to AbelianSchemesAndArithmeticModuli §A5.1 (lattice uniformisation): §A5.1 gives `V/Λ ≅ A^an` for an abelian
variety `A` over `ℂ`, through the analytification of `A` and its Lie group structure, with holomorphic homomorphisms
described by linear maps. It implies (d) once an abelian scheme over `ℂ` in the sense of 4.1 is identified with an
abelian variety (4.1) and a family of complex points that is holomorphic in the sense of 5.1 with a holomorphic map to
`A^an`: the exponential of §A5.1 is then a surjective holomorphic homomorphism and a local isomorphism, with kernel a
full lattice, and it is a uniformisation in the sense of 5.1 once every homomorphism `W → V/Λ` that is holomorphic at
`0` is lifted to `V` through the covering `V → V/Λ`, a step that §A5.1 does not state. 10.4 states both steps:
holomorphy in the sense of 5.1 is holomorphy into the analytification, and the exponential of §A5.1 is a
uniformisation in the sense of 5.1, so that §A5.1 implies (d). The route proves (d) directly on
complex points, without analytification.

[ShortProof], `Lib/Shimura/Uniformisation/LieExponential` (`New.exists_lie_exponential`, `New.exists_holomorphic_chart`,
`New.LineBundle.IsProjEmbedding.compactSpace_complexPoint`, `New.LineBundle.IsProjEmbedding.nonempty_uniformisation`)

### 5.3 Projective embeddings are given by theta functions

*Origin:* adapted from the Appell–Humbert theorem on line bundles on complex tori (D. Mumford, *Abelian Varieties*,
§§1–2; L. Breen, *Fonctions thêta et théorème du cube*, LNM 980 (1983)): here only its existence half, for one
projective embedding whose class satisfies the parallelogram law, on a group with a given uniformisation.

*Method of the formal proof:* the route trivialises the pull-back of `N` to `V` by a nowhere vanishing function `σ`
subject to a doubling equation `σ(2z) = σ(z)⁴·c(z)`. The function `c` comes from the parallelogram law for `[N]` (4.1),
read on `A × A`, corrected by the exponential of a quadratic form; the equation is solved by an analytic function near
`0`, which is extended to all of `V` by halving. Then 1.1 (f), applied to `σ`, yields the form `B`.

Let `A` be a commutative group scheme over `ℂ`, `e : V → A(ℂ)` a uniformisation with kernel `L` (5.1), and `N` a
projective embedding of `A` with finitely many coordinates whose class satisfies the parallelogram law (4.1). Then there
are a form `B` with positive Riemann form, `χ`, and `θ` such that `(B, χ)` are Appell–Humbert data for `L` and `N` has
theta coordinates `θ` of type `(B, χ)` along `e`.

*Needs:* 1.1, 4.1, 5.1.

Relation to AbelianSchemesAndArithmeticModuli §A5.3 (the Appell–Humbert classification): once `V/L` is identified with
`A^an` (§A5.1, as in 5.2) and `N` with a holomorphic line bundle on it, §A5.3 gives `N ≅ L(H, α)` with `H` positive, and
the coordinates of `N` become theta functions of type `(B, χ)` with `B(u, v) = π H(v, u)` and `χ = α` (Conventions, so
`E_B = −E`). Thus §A5.3 implies this statement without the hypothesis of the parallelogram law, which the route needs to
build the factor of automorphy on complex points without analytification.

[ShortProof], `Lib/Shimura/Uniformisation/AppellHumbert` (`New.Uniformisation.appell_humbert`,
`New.exists_analyticAt_double_eq`, `New.exists_extension_double`, `New.induction_on_double`)

### 5.4 Homomorphisms of theta-polarised tori extend over an arc

*Origin:* adapted from the theorems that homomorphisms of abelian schemes, and identities between line bundle classes,
extend from the generic fibre to the whole base (S. Bosch, W. Lütkebohmert, M. Raynaud, *Néron Models* (1990), 1.2/8
and 4.4/1; G. Faltings, C.-L. Chai, *Degeneration of Abelian Varieties* (1990), I.2.7; L. Moret-Bailly, *Pinceaux de
variétés abéliennes*, Astérisque 129 (1985), II.3.5). Here the base is a valuative arc, of any rank and possibly not
Noetherian; the maps are maps of complex tori with theta coordinates that pull one theta polarisation back to an integer
multiple of the other, with `m·L^⊥ ⊂ L` for a unit `m` of the arc; and the homomorphism and the identity of classes are
extended at once.

*Method of the formal proof:* (a) and (b) compare sections of `N` with functions on `V` by dividing by the theta
coordinates: a lift of a translation by `e(a)` becomes a multiple of `U_a`, and the commutation rule 1.1 (b) of the
`U_a` gives (b). For (c), 1.4 (b) supplies one scalar after which a finite family of theta functions lies in an
`O`-module of sections stable under the lifts of 4.5; this gives a section over `O` of the graph in `A × A′`, and points
of the generic fibre extend over `O` by the valuative criterion of properness. The pinned Mathlib has that criterion
(`AlgebraicGeometry.IsProper.eq_valuativeCriterion`, with `AlgebraicGeometry.ValuativeCriterion.existence` and
`AlgebraicGeometry.ValuativeCriterion.uniqueness`). On Tau Ceti's main branch, later than the revision pinned here: the
extension of a morphism from the generic point to a unique section over a base whose local rings are valuation rings,
`AlgebraicGeometry.Scheme.Hom.existsUnique_section_of_valuationRing`.

Let `O` be a valuative arc, `A` an abelian scheme over `O`, `e : V → A(O)` a uniformisation with lattice `L` (5.1),
and `N` a projective embedding of `A` with theta coordinates of type `(B, χ)` along `e`, `B` with positive Riemann form.
Let `m ∈ ℕ` be a unit of `O` with `m·L^⊥ ⊂ L`, such that for each `a ∈ L^⊥` the translation by `e(a)` lifts to the
sections of `N` (4.5).
(a) The map from `H⁰(A, N)` to functions on `V` sending a section to its quotient by the coordinates times `θ` is
injective, sends the coordinate sections to the `θ_i`, and sends lifts of translations by `e(a)` to multiples of `U_a`.
(b) (*Weil pairing*) Lifts `Φ`, `Ψ` of the translations by `e(a)`, `e(b)` to `N^{⊗m}` satisfy `ΦΨ = c·ΨΦ` on all
coordinates if and only if `c = e(m·E_B(a, b))`.
(c) Let `A′` be a commutative group scheme proper over `O`, `s′ : V → A′(O)` a homomorphism killing `L`, and `M` a
projective embedding of `A′` with theta coordinates of type `(μB, χ^μ)` along `s′`, `μ ∈ ℕ`. If the classes of `N` and
`M` satisfy the parallelogram law, there is a homomorphism `ψ : A → A′` over `O` with `ψ(e(z)) = s′(z)` for all `z` and
`ψ^*[M] = μ[N]`.

*Needs:* 1.4, 4.1, 4.2, 4.5, 5.1.

The formal proof proves (c) through a section of a homomorphism `π : A′ → A` built on the graph, under a hypothesis on
classes that the parallelogram law supplies.

Relation to AbelianSchemesAndArithmeticModuli §§A3.5–A3.7 (Weil pairings and theta groups): the lifts in (b) act as
elements of the theta group `G(N^{⊗m})` of §A3.6 (see 4.5), and `ΦΨ = c·ΨΦ` takes the commutator in the order of
§A3.6 (2), so `c` is the commutator pairing of `G(N^{⊗m})` at `e(a)`, `e(b)`; for `a, b ∈ L^⊥` these points are killed
by `m`, and then by §A3.6 (2) the pairing is `e_m(e(a), φ_N(e(b)))`, with `e_m` of §A3.5 (the polarised pairing of
§A3.7 for `λ = φ_N`). (b) computes it through the Riemann form, which §§A3.5–A3.7 do not do.

[ShortProof], `Lib/Shimura/ArcExtension` (`New.Variety.isSeparatingFamily_atGeneric_of_surjective`,
`New.HasThetaCoords.holomorphicAt`, `New.Variety.thetaEval`, `New.Variety.exists_theta_evaluation`,
`New.Variety.lift_commutator_iff_weil_pairing`, `New.Variety.exists_sections_of_translation_stable`,
`New.Variety.exists_section_of_hasThetaCoords`, `New.Variety.exists_hom_of_hasThetaCoords`);
`Lib/Shimura/Uniformisation/HolomorphicFamilies` (`New.bijective_restrict_genericPt`)

### 5.5 Analytic families of theta tori and the ball chart

*Origin:* particular to this proof: the theta tori with a fixed frame, parametrised by the positive lines of a hermitian
form of signature `(1, n − 1)`, form one analytic family over a ball, in which the theta coordinates are analytic up to a
common factor, and an isomorphism from a translate of a moduli point to itself acts linearly on the parameters with
local term `p(0)·det(1 − tK)`; the nearest published result is the complex uniformisation of unitary Shimura varieties
by the ball.

*Method of the formal proof:* the period map `(E ⊗ ℝ)ⁿ → V` is written explicitly, affine in the point of the ball; the
Poincaré series of 1.2 depends analytically on the parameter; the linearisation of the action at a fixed point is
computed in the explicit coordinates.

Let `D` be PEL data. An *analytic family* of theta tori is a nonempty connected open `U ⊂ ℂ^{n−1}` (its *domain*), a
frame `g`, and for each `b ∈ ℂ^{n−1}` a reflection `J_b` and a theta torus `Y_b` for `(g, J_b)` on a fixed space `V`
(3.3), such that `b ↦ Q_b(w)` is analytic on `U` for each `w`, its derivative at a point of `U` in a direction `v ≠ 0`
is never complex-linear for the structure of `Q_b`, the matrix `β_Y` and the forms `B(Q_b w, ·)` do not depend on `b`,
and `Re B(u, u) > 0` for `u ≠ 0`. For `ν ∈ ℕ`, marked vectors `P ∈ ((E ⊗ ℝ)ⁿ)^ν` and a *parameter*
`q = (b, ζ) ∈ ℂ^{n−1} × V^ν`, its *point* at `q` (for `P`) is the moduli point `(g, J_b, (Q_b^{−1}(ζ_i) + P_i)_i)`.
(a) For an analytic family and `b₀ ∈ U` there is a function `c` with `c(b) ≠ 0` near `b₀` such that
`(b, z) ↦ c(b)·θ_t^{(b)}(z)` is analytic at `(b₀, z)` for all `t ∈ T` and `z`.
(b) For a hermitian `H` and `u` with `ūᵀHu = a > 0` there are coordinates `ℂⁿ ≅ ℂ × ℂ^{n−1}` with `e(ū) = (1, 0)` in
which the set of `b` with `Re xᵀHx̄ > 0`, `x = e^{−1}(1, b)`, is star-convex at `0`.
(c) Let `e : ℂⁿ ≅ ℂ × ℂ^{n−1}` be linear coordinates for which the ball of (b) (the `b` with `Re xᵀHx̄ > 0`,
`x = e^{−1}(1, b)`) is connected, and let `(g, J)` be a signed frame for `β` with `H = Φ_{v₀}(β)` negative on the nonzero
`y` whose conjugate has first coordinate `0` (`ȳᵀHy < 0`). Then some analytic family has as domain this ball, frame `g`,
reflections the reflections of `H` at the lines of the ball, and an explicit period map.
(d) Every moduli point `o = (x, J, P)` with `ν` marked vectors has a *ball family*: an analytic family `f` with `0` in
its domain such that, writing `f(q)` for its point at `q` for the marked vectors `P`: `f(0) = o`; every moduli point
with `ν` marked vectors and the frame of `o` is the point of `f` for the marked vectors `0` at some `(b, ζ)` with `b` in
the domain; and, if `z` is an isomorphism `o·(g, α) ≅_{K(𝔑)} o` with separable characteristic polynomial and `J` is the
marked reflection of `z` at `j` (8.1), then some `ℂ`-linear endomorphism `K` of `ℂ^{n−1} × V^ν` has
`z : f(q)·(g, α) ≅_{K(𝔑)} f(Kq)` for all `q` near `0`, and the local term `p = p_{α, char(z), j}` of 8.1 satisfies
`p(t) = p(0)·det(1 − tK)` for all `t ∈ ℂ`.

*Needs:* 1.2, 3.1, 3.3, 8.1 (the local term and marked reflections, as definitions).

[ShortProof], `Lib/Shimura/Uniformisation/BallModel` (`New.Variety.AnalyticFamily`,
`New.Variety.AnalyticFamily.exists_analytic_thetaCoord`, `New.Variety.positiveBall`, `New.Variety.exists_ball_chart`,
`New.Variety.ballPeriod`, `New.Variety.exists_analyticFamily_positiveBall`, `New.Variety.IsBallFamily`,
`New.Variety.exists_isBallFamily`)

## Layer 6: Theta families

A theta family is an abelian scheme with `𝓞_E`-action over a base, with a linear system whose coordinates are theta
coordinates over local rings and level points that determine the points of the base (6.1). Its objects over a valuative
arc can be modelled on theta tori, and homomorphisms of modelled objects are rational matrices (6.2); every complex
object with full level structure has a model (6.3), and the geometric fibres of modelled objects are rigid (6.4).
Families are built from dense sets of complex points: flat closures of points whose ideals are cut out (6.5), linear
systems and group laws by density (6.6), and theta families from theta tori (6.7).

### 6.1 Theta families, full level structures and rigidity

*Origin:* particular to this proof: a family of abelian schemes with `𝓞_E`-action embedded by theta coordinates, with
level points and a signature condition, with no moduli property; and rigidity of its objects over Noetherian local
rings; the nearest published notion is a family of abelian varieties with a theta structure in Mumford's sense.

*Method of the formal proof:* (a) the pull-back of a full structure is a full structure; (b) the spanning hypothesis
and the theta structure 4.5 (d); (c) the rigidity of theta structures 4.5 (c) with the level points.

Let `D` be PEL data and `τ : S → Spec 𝓞_E` a scheme over `𝓞_E`. A *theta family* `𝒳` over `S` consists of an abelian
scheme `A → S` of relative dimension `n·f` with an action of `𝓞_E`, a projective embedding `N` of `A` over `S` with
coordinates indexed by `T`, and an `𝓞_E`-linear map `λ` from the classes killed by `𝔑` to the sections of `A`
(*level points*), such that: (i) after any base change to a local ring `B`, the coordinates of `N` form a theta structure
for `T`, the Lagrangian `Λ` and the restriction of `λ` to `T` (4.5); (ii) `[N]` satisfies the parallelogram law,
`⟨βx, y⟩_{[N]} = ⟨x, (1 − β)y⟩_{[N]}`, and `y^*[N] = ⟨βy, y⟩_{[N]} + 0^*[N]` for all points `x, y`; (iii) for every
integer `b` and every `Spec B → S` with `B` local there is a Lie chart (4.4) whose matrices satisfy the signature
condition for the structure map `𝓞_E → B` and the elements `β̄ − b`, `β − b`; (iv) for every ring `B`, two `B`-points of `S` over the same
point of `Spec 𝓞_E` at which `N` pulls back to the same linear system along every level point are equal. An *object*
over `T` is a `T`-point `x` of `S`, with the pulled-back abelian scheme `A_x`, linear system `N_x`, level points and
structure map `𝓞_E → Γ(T, 𝒪)`. A *full level structure* on an object over a ring `R` is an injective `𝓞_E`-linear map
from `T_n` to the sections of `A_x` extending the level points, such that for each ring map `ι : R → ℂ` there is
`ε ∈ Ẑ^×` with: for classes `[y], [z]` killed by `m`, lifts of the translations by their sections to `N_x^{⊗m}` commute
on coordinates up to a scalar `c` with `ι(c) = ψ_f(ε·m·ξ·zᴴy)`. An object over `k` is *rigid* if on every pull-back to a
Noetherian local ring `B` the global functions on the abelian scheme are constant on the fibres and the coordinate
sections span `H⁰` of the linear system.
(a) A full level structure on an object over a local ring `R` pulls back to one along every local homomorphism
`R → ℂ`.
(b) Let `x` be rigid over a field of prime characteristic `l`, `w` a pull-back of `x`, and `y` a point of `A_w` with values
in a Noetherian local ring, killed by a power of `l` on some nonempty affine scheme over it, with `⟨y, z⟩_{[N]} = 0`
for all points `z` after any base change. Then `y = 0`.
(c) Let `x` be rigid over a field `k`, `x₁` its pull-back to a Noetherian local ring `B`, `x₂` another object over `B`
with the same structure map `𝓞_E → B`, and `j : A_{x₁} → A_{x₂}` an `𝓞_E`-linear homomorphism that respects the
pairings of the line bundle classes and the level points. Then `x₁ = x₂`, and `j` commutes with the maps to `A`.

*Needs:* 3.2, 4.1, 4.2, 4.4, 4.5.

Relation to PELModuli §§M1.4–M1.7: a theta family is a family of abelian schemes with `𝓞_E`-action and a polarisation
class `[N]`, but it is not asked to be, and is not shown to be, the pull-back of the universal object of PELModuli; its
level points are sections at the classes killed by `𝔑` only. A full level structure here is an injective labelling of
torsion sections by the whole `𝓞_E`-module `T_n ≅ (E/𝓞_E)ⁿ`, with the Weil pairing
(read through commutators of lifts, 4.5) prescribed by `ψ_f(ε·m·ξ·zᴴy)` at every complex embedding; over `ℂ` it plays
the part of a full Tate trivialisation of §M1.4 for the lattice `𝓞_Eⁿ` with the trace form of `ξ` and no excluded
primes, whereas the level structures of §§M1.5–M1.6 are orbits of such trivialisations under an open compact subgroup,
away from the primes in `□`, over any locally Noetherian scheme over the good-prime base `S₀` of §M0.10. Over `ℂ`, for
an object with a model on a polarised period map, 10.3 (b) identifies the full level structures with those Tate
trivialisations of §M1.4, for the unitary data of 10.1, that extend the level points; over other bases the two notions
are not compared. In AbelianSchemesAndArithmeticModuli §A3.8 a full level structure of level `N` is a basis of `A[N]`;
"full level structure" names here the labelling of all torsion by `T_n` described above.

[ShortProof], `Lib/Shimura/ThetaModuli/ThetaFamilyRigidity` (`New.ThetaFamily`, `New.ThetaObject`,
`New.ThetaObject.FullLevelStructure`, `New.ThetaObject.FullLevelStructure.exists_pullback`,
`New.ThetaObject.HasSpanningCoords`, `New.ThetaObject.HasSpanningCoords.eq_zero_of_pairing_eq_zero`,
`New.ThetaObject.HasSpanningCoords.eq_and_comp_toFamily_eq_of_hom`); `Lib/Shimura/ThetaModuli/PELThetaTori`
(`New.PEL.HasClassLaws`)

### 6.2 Objects modelled on theta tori, and their homomorphisms

*Origin:* particular to this proof: the description of objects of a theta family over a valuative arc whose generic
fibre is a theta torus, of their torsion, and of their homomorphisms by matrices in `GL_n(E)`; the nearest published
result is the description of homomorphisms of complex abelian varieties with `𝓞_E`-action by rational matrices on their
period lattices.

*Method of the formal proof:* a homomorphism is holomorphic, so it lifts to a `ℂ`-linear map of the universal covers
(5.1) that maps lattices to lattices, hence is a rational matrix in the coordinates of the period maps; conversely a
rational matrix with the integrality and similitude conditions gives a map of tori, which extends over the arc by 5.4.

Let `O` be a valuative arc, `𝒳` a theta family, `y` an object over `O`, and `Y = (β_Y, Q, B)` a polarised period map
for `(g, ℓ)` on `V` (3.3). A *model* of `y` on `Y` is a uniformisation `e` of `A_y` by `V` with kernel `Λ_0`, such that
the structure map `𝓞_E → O ⊂ ℂ` is `Φ_{v₀}`, `e∘Q` is `𝓞_E`-linear, the level point of each class `l` is `e(Q(y_l))`
for the chosen representative `y_l` of `l`, and `N_y` has theta coordinates of type `(B, χ)` along `e` for some `χ`.
(a) If `A` is an abelian scheme over `ℂ`, smooth of relative dimension `d`, with a projective embedding whose class
satisfies the parallelogram law, and `e : V → A(ℂ)` is a homomorphism with dense image, killing `Λ_0`, along which the
`θ_t` of `Y` are homogeneous coordinates, then `e` is a uniformisation with kernel `Λ_0`, with theta coordinates `θ_t`
of type `(B, χ_D)`, and `d = n·f`.
(b) A model gives a full level structure (6.1): the class of `g⁻¹y`, `y ∈ Eⁿ`, goes to `e(Q(y))`.
(c) For `b ∈ Λ_0^⊥`, `#T·b ∈ Λ_0`, and the translation by `e(b)` has a lift to the sections of `N_y` that preserves the
`O`-span of the coordinates; the multiplier `χ` equals `χ_D` on `Λ_0`, the canonical multiplier of `β`.
(d) Let `x, x′` have models on `Y`, `Y′` (frames `g, g′`, matrices `ℓ, ℓ′`), and `ψ : A_x → A_{x′}` an `𝓞_E`-linear
homomorphism with `ψ^*[N_{x′}] = μ[N_x]`, `μ ≥ 1` an integer. Then there is `z ∈ GL_n(E)` with `ψ(e(Q w)) = e′(Q′(zw))` for all
`w ∈ (E ⊗ ℝ)ⁿ`, `μ·(polarisation form of β_Y) = polarisation form of zᴴβ_{Y′}z`, and
`Φ_{v₀}(z) ℓ Φ_{v₀}(z)^{−1} = ℓ′`.
(e) Conversely, let `z ∈ GL_n(E)` with `Φ_{v₀}(z) ℓ Φ_{v₀}(z)^{−1} = ℓ′` and `k = g′^{−1} z g` integral with `k^{−1}` a
frame for the scalar `μ > 0`. Then `x` and `x′` have the same structure map, and there is an `𝓞_E`-linear isogeny
`ψ : A_x → A_{x′}` with `ψ^*[N_{x′}] = μ[N_x]`, acting on torsion by `k` and on periods by `z`.

*Needs:* 3.3, 4.3, 4.5, 5.1, 5.4, 6.1.

[ShortProof], `Lib/Shimura/Uniformisation/TorusModel` (`New.ThetaObject.TorusModel`,
`New.ThetaTori.PeriodMap.exists_uniformisation_of_isSeparatingFamily`, `New.ThetaObject.TorusModel.fullStructure`,
`New.ThetaObject.TorusModel.exists_unit_on_roots_of_unity`,
`New.ThetaObject.TorusModel.exists_isTranslationLift_of_dualLattice`,
`New.ThetaObject.TorusModel.multiplier_eq_canonicalMultiplier`, `New.ThetaObject.TorusModel.exists_matrix_of_hom`,
`New.ThetaObject.TorusModel.baseHom_eq_baseHom`, `New.ThetaObject.TorusModel.IsIsogenyOfMatrix`,
`New.ThetaObject.TorusModel.exists_isogeny`)

### 6.3 Complex objects with full level structure are modelled on theta tori

*Origin:* particular to this proof: every object over `ℂ` with structure map `Φ_{v₀}` and a full level structure has a
model on a polarised period map for some adelic frame and some reflection; the nearest published result is the
description of the complex points of a unitary PEL moduli space by an adelic double coset.

*Method of the formal proof:* 5.2 (d) uniformises the abelian variety; the action of `𝓞_E` on `V` and the full level
structure give a period map `Q` with `e∘Q` sending rational vectors to torsion points; the frame `g` is found from the
Weil pairing of the full level structure and 3.1 (a); the signature condition 5.1 (c) gives the reflection.

Let `𝒳` be a theta family, `x` an object over `ℂ` whose structure map is `Φ_{v₀}`, and `ε` a full level structure on
`x`. Then there are `g ∈ GL_n(𝔸_f)`, a reflection `ℓ`, `d ∈ ℕ`, a polarised period map `Y` for `(g, ℓ)` on `ℂ^d`, and a
model of `x` on `Y` whose full level structure (6.2 (b)) is `ε`. More precisely, for any uniformisation `e` of `A_x` by
a space `V` and any period map `Q` for `ℓ` with `e∘Q` `𝓞_E`-linear, sending `y ∈ Eⁿ` to the torsion point of `ε` at the
class of `my` for an adelic matrix `m`, and with `e^{−1}(0) ⊂ Q(Eⁿ)`, some frame `g` and some polarised period map for
`(g, ℓ)` on the same space `V` carry such a model.

*Needs:* 3.1, 3.3, 5.1, 5.2, 6.1, 6.2.

[ShortProof], `Lib/Shimura/Uniformisation/ModelExists` (`New.Variety.exists_torusModel_of_isPeriodMap`,
`New.Variety.exists_torusModel`)

### 6.4 The sections of the theta line bundle are spanned by the coordinates

*Origin:* adapted from the theorem that theta functions span `H⁰` of every ample line bundle on an abelian variety
(D. Mumford, *On the equations defining abelian varieties I*, Invent. Math. 1 (1966), §§1–2; S. W. Shin, *Abelian
varieties and Weil representations*, Algebra Number Theory 6 (2012), Prop. 2.12, over a base; M. Bolognesi,
A. Massarenti, Comment. Math. Helv. 91 (2016), Lemma 4.1, for odd type). Here the spanning is deduced from the count
over `ℂ` (5.4 (a), 1.2 (c)), with no Riemann–Roch theorem, and it is asserted for the coordinate sections of an object
that has a model, after any pull-back of a geometric fibre to a Noetherian local ring.

*Method of the formal proof:* over `ℂ`, the sections are theta functions (5.4 (a)) and their number is `#T` by 1.2 (c);
the lattice of sections over `O` is stable under lifts of translations by the dual lattice (6.2 (c)), so by 1.4 (b) and
Serre's theorem on finite generation it is spanned by the coordinates; spanning passes to the special fibre and to its
pull-backs by a trace over torsion.

Let `O` be a valuative arc, `y` an object of a theta family over `O` with a model on a polarised period map (6.2),
`k` an algebraically closed field, `χ : O → k` a ring homomorphism, and `x₀` the pull-back of `y` along `χ`. Then `x₀` is
rigid (6.1): on every pull-back of `x₀` to a Noetherian local ring `B`, global functions on the abelian scheme are
constant on the fibres over `B`, and the coordinate sections span `H⁰` of the linear system over `B`.

*Needs:* 1.2, 1.4, 4.1, 4.5, 5.4, 6.1, 6.2.

[ShortProof], `Lib/Shimura/IntegralModel/UniversalFamily` (`New.ThetaObject.TorusModel.span_coordSection_eq_top_of_isPullbackAlong`,
`New.ThetaObject.TorusModel.hasSpanningCoords_of_specMap_comp_eq`)

### 6.5 Ideals cut out by points, and flat closures

*Origin:* particular to this proof: ideals whose forms in the degrees `r^j` are those vanishing at given points, with
prescribed ranks in all degrees `r^j`, form flat families, and the closure of points whose ideals are cut out by linear
systems is flat over a reduced base; the nearest published result is the flatness of the closure of the theta-null
locus in Mumford's construction.

*Method of the formal proof:* (a) by a Noetherian argument on monomial ideals (Dickson's lemma); (b) the ranks are the
same at the special point and at the points `ψ_k`, and the conditions in the degrees `r^j`, `j ≤ i`, determine the ideal
by the degree bound; flatness follows from constancy of the Hilbert function on the degrees `r^j`; (c) glues the charts.

Use the notions of 3.6 (*cut out*).
(a) For finitely many variables `J`, `r ∈ ℕ` and counts `σ : ℕ → ℕ`, every large `i` is a *degree bound*: every
monomial ideal that omits at most `σ_j` monomials of degree `r^j` for each `j ≤ i` does so for every `j`.
(b) Let `A` be a ring, `φ : A → k` a local homomorphism to a field, `ψ_k : A → K` ring maps to a field with no common
nonzero kernel element, `r > 1`, `i` a degree bound for `σ`, and `P_a ∈ A^J` points. Let `I₀ ⊂ k[X]` be cut out in the
chart `c` by the `φ(P_a)` with ranks `σ` up to `i`, and each `I_k ⊂ K[X]` cut out in the chart `c` by the `ψ_k(P_a)` with
ranks `σ` up to `i`.
Let `T ⊂ A[X]` be the ideal of polynomials whose image under each `ψ_k` lies in `I_k`. Then `I₀` is the image of `T`
under `φ`, and `A[X]/T` is flat over `A`.
(c) Let `S` be reduced, with complex points `η_k` of which finitely many are dense, linear systems `P_a` on `S` with
coordinates indexed by `J`, `r > 1`, `i` a degree bound for `σ`, and nonzero vectors `θ_k(w) ∈ ℂ^J` whose ideals are
cut out at `η_k` by the `P_a`. Assume that every point of `S` specialises to a geometric point at which some set has its
ideals cut out by the `P_a`. Then there are a scheme `𝒜` over `S` with a projective embedding `N` over `S`, flat over
`S`, and points `e_k(w)` of `𝒜` over `η_k` with homogeneous coordinates `θ_k(w)`, such that the fibre of `𝒜` over each
`η_k` is reduced with the `e_k(w)` dense in it, all the `e_k(w)` are dense in `𝒜`, and every point of `S` specialises
to a geometric point over which the fibre of `𝒜` is reduced.

*Needs:* 3.6.

[ShortProof], `Lib/Shimura/ThetaModuli/FlatClosure` (`New.Variety.ThetaNull.eventually_isCutDegree`,
`New.Variety.ThetaNull.eq_map_and_flat_of_isCutOut`, `New.Variety.ThetaNull.IsFlatClosure`,
`New.Variety.ThetaNull.exists_isFlatClosure`)

### 6.6 Linear systems and group laws by density

*Origin:* particular to this proof: on a flat proper scheme over a reduced base, line bundles, group laws and actions are
constructed from what they are at the members of a dense set of complex points; the nearest published results are the
extension of identities by density and the rigidity of group laws.

*Method of the formal proof:* (a): the transition functions `w_j/w_i` are regular because the families are local
combinations of each other, and they agree with those of `M` up to a cocycle that is trivial; (b): a morphism is
determined by its values on a dense family of reduced points, so the laws of a group scheme and of an action pass from
the vector spaces `V` to `𝒜`; smoothness comes from the reduced fibres and the group structure; (c): Riemann's relation
3.5, whose coefficients are regular near every point because of the nonvanishing indices, makes the products of theta
coordinates for one Riemann tuple local combinations of those for another, so (a) gives a linear system on `𝒜 ×_S 𝒜`
that defines a map to a power of `𝒜`; padding tuples (3.2) give in this way addition, subtraction and the action of
elements spanning `𝓞_E` over `ℤ`, hence of all of `𝓞_E`.

(a) Let `Z` be a reduced scheme, `ξ_a` a family of complex points separating `Z`, `M` a linear system on `Z` with
homogeneous coordinates `m_a` at `ξ_a`, and `w_a` vectors such that `w` and `m` are local combinations of each other
(each coordinate of one is locally a regular function times a sum of coordinates of the other). Then there is a linear
system `N` with `[N] = [M]` and homogeneous coordinates `w_a` at `ξ_a`.
(b) Let `S` be reduced and locally Noetherian, `η_k` complex points of `S` with a finite dense subfamily, `𝒜` flat and
proper over `S` with a reduced geometric fibre at a specialisation of every point, `V` a finite-dimensional complex
space and maps `e_k : V → 𝒜(η_k)` such that all `e_k(z)` separate `𝒜` and each `e_k(V)` separates the fibre over `η_k`.
Let a ring `O` act on `V` by `F_k`. If addition, zero and the action extend to morphisms of `𝒜` over `S`, then `𝒜` is an
abelian scheme with an action of `O`, each `e_k` is additive and `c·e_k(z) = e_k(F_k(c)z)`.
(c) (*addition and action*) Let `D` be PEL data, `R` a ring in which `#T` is a unit, `S` a scheme over `Spec R`, `η_k`
complex points of `S`, `x_k` theta tori for `(g_k, ℓ_k)` on a fixed `V` (3.3) with theta coordinates `θ_t^{(k)}`, and
for each level point `ω` (a class killed by `𝔑`) a linear system `c_ω` on `S` with coordinates indexed by `T` that has
homogeneous coordinates `(θ_t^{(k)}(a_ω))_{t ∈ T}` at `η_k` (`a_ω` as in 3.6 (c)). An index `a ∈ T` is *nonvanishing*
at a point `t` of `S` if for all `s₁, s₂ ∈ T` with `s₁ + s₂ = a` the `s₂`-th coordinate of `c_{s₁}` does not vanish at
`t`. Assume that for every point `t` of `S` and every `s ∈ T` there is `a ∈ T` such that `a`, `−a` and `s − a` are
nonvanishing at `t`. Let `𝒜 → S` have a projective embedding `N` with coordinates indexed by `T`, and let
`e_k : V → 𝒜(η_k)` be maps such that `N` has homogeneous coordinates `(θ_t^{(k)}(z))_t` at `e_k(z)`, the scheme
`𝒜 ×_S 𝒜` is reduced and the pairs `(e_k(z), e_k(y))` are dense in it, and some section `o` of `𝒜` has
`o(η_k) = e_k(0)` for all `k`. Then there are a morphism `𝒜 ×_S 𝒜 → 𝒜` sending `(e_k(y), e_k(z))` to `e_k(y + z)` and,
for each `d ∈ 𝓞_E`, an endomorphism of `𝒜` sending `e_k(z)` to `e_k(d·z)`, where `d` acts on `V` as on `x_k`.

*Needs:* 3.2, 3.3, 3.5, 4.1, 6.5.

[ShortProof], `Lib/Shimura/ThetaModuli/FamilyFromPoints` (`New.Variety.ThetaNull.exists_isLinearSystem`,
`New.exists_isAbelianScheme`, `New.Variety.exists_maps_of_riemann_relation`, `New.Variety.exists_add_and_intAction`)

### 6.7 Theta families from dense complex points

*Origin:* particular to this proof: a theta family on a reduced base embedded by linear systems whose coordinates at a
dense set of complex points are the theta values of the level points of theta tori; the nearest published result is
Mumford's construction of families of abelian varieties from theta-null values.

*Method of the formal proof:* the flat closure of the theta points (6.5 (c)) is the total space; group law and action
come from 6.6 (b), (c), the theta structure over local rings from 3.3 (d) by density and 4.5, the signature condition
from 5.1 (c) by 4.4 (d), and the class laws from the theta coordinates.

Let `S` be reduced and locally Noetherian over `Spec R`, `R` a ring with a ring map `φ : 𝓞_E → R` such that
`Spec R → Spec 𝓞_E` is a monomorphism, and `η_k` complex points of `S` with a finite dense subfamily, with
`η_k^*∘φ = Φ_{v₀}` on `𝓞_E`. Let `D` be PEL data, `x_k` theta tori for `(g_k, ℓ_k)` on a fixed `V`, and for each level
point `ω` (a class killed by `𝔑`) a linear system `c_ω` on `S` with coordinates indexed by `T`, such that the product of
the `c_ω` is a projective embedding of `S` over `Spec R` and `c_ω` has homogeneous coordinates
`(θ_t^{(k)}(a_ω))_{t ∈ T}` at `η_k`. Assume that `φ(β̄ − β)` and `#T` are units of `R`; that every point of `S`
specialises to a geometric point at which some set has its ideals cut out by the `c_ω` with ranks `σ` up to `i` (3.6);
and that for every point `t` of `S` and `s ∈ T` there is `a ∈ T` such that `a`, `−a` and `s − a` are nonvanishing
indices of the `c_ω` at `t` (an index `a ∈ T` is *nonvanishing* at `t` if for all `s₁, s₂ ∈ T` with `s₁ + s₂ = a` the
`s₂`-th coordinate of `c_{s₁}` does not vanish at `t`, as in 6.6 (c)). Then there is a theta family over `S` (with structure map through `φ`) whose object at each
`η_k` is modelled on `x_k`.

*Needs:* 3.3, 3.5, 3.6, 4.4, 4.5, 5.1, 6.1, 6.2, 6.5, 6.6.

[ShortProof], `Lib/Shimura/ThetaModuli/FamilyFromPoints` (`New.Variety.exists_isThetaStructure`,
`New.Variety.exists_thetaFamily_of_points`)

## Layer 7: The universal theta family

The base of the universal family is the reduced closure of the theta values of the level points of all theta tori. Its
smoothness of relative dimension `n − 1` at good primes rests on an upper bound for first-order deformations, proved with
the reduction of isogeny kernels (7.1), a count of `w`-torsion points (7.2) and Drinfeld's lifting lemma (7.3). The
universal family exists (7.4); its fibre powers carry points given by linear data, which are dense and identified up to
isomorphism at a level (7.5); and analytic families immerse into them (7.6). Sections 7.5 and 7.6 hold for every
universal family in the sense of 7.4 without using that one exists, and the proof of existence in 7.4 uses the argument
of 7.5 (a), the first assertion of 7.6 (a) and 7.6 (b).

### 7.1 Reduction of isogeny kernels

*Origin:* adapted from the published theory of finite flat group schemes (Cartier's theorem that they are reduced in
characteristic zero) and of the reduction of torsion: here for objects of a theta family over a valuation subring of `ℂ`
with a full level structure, at a prime good for `D`, with the tangent line on which `𝓞_E` acts through the structure
map and a parameter whose powers cut out the torsion sections.

*Method of the formal proof:* (a) a finite flat subgroup scheme in characteristic zero is reduced, so a function
vanishing at all geometric points vanishes; (b) the torsion sections are the complex points of the kernel, dense by
(a); (c) the signature condition (6.1 (iii)) gives the line; (d) a regular function whose differential is nonzero on
the line of (c) serves as a local parameter, and the exponent is the number of torsion sections through the closed
point.

Let `𝒳` be a theta family, `V ⊂ ℂ` a valuation subring, `y` an object over `V` with a full level structure `ε`, `k` a
field, `φ : V → k`, `x` the pull-back of `y` to `k`, and `w` the kernel of the structure map `𝓞_E → k`.
(a) (*Cartier*) Let `V ⊂ K` with `K` algebraically closed of characteristic `0`, `S` a finite flat `V`-algebra and
`Spec S → A` a monomorphism to a commutative group scheme whose image is stable under `(x, y, z) ↦ x − y + z`. Then every
nonzero `s ∈ S` is nonzero at some `V`-algebra map `S → K`.
(b) For an isogeny `ψ` from `A_y` to an abelian scheme over `V`, a closed condition that holds at all torsion sections
`ε(s)` in the kernel of `ψ` holds at every point of the kernel.
(c) For an object over a local ring `R`, a field `k` over `R` and `b ∈ ℤ` with `β − b ↦ 0` in `k`, there is an additive
map `L` from `k` to the tangent vectors at `0` of the abelian scheme over `k`, whose image is a line on which `𝓞_E` acts
through the structure map, and into which `β̄ − b` maps all tangent vectors.
(d) If `D` is good at `w`, some nonzero `w`-torsion class `s` has `ε(s)` reducing to `0` over `k`; and there is an
additive map `ν` from the `w`-torsion classes to the `w`-torsion `k`-points of `x` such that, for a `w`-torsion point `z`
over a local `k`-algebra `B` with closed point `π(z)`, some `t` in the maximal ideal has `t^N = 0`, `N` the number of
classes over `π(z)`, and if `π(z) = 0` then `z` vanishes along every algebra map that kills `t`.

*Needs:* 4.1, 4.3, 4.4, 6.1.

[ShortProof], `Lib/Shimura/CongruenceRelation/KernelReduction` (`New.Variety.cartier`, `New.Variety.ker_factors_of_points`,
`New.Variety.placeTorsion`, `New.Variety.ker_factors_of_torsionPoint`, `New.Variety.exists_isLieLine`,
`New.Variety.exists_isLocalEquation_pow_sectionCount`, `New.Variety.exists_param_pow_card_eq_zero`)

### 7.2 Counting `w`-torsion points bounds natural semilinear functions

*Origin:* particular to this proof: a bound `n − 1` for the dimension of a space of natural semilinear functions on the
`w`-torsion points of the reduction of an object with full level structure at a good prime; the nearest published result
is the computation of the tangent space of a unitary PEL moduli space of signature `(1, n − 1)`.

*Method of the formal proof:* the local ring of the `w`-torsion at the origin is `k[τ]` with `τ` nilpotent (7.1 (d));
the `q_w^n` torsion sections map onto the `k`-points, so `q_w^{n−d}` pass through `0`, `d` the dimension of the
`w`-torsion `k`-points. The lowest term of `f` in `τ` has degree a power `q_w^j` with `0 < j < n − d`, and these
coefficients together with the values on `k`-points determine `l ∈ W`, which gives `dim W ≤ d + (n − d − 1)`.

Let `k` be an algebraically closed field, `D` good at `w = ker(𝓞_E → k)`, `x` over `k` the reduction of an object `y`
over a valuation subring of `ℂ` with a full level structure, and `W` a finite-dimensional `k`-vector space. For each local `k`-algebra `C`
let `f_C` be a map from the `w`-torsion `C`-points of `A_x` to `Hom_k(W, C)`, semilinear for the structure map, such
that (a) `f` is natural in `C`; (b) `f_{k[ε]}` vanishes on the points that reduce to `0`; (c) if `l ∈ W` has
`f_C(z)(l) = 0` for all finite local `C` and all `z`, then `l = 0`. Then `dim_k W ≤ n − 1`.

*Needs:* 6.1, 7.1.

[ShortProof], `Lib/Shimura/Deformation/TangentCount` (`New.Variety.finrank_le_of_placeTorsion`)

### 7.3 Drinfeld lifting and the tangent bound

*Origin:* adapted from the deformation theory of abelian varieties with `𝓞_E`-action: Drinfeld's lifting lemma
(N. Katz, *Serre–Tate local moduli*, LNM 868 (1981), §1; J. Lubin, J. Tate, *Formal moduli for one-parameter formal
Lie groups*, Bull. SMF 94 (1966)) and the dimension of the deformation space of a unitary PEL object of signature
`(1, n − 1)` (M. Harris, R. Taylor, *The Geometry and Cohomology of Some Simple Shimura Varieties* (2001), III.4.1).
Here Drinfeld's lemma is applied to the finite group of `w`-torsion points (7.1, 7.2), so that `p`-divisible groups and
crystals do not enter, and the argument covers every prime good for `D`, `p = 2` and primes ramified in `E`; of the
dimension of the deformation space only the inequality `≤ n − 1` for first-order deformations with no constant
direction is stated.

*Method of the formal proof:* (a) is the factorisation through an isogeny (with 4.3) applied to
multiplication by `c`, which is possible because `c` kills the points of `x′` that vanish modulo `ε`. For (b), the lift
of (a) is compared with the tangent line of 7.1 (c): a deformation in the direction `l` produces natural maps on the
`w`-torsion that are semilinear for the structure map, 7.2 bounds the space of such maps by `n − 1`, and rigidity of
`x₀` (6.4, 6.1 (c)) rules out constant directions.

Let `𝒳` be a theta family and `k` a field.
(a) (*Drinfeld's lemma*) Let `x, x′` be objects over `k[ε]` reducing to `x₀`, and `c ∈ 𝓞_E` kill every point of `A_{x′}`
that vanishes modulo `ε`. Then some homomorphism `F : A_x → A_{x′}` reduces to multiplication by `c` on `A_{x₀}`, and
`F(y) = c·y′` whenever `y`, `y′` agree modulo `ε`.
(b) (*tangent bound*) Let `k` be algebraically closed, `M` a finite-dimensional `k`-vector space, `x₀` an object over `k` and `x` an object
over `k ⊕ M^*` (square-zero) reducing to `x₀`, with structure map `𝓞_E → k → k ⊕ M^*`. Assume that `D` is good at the
kernel of the structure map of `x₀`, that `x₀` is rigid (6.1) and is the reduction of an object over a valuation
subring of `ℂ` with a full level structure, and that for `l ≠ 0` in `M` the pull-back of `x` along
`k ⊕ M^* → k[ε]`, `(a, φ) ↦ a + φ(l)ε`, is not the constant deformation of `x₀`. Then `dim_k M ≤ n − 1`.

*Needs:* 4.3, 4.4, 6.1, 6.4, 7.1, 7.2; AbelianSchemesAndArithmeticModuli §A3.1 (factorisation through an isogeny).
PELModuli §M2.12 gives the bound only at primes `p > 2` unramified in `E`, which the route does not restrict to.

[ShortProof], `Lib/Shimura/Deformation/TangentBound` (`New.Variety.AgreeModEps`, `New.Variety.drinfeld_lift`,
`New.Variety.isLinear_and_pairing_eq_of_reduction`, `New.Variety.finrank_tangent_le_card_index_sub_one`)

### 7.4 The universal theta family

*Origin:* particular to this proof: a theta family over a smooth projective base of relative dimension `n − 1` over a
localisation of `𝓞_E`, with a dense family of complex points of the base, one for each analytic family of theta tori and
each parameter, at which the fibre is modelled on the corresponding theta torus; no moduli property is claimed. The
nearest published result is Mumford's construction of moduli of abelian varieties from theta-null values (D. Mumford,
*On the equations defining abelian varieties II*, Invent. Math. 3 (1967), 75–135).

*Method of the formal proof:* the base `S` is the smallest reduced closed subscheme of a product of projective spaces,
one factor for each level point, that contains the vectors of theta coordinates of the level points of every theta
torus of 5.5. Finitely many of these points are dense in `S`: finitely many analytic families reach every moduli point
up to isomorphism at level `K(𝔑)` (7.6 (b)); in each family the point at a suitable parameter specialises to the points
at all parameters of its domain; and two parameters whose moduli points are isomorphic at level `K(𝔑)` give the same
point of `S`, by the argument of 7.5 (a) applied to the theta family that 6.7 puts on the closure of the two points.
Flatness over the good primes comes from 3.6 (c) and 6.5, and 6.7 builds the theta family on `S`. Smoothness of
relative dimension `n − 1` is checked along arcs whose closed point lies over a good prime: the analytic families give
`n − 1` independent directions at the generic point (7.6 (a)), and 7.3 bounds the tangent space at the closed point by
`n − 1`.

Let `D` be PEL data and `R ⊂ E` an `𝓞_E`-subalgebra. A *universal family* `𝒰` for `D` over `R` consists of: `R` a
Dedekind domain; an `R`-scheme `S` with a projective embedding over `R`, smooth of relative dimension `n − 1`; a theta
family over `S` (6.1); for each analytic family `f` (5.5) and each `b ∈ ℂ^{n−1}` a complex point `o(f, b)` of `S`,
these points being dense in `S`; for each `(f, b)` a model (6.2) of the object at `o(f, b)` on the theta torus of `f` at
`b`; and the condition that the complex points of the abelian scheme obtained from these models are holomorphic in
`(b, z)` for `b` in the domain of `f`. "Universal" refers to the modelled points `o(f, b)`; in the literature a
universal family is one that represents a moduli problem, and no such property is claimed or used.

Let `R` be the localisation of `𝓞_E` at a submonoid of non-zero-divisors, and `D` good over `R` (3.2). Then a universal
family for `D` over `R` exists.

*Needs:* 3.4, 3.6, 5.5, 6.5, 6.7, 7.3, 7.5 (a) (for the theta family on the closure of two points), 7.6 (a) (the first
assertion), 7.6 (b).

Relation to PELModuli §§M2.8–M2.9: for the unitary data of §M5.5 and a neat level, those sections give a smooth separated
algebraic space of finite type with a universal object, which represents the moduli problem `M_H` of §M1.7, over the
integers of the reflex field with the primes outside a set of good primes inverted (the good primes divide neither the
discriminant of the order, nor the index of the lattice in its dual, nor the level). A universal family here has a
projective base, theta coordinates and the dense family of modelled points, at the primes good for `D` in the sense of
3.2, which may divide the discriminant of `𝓞_E`, and it has no moduli property. Neither statement implies the other;
whether the base here, with its theta family, is a union of components of `M_H` for the corresponding datum and level
is stated in neither roadmap.

[ShortProof], `Lib/Shimura/ThetaModuli/UniversalFamily` (`New.Variety.ThetaNull.ThetaClosure.exists_smooth_near_arc`,
`New.Variety.ThetaNull.nonempty_universalFamily`); `Lib/Shimura/IntegralModel/UniversalFamily`
(`New.Variety.UniversalFamily`)

### 7.5 Points of linear data in the fibre powers

*Origin:* particular to this proof: the points of a fibre power of the universal abelian scheme given by a moduli point,
its nonzero `𝔪`-torsion and its marked vectors, their identification up to isomorphism at the level `K(𝔑) ∩ K(𝔪)`, the
density and smoothness at level one, and the closures of graphs of translations; the nearest published result is the
description of the complex points of a Kuga–Sato variety over a unitary Shimura variety by an adelic double coset.

*Method of the formal proof:* the point `[a]_𝔪` exists because `a` is the point at `0` of a ball family (5.5 (d)), and
`𝒰` has a model at that parameter. Two points are equal if and only if the objects are isomorphic compatibly with the
torsion and the marked vectors, which by 6.1 (c) and 6.4 is a homomorphism of modelled objects, hence a rational matrix
(6.2 (d)); conversely 6.2 (e). Smoothness of the fibre power from that of the base and the abelian scheme; density from
that of the points `o(f, b)` and the surjectivity of the uniformisations. Smoothness and density of the base are
conditions in the definition of a universal family (7.4). In (c) the level is given by 8.1 (e) for the pairs
`(𝔪_j, g_j)`.

Let `𝒰` be a universal family for `D` over `R` in the sense of 7.4, with abelian scheme `𝒜 → S`. For a nonzero
`𝔪 ∈ 𝓞_E` and `ν ∈ ℕ`, a moduli point `a = (x, J, P)` with `ν` marked vectors determines a complex point `[a]_𝔪` of the
fibre power of `𝒜` over `S` indexed by the nonzero `𝔪`-torsion classes and `{1, …, ν}`: the object modelled on
`(x, J)`, its nonzero `𝔪`-torsion points and the images of the `P_i`.
(a) Let `𝒳` be any theta family for `D` (6.1), over any scheme over `𝓞_E`, and `b = (x′, J′, P′)` a second moduli point
with `ν` marked vectors. Let `s` and `t` be complex points of the fibre power of the abelian scheme of `𝒳`, indexed as
above, given by an object over `ℂ` modelled (6.2) on `(x, J)` with its nonzero `𝔪`-torsion points and the images of the
`P_i`, and by an object over `ℂ` modelled on `(x′, J′)` with its nonzero `𝔪`-torsion points and the images of the
`P′_i`. Then `s = t` if and only if `a ≅ b` at level `K(𝔑) ∩ K(𝔪)` (3.1). In particular `[a]_𝔪 = [b]_𝔪` if and only
if `a ≅ b` at that level.
(b) At `𝔪 = 1` the fibre power `Z_ν` (with `ν` factors) is smooth over `R` of relative dimension `n − 1 + ν·n·f`, the
points `[a]_1` are dense in it, and for each `α ∈ 𝓞_E^ν` an endomorphism `m_α` of `Z_ν` sends `[a·(g, 1)]_1` to
`[a·(g, α)]_1` for all `g ∈ GU⁺`.
(c) For a finite family `γ_j = (𝔪_j, g_j)` of nonzero integers and elements of `GU⁺`, the *graph closure* is the reduced
closure, in the product of fibre powers, of the tuples `([a·g_j]_{𝔪_j})_j`; it is projective over `R`, and its complex
point attached to `a` depends only on the class of `a` at some level `K(𝔪)`.

*Needs:* 3.1, 5.5, 6.1, 6.2, 6.4, 8.1 (e).

Relation to PELModuli §M3.4 (complex points of PEL moduli): (a), with 6.3 and 7.6 (d), describes complex points by
moduli points (adelic frames with a reflection and marked vectors) up to rational isomorphism at a principal level, where
§M3.4 uses the double cosets `G^{(i)}(ℚ)∖(X × G(𝔸_f)/K)`; the reflection plays the part of the point of `X`, and the
frames, which are frames for varying matrices `β`, run through the forms that §M3.4 indexes by `ker¹(ℚ, G)`. The two
descriptions concern different spaces (the fibre powers over the base here, `M_K^ad(ℂ)` there). 10.2 compares their
index sets, the moduli points without marked vectors up to isomorphism at a level and the double cosets of §M3.4; the
spaces themselves are not compared in
either roadmap.

[ShortProof], `Lib/Shimura/IntegralModel/UniversalFamily` (`New.ThetaFamily.IsPointOf`,
`New.Variety.UniversalFamily.datumPoint`, `New.ThetaFamily.IsPointOf.eq_iff`,
`New.Variety.UniversalFamily.datumPoint_eq_iff`, `New.Variety.UniversalFamily.smooth_and_isDenseFamily_and_exists_comp_eq_act`,
`New.Variety.UniversalFamily.GraphClosure`, `New.Variety.UniversalFamily.GraphClosure.exists_level_point_eq`)

### 7.6 Analytic families immerse; arcs and complex points of graph closures

*Origin:* particular to this proof: the parameters of analytic families map holomorphically and immersively to the
fibre powers, finitely many analytic families reach every moduli point at a given level, every point of a graph closure
is the centre of an arc of objects, and every complex point of a graph closure comes from a moduli point; the nearest
published result is the uniformisation of unitary Shimura varieties by finitely many balls.

*Method of the formal proof:* holomorphy from the holomorphy of the uniformisations, a condition in the definition of a
universal family (7.4), and 5.5 (a); immersion from the condition on the derivative of the periods (5.5); finiteness
from the finiteness of classes of signed frames (9.3 (c)); arcs from the valuative criterion; surjectivity on complex
points from 6.3 and 7.5 (a).

Let `𝒰` be a universal family in the sense of 7.4 and `ν ≥ 1` the number of marked vectors (in (b) any `ν ≥ 0`).
(a) Let objects `x(b)` over `ℂ` of a theta family, `b ∈ ℂ^{n−1}`, have models on the theta tori `Y_b` of an analytic
family `f`. If, for some `b` in the domain of `f`, the uniformised points are holomorphic at `(b, z)` for all `z`, then
`b ↦ x(b)`, as a family of complex points of the base, is a holomorphic immersion at `b`. For marked vectors `P` and
`𝔪 ≠ 0`, the map `q ↦ [f(q)]_𝔪`, `f(q)` the point of `f` at `q` for `P` (5.5), is a holomorphic immersion at every
`q = (b, ζ) ∈ ℂ^{n−1} × V^ν` with `b` in the domain.
(b) For `𝔪 ≠ 0` there are finitely many analytic families `f_k` such that every moduli point with `ν` marked vectors is
isomorphic at level `K(𝔪)` to the point of some `f_k`, for the marked vectors `0`, at a parameter `(b, ζ)` with `b` in
its domain.
(c) Every point of a graph closure `C`, and every complex point of it over `R`, is the centre of an arc (a map from the spectrum
of a valuation subring of `ℂ`) of objects.
(d) If a morphism from `C` to the fibre power `Z_ν` sends the point of `C` attached to each `a` to `[a]_1`, every complex
point of `C` over `R` is the point attached to some `a`.

*Needs:* 5.1, 5.5, 6.3, 7.5, 9.3.

[ShortProof], `Lib/Shimura/IntegralModel/BallImmersion` (`New.Variety.AnalyticFamily.isHolomorphicImmersionAt_of_holomorphicAt`,
`New.Variety.ModuliPoint.exists_finite_analyticFamily_isLevelIso`,
`New.Variety.UniversalFamily.isHolomorphicImmersionAt_datumPoint`,
`New.Variety.UniversalFamily.GraphClosure.holomorphicAt_point`, `New.Variety.UniversalFamily.GraphClosure.exists_arc`,
`New.Variety.UniversalFamily.GraphClosure.exists_arc_centre_eq`, `New.Variety.UniversalFamily.GraphClosure.point_surjective`)

## Layer 8: Hecke correspondences and the Kuga–Sato model

Hecke operators of the unitary similitude group at split places are realised inside the group ring, with the safe places
and the elements `τ_{w,j}` of the congruence relation, the local terms of fixed points and neat levels (8.1). The model
is a tower of covers of the base with legs indexed by cosets, given by its list of properties, and the Hecke elements act
on any functor with descent (8.2). The congruence relation rests on a pointwise statement about Frobenius twists of Hecke
neighbours (8.3), and the model exists (8.4).

### 8.1 Hecke elements, safe places, local terms and neat levels

*Origin:* adapted from the published theory of Hecke operators on unitary similitude groups (for the Hecke algebra of a
pair, G. Shimura, *Introduction to the Arithmetic Theory of Automorphic Functions* (1971), ch. 3 and 7–8) and of neat
levels: here the Hecke algebra of `K(𝔑)` realised inside the group ring, the elements `τ_{w,j}` at safe split places,
which act on `K(𝔑)`-fixed vectors as the Hecke operators of `GL_n(E_w)` up to a central scalar, the local terms of fixed
points, and the neatness of levels inside all but finitely many places, which rests on (c): a rational automorphism of a
signed frame that is trivial modulo an ideal of large enough norm is `1`.

*Method of the formal proof:* (b) by the coset decomposition of the double coset of `diag(ϖ1_j, 1)`; (c) an automorphism
of a signed frame scales a form that is definite at a place `w ≠ v₀`, so its eigenvalues have absolute value `1` at
every infinite place, and the trace of `y − 1`, divisible by an ideal of large norm and bounded at every place, is `0`.

Let `K₀ = ℚ(√−d₀) ⊂ E`. For a group `G`, a subgroup `K` and a commutative ring `k`, an element `a = Σ a_g[g]` of the
group ring `k[G]` acts on every representation of `G`; its *coset function* is `Σ a_g 1_{gK}`. The *Hecke algebra*
`𝓗(𝔑)` (over `k`) is the set of `a ∈ k[GL_n(𝔸_f)]` supported on `GU⁺` that map `K(𝔑)`-fixed vectors to
`K(𝔑)`-fixed vectors in every representation; it is a subalgebra. (In the literature the Hecke algebra of `K(𝔑)` is a
double-coset ring; `𝓗(𝔑)` maps onto the double-coset ring of the pair `(GU⁺, K(𝔑))`, compatibly with the actions on
invariants, by 10.5.) For a split place `w` with conjugate `w̄`, let
`j_w : GL_n(E_w) → GL_n(𝔸_f)` send `h` to the element that is `(hᵀ)^{−1}` at `w`, the conjugate of `h` at `w̄` and `1`
elsewhere (a unitary element). A finite place `w` of `E` is *safe* for `𝔑` if the place `u` of `K₀` below it contains
`β₀ − b` for some `b ∈ ℤ` with `β₀ − b` coprime to its conjugate (so `u` splits and has prime norm), `𝔑 ∉ w`, and `𝔑`
lies in no place above `ū`. For a safe split place `w` and a subspace `A ⊂ k_wⁿ` of dimension `j`, let `γ_A ∈ GL_n(E_w)`
be an element of `GL_n(𝒪_w)·diag(ϖ_w 1_j, 1)·GL_n(𝒪_w)` whose reduction modulo `w` has kernel `A` (these represent the
cosets in the double coset), and `g_A = c_w^{−j}·j_w(γ_Aᵀ)`, where `c_w` is the scalar matrix of the conjugate of the
norm to `K₀` of the idele that is a uniformiser at `w` and `1` elsewhere. `τ_{w,j} = Σ_{dim A = j} [g_A]`. An element `f`
of `𝓗(𝔑)` is *regular* if `y ∈ GL_n(E)` has separable characteristic polynomial whenever the coset function of `f` is
nonzero at `x^{−1}y^{−1}x` for some `x ∈ GL_n(𝔸_f)`. `𝔑` is *neat* if `𝔑 ≠ 0` and every `y ∈ GL_n(E)` with
`x^{−1}yx ∈ K(𝔑)` and `Φ_{v₀}(y)ℓΦ_{v₀}(y)^{−1} = ℓ` for a signed frame `(x, ℓ)` is `1`. (In the literature neatness
of a level is the condition on the eigenvalues of all its elements of PELModuli §M2.2; it implies neatness of `𝔑` in
this sense, by 10.6.)
For `P ∈ E[X]` such that `Φ_{v₀}(P)` has `|n|` distinct roots `r_1, …, r_n` (numbered), `j ∈ n`, `μ = r_j`, and
`α ∈ 𝓞_E^ν`: for each embedding `σ : E → ℂ` let `R_σ` be the multiset of the polynomials `rX` for the roots `r` of
`σ(P)` that are *Lie roots* and the constants `r` for the others, where the Lie roots are `r = μ` for `σ = Φ_{v₀}`,
`r ≠ μ̄` for `σ = conj Φ_{v₀}`, all roots for `σ = Φ_v` with `v ≠ v₀`, and none for `σ = conj Φ_v`. The *local term* is
`p_{α,P,j}(X) = L_j(r_j X)·Π_{i ≤ ν} Π_σ Π_{η ∈ R_σ} (1 − σ(α_i)η)`, with `L_j` the Lagrange polynomial that is `1` at
`r_j` and `0` at the other roots. The *marked reflection* of `y ∈ GL_n(E)` at `j` is `Q(Φ_{v₀}(y))` for the Lagrange
polynomial `Q` with value `1` at `r_j` and `−1` at the other roots of the characteristic polynomial.
(a) `τ_{w,j} ∈ 𝓗(𝔑)` for every safe split `w`.
(b) On `K(𝔑)`-fixed vectors of a representation `π`, `τ_{w,j}` acts as `π(c_w^{−j})` times the `j`-th Hecke operator of
`GL_n(E_w)` (for `GL_n(𝒪_w)`) acting through `j_w`.
(c) Let `(x, ℓ)` be a signed frame for `β` and `y ∈ GL_n(E)` with `Φ_{v₀}(y)ℓΦ_{v₀}(y)^{−1} = ℓ` such that
`(x^{−1}yx)^{−1}` is a frame for `c·1`, `c > 0` rational. Then `yᴴβy = cβ`, and every root `r` of the characteristic
polynomial of `y` under every `Φ_v`, `v` infinite, has `r r̄ = c`. If moreover `c = 1` and `x^{−1}yx ≡ 1` modulo `IÔ`
for an ideal `I` of `𝓞_E` with `N(I) > (2|n|)^{[E:ℚ]}`, then `y = 1`.
(d) For all but finitely many finite places `w`, every nonzero `𝔑 ∈ w` is neat.
(e) For `I ≠ 0` the `I`-torsion of `T_n` has `N(I)^{|n|}` elements; and for `𝔑 ≠ 0` and finitely many `(𝔞, g)` with
`g ∈ GU⁺` there is a level `𝔪` with `g^{−1}K(𝔪)g ⊂ K(𝔑) ∩ K(𝔞)` for all of them.

**In standard terms.** Coset functions map `𝓗(𝔑)` onto the double-coset ring of the Hecke pair `(GU⁺, K(𝔑))`,
compatibly with the actions on `K(𝔑)`-invariants (10.5); so (a) says that `τ_{w,j}` has an image in that ring, and (b)
describes the action of that image on `K(𝔑)`-invariants. If `x·K(𝔑)·x^{−1}` is neat in the sense of PELModuli §M2.2
for a signed frame `(x, ℓ)`, then `𝔑` is neat (10.6).

*Needs:* 3.1; AdelicUnitaryGroupsAndAlgebraicModularForms §3.1 (the Hecke operators `T_{w,j}`);
WeilRepresentationsOnBanachSpacesOfData §9.1 (single cosets indexed by subspaces).

The library has the Hecke ring of a pair as the double-coset ring with its operators on invariants
(`HeckeRing`, `HeckeCosetModule.instRingHeckeRing`, `HeckeCoset.heckeSum`), in another model; 10.5 maps the group-ring
subalgebra `𝓗(𝔑)` onto it, compatibly with the actions on invariants, through coset functions.

Relation to PELModuli §§M2.2–M2.3 (neat subgroups): neatness here is a condition on `𝔑` alone, that the rational
automorphisms of signed frames at level `K(𝔑)` be trivial, which is what §M2.3 derives from neatness in the sense of
§M2.2 (Pink's condition on eigenvalues) for the objects of `M_H`. Neatness of `K(𝔑)` in the sense of §M2.2 implies
neatness of `𝔑` here: the eigenvalues of such an automorphism `y` are algebraic integers, as `x^{−1}yx ∈ GL_n(Ô)`, and
by (c), with `c = 1`, all their conjugates have absolute value `1`; so they are roots of unity, hence `1` under §M2.2;
and `y`, being unitary for the definite form `Φ_w(β)` at a place `w ≠ v₀`, is then `1`. The converse is not asserted.
10.6 states this implication for the conjugates `x·K(𝔑)·x^{−1}` in the similitude groups of the unitary data of 10.1.

[ShortProof], `Lib/Shimura/HeckeTower/HeckeData` (`New.Variety.fixedToEigen`, `New.Variety.heckeAlgebra`,
`New.Variety.IsSafe`, `New.Variety.SafePlace`, `New.Variety.invHeckeIsogeny`, `New.Variety.heckeSum`,
`New.Variety.IsRegularHecke`, `New.Variety.localTerm`, `New.Variety.markedReflection`, `New.Variety.IsNeat`,
`New.Variety.IsSignedFrameFor.similitude_and_root_norm`, `New.Variety.IsSignedFrameFor.eq_one_of_congr_large_norm`,
`New.Variety.eventually_isNeat`); `Lib/Shimura/HeckeTower/Model` (`New.Variety.conjAtSplit_mem_GU`,
`New.Variety.heckeSum_mem_heckeAlgebra`, `New.Variety.asAlgebraHom_heckeSum`, `New.Variety.tauHecke`,
`New.card_torsionBySet_adelicTorsion`, `New.Variety.exists_level_conj_mem`)

### 8.2 The Kuga–Sato model and the action of Hecke elements

*Origin:* particular to this proof: a tower of reduced projective covers of a smooth proper base over a localisation
of `𝓞_E`, given by the list of properties that the point counts and the cohomology use (legs indexed by cosets, deck
groups, complex points, tangent polynomials at fixed points, the congruence relation), and the commuting action of the
Hecke elements on any contravariant functor with descent; the nearest published objects are the Kuga–Sato varieties
over compact unitary Shimura varieties of signature `(1, n − 1)` with their Hecke correspondences (for the action of the
Hecke algebra of a pair by correspondences, G. Shimura, *Introduction to the Arithmetic Theory of Automorphic Functions*
(1971), ch. 3 and 7–8).

*Method of the formal proof:* the operator `t(w, j)` is defined on the image of the pull-back along the leg of `1` by
summing the pull-backs along the legs over `τ_{w,j}`; the sum is invariant under the deck group, so it descends; the
commutation and the word identity are checked on deep levels, where the legs of products are composites of legs.

*Tangent polynomials.* For a field `k`, morphisms `c, u : W → Z` of `k`-schemes (or functors on `k`-algebras) and
`y ∈ W(k)`, a *tangent polynomial of rank `d`* of `(c, u)` at `y` is a `P ∈ k[X]` as in
CohomologyOfFunctorsOnTestRings §6.6: `P(s) = P(0)·det(1 − sA)` for an endomorphism `A` of a `d`-dimensional space of
tangent vectors `f(t)` at `y` with `t ↦ c(f(t))` injective and `u(f(t)) = c(f(At))`.
*Congruence relations.* For maps `u_i : W → Z` of `R`-schemes (`i` in a finite set), integers `m_i`, exponents `a_i ∈ ℕ`,
a prime `p` and a set `𝔭 ⊂ R`, the `u_i` *satisfy the congruence relation* with coefficients `m_i` and Frobenius
exponents `a_i` modulo `𝔭` if for every field `k` of characteristic `p` and every `x ∈ W(k)` whose structure map
`R → k` kills `𝔭`, the formal sum `Σ_i m_i [u_i(x)∘Frob^{a_i}]` of points of `Z(k)` is zero, `Frob` the map
`y ↦ y^p` of `k`. (In the literature the congruence relation is an identity of correspondences on the special fibre;
the relation here is a condition at each point, which implies the identity of that form for the cycles that the maps
define, by 10.7.) *Galois coverings.* `c : W → Z` with a finite group `Δ` acting on `W` is a *Galois covering* as in
CohomologyOfFunctorsOnTestRings §3.5 (`Δ` acts over `Z`, `c` is surjective, and `Δ` acts simply transitively on the
fibres of `c` on points with values in fields of characteristic `0`).

Let `E ⊃ K₀`, `n` a finite set, `𝔑 ∈ 𝓞_E`, `ν ∈ ℕ` and `R ⊂ E` an `𝓞_E`-subalgebra. A *level* is a finite set of pairs
`(𝔞, g)` with `𝔞` a nonzero element of `𝓞_E` and `g ∈ GU⁺`, ordered by inclusion. A *model* `𝓜` consists of:
- an `R`-scheme `Z`, smooth of relative dimension `d` and proper over `R`;
- for each level `i`, a reduced `R`-scheme `W_i` with a projective embedding over `R`, a set `s_i ⊂ GL_n(𝔸_f)`
  containing `1`, and *legs* `p_g : W_i → Z` for the cosets `gK(𝔑)`, `π_i = p_1`;
- for every `g ∈ GU⁺` and level `j`, for all large `i`: `g ∈ s_i` and some `F : W_i → W_j` has `p_q∘F = p_{gq}` for
  `q ∈ s_j`;
- a finite group `Δ_i` acting on `W_i`, such that for each `δ` some `κ ∈ K(𝔑)` has `p_q∘δ = p_{κq}` for `q ∈ s_i`, and
  `π_i` is a Galois covering with group `Δ_i`;
- endomorphisms `m_α` of `Z`, `α ∈ 𝓞_E^ν`;
- for each moduli point `a` with `ν` marked vectors a complex point `[a]_i ∈ W_i(ℂ)`, every complex point of `W_i`
  being of this form, with `π_i[a]_i = π_i[b]_i` if and only if `a ≅ b` at level `K(𝔑)`, and
  `m_α(p_g[a]_i) = π_i[a·(g, α)]_i` for `g ∈ s_i ∩ GU⁺`;
- (*tangent*) for `g ∈ s_i ∩ GU⁺`, `α`, `a`, and `z ∈ GL_n(E)` with separable characteristic polynomial, an isomorphism
  `a·(g, α) ≅_{K(𝔑)} a`, with the reflection of `a` the marked reflection of `z` at `j`: the local term
  `p_{α, char(z), j}` (8.1) is a tangent polynomial of rank `d` of `(π_i, m_α∘p_g)` at `[a]_i`;
- (*congruence*) for every safe split place `w` with `q_w = p^f`, every level `i` with all `g_A ∈ s_i`, and every
  `𝔭 ⊂ R` containing the image of `w`: the legs `p_{g_A} : W_i → Z` satisfy the congruence relation modulo `𝔭` with
  coefficients `(−1)^{r_A} q_w^{r_A(r_A−1)/2}` and Frobenius exponents `(|n| − r_A)f`, `r_A = dim A`.

"Model" names this structure given by a list of properties; it is not a model over `R` of a given variety.

Let `𝓜` be a model, `k` a commutative ring and `F` a contravariant functor from `R`-schemes to `k`-modules such that
for every level `i` the pull-back `F(π_i)` is injective with image containing the `Δ_i`-invariants of `F(W_i)`, and
let levels `I(w)` be such that `g_A ∈ s_{I(w)}` for every `A`, for each safe split place `w`. Then there are commuting operators `t(w, j)` on
`F(Z)`, for safe split `w` and `j ∈ ℕ`, such that `F(π_{I(w)})∘t(w, j)` is the sum of the pull-backs along the legs over
`τ_{w,j}`, and such that, for every commutative ring `k′`, on deep levels every word in the `τ_{w,j}`, multiplied by any
element of `k′[GL_n(𝔸_f)]` supported on `GU⁺`, acts through the legs as the same word in the `t(w, j)`.

*Needs:* 3.1, 8.1.

The operators come from elements supported on the monoid `GU⁺`, not on a group, and the identities between them are
obtained on deep levels of the tower only. PELModuli §M1.13 defines Hecke correspondences on the rational moduli
problem for every element of `G(𝔸^{∞,□})`; here the Hecke elements act through the legs of a model, on the functor `F`,
and no comparison with §M1.13 is made.

[ShortProof], `Lib/Shimura/HeckeTower/Model` (`New.Variety.Model`, `New.Variety.Model.IsHeckeAction`,
`New.Variety.Model.exists_isHeckeAction`); `Lib/Cohomology/Etale/Basic` (`New.Variety.IsTangentPoly`,
`New.Variety.CongruenceRelation`, `New.Variety.IsGaloisCovering`)

### 8.3 The pointwise congruence relation at a split place

*Origin:* adapted from the Eichler–Shimura congruence relation for unitary Shimura varieties of signature `(1, n − 1)`
at split places (Wedhorn, *Congruence relations on some Shimura varieties*, J. reine angew. Math. 524 (2000), 43–71;
the method follows Katz–Mazur (1985), ch. 13, and M. Harris, R. Taylor (2001), III.4). What is stated is the geometric
input of that relation, one geometric point of the special fibre at a time and for the points of the universal family;
the ordinary locus plays no part.

*Method of the formal proof:* the `w`-torsion of `T_n` is `k_wⁿ`, compatibly with integral matrices, and the Hecke
neighbour attached to `A` is the target of an isogeny `ψ_A` of multiplier `q_w^{dim A}` acting on torsion by `g_A^{−1}`
(6.2 (e)); its reduction, twisted by Frobenius, is an isogeny of multiplier `q_w^n` from `x₀` whose kernel depends only
on the reductions of the torsion sections over `A`. A nonzero `w`-torsion section reduces to zero (7.1 (d)); adding the
line `W` it spans does not change the kernel, and the rigidity 6.1 (c) identifies the targets.

Let `E ⊃ K₀`, `𝒰` a universal family for `D` over `R` with `β = β₀`, `V ⊂ ℂ` a valuation subring, and `s` a `V`-point
of level one of the fibre power (7.5) with moduli point `z`. Let `k` be an algebraically closed field of characteristic
`l`, `π : V → k` onto, `x₀` the reduction of the object under `s`, and `w` a split place with `w = ker(𝓞_E → k)`, good
for `D` and safe for `𝔑`. For each subspace `A ⊂ k_wⁿ` let `α_A` be the `V`-point of the fibre power with moduli point
`z·(g_A, 1)` (the Hecke neighbour), and `m_A` the integer with `l^{m_A} = q_w^{n − dim A}`. Then there is a nonzero
subspace `W ⊂ k_wⁿ` such that the reduction of `α_A` twisted by `t ↦ t^{l^{m_A}}` depends only on `A + W`.

*Needs:* 4.3, 6.1, 7.1, 7.5, 8.1.

[ShortProof], `Lib/Shimura/CongruenceRelation/HeckeNeighbours` (`New.Variety.exists_residue_torsion_emb`,
`New.Variety.frobeniusTwist`, `New.Variety.IsTwistedReduction`, `New.Variety.IsTwistedReduction.exists_comp_eq_smul`,
`New.Variety.UniversalFamily.exists_ne_bot_factorsThrough_sup`)

### 8.4 Existence of the model

*Origin:* particular to this proof: a model in the sense of 8.2 over `R`, for every `ν ≥ 1`, built from a universal
family at a neat level with `β = β₀` that is good at all safe places; its base is the fibre power of 7.5 (b) over the
theta closure of 7.4, and its level covers are the graph closures of 7.5 (c). The nearest published result is the
existence of integral Kuga–Sato models with level covers for unitary Shimura varieties of signature `(1, n − 1)`, with
their congruence relation (M. Harris, R. Taylor, *The Geometry and Cohomology of Some Simple Shimura Varieties* (2001),
III.4; R. Kottwitz, *Points on some Shimura varieties over finite fields*, J. Amer. Math. Soc. 5 (1992), §5).

*Method of the formal proof:* `Z` is the fibre power of 7.5 (b) and `W_i` the graph closures of 7.5 (c); the legs are
projections, the deck groups come from the levels (8.1 (e)), and the complex points from 7.6 (d). The tangent
polynomial at a fixed point comes from the ball family 5.5 (d): through the universal jet, its parameters give the
tangent vectors at the point of `a`, on which `z` acts through `K`. For the congruence relation, a field point of `C` is
the centre of an arc (7.6 (c)); along the arc 8.3 applies with a line `W`, and the formal sum over subspaces `A` cancels
because the twisted reductions depend only on `A + W`: for `U ⊃ W` of dimension `u`, the `A` with `A + W = U` are `U`
and the `q^{u−1}` hyperplanes of `U` not containing `W`, whose weights `(−1)^u q^{u(u−1)/2}` and
`(−1)^{u−1} q^{(u−1)(u−2)/2}` cancel in total.

Let `E ⊃ K₀` with `d₀ ≡ 3 (mod 4)`, `D` PEL data with `β = β₀`, `𝔑` neat, `D` good at every finite place safe for
`𝔑`, and `𝒰` a universal family for `D` over `R`.
(a) For `ν ≥ 1` and every graph closure `C` with `ν` marked vectors with a morphism `c` to the fibre power sending the
point of `a` to `[a]_1`, every safe split place `w` at which `D` is good with `q_w = l^f`, and every `𝔭 ⊂ R` containing
the image of `w`: maps `u_A` from `C` to the fibre power that translate the complex points by `g_A` satisfy the
congruence relation modulo `𝔭` with coefficients `(−1)^{r_A} q_w^{r_A(r_A−1)/2}` and Frobenius exponents `(n − r_A)f`.
(b) For every `ν ≥ 1` there is a model (8.2) for `n`, `d₀`, `𝔑`, `ν` over `R`.

**In standard terms.** The congruence relations of (a) and of the model of (b) hold at each point of the special
fibre; by 10.7 they imply the corresponding identities of cycles on the special fibre, and for the model, at every
safe split place `w` such that `R` maps onto `k_w`, an identity of correspondences of the form of the congruence
relation, `Σ_j (−1)^j q_w^{j(j−1)/2}·(1 × F^{n−j})_*T_j = 0` for the correspondences `T_j` that the legs of the model
define and the `q_w`-power Frobenius `F` (10.7 (c)). The model of (b) is a structure given by a list of properties
(8.2), not a Kuga–Sato variety over a PEL moduli space.

*Needs:* 5.5, 7.5, 7.6, 8.1, 8.2, 8.3.

[ShortProof], `Lib/Shimura/IntegralModel/TowerExistence` (`New.Variety.UniversalFamily.GraphClosure.congruenceRelation`,
`New.Variety.UniversalFamily.GraphClosure.isTangentPoly_localTerm_of_translate`, `New.Variety.exists_model`)

## Layer 9: Fixed points, occurrence and eigenquotients in cohomology

The congruence relation passes to cohomology, and inertia acts trivially (9.1). The count of fixed points of Hecke
correspondences on the model is compared with a sum over the definite unitary group: test functions (9.2), the trace
on definite forms as an orbit sum (9.3), the agreement of marked and definite sums (9.4), and the Lefschetz count
through the local terms (9.5) give that the eigensystem of a definite test eigenform occurs in each Hodge weight (9.6).
The largest Hecke-eigen quotient of the cohomology of the model is then a Galois representation with the expected
local properties (9.7, 9.8).

### 9.1 The congruence relation in cohomology, and unramified cohomology

*Origin:* adapted from the theorems that smooth proper reduction makes ℓ-adic cohomology unramified and that Frobenius
relations pass to cohomology in the Eichler–Shimura argument (the Stacks project, Tags 0GKD (SGA4 XVI 2.2) and 03SN
(SGA5 XV); Deligne, *Formes modulaires et représentations ℓ-adiques*, Sém. Bourbaki 355 (1969)): here the cohomology
is `Vⁿ` of CohomologyOfFunctorsOnTestRings, the base is a valuation ring of `Ω`, and the relation on points to be carried
to cohomology is a congruence relation in the sense of 8.2.

*Method of the formal proof:* a class on `Y_Ω` extends to `Y_A` by smooth base change and restricts to the special
fibre; on the special fibre the absolute Frobenius acts trivially (c), and a formal combination of morphisms that cancels
at every geometric point acts as `0`; proper base change for `W` gives injectivity on the special fibre.

Let `ℓ` be a prime, `Ω` an algebraic closure of `ℚ`, `R → Ω` a ring map, `Γ` a group acting on `Ω` by `R`-algebra
automorphisms (so on `Vⁿ(Y)` for `R`-schemes `Y`), and `A ⊂ Ω` a valuation ring containing the image of `R`, with a
prime `p` in its maximal ideal and `ℓ` a unit in `A`. Let `R` be Noetherian, and `W`, `Y` proper over `R`, with `Y`
smooth of relative dimension `d` over `R`.
(a) Let `g ∈ Γ` be a Frobenius for `p^f` at `A` (it stabilises `A` and acts as `x ↦ x^{p^f}` modulo its maximal ideal),
and `u_i : W → Y`, `m_i ∈ ℤ`, `e_i ∈ ℕ` satisfy the congruence relation (8.2) with Frobenius exponents `e_i f` modulo
the preimage in `R` of the maximal ideal of `A`. Then `Σ_i m_i·u_i^*(g^{−e_i}x) = 0` in `Vⁿ(W)` for every
`x ∈ Vⁿ(Y)`.
(b) The inertia group of `A` in `Γ` acts trivially on `Vⁿ(Y)`.
(c) For a functor `U` on rings that has points only in rings where `p = 0`, the endomorphism `x ↦ x∘(b ↦ b^{p^j})`
acts as the identity on `Vⁿ(U)`.

*Needs:* 8.2; CohomologyOfFunctorsOnTestRings §§1.3, 1.5, 3.4, 4.3, 5.6 (`Vⁿ`, functoriality, charting, base changes).

The formal proof assumes a charting condition on `Y` in place of smoothness (and no Noetherian hypothesis); it derives
that condition for schemes proper and smooth of relative dimension `d` over a Noetherian ring.

[ShortProof], `Lib/Shimura/CongruenceRelation/EichlerShimura` (`New.Variety.ellAdicCohom.frobEnd`,
`New.Variety.ellAdicCohom.ellAdicPull_frobEnd`, `New.Variety.ellAdicCohom.congruence_relation`,
`New.Variety.ellAdicCohom.galoisAction_eq_one_of_inertia`)

### 9.2 Test functions with a cuspidal type

*Origin:* particular to this proof: a Hecke element of `K(𝔑)` all of whose positive powers are regular, map `K(𝔑)`-fixed
vectors to eigenvectors of a cuspidal type at one split place, and do not kill a given test vector; the nearest
published results are the simple trace formulas obtained from cuspidal types and Iwahori–Hecke operators.

*Method of the formal proof:* at `w₀` the element averages against the cuspidal type; at `w₁` it is a central translate
of an injective Iwahori–Hecke operator `U_t` with `t` strictly dominant; products of double cosets of strictly dominant
elements are strictly dominant, and an element that is strictly dominant at one place has separable characteristic
polynomial, which gives regularity of all powers.

Let `a = |n|`. For a split place `w`, the *level at `w`* is `{h ∈ GL_a(E_w) : j_w(h) ∈ K(𝔑)}` (8.1), and `I_w ⊂ GL_a(𝒪_w)`
is the pro-`p` Iwahori subgroup (upper unitriangular modulo `w`). A *cuspidal type* at `w` is a subgroup
`J ⊂ GL_a(𝒪_w)` with a character `χ : J → ℂ^×` such that for every idempotent `ε ≠ 0, 1` of `M_a(E_w)` some
`j = 1 + εY(1 − ε) ∈ J` has `χ(j) ≠ 1`. (In the theory of types a type is attached to an inertial class of
representations: the irreducible representations containing it are those of the class; "cuspidal type" names here the
non-triviality condition above, which every type of a supercuspidal class given by a character on a subgroup of
`GL_a(𝒪_w)` satisfies, by 10.8.) `g ∈ GL_a(𝔸_f)` is *strictly dominant at `w`* if the inverse transpose of `g_w`
lies in `I_w·diag(s)·I_w` with `i ↦ |s_i|_w` strictly increasing. For a complex representation `π` of `GL_a(𝔸_f)`, a
vector `v` is a *test vector* for `(w₀, w₁, J, χ)` if `w₀ ≠ w₁` are split places, `𝔑 ∉ w̄₀`, `𝔑 ∈ w₁`, `𝔑 ∉ w̄₁`, the
level at `w₀` lies in `J ⊂ GL_a(𝒪_{w₀})` with `(J, χ)` a cuspidal type, the level at `w₁` lies in `I_{w₁}`, `v ≠ 0`,
`π(j_{w₀}(h))v = χ(h)v` for `h ∈ J`, and `v` is fixed by `j_{w₁}(GL_a(𝒪_{w₁}))`.
(a) Products of elements strictly dominant at `w` are strictly dominant at `w`. If `𝔑 ∉ w̄`, the level at `w` lies in
`I_w`, and `f ∈ 𝓗(𝔑)` is supported on elements strictly dominant at `w`, then all positive powers of `f` are regular.
(b) Let `φ` be a `K(𝔑)`-fixed test vector for `(w₀, w₁, J, χ)` in `π`, and `c ∈ 𝓗(𝔑)` supported on similitudes whose
component at `w₁` is `1`, with `π(c)φ = φ`. Then there is `b ∈ 𝓗(𝔑)` such that for every `m ≥ 0`:
`π((bc)^m)φ ≠ 0`, `(bc)^{m+1}` is regular, and `(bc)^{m+1}` maps `K(𝔑)`-fixed vectors to vectors on which `j_{w₀}(J)`
acts by `χ`, in every representation.

**In standard terms.** A type of the inertial class of a supercuspidal representation of `GL_a(E_{w₀})` given by a
smooth character `χ` of an open subgroup `J ⊂ GL_a(𝒪_{w₀})` is a cuspidal type (10.8), so (b) applies to the test
vectors it defines; the condition of this section singles out no inertial class.

*Needs:* 8.1; IntegralRepresentationsOfGeneralLinearGroups §§6.1, 6.3, 6.4 (`U_t`, its injectivity, twisted conjugacy).

[ShortProof], `Lib/Shimura/TraceFormula/TestFunction` (`New.Variety.IsTestVector`, `New.Variety.exists_local_hecke_element`,
`New.Variety.dominant_doubleCoset_mul`, `New.Variety.mul_mem_strictlyDominantAt`,
`New.Variety.isRegularHecke_of_strictlyDominantAt`, `New.Variety.exists_iwahori_hecke_element`,
`New.Variety.exists_test_function`)

### 9.3 The trace on definite forms as a sum over marked triples

*Origin:* adapted from the simple trace formula and its form for algebraic modular forms (J. Arthur, L. Clozel, *Simple
algebras, base change and the advanced theory of the trace formula* (1989), ch. 1 §2, after Deligne and Kazhdan;
Dummigan, *A simple trace formula for algebraic modular forms*, Exp. Math. 22 (2013)), on definite unitary groups: here
an abstract weighted trace formula for right translations on equivariant functions, the finiteness of classes of signed
frames, and the trace of a regular Hecke element on definite forms at a neat level as a finite sum over classes of
triples.

*Method of the formal proof:* the space of definite forms is identified with functions on finitely many double cosets
(by Mahler's criterion, signed frames lie in finitely many classes), and the trace of right translation is computed
coset by coset; at a neat level the stabilisers are trivial, and grouping by the conjugacy class of `y` gives the orbit
sum.

A *definite form* of level `𝔑` with coefficients in a representation `ξ` of `GL_n(E)` on `W` is a function
`φ : GL_n(𝔸_f) → W` with `φ(yx) = ξ(y)φ(x)` for `y ∈ GL_n(E)`, `φ(xk) = φ(x)` for `k ∈ K(𝔑)`, and `φ(x) = 0` unless `x`
is a frame for some `β` that is positive definite at every infinite place; `𝓗(𝔑)` acts by right translation. A *marked
triple* is `(xK(𝔑), y, μ)` with `x ∈ GL_n(𝔸_f)`, `y ∈ GL_n(E)`, `μ ∈ n`, with `GL_n(E)` acting by
`z·(xK, y, μ) = (zxK, zyz^{−1}, μ)`. For `f ∈ 𝓗(𝔑)` and `ω : E[X] × n → ℂ`, the *marked* (resp. *definite*) count term
of the orbit of `(xK, y, μ)` is `f̃(x^{−1}y^{−1}x)·ω(char y, μ)` if `(x, R)` is a signed frame, and `0` otherwise, where
`f̃` is the coset function of `f`, and `R` is the marked reflection of `y` at `μ` (8.1) (resp. `R = 1`).
(a) The count terms are well defined: they do not depend on the representative of the orbit or of the coset; for
`g ∈ GU`, `(xg, ℓ)` is a signed frame if and only if `(zx, Φ_{v₀}(z)ℓΦ_{v₀}(z)^{−1})` is, for `z ∈ GL_n(E)`; the coset
function of `f ∈ 𝓗(𝔑)` is invariant under conjugation by `K(𝔑)` and supported on `GU⁺`.
(b) (*weighted trace formula*) Let `A` be a field, `G` a group, `e : Γ → G` a homomorphism, `ρ` a representation of `Γ`
on a finite-dimensional `A`-vector space `W`, `K ⊂ G`, `D ⊂ G`, and `M` an `A`-vector space identified with the functions `G → W` that are
`ρ`-equivariant along `e`, vanish on `D` and are right `K`-invariant. Let `r_i ∈ G` and weights `w_i ∈ A` (finitely many)
be such that, for `g ∉ D`, the sets `S_i(g) = {γ : g^{−1}e(γ)r_i ∈ K}` are finite with `Σ_i w_i·#S_i(g) = 1`, and empty
for `g ∈ D`. Let `σ` be an automorphism of `G` with `σ(K) = K`, and `T` the operator `ψ ↦ a·(s∘ψ∘σ^{−1})` for
`a ∈ A[G]` (right translation) and `s ∈ End W`. Then `M` is finite-dimensional and
`tr T = Σ_i w_i Σ_γ ã(r_i^{−1}σ(e(γ))σ(r_i))·tr(s ρ(γ))`.
(c) For an open subgroup `U ⊂ GL_n(𝔸_f)`, the `x` such that `(x, ℓ)` is a signed frame for some `ℓ` lie in finitely many
classes of `GL_n(E)\GL_n(𝔸_f)/(GU ∩ U)`.
(d) Let `𝔑` be neat and `W` finite-dimensional. Then the definite forms are finite-dimensional, and the trace of
`f ∈ 𝓗(𝔑)` is `Σ_j Σ_{y ∈ GL_n(E)} f̃(x_j^{−1}yx_j)·tr ξ(y)` over representatives `x_j` of the finitely many double
cosets `GL_n(E)\GL_n(𝔸_f)/K(𝔑)` of definite frames. If moreover `f` is regular and
`tr ξ(y^{−1}) = Σ_{i ∈ n} ω(char y, i)` whenever `char y` is separable, then the definite count terms of `(f, ω)` have
finite support and `tr(f | definite forms) = Σ` of the definite count terms over all orbits.

**In standard terms.** The definite forms are the direct sum, over the classes of totally positive definite matrices
`β` with frames, of spaces of functions on the finite adelic points of the definite unitary groups `U(β)`, which are
the algebraic modular forms of the rational coefficient model of AutomorphicFormsOnReductiveGroups §7.4 for `U(β)`
when `ξ` restricts to an algebraic representation of `U(β)` (10.9); `f ∈ 𝓗(𝔑)` acts on them through its image in the
double-coset ring (10.5), and need not preserve the summands (10.9), and (d) is the trace of that action.

*Needs:* 3.1, 8.1; ShortGRH background (the Mahler–Godement criterion for frames of varying forms: for every compact
`C₀ ⊂ GL_n(𝔸)` (`𝔸` the adele ring of `E`, AdelicUnitaryGroupsAndAlgebraicModularForms §2.1) there are a finite set
`F ⊂ M_n(E)` and compact sets `C ⊂ M_n(𝔸)`, `C_f ⊂ GL_n(𝔸_f)` such that for every invertible `J ∈ M_n(E)` and every
`y ∈ GL_n(𝔸)` with `yᴴJy ∈ C₀` there are a basis `Y` of `Eⁿ` and a set `s` of its vectors spanning a `J`-isotropic
subspace for which the `J`-dual basis `W` of `Y` has `W⁻¹y` in `C_f` at the finite places and, `Z` being `W` with its
vectors in `s` replaced by `0`, `y⁻¹Z ∈ C` and `ZᴴJZ ∈ F`; [ShortProof] `Lib/Adelic/Reduction/FiniteVolume`
(`New.exists_isBoundedDualBasis`)).

[ShortProof], `Lib/Shimura/TraceFormula/DefiniteTrace` (`New.trace_eq_weighted_sum`,
`New.Variety.finite_isSignedFrame_classes`, `New.Variety.definiteForms`, `New.Variety.finite_definiteForms`,
`New.Variety.finite_support_countTerm_definite`, `New.Variety.trace_definiteForms_eq_finsum_countTerm`);
`Lib/Shimura/HeckeTower/HeckeData` (`New.Variety.MarkedTriple`, `New.Variety.countTerm`);
`Lib/Shimura/Transfer/MarkedPairs` (`New.Variety.isSignedFrame_mul_iff`, `New.Variety.finsum_countTerm_eq_sum`,
`New.Variety.heckeAlgebra.heckeCosetFn_conj`, `New.Variety.heckeAlgebra.mem_GUPlus_of_ne_zero`,
`New.Variety.countTerm_mk`)

### 9.4 Marked and definite sums agree

*Origin:* particular to this proof: for a regular Hecke element with a cuspidal type at a split place, in an odd number
of variables, the sums of the marked and of the definite count terms are equal, with no spectral side; the nearest
published result is the comparison of simple trace formulas for inner forms of unitary groups that differ at a real
place, and the vanishing of the non-elliptic terms of a simple trace formula (J. Arthur, L. Clozel, *Simple algebras,
base change and the advanced theory of the trace formula* (1989), ch. 1 §2, after Deligne and Kazhdan; Dummigan, *A
simple trace formula for algebraic modular forms*, Exp. Math. 22 (2013)).

*Method of the formal proof:* the two sums are compared class by class, according to the characteristic polynomial of
`y`. If it is separable and reducible, an idempotent polynomial in the component of `y` at `w₀` defines a unipotent
group; translation along it permutes the triples of a class and multiplies each term by a value `χ(j)^{−1} ≠ 1` of the
cuspidal type, so the terms of each of its orbits add up to `0`, for the marked and for the definite count alike. If it
is irreducible and `|n|` is odd, the change of signs of AdelicUnitaryGroupsAndAlgebraicModularForms §7.9, for sign
patterns of product `1`, matches the marked classes with the definite ones.

Let `𝔑` be neat, `|n|` odd, `f ∈ 𝓗(𝔑)` regular, `(J, χ)` a cuspidal type at a split place `w₀` (9.2) such that `f` maps
`K(𝔑)`-fixed vectors to vectors on which `j_{w₀}(J)` acts by `χ`, in every representation, and `ω` any weight.
(a) If `ω(P, ·) = 0` for every irreducible `P`, the sum of the marked count terms and the sum of the definite count terms
of `(f, ω)` are both `0`.
(b) For any `f ∈ 𝓗(𝔑)` (no neatness or regularity), if `ω(P, ·) = 0` for every `P` that is not irreducible, the marked
and the definite sums of `(f, ω)` agree.
(c) If the marked and definite count terms of `(f, 1)` have finite support, then for every `ω` the sum of the marked
count terms of `(f, ω)` equals the sum of the definite count terms.

*Needs:* 8.1, 9.2, 9.3; AdelicUnitaryGroupsAndAlgebraicModularForms §7.9 (the change of signs).

[ShortProof], `Lib/Shimura/TraceFormula/MarkedDefiniteSums` (`New.Variety.IsCuspidalType.exists_mem_range_splittingRadical`,
`New.Variety.finsum_countTerm_eq_zero_of_reducible`, `New.Variety.isSignedFrame_iff_hasSignType`,
`New.Variety.finsum_markedTerm_eq_of_irreducible`, `New.Variety.finsum_markedTerm_eq_finsum_definiteTerm`,
`New.Variety.finsum_countTerm_marked_eq_definite`)

### 9.5 The Lefschetz count over marked pairs

*Origin:* particular to this proof: if, on deep levels of a model, the Hecke correspondences of a Hecke element form a
null family for the holomorphic Lefschetz count in degree `h`, then the element is `h`-null, the sum of the marked count
terms weighted by the coefficients of `X^h` of the local terms being zero; the nearest published results are the
holomorphic Lefschetz fixed-point formula and the counting of fixed points of Hecke correspondences on Shimura
varieties.

*Method of the formal proof:* (c) is a count of the coincidences of `m_α∘p_g` and `π_i` on `W_i`. Each coincidence
determines a marked pair, using (a); by the Galois covering of 8.2 the
coincidences over one marked pair number `#Δ_i` times the lattice index `[B^{−1}Λ : Λ]` of (b), `B = 1 − 2αz`. That index
equals the value at `1` of the local term, so it cancels the denominator `P(1)` in the definition of a null family; the
tangent polynomials themselves are the local terms, by the tangent condition of 8.2.

For maps `u_i : W → Z` of `R`-schemes, weights `a ∈ k^{(I)}` (`k` a field over `R`), a rank `d` and a degree `h`, the
`u_i` form a *null family* if they satisfy the conclusion of CohomologyOfFunctorsOnTestRings §7.5 with the weights `a`:
for every `c : W → Z`, tangent polynomials `P_{i,y}` of rank `d` with `P_{i,y}(1) ≠ 0` at all coincidences `(i, y)`
(`a_i ≠ 0`, `y ∈ W(k)`, `c(y) = u_i(y)`) force finitely many coincidences and
`Σ a_i·coeff_{X^h}(P_{i,y})/P_{i,y}(1) = 0`. An element `b ∈ 𝓗(𝔑)` is *`h`-null* (for `ν`) if, when `b` is regular,
for every `α ∈ 𝓞_E^ν` the marked count terms of `(b, 1)` have finite support and the sum of the marked count terms of
`(b, ω)` is `0` for `ω(P, μ) = coeff_{X^h} p_{2α, P, μ}` (8.1). A system `θ` of complex numbers
`θ(w, j)`, `w` safe split, *occurs in weight `h`* (for `ν`) if for every finite combination `p = Σ_L c_L τ_L` of words in
the `τ_{w,j}` with `Σ_L c_L Π_{(w,j) ∈ L} θ(w, j) = 1`, some `b·p`, `b ∈ 𝓗(𝔑)`, is not `h`-null. ("Occurs in weight
`h`" is a condition on counts of fixed points through their local terms, not the occurrence of `θ` in a cohomology
group; by 9.8 (c) it makes `h` a Hodge–Tate jump of the eigenquotient there.)
(a) For `y ∈ GL_n(E)` with separable characteristic polynomial, its marked reflections are reflections, and a reflection
`J` with `Φ_{v₀}(y)JΦ_{v₀}(y)^{−1} = J` is the marked reflection of `y` at exactly one index.
(b) If `x^{−1}zx` is integral, `β ∈ 𝓞_E` and `B = 1 − 2βz`, then `B` preserves `Eⁿ ∩ xÔⁿ`, `det B ≠ 0` and
`[B^{−1}Λ : Λ] = Π_{σ : E → ℂ} σ(det B)` for `Λ = Eⁿ ∩ xÔⁿ`.
(c) Let `𝓜` be a model (8.2) at a neat level, `b ∈ 𝓗(𝔑)` over `ℂ` and `h ∈ ℕ`. If for all large levels `i` and all `α`
the maps `m_α∘p_q : W_i → Z`, `q ∈ GL_n(𝔸_f)/K(𝔑)`, with weights `b̃(q)`, form a null family of rank `d` and degree
`h`, then `b` is `h`-null.

*Needs:* 3.1, 8.1, 8.2, 9.3.

[ShortProof], `Lib/Shimura/Transfer/MarkedPairs` (`New.Variety.ratConj_eigenReflection`,
`New.Variety.isReflection_markedReflection_and_exists_eq_iff`); `Lib/Shimura/Transfer/Lefschetz`
(`New.Variety.IsNullHecke`, `New.Variety.OccursInWeight`, `New.Variety.relIndex_comap_one_sub_two_smul`,
`New.Variety.Model.isNullHecke_of_isNullFamily`); `Lib/Cohomology/Etale/Basic` (`New.Variety.IsNullFamily`)

### 9.6 Eigensystems of definite test eigenforms occur in each weight

*Origin:* particular to this proof: the Hecke eigenvalues at the safe places of a definite form that is a test vector at
two split places occur, in the sense of 9.5, in each of the weights given by its coefficient system, in an odd number of
variables; the nearest published result is the transfer of eigensystems between unitary groups that differ at a real
place, by a comparison of trace formulas (Harris, Labesse, *Conditional base change for unitary groups*, Asian J. Math.
8 (2004), Thm 2.1.2; J.-P. Labesse, *Changement de base CM et séries discrètes* (2011), Thm 5.4), with fixed points
counted as in Goresky and MacPherson, *The topological trace formula* (2003), and Shimura, *On the trace formula for
Hecke operators*, Acta Math. 132 (1974).

*Method of the formal proof:* if every `b·p(τ)` were `h`-null, the coefficient of `X^h` in the local terms, summed over
the Lagrange basis, would reproduce the character of `ξ` (a computation with the bialternant of Schur polynomials), so
the marked sums of the powers of the test function of 9.2 would vanish; by 9.4 and 9.3 their traces on definite forms
vanish, so the test function acts nilpotently, contradicting 9.2 (b). For (b), `ξ` is a twisted Weyl representation and
its character is computed by Weyl's character formula.

Let `a = |n|` be odd and `f` the number of infinite places. A *test eigenform* for `(𝔑, ξ, θ)` is a definite form `φ`
of level `𝔑` with coefficients in `ξ` that is a test vector at two split places for the right regular action (9.2), with
`τ_{w,j}φ = θ(w, j)φ` for all safe `w` and all `j`.
(a) Let `ξ` act on a finite-dimensional `W`, and let `q_σ`, one for each embedding `σ : E → ℂ`, be polynomials with
integer coefficients in the coefficients `c_0, …, c_{a−1}` of a monic polynomial of degree `a` (so symmetric functions of
its roots), such that `tr ξ(y^{−1}) = Π_σ q_σ(σ(char y))`, each `q_σ` evaluated at the coefficients of `σ(char y)`, for
every `y` with separable characteristic polynomial, where `q_{Φ_{v₀}}` is the Schur polynomial with exponents
`l = (l_1, …, l_a)` (the quotient of `det(x_i^{l_j})` by the Vandermonde determinant of the roots `x_i`),
`q_σ = (−c_0)^m`, the `m`-th power of the product of the roots, for `σ = conj Φ_{v₀}` and for `σ = Φ_v`, `v ≠ v₀`, and
`q_σ` is arbitrary for `σ = conj Φ_v`, `v ≠ v₀`. Let `𝔑` be neat and `φ` a test eigenform for `(𝔑, ξ, θ)`.
Then for every `j`, `θ` occurs in weight `m(a − 1 + a(f − 1)) + l_j` (for `ν = Σ_σ deg q_σ + 1`, the degree of `q_σ`
being its total degree as a polynomial in `c_0, …, c_{a−1}`).
(b) For every weight `κ` (GaloisRepresentationsOfUnitaryEigenforms §1.1, weights and their jumps), every embedding
`i : K₀ → E` and `s₀ : K₀ → ℂ`, there are a representation `ξ` of `GL_a(E)`, integers `μ, N ≥ 0` and `A` (on the
embeddings of `K₀`) with `A(s₀) = μ`, such that (weights and jumps being taken for the CM type `Φ` of `E`): for
`y ∈ GL_a(E)` with `yᴴy = 1`, `ξ(y)` is the representation of weight `κ` (through the infinite places) at the entrywise
conjugate `ȳ`; scalars `conj(i(x))`, `x ∈ K₀^×`, act by `Π_s s(x)^{−A(s)}`; for every `σ` with `σ∘i = s₀` and every
jump `z` of `κ` at `σ`, `z + μ ≥ 0`; and for every such `σ`, `z`, every CM type `Ψ` with base place `v₀` with
`Ψ_{v₀} = σ` and `Ψ_v∘i ≠ s₀` for `v ≠ v₀`, every neat `𝔑` and every test eigenform for `(𝔑, ξ, θ)` (neatness, test
eigenforms and occurrence taken for `Ψ`), `θ` occurs in weight `z + μ` (for `ν = N + 1`).

**In standard terms.** Through 10.9 (a), a test eigenform is an element of the direct sum of the spaces `M_β` of
functions on the groups `G_β¹(𝔸_f)`, which are direct sums of spaces of algebraic modular forms on the definite
unitary groups `U(β)` when `ξ` restricts to algebraic representations of these groups (10.9 (b)), that is a test
vector at two split places and an eigenvector, with eigenvalues `θ(w, j)`, of the images of the `τ_{w,j}` in the
double-coset ring (10.5). The conclusion, occurrence in a weight, is the condition on counts of fixed points of 9.5;
it is not a statement about the standard objects.

*Needs:* 8.1, 9.2, 9.3, 9.4, 9.5; IntegralRepresentationsOfGeneralLinearGroups §§1.1, 1.3 (polynomial representations,
Schur matrices); HolomorphicDiscreteSeriesOfUnitaryGroups §7.1 (Weyl's character formula);
GaloisRepresentationsOfUnitaryEigenforms §1.1 (weights and their jumps).

[ShortProof], `Lib/Shimura/Transfer/WeightOccurs` (`New.Variety.prod_map_tauHecke_mem_spanOn`,
`New.Variety.sum_basis_comp_mul_prod_rootCoeffEval_eq`, `New.Variety.trace_definiteForms_rep_eq_zero_of_isNullHecke`,
`New.Variety.IsTestEigenform`, `New.Variety.occursInWeight_of_isTestEigenform`,
`New.Variety.mul_trace_weylRep_eq_prod_rootCoeffEval`, `New.Variety.exists_twistedWeylRep_scalar`,
`New.Variety.IsCoefficientSystem`, `New.Variety.exists_isCoefficientSystem`)

### 9.7 Eigenquotients

*Origin:* particular to this proof: the largest quotient of a family of ℓ-adic representations on which commuting
operators act by a given system of eigenvalues, with the passage of crystallinity, of Frobenius relations and of
Hodge–Tate jumps to it; the nearest published construction is the Hecke-eigen part of the cohomology of a Shimura
variety.

*Method of the formal proof:* the quotient of `ℚ̄_ℓ ⊗ ⊕V_i` by the span of the `(T_i(s) − θ(s))x`; its properties pass
along the surjection. For (d), if `u` is not a jump of the quotient, the weight-`u` part of `ℂ_ℓ ⊗ V_i` maps to zero, so
it lies in the span of the `(T(s) − θ(s))`, which gives `c` by a finite-dimensionality argument.

Let `Γ` be a topological group, `V_i` (`i` in a finite set) finite-dimensional continuous `ℚ_ℓ`-representations of `Γ`
(continuity of `g ↦ λ(ρ_i(g)x)` for linear forms `λ`), `T_i(s)` commuting endomorphisms commuting with `Γ`, and
`θ(s) ∈ ℚ̄_ℓ`. An *eigenquotient* is a representation `r` of `Γ` on `ℚ̄_ℓ^N` with `Γ`-equivariant `ℚ_ℓ`-linear maps
`F_i : V_i → ℚ̄_ℓ^N` whose images span, with `F_i∘T_i(s) = θ(s)F_i`, and through which every such family of maps to a
`ℚ̄_ℓ`-vector space factors uniquely.
(a) An eigenquotient exists and `r` is continuous; `N` may be `0`.
(b) If `Γ` maps to `Gal(ℚ̄_ℓ/ℚ_ℓ)` with open image and each `V_i` is crystalline, `r` is crystalline.
(c) In the situation of (b), if the image of `g^{−1}` in `Gal(ℚ̄_ℓ/ℚ_ℓ)` is a Frobenius for `ℓ^f` and
`Σ_k m_k T_i(t_k)∘φ_i(g^{d_k}, d_k f) = 0` on `B_max ⊗ V_i` for every `i`, where `φ_i(h, e)` is the linear Frobenius of
`V_i` at `(h, e)`, then the polynomial `Σ_k m_k θ(t_k) X^{d_k}` kills the linear Frobenius of `r` at `(g, f)`.
(d) In the situation of (b), if, for `γ ∈ Gal(ℚ̄_ℓ/ℚ_ℓ)`, the Hodge–Tate jump of `r` at `γ` in weight `u` is `0`, there
is a finite combination `c = Σ_L c_L L` of words in the `s` with `Σ_L c_L Π_{s ∈ L} γ(θ(s)) = 1` such that
`Σ_L c_L T_i(L)` kills every element of `ℂ_ℓ ⊗ V_i` of Hodge–Tate weight `u`, for every `i`.

*Needs:* CrystallineRepresentationsAndKisinModules §3.1 (crystallinity, linear Frobenius, Hodge–Tate jumps).

[ShortProof], `Lib/Shimura/Eigenspace` (`New.Variety.IsEigenQuotient`, `New.Variety.exists_isEigenQuotient`,
`New.Variety.IsEigenQuotient.isCrystalline`, `New.Variety.IsEigenQuotient.isKilledBy`,
`New.Variety.IsEigenQuotient.exists_sum_baseChange_eq_zero_of_jump_eq_zero`)

### 9.8 The Galois representation of an occurring eigensystem

*Origin:* particular to this proof: for a Hecke eigensystem at the safe places that occurs in a set of weights, a
continuous representation of `Gal(Ω/E)`, cut out of the cohomology of the base of the model by the eigensystem,
unramified and crystalline at the safe places, with the Hecke polynomial killing Frobenius and the weights among its
Hodge–Tate jumps at the base embedding; its dimension, its semisimplicity and its characteristic polynomials are left
open. The nearest published results are the constructions of Galois representations in the cohomology of Kuga–Sato
varieties over unitary Shimura varieties, with the Eichler–Shimura relation (Deligne, *Formes modulaires et
représentations ℓ-adiques*, Sém. Bourbaki 355 (1969), Thm 4.9; M. Harris, R. Taylor, *The Geometry and Cohomology of
Some Simple Shimura Varieties* (2001), ch. VII; Wedhorn, *Congruence relations on some Shimura varieties*, J. reine
angew. Math. 524 (2000)).

*Method of the formal proof:* 8.2 applied to `Vⁿ` (descent by the transfer for the finite covers) gives the Hecke
operators, and 9.7 (a) the eigenquotient: `ρ` is the largest quotient of `ℚ̄_ℓ ⊗ ⊕_k V^k(Z)` on which the Hecke
operators act by `ι_ℓθ`. Inertia acts trivially by 9.1 (b), and 9.1 (a) applied to the congruence relation of the
model gives that the Hecke polynomial kills Frobenius away from `ℓ`; at `ℓ`, crystallinity of the cohomology with its
relation for the linear Frobenius (PadicComparisonForFunctorCohomology §7.6) and 9.7 (b), (c). For the weights: if `h ∈ J` were not a jump, 9.7 (d) gives `c` killing the weight-`h` part; by the Hodge–Tate comparison and the
fixed point formula of Woods Hole type, the correspondences of every `b·c(τ)` form null families, so by 9.5 (c) every
`b·c(τ)` is `h`-null, against the occurrence of `θ` in weight `h`.

Let `a ≥ 1`, `𝓜` a model (8.2) for `n = {1, …, a}`, `d₀`, a neat `𝔑`, `ν`, over `R = M^{−1}𝓞_E` with `M ⊂ 𝓞_E` a
multiplicative set meeting no safe place, `Z` its base, `ℓ` a prime with an isomorphism `ι_ℓ : ℂ → ℚ̄_ℓ`, `θ(w, j) ∈ ℂ`
for safe split `w` and `j ∈ ℕ`, and `J` a set of integers `h ≥ 0` such that `θ` occurs in weight `h` (9.5, for `ν`) for
every `h ∈ J`. For a safe `w` let `P_w(X) = Σ_{j=0}^{a} (−1)^j q_w^{j(j−1)/2} ι_ℓθ(w, j) X^{a−j}` (the Hecke polynomial
of GaloisRepresentationsOfUnitaryEigenforms §1.1). Then there is a continuous representation `ρ` of `Gal(Ω/E)` on some
`ℚ̄_ℓ^m` such that at every place `A` of `Ω` over a safe place `w`:
(a) if `ℓ` is a unit at `A`, `ρ` is trivial on the inertia group of `A` and `P_w(ρ(s)) = 0` for every `s` whose inverse
is an arithmetic Frobenius for `q_w` at `A`;
(b) if `A` lies over `ℓ`, the restriction of `ρ` to the decomposition group of `A` is crystalline, and `P_w` kills its
linear Frobenius at every such `s`;
(c) every `h ∈ J` is a Hodge–Tate jump of `ρ` at `A` for every local datum whose complex embedding of `E` is `Φ_{v₀}`.

**In standard terms.** By 10.10 the cohomology `V^k(Z)` is the ℓ-adic étale cohomology `H^k_ét(Z_Ω, ℚ_ℓ)`, compatibly
with the action of `Gal(Ω/E)` and with the Hecke operators, and the largest quotient `ρ_ét` of
`ℚ̄_ℓ ⊗ ⊕_{k ≤ 2d} H^k_ét(Z_Ω, ℚ_ℓ)`, `d` the relative dimension of `Z`, on which the Hecke operators act by `ι_ℓθ`
satisfies (a)–(c) (10.12 (a)). By 10.11, (b) and (c) say that `ρ` is crystalline in Fontaine's sense at the places
over `ℓ` above safe places, with `P_w(φ^{f_w}) = 0` on `D_cris`, and has every `h ∈ J` among its Hodge–Tate weights,
the cyclotomic character having weight `−1` (10.11 (c)). The standard theorem of this kind is
PotentialAutomorphyInfrastructurePartII §3.6, which attaches to a constituent of algebraic modular forms on a definite
unitary group, under its hypotheses, a semisimple representation of rank `a` whose Frobenius polynomials are Hecke
polynomials of the same shape; a representation with the properties listed in 10.12 (b) for `θ` and the weights `J`
satisfies (a)–(c), but this section does not relate `θ` to such forms, and its `ρ` has no controlled dimension.

*Needs:* 8.2, 9.1, 9.5, 9.7; CohomologyOfFunctorsOnTestRings §§3.5, 7.5 (transfer, Woods Hole formula);
PadicComparisonForFunctorCohomology §§6.5, 7.6 (Hodge–Tate weights, crystallinity, linear Frobenius);
GaloisRepresentationsOfUnitaryEigenforms §§1.1, 1.3 (Hecke polynomials, local data, jumps).

The representation may be zero when `J` is empty; its dimension is not controlled. The definite article of the title
names the representation that the proof constructs, the eigenquotient of 9.7 for the cohomology of `Z` (10.12); the
statement itself asserts only that a representation with (a)–(c) exists.

[ShortProof], `Lib/Shimura/Eigenspace` (`New.Variety.Model.isNullHecke_mul_of_kills_weight`,
`New.Variety.Model.jumpsRelAt_of_isEigenQuotient`, `New.Variety.Model.aeval_heckePoly_eq_zero_of_isEigenQuotient`,
`New.Variety.Model.isKilledBy_heckePoly_of_isEigenQuotient`, `New.Variety.Model.exists_galois_rep`)

## Layer 10: Comparison with the standard theory

This layer relates the objects of the route to the standard objects owned by the general roadmaps of the library, and
states on the standard objects the results of the route that other roadmaps use: unitary PEL data (10.1), the double
cosets that describe the complex points of PEL moduli spaces (10.2), theta groups and Tate trivialisations (10.3), the
analytification and the exponential of a complex abelian variety (10.4), the double-coset ring (10.5), neat subgroups
(10.6), correspondences on the special fibre (10.7), types of supercuspidal representations (10.8), algebraic modular
forms on definite unitary groups (10.9), ℓ-adic étale cohomology (10.10), Fontaine's crystalline representations and
Hodge–Tate weights (10.11), and the eigenquotient of étale cohomology as the representation of 9.8 (10.12).
[ShortProof] proves none of these statements; each section gives a `*Proof route:*` in place of the method of the
formal proof.

### 10.1 PEL data and unitary PEL data

*Origin:* particular to this roadmap: the dictionary between PEL data in the sense of 3.2, together with a matrix that
has a signed frame, and the unitary PEL data of PELModuli §M5.5.

*Proof route:* (a) `Φ_v(ξ)` is purely imaginary with positive imaginary part for every `v`, so `ξ̄ = −ξ`. For a
reflection `J` with `Φ_{v₀}(β)J` positive definite, `J` is self-adjoint for `Φ_{v₀}(β)`, which is therefore positive
on the line of `J` and negative on its complement; this gives the signature, shows that `h_J(√−1)` preserves `ψ_β`,
and gives `ψ_β(y, h_J(√−1)y) = 2 Im Φ_{v₀}(ξ)·y_{v₀}ᴴΦ_{v₀}(β)Jy_{v₀} + Σ_{v ≠ v₀} 2 Im Φ_v(ξ)·y_vᴴΦ_v(β)y_v > 0`,
`y_v` being the component of `y` at `v`. (b) For `y = xa`, `z = xb` with `a, b ∈ 𝔸_fⁿ` one has `zᴴβy = ε·bᴴa`. As `E`
is dense in `𝔸_f`, `L_x` is dense in `xÔⁿ`, and by the continuity of `ψ_f` the condition `ψ_β(y, L_x) ⊂ ℤ` on
`y = xa ∈ Eⁿ` becomes `ψ_f(ξ·bᴴ(εa)) = 1` for all `b ∈ Ôⁿ`, that is `[εa] ∈ T`, equivalently `[a] ∈ T`, since `T` is
stable under `Ẑ^×`; taking `a ∈ Ôⁿ` gives the integrality, and density again makes `L_x^# → T` onto. (c) From
`β = ε·x^{−H}x^{−1}` one gets `(x^{−1}gx)ᴴ(x^{−1}gx) = ε^{−1}·xᴴ(gᴴβg)x`, so `x^{−1}gx ∈ GU` exactly when
`gᴴβg ∈ 𝔸_{ℚ,f}^×·β`; the multiplier of an element of `G_β(ℚ)` is positive because `Φ_w(β)` is definite for `w ≠ v₀`.
(d) A direct computation shows that for every form `B` with `Re B` symmetric, `E_B` is `1/π` times the imaginary part
of the part of `B` that is conjugate-linear in the first variable, so that `E_B(√−1·u, √−1·w) = E_B(u, w)`. Through
`Q` this says that `h_ℓ(√−1)` preserves `ψ_{β_Y}`, so `ℓᴴΦ_{v₀}(β_Y)ℓ = Φ_{v₀}(β_Y)` and `Φ_{v₀}(β_Y)ℓ` is hermitian;
the positivity of the Riemann form, read at each infinite place, makes it and every `Φ_v(β_Y)`, `v ≠ v₀`, positive
definite. The lattices are those of 3.3 (a), as `{y ∈ Eⁿ : [y]_g = 0} = L_g`.

Let `D` be PEL data (3.2) and `β ∈ M_n(E)` a matrix that has a signed frame (3.1); in this layer `β` is such a matrix,
as in 3.1, and the element `β` of `D` does not occur. Let `x` be a frame for `β`, with `xᴴβx = ε·1`. Write
`𝔸_{ℚ,f}^× = ℚ_{>0}·Ẑ^×` for the finite ideles of `ℚ`, `H_β(y, z) = zᴴβy` on `Eⁿ` (linear in `y`),
`ψ_β(y, z) = Tr_{E/ℚ}(ξ·zᴴβy)`, extended `ℝ`-bilinearly to `(E ⊗ ℝ)ⁿ`, and `L_x = Eⁿ ∩ xÔⁿ`. For a reflection `J` with
`Φ_{v₀}(β)J` positive definite let `h_J : ℂ → End_ℝ((E ⊗ ℝ)ⁿ)` be the `ℝ`-algebra homomorphism for which `h_J(√−1)`
acts by `√−1·J` on the factor of `v₀` and by `√−1` on the factor of each `v ≠ v₀`, the factors being identified with
`ℂⁿ` through `Φ_v` as in 3.1.
(a) `(E, a ↦ ā, Φ, (Eⁿ, H_β), ξ)` are data of PELModuli §M5.5, with `δ = ξ`, of signature `(1, n − 1)` at `Φ_{v₀}` and
`(n, 0)` at `Φ_v` for `v ≠ v₀`; their scalar form is `ψ_β`, and `h_J` is an `h` of §M5.5 for them: it commutes with
`E`, preserves `ψ_β`, and `ψ_β(y, h_J(√−1)y) > 0` for `y ≠ 0`.
(b) `L_x` is an `𝓞_E`-lattice with `ψ_β(L_x, L_x) ⊂ ℤ`. Its dual `L_x^# = {y ∈ Eⁿ : ψ_β(y, L_x) ⊂ ℤ}` consists of the
`y` with `[x^{−1}y] ∈ T`, and `y ↦ [x^{−1}y]` induces `L_x^#/L_x ≅ T`; so `[L_x^# : L_x] = #T` is odd, and
`(𝓞_E, a ↦ ā, L_x, 2π√−1·ψ_β, h_J)` is an integral PEL datum (PELModuli §M0.5).
(c) The similitude group `G_β` of these data (PELModuli §M0.7) has `G_β(ℚ) = {z ∈ GL_n(E) : zᴴβz ∈ ℚ^×·β}` and
`G_β(𝔸_f) = {g ∈ GL_n(𝔸_f) : gᴴβg ∈ 𝔸_{ℚ,f}^×·β} = x·GU·x^{−1}`; every element of `G_β(ℚ)` has positive multiplier,
and `x·K(𝔑)·x^{−1}` is an open compact subgroup of `G_β(𝔸_f)` stabilising `L_x ⊗ Ẑ = xÔⁿ`.
(d) If `Y = (β_Y, Q, B)` is a polarised period map for `(g, ℓ)` with `ℓ` a reflection (3.3), then `(g, ℓ)` is a signed
frame for `β_Y`, `E_B(Qy, Qz) = ψ_{β_Y}(y, z)` for `y, z ∈ (E ⊗ ℝ)ⁿ`, `Q` carries `h_ℓ(√−1)` to multiplication by
`√−1`, and `Λ_0 = Q(L_g)`, `Λ_T = Q(L_g^#)`.

PEL data do not determine these data: the data above depend on the class of `β` for `β ~ zᴴβz`, and the level `𝔑`, the
group `T` with its Lagrangian `Λ`, the integers `r`, `i` and the numerical conditions of 3.2 are not part of a PEL
datum. A prime good for `D` may divide the discriminant of `𝓞_E` (7.4), and then it is not a good prime of these data
in the sense of PELModuli §M0.10.

*Needs:* 3.1, 3.2, 3.3; PELModuli §M0.5 (Integral PEL data); PELModuli §M0.7 (The similitude group); PELModuli §M0.10
(Bad primes and the good-prime base); PELModuli §M5.5 (Unitary PEL data with prescribed signatures);
AdelicUnitaryGroupsAndAlgebraicModularForms §2.1 (the adeles).

### 10.2 Moduli points and the double cosets of unitary similitude groups

*Origin:* particular to this roadmap: the comparison of moduli points up to isomorphism at a level (3.1) with the
double cosets by which PELModuli §M3.4 describes the complex points of PEL moduli problems.

*Proof route:* a frame determines its form among the matrices that are positive definite at an infinite place
`w ≠ v₀`: if `x` is a frame for `β` and for `β′`, then `β′ = (ε′/ε)·β` with `ε′/ε` an element of `E` that is a unit of
`Ẑ`, hence `±1`, and positive. If `z : a ≅_K b` and `a`, `b` have frames for `β_a`, `β_b`, then `x_a` is a frame for
`zᴴβ_bz`, because `x_b^{−1}zx_a ∈ K` scales the standard form by a unit of `Ẑ`; so `zᴴβ_bz = β_a`. For `z ∈ U_β`,
`(x_β^{−1}zx_β)ᴴ(x_β^{−1}zx_β) = 1`, so the action is defined, and the map of (a) is constant on orbits, `z` itself
being an isomorphism. It is onto because a signed frame `(x, J)` for `zᴴβz`, `β ∈ 𝓑`, is isomorphic through `z` to
`(x_βg, Φ_{v₀}(z)JΦ_{v₀}(z)^{−1})` with `g = x_β^{−1}zx ∈ GU¹`, and injective by the two previous remarks. For (b),
`G_β(ℚ) ∩ G_β¹(𝔸_f) = U_β`, because a positive rational number that is a unit of `Ẑ` is `1`; the `G_β(ℝ)`-class of
`h_J` consists of the `h_{J′}`, `J′ ∈ X_β`, because the unitary group of `Φ_{v₀}(β)` acts transitively on its positive
lines and the elements of `G_β(ℝ)` have positive multiplier. So an element of `G_β(ℚ)` relating two points of the
image lies in `U_β`, and the image is the union of the classes of the double cosets `G_β(ℚ)·y·K_β`, `y ∈ G_β¹(𝔸_f)`.

Let `K ⊂ GU` be a subgroup with `gᴴg ∈ Ẑ^×·1` for every `g ∈ K` (for example `K(𝔑)`, whose elements and their inverses
are integral), `GU¹ = {g ∈ GU : gᴴg ∈ Ẑ^×·1}`, and `𝓑` a set of representatives, for `β ~ zᴴβz` (`z ∈ GL_n(E)`), of
the matrices of `M_n(E)` that have a signed frame. For `β ∈ 𝓑` fix a frame `x_β`; let `X_β` be the set of reflections
`J` with `Φ_{v₀}(β)J` positive definite (they correspond to the positive lines of `Φ_{v₀}(β)`), and
`U_β = {z ∈ GL_n(E) : zᴴβz = β}`, acting on `X_β × GU¹/K` by `z·(J, gK) = (Φ_{v₀}(z)JΦ_{v₀}(z)^{−1}, x_β^{−1}zx_βgK)`.
(a) `(J, gK) ↦ (x_βg, J)` induces a bijection from `⊔_{β ∈ 𝓑} U_β\(X_β × GU¹/K)` onto the set of moduli points without
marked vectors (3.1) modulo isomorphism at level `K`.
(b) Let `K` be open and compact, `G_β` and `h_J` as in 10.1, `K_β = x_βKx_β^{−1}` and `G_β¹(𝔸_f) = x_β·GU¹·x_β^{−1}`,
and identify `X_β` with the `G_β(ℝ)`-class of the `h_J` through `J ↦ h_J`. Then `(J, gK) ↦ (h_J, x_βgx_β^{−1}K_β)`
induces an injection of `U_β\(X_β × GU¹/K)` into `G_β(ℚ)\(X_β × G_β(𝔸_f)/K_β)`, the set of double cosets that
PELModuli §M3.4 identifies with the part `M_{K_β}^ad(ℂ)^{(1)}` of the complex points of the adelic moduli problem of
the data of 10.1 (the part whose rational homology is isomorphic to `(Eⁿ, ψ_β)` up to a rational multiple of the
form). Its image is the union of the classes of the `(h, y)` with `y ∈ G_β(ℚ)·G_β¹(𝔸_f)`, an open and closed subset.

(a) and (b) compare index sets: a moduli point is a frame and a reflection, not an abelian variety with additional
structure.

*Needs:* 3.1, 10.1; PELModuli §M3.4 (Complex points of PEL moduli).

### 10.3 Theta structures from the theta group, and full level structures as Tate trivialisations

*Origin:* particular to this roadmap: the comparison of the theta structures of 4.5 with the description of the
sections of a line bundle through its theta group and a level subgroup (D. Mumford, *On the equations defining abelian
varieties I*, Invent. Math. 1 (1966), §§1–2), and of the full level structures of 6.1 with the Tate trivialisations of
PELModuli §M1.4.

*Proof route:* (a) By AbelianSchemesAndArithmeticModuli §A3.6 (1)–(3), `G(L)(R)` is a central extension of `η(H)` by
`R^×` (lifts exist over the local ring `R`), whose commutator `e_L` is a perfect alternating pairing with values in
the roots of unity of order dividing `#H`; so `Λ` is its own annihilator. As `R` is strictly henselian and `#H` is
invertible in `R`, every unit of `R` has a `#H`-th root (Hensel's lemma), so every extension of `H` by `R^×` with
trivial commutator splits, and every character of `Λ` with values in `R^×` extends to `H`. Hence `G(L)(R)` has a
section over `η` with cocycle `c`, whose commutator `c(s)(t)/c(t)(s)` is `e_L(η(s), η(t))`; it is a homomorphism on
`Λ`, and multiplying it by a character of `H` makes it agree with `Λ̃` on `Λ`. Its conjugate by `δ_{−1}` and `[−1]` is
a section with the same cocycle, so the two differ by a character of `H`, trivial on `Λ` because `Λ̃` is stable; that
character has a square root trivial on `Λ` because `#H` is odd, and correcting by it gives `σ`. By
AbelianSchemesAndArithmeticModuli §A2.4, `H⁰(A, L)` is free of rank `√#H`; the characters of `Λ` split it into
eigenspaces of `Λ̃`, which the `σ(t)` permute through `t ↦ e_L(η(t), η(·))|_Λ`, a bijection from `H/Λ` onto the
characters of `Λ`; so the invariants of `Λ̃` are free of rank one and the `X_t`, `t ∈ H/Λ`, form a basis. The lift of
`y ↦ y + η(s)` is `σ(s)`, by the cocycle identity. With `ι` the action of `[−1]` through the normalised isomorphism,
`ισ(t)ι^{−1} = δ_{−1}(σ(t)) = σ(−t)`, and `ι` preserves the invariants of `Λ̃`, so `ιϑ = ε_ϑ·ϑ` with `ε_ϑ ∈ R^×`;
hence `ε_ϑ^{−1}·ι∘σ(s)` is a lift of `y ↦ −y + η(s)` sending `X_t` to `c(s)(t)·X_{−(s+t)}`. For `s ∉ Λ`,
`l ↦ c(s)(l)² = e_L(η(s), η(l))` is a nontrivial character of `Λ` whose values `ζ` have `1 − ζ` a unit, their orders
being invertible in `R`, so its sum over `Λ` vanishes. The `X_t` have no common zero because they span the sections of
a line bundle generated by its global sections. (b) Through `e`, `A_x^an` is `V/Λ_0` compatibly with `𝓞_E` (6.2 (a),
10.4); the Rosati condition is `ψ_{β_Y}(cy, z) = ψ_{β_Y}(y, c̄z)` (10.1 (a), (d)), and the determinant condition holds
because `Lie(A_x)` is `V` with its complex structure, which `Q` identifies with `(E ⊗ ℝ)ⁿ` with `h_ℓ`. By the relation
of 5.4 to AbelianSchemesAndArithmeticModuli §§A3.5–A3.7, the scalar by which lifts of the translations by two points
killed by `m` commute on the coordinates of `N_x^{⊗m}` is the polarised Weil pairing `e_{λ,m}` of the two points; for
`y = ga`, `z = gb` with `a, b ∈ Ôⁿ`, `ψ_{β_Y}(y, z) = Tr_{E/ℚ}(ξ·ε_g·bᴴa)`, so the condition of 6.1 at `ι = id` is the
equation of §M1.4 for `(T(φ)∘g^{−1}, can∘(ε_φε_g^{−1}))`, and the conditions at the other ring maps `ι : ℂ → ℂ` follow
with `ε` multiplied by the cyclotomic character of `ι`. A point of the fibre gives back `φ` as its map on torsion
composed with `g`, an injective `𝓞_E`-linear map.

(a) Let `R` be a strictly henselian local ring, `A` an abelian scheme over `R`, and `L` a relatively ample line bundle
on `A`, rigidified along `0`, generated by its global sections, and symmetric, with the normalised isomorphism
`[−1]^*L ≅ L`. Let `H` be a finite abelian group of odd order invertible in `R`, and `η : H → A(R)` a homomorphism
that identifies the constant group `H_R` with the kernel `K(L)` of the Mumford map. Let `G(L)` be the theta group of
AbelianSchemesAndArithmeticModuli §A3.6, acting on `H⁰(A, L)` by `(x, ψ)·f = ψ(t_x^*f)`, `e_L` its commutator pairing,
and `δ_{−1}` the involution of `G(L)` induced by `[−1]` and the normalised isomorphism. Let `Λ ⊂ H` be a subgroup with
`(#Λ)² = #H` on which `e_L(η(·), η(·))` is trivial, and `Λ̃ ⊂ G(L)(R)` a level subgroup over `η(Λ)` (§A3.6 (5)) stable
under `δ_{−1}`. Put `c(s)(t) = e_L(η(s), η(t))^{(#H+1)/2}`. Then there are a map `σ : H → G(L)(R)` over `η` with
`σ(Λ) = Λ̃`, `δ_{−1}(σ(s)) = σ(−s)` and `σ(s)σ(t) = c(s)(t)·σ(s + t)`, and a generator `ϑ` of the module
`H⁰(A, L)^{Λ̃}`, which is free of rank one; and the sections `X_t = σ(t)·ϑ`, `t ∈ H`, are the coordinates of a linear
system that is a theta structure (4.5) for `H`, `Λ`, `η` and the characters `c(s)`. The `X_t` with `t` in a set of
representatives of `H/Λ` form a basis of `H⁰(A, L)`.
(b) Let `x` be an object over `ℂ` of a theta family (6.1) with structure map `Φ_{v₀}`, and `e` a model of `x` on a
polarised period map `Y = (β_Y, Q, B)` for `(g, ℓ)` with `ℓ` a reflection (6.2), `gᴴβ_Yg = ε_g·1`. Let `λ = φ_{[N_x]}`
be the polarisation of `[N_x]`, `i` the action of `𝓞_E` on `A_x`, and `(𝓞_E, a ↦ ā, L_g, 2π√−1·ψ_{β_Y}, h_ℓ)` the
integral datum of 10.1. Then `(A_x, λ, i)` is a PEL triple for this datum over `Spec ℂ` (PELModuli §M1.2, with no
excluded primes), and `φ ↦ (T(φ)∘g^{−1}, can∘(ε_φε_g^{−1}))` is a bijection from the full level structures `φ` on `x`
(6.1, read with `ΦΨ = c·ΨΦ` for lifts `Φ`, `Ψ` of the translations by the sections of `[y]`, `[z]`, the order of 5.4
(b); `ε_φ` is the unit attached to `ι = id`) onto the points `(α̂, ν(α̂))` of the profinite geometric fibre of the
pro-system of PELModuli §M1.4 for this triple whose map on torsion, composed with `g`, sends each class killed by `𝔑`
to its level point. Here `T(φ) : Ôⁿ → T(A_x)` is the map of Tate modules (AbelianSchemesAndArithmeticModuli §A4.1)
given by `φ` on `T_n = (𝔸_f/Ô)ⁿ`, and `can : Ẑ(1) → T(𝔾_m)(ℂ)` sends `2π√−1·t` to `(exp(2π√−1·t/m))_m`.

(b) compares the two notions of level structure over `ℂ` only; over other rings a full level structure records the
commutators of lifts at every ring map to `ℂ`, and no comparison is made there.

*Needs:* 4.5, 5.4, 6.1, 6.2, 10.1, 10.4; AbelianSchemesAndArithmeticModuli §A2.4 (Ample cohomology, Riemann–Roch and
the degree of `φ_L`); AbelianSchemesAndArithmeticModuli §A3.6 (Theta groups and polarized descent);
AbelianSchemesAndArithmeticModuli §A3.7 (Polarized Weil pairings); AbelianSchemesAndArithmeticModuli §A4.1 (The
integral Tate module); PELModuli §M1.2 (PEL-type abelian schemes); PELModuli §M1.4 (The pro-system of symplectic Tate
trivializations).

### 10.4 Holomorphic families, the analytification and the exponential

*Origin:* particular to this roadmap: the comparison of the calculus of 5.1 with the analytification of schemes
locally of finite type over `ℂ` (ComplexComparisonPartII §C-1.1), and of the uniformisations of 5.1 with the lattice
uniformisation of AbelianSchemesAndArithmeticModuli §A5.1.

*Proof route:* (a) For an affine open `U = Spec C` of `X` containing the point `φ(w)`, `C ⊗_O ℂ` is generated over `ℂ`
by finitely many `b_1, …, b_N ∈ C`; the opens `U_ℂ` of this kind form a basis of the topology of `X_ℂ`, and the
regular functions on `U_ℂ` are the elements of `C ⊗_O ℂ`. So the condition of 5.1 says that `φ` maps a neighbourhood
of `w` into `U(ℂ)` with the `b_k∘φ` analytic there, that is, holomorphically into the closed analytic subspace of
`ℂ^N` cut out by the relations among the `b_k`, which is `U_ℂ^an`; a holomorphic map from a manifold to it is a
morphism to its reduction. Conversely, Zariski opens are open in `X_ℂ^an` and regular functions are holomorphic. The
jet of `φ` at `w` in the direction `v` is the constant point exactly when `d(b_k∘φ)_w(v) = 0` for all `k`. (b) By
§A5.1, `exp` is a surjective homomorphism with kernel the full lattice `Λ` and induces an analytic isomorphism
`V/Λ ≅ A^an`; so it is a holomorphic local isomorphism and, by (a), a holomorphic immersion at every point in the
sense of 5.1. If `γ : W → A(ℂ)` is additive and holomorphic at `0` in the sense of 5.1, then by (a) and translation it
is holomorphic on `W`; as `W` is simply connected and `exp` is a covering map, `γ` lifts to a continuous `γ̃ : W → V`
with `γ̃(0) = 0`, and `γ̃(u + v) − γ̃(u) − γ̃(v)` is a continuous map to the discrete `Λ` that vanishes at `0`, so
`γ̃` is additive, hence `ℝ`-linear, and holomorphic, hence `ℂ`-linear. Choosing a basis of `V` gives 5.2 (d).

Let `O` be a valuative arc, `X` an `O`-scheme locally of finite type, `X_ℂ` its generic fibre and `X_ℂ^an` the
analytification of ComplexComparisonPartII §C-1.1, whose points are the complex points of `X`.
(a) A family `φ : P → X(ℂ)`, `P` a finite-dimensional complex space, is holomorphic at `w` in the sense of 5.1 if and
only if its restriction to some open neighbourhood `P₀` of `w` is a morphism of complex analytic spaces `P₀ → X_ℂ^an`.
In that case `φ` is constant to first order at `w` in the direction `v` exactly when the differential of this morphism
at `w` kills `v`, and `φ` is a holomorphic immersion at `w` exactly when that differential is injective.
(b) Let `A` be an abelian scheme over `ℂ` (4.1), that is an abelian variety in the sense of
AbelianSchemesAndArithmeticModuli §A0.1, and `exp : V → A^an` the exponential of AbelianSchemesAndArithmeticModuli
§A5.1, `V = T₀(A^an)`, with kernel `Λ`. Then `exp`, read as a map `V → A(ℂ)`, is a uniformisation of `A` by `V` with
lattice `Λ` in the sense of 5.1. In particular §A5.1 implies 5.2 (d).

*Needs:* 4.1, 5.1, 5.2; AbelianSchemesAndArithmeticModuli §A0.1 (Abelian schemes); AbelianSchemesAndArithmeticModuli
§A5.1 (Lattice uniformization); ComplexComparisonPartII §C-1.1 (Analytic local models and scheme analytification).

### 10.5 The Hecke algebra and the double-coset ring

*Origin:* particular to this roadmap: the comparison of the group-ring Hecke algebra of 8.1 with the double-coset ring
of the Hecke pair `(GU⁺, K(𝔑))` (G. Shimura, *Introduction to the Arithmetic Theory of Automorphic Functions* (1971),
ch. 3), acting on invariants as in AutomorphicFormsOnReductiveGroups §0.6.

*Proof route:* in the representation of `GL_n(𝔸_f)` on the formal `k`-linear combinations of the cosets `gK`, an
element `a` sends the coset `K` to its coset function; as `K` is a `K`-fixed point, `a ∈ 𝓗(𝔑)` makes the coset
function left `K`-invariant. For `v ∈ π^K`, `π(a)v = Σ_{gK} f_a(g)π(g)v`, which is the operator of `h(a)` in §0.6.
Conversely, for a function `f` invariant under `K` on both sides with finitely many cosets in its support, contained
in `GU⁺`, the sum of the `f(g)[g]` over representatives `g` of these cosets lies in `𝓗(𝔑)`, since on a `K`-fixed
vector `Σ f(g)π(g)v` does not depend on the representatives and is `K`-fixed by the left invariance of `f`; its image
is `Σ_D f(D)·D`. The operators of §0.6 on the `K`-invariants of the representation on cosets, evaluated at the coset
`K`, send `T ∈ 𝕋` to its coset function, so they determine `T`; hence `h(ab) = h(a)h(b)` follows from
`π(ab) = π(a)π(b)` and the composition law of §0.6.

Let `k` be a commutative ring, `K = K(𝔑)`, and `𝕋 = 𝕋(GU⁺, K; k)` the double-coset ring of the Hecke pair `(GU⁺, K)`
(Mathlib's `HeckeRing`, with basis the double cosets `KgK`, `g ∈ GU⁺`), acting on the `K`-invariants of every
representation `π` of `GU` on a `k`-module by `KgK ↦ (v ↦ Σ_i π(b_i)v)` for `KgK = ⊔_i b_iK`, as in
AutomorphicFormsOnReductiveGroups §0.6. For `a ∈ 𝓗(𝔑)` with coset function `f_a` (8.1) put `h(a) = Σ_D f_a(D)·D`, the
sum over the double cosets `D ⊂ GU⁺`.
(a) The coset function of every `a ∈ 𝓗(𝔑)` is invariant under `K` on both sides and supported on finitely many double
cosets contained in `GU⁺`; `h : 𝓗(𝔑) → 𝕋` is a surjective homomorphism of `k`-algebras.
(b) For every representation `π` of `GL_n(𝔸_f)` on a `k`-module and every `v ∈ π^K`, `π(a)v` is the action of `h(a)`
on `v`. The kernel of `h` consists of the `a` that act by `0` on the `K`-invariants of every representation.

An element of `𝓗(𝔑)` records a representative in the group ring, which no action on `K`-invariants sees.

*Needs:* 8.1; AutomorphicFormsOnReductiveGroups §0.6 (Hecke operators on invariants).

### 10.6 Neat levels

*Origin:* particular to this roadmap: the comparison of the neatness of 8.1 with neatness in the sense of PELModuli
§M2.2, stated with its argument after 8.1.

*Proof route:* let `y ∈ GL_n(E)` with `x^{−1}yx ∈ K(𝔑)` fix `ℓ`, for a signed frame `(x, ℓ)` for `β`. By 8.1 (c), with
`c = 1`, `yᴴβy = β` and every conjugate of every eigenvalue of `y` has absolute value `1`; the eigenvalues are
algebraic integers, as `x^{−1}yx ∈ GL_n(Ô)`, hence roots of unity (an algebraic integer all of whose conjugates have
absolute value `1` is a root of unity). In `G_β`, the element `y = x·(x^{−1}yx)·x^{−1}` of `x·K(𝔑)·x^{−1}` has
multiplier `1`, and the eigenvalues of its component at each prime `p` on `L_x ⊗ ℚ_p` are the images of these roots of
unity, so they lie in the common torsion of §M2.2 and are `1`. Then `y` is unipotent and unitary for the definite form
`Φ_w(β)`, `w ≠ v₀`, hence `y = 1`. The eigenvalues and multipliers of the elements of `x·K(𝔑)·x^{−1}` are those of the
elements of `K(𝔑)`, whatever the signed frame.

Let `𝔑 ≠ 0`, `(x, ℓ)` a signed frame for `β`, and `G_β`, `L_x` the similitude group and lattice of 10.1. Whether the
open compact subgroup `x·K(𝔑)·x^{−1}` of `G_β(𝔸_f)` is neat in the sense of PELModuli §M2.2, with no excluded primes
and for the faithful representation on `L_x ⊗ Ẑ` and the multiplier, does not depend on the signed frame; if it is,
then `𝔑` is neat in the sense of 8.1.

Neatness in the sense of 8.1 constrains only the elements of `GL_n(E)` that fix a reflection and are conjugate into
`K(𝔑)` by a frame, that is the automorphisms of moduli points (10.2), and not all elements of `K(𝔑)`; the converse
implication is not asserted.

*Needs:* 8.1, 10.1; PELModuli §M2.2 (Neat open compact subgroups).

### 10.7 The pointwise congruence relation and correspondences on the special fibre

*Origin:* particular to this roadmap: the comparison of the congruence relation of 8.2, a condition at each point of
the special fibre, with the congruence relation written as an identity of correspondences on the special fibre,
between the Hecke correspondences and powers of Frobenius.

*Proof route:* (a) Let `ζ` be the generic point of `C` and `x` the geometric point of `W` at `ζ` with values in an
algebraic closure `k` of `κ(ζ)`; its structure map kills `𝔭`. For a point `u` of `Z_q` with values in `k`,
`u∘Frob^{f·b}` is `F^b∘u`, as the absolute Frobenius commutes with all morphisms. The relation at `x` says that for
each `y ∈ Z_q(k)` the `m_i` with `F^{b_i}(u_i(x)) = y` add up to `0`; and two morphisms from the integral scheme `C`
to the separated `Z_q` that agree at its geometric generic point are equal. (b) Write `[W_q] = Σ_C μ_C·[C]`, `μ_C` the
multiplicities; by (a), `Σ_i m_i·(c, F^{b_i}∘u_{i,q})_*[C] = 0` for each `C`. (c) is (b) for `c = π_i`, since
`(π_i, F^b∘p_g)_* = (1 × F^b)_*∘(π_i, p_g)_*` by the functoriality of push-forward, `F` being finite.

Let `R` be a ring with a homomorphism `κ : R → 𝔽_q` onto a finite field, `q = p^f`, and `𝔭 = ker κ`; let `u_i : W → Z`
(`i` in a finite set `I`) be morphisms of `R`-schemes, `W` of finite type and `Z` separated of finite type over `R`,
`m_i ∈ ℤ` and `a_i = f·b_i` with `b_i ∈ ℕ`, such that the `u_i` satisfy the congruence relation of 8.2 with
coefficients `m_i` and Frobenius exponents `a_i` modulo `𝔭`. Write `W_q`, `Z_q` for the fibres over `𝔽_q`, `u_{i,q}`
for the induced morphisms and `F` for the `q`-power Frobenius endomorphism of `Z_q`, an `𝔽_q`-morphism. For a proper
morphism of schemes of finite type over `𝔽_q`, `(·)_*` is the push-forward of cycles: an integral closed subscheme
goes to its image times the degree of the map onto it, or to `0` if the dimension drops; `[W_q]` is the fundamental
cycle.
(a) For every irreducible component `C` of `(W_q)_red`, the morphisms `F^{b_i}∘u_{i,q}|_C`, `i ∈ I`, fall into classes
of equal morphisms, and the `m_i` of each class add up to `0`.
(b) If `W` is proper over `R`, then for every morphism `c : W_q → Y` to a separated `𝔽_q`-scheme of finite type,
`Σ_i m_i·(c, F^{b_i}∘u_{i,q})_*[W_q] = 0` in the group of cycles of `Y × Z_q`.
(c) Let `𝓜` be a model (8.2), `w` a safe split place with `q_w = q`, `κ` extending the reduction `𝓞_E → k_w = 𝔽_q`,
`i` a level with `g_A ∈ s_i` for every subspace `A ⊂ k_wⁿ`, and `T_A = (π_i, p_{g_A})_*[W_{i,q}]`, a cycle on
`Z_q × Z_q`. Then `Σ_A (−1)^{r_A} q^{r_A(r_A−1)/2}·(1 × F^{|n|−r_A})_*T_A = 0`, `r_A = dim A`; with
`T_j = Σ_{dim A = j} T_A` this reads `Σ_{j=0}^{|n|} (−1)^j q^{j(j−1)/2}·(1 × F^{|n|−j})_*T_j = 0`, the Hecke
polynomial of 9.8 with the correspondences `T_j` in place of the eigenvalues, applied to `F`.

For a single morphism `c`, the identity of (b) does not imply the pointwise relation: let `W = Z` have fibre `W_q`
consisting of two `𝔽_q`-rational points lying over one point of `Y`, `u_1` the identity, `u_2` the map exchanging the
two points, `m = (1, −1)` and `b = (0, 0)`; then `(c, u_1)_*[W_q] = (c, u_2)_*[W_q]`, while `[u_1(x)] − [u_2(x)] ≠ 0`
at both points `x`. So one identity of the form of (b), for a single `c`, records less in general than the pointwise
relation. The identity of correspondences of (c) is (b) for the single morphism `c = π_i`; no converse of (c) is
asserted here. The identities of (b) for all `c` together are equivalent to the pointwise relation: for `c` the
identity of `W_q`, `(c, F^{b_i}∘u_{i,q})_*[C]` is the graph of `F^{b_i}∘u_{i,q}|_C`, and graphs of distinct morphisms
on `C` are distinct integral subschemes, so (b) gives (a); and (a) gives the congruence relation modulo `𝔭`, since a
point of `W` with values in a field in which `𝔭` vanishes factors through an irreducible component `C` of `(W_q)_red`.

*Needs:* 8.2.

### 10.8 Cuspidal types and types of supercuspidal representations

*Origin:* particular to this roadmap: the comparison of the cuspidal types of 9.2 with the types of supercuspidal
representations of the theory of types, through the Bernstein decomposition of SmoothRepresentationsOfLocalGroups
§SR.3.2.

*Proof route:* suppose that `χ` is trivial on `J ∩ N` for the group `N = 1 + εM_a(E_w)(1 − ε)` of an idempotent
`ε ≠ 0, 1`, the unipotent radical of the parabolic subgroup `P = MN` that stabilises the image of `ε`. Let `J_M` be
the image of `P ∩ J` in `M`, `χ_M` the character it inherits from `χ`, `τ` the compact induction of `χ_M` from `J_M`
to `M` (SmoothRepresentationsOfLocalGroups §SR.2.1) and `v₀ ∈ τ` the function supported on `J_M` with `v₀(1) = 1`. The
function on `GL_a(E_w)` equal to `δ_P(p)^{1/2}·τ(p)χ(j)v₀` at `pj` (`p ∈ P`, `j ∈ J`) and to `0` off `PJ` is well
defined, smooth and nonzero, lies in the parabolic induction of `τ`, and `J` acts on it by `χ`. By first adjointness
(SmoothRepresentationsOfLocalGroups §SR.2.2) every map from a projective generator of the cuspidal factor of §SR.3.2
to a parabolically induced representation vanishes, the Jacquet modules of that generator being `0`; so the induced
representation and all its subquotients lie in the complementary factor. The subrepresentation generated by the
function is finitely generated, so it has an irreducible quotient; the image of the function is a nonzero vector on
which `J` acts by `χ`, so this quotient contains `χ` and is cuspidal by hypothesis, which is impossible.

Let `w` be a split place, `a = |n|`, `J ⊂ GL_a(𝒪_w)` an open subgroup and `χ : J → ℂ^×` a smooth character such that
every irreducible smooth complex representation of `GL_a(E_w)` that contains `χ` (has a nonzero vector on which `J`
acts by `χ`) is cuspidal. Then `(J, χ)` is a cuspidal type at `w` in the sense of 9.2. This applies to every type
`(J, χ)` of the inertial class of a supercuspidal representation of `GL_a(E_w)` (a compact open subgroup `J` with a
smooth character `χ` such that the irreducible smooth representations containing `χ` are exactly the unramified twists
of that representation) with `J ⊂ GL_a(𝒪_w)`.

The condition of 9.2 concerns `(J, χ)` alone and singles out no inertial class; the converse implication is not
asserted.

*Needs:* 9.2; SmoothRepresentationsOfLocalGroups §SR.2.1 (Smooth and compact induction);
SmoothRepresentationsOfLocalGroups §SR.2.2 (Jacquet functors and parabolic induction);
SmoothRepresentationsOfLocalGroups §SR.3.2 (The Bernstein decomposition and centre).

### 10.9 Definite forms and algebraic modular forms on definite unitary groups

*Origin:* particular to this roadmap: the comparison of the definite forms of 9.3 with algebraic modular forms on the
definite unitary groups of the forms that have frames, in the rational coefficient model of
AutomorphicFormsOnReductiveGroups §7.4.

*Proof route:* a frame determines its form among the matrices positive definite at an infinite place (10.2, proof
route), so the set of frames for totally positive definite forms is the disjoint union over `β ∈ 𝓑_def` of the sets
`GL_n(E)·G_β¹(𝔸_f)·x_β`, and `GL_n(E) ∩ G_β¹(𝔸_f) = U_β`. A definite form is therefore determined by its values on the
`G_β¹(𝔸_f)·x_β`, and conversely `φ(zhx_β) = ξ(z)ψ_β(h)` defines a definite form, well defined by the last equality and
right `K(𝔑)`-invariant because `K(𝔑)` lies in `GU¹` (10.2). For (b), `U_β(𝔸_f)` is the kernel of the multiplier on
`G_β¹(𝔸_f)`, hence normal, so `G_β¹(𝔸_f)` is the disjoint union of the `U_β(𝔸_f)·h_j·K_β`, and a function in `M_β` is
given freely by its restrictions to them; the set of the `h_j` is finite because the multiplier of `K_β` is open in
`Ẑ^×`.

Let `𝔑 ≠ 0`, `ξ` a representation of `GL_n(E)` on `W`, `K = K(𝔑)`, and `𝓑_def` a set of representatives, for
`β ~ zᴴβz`, of the matrices of `M_n(E)` that are positive definite at every infinite place and have a frame (3.1);
this set is finite, by 9.3 (c) applied, with `U = GL_n(Ô)`, to the signed frames `(x, 1)`: an element `g` of
`GU ∩ GL_n(Ô)` has `gᴴg ∈ Ẑ^×·1`, so `xg` is a frame for the same form as `x`, and the class of the form of a frame is
constant on the classes of `GL_n(E)\GL_n(𝔸_f)/(GU ∩ GL_n(Ô))`. For `β ∈ 𝓑_def` fix a frame `x_β`; let
`U_β = {z ∈ GL_n(E) : zᴴβz = β}`, the rational points of the unitary group `U(β)` of `(Eⁿ, H_β)` over `E⁺`,
`U_β(𝔸_f) = {u ∈ GL_n(𝔸_f) : uᴴβu = β}` its finite adelic points, `G_β¹(𝔸_f) = {h ∈ GL_n(𝔸_f) : hᴴβh ∈ Ẑ^×·β}` and
`K_β = x_βKx_β^{−1}`.
(a) `φ ↦ (ψ_β)_β`, `ψ_β(h) = φ(hx_β)`, is a linear bijection from the definite forms of level `𝔑` with coefficients
`ξ` (9.3) onto `⊕_{β ∈ 𝓑_def} M_β`, where `M_β` is the space of the `ψ : G_β¹(𝔸_f) → W` with `ψ(uhk) = ξ(u)ψ(h)` for
`u ∈ U_β` and `k ∈ K_β`.
(b) For representatives `h_1, …, h_s` of the finite set `U_β(𝔸_f)\G_β¹(𝔸_f)/K_β`, `ψ ↦ (u ↦ ψ(uh_j))_j` identifies
`M_β` with the direct sum over `j` of the spaces of functions `F : U_β(𝔸_f) → W` with `F(γuk) = ξ(γ)F(u)` for
`γ ∈ U_β` and `k ∈ U_β(𝔸_f) ∩ h_jK_βh_j^{−1}`. When the restriction of `ξ` to `U_β` is given by an algebraic
representation of `U(β)`, as for the coefficients of 9.6 (b) when `β = 1`, these are the algebraic modular forms of
the rational coefficient model of AutomorphicFormsOnReductiveGroups §7.4 for `U(β)` at these levels.

Right translation by `g ∈ GU⁺`, with `c·gᴴg ∈ Ẑ^×·1` for the rational `c > 0` of 3.1, carries the summand of `β` into
the summand of the class of `c^{−1}β`, which is the summand of `β` exactly when `zᴴβz = cβ` for some `z ∈ GL_n(E)`.
For the `g_A` of 8.1, `c` is a power of `q_w`; so the Hecke operators of 9.3 need not preserve the summands of (a).

*Needs:* 3.1, 9.3, 10.2; AutomorphicFormsOnReductiveGroups §7.4 (Algebraic modular forms with their actual coefficient
action).

### 10.10 The cohomology `Vⁿ` as ℓ-adic étale cohomology

*Origin:* particular to this roadmap: the consequences, for the model and for 9.1, of the comparison of
CohomologyOfFunctorsOnTestRings Layer 8 (Comparison with the standard theory) between `Vⁿ` and ℓ-adic étale
cohomology.

*Proof route:* the descent hypothesis of 8.2 for `Vⁿ` is CohomologyOfFunctorsOnTestRings §3.5 (b) for the Galois
coverings `π_i` of the model; it passes to étale cohomology through the identification, which is natural for the legs
and the deck transformations. As `F(π_{I(w)})` is injective, `t(w, j)` is determined by `F(π_{I(w)})∘t(w, j)`, the sum
of the pull-backs along the legs over `τ_{w,j}`, so the two families of operators correspond; they commute with the
automorphisms of `Ω`, which commute with all pull-backs. (b) is 9.1 transported through the identification, natural
for the `u_i` and equivariant for `Γ`.

Let `R` be a Noetherian ring with a map to `Ω`, `ℓ` a prime, `Γ` a group acting on `Ω` by `R`-algebra automorphisms,
and, for proper `R`-schemes `Y`, `ι_Y : Vⁿ(Y) ≅ Hⁿ_ét(Y_Ω, ℚ_ℓ)` the identification of CohomologyOfFunctorsOnTestRings
§8.3 (a), (b), natural in `Y` and compatible with the `R`-algebra automorphisms of `Ω`, which act on both sides by
pull-back along the automorphisms of `Y_Ω` that they induce. Here `Hⁿ_ét(Y_Ω, ℚ_ℓ)` is the ℓ-adic étale cohomology of
EtaleCohomologyFoundations §F.4.5, finite-dimensional, with the continuous action of `Gal(Ω/E)` of
EtaleCohomologyFoundations §F.4.6 when `R ⊂ E`.
(a) For a model `𝓜` (8.2), the functor `Y ↦ Hⁿ_ét(Y_Ω, ℚ_ℓ)` satisfies the descent hypothesis of 8.2 at every level,
and `ι_Z` carries the operators `t(w, j)` that 8.2 gives on `Vⁿ(Z)` to those it gives on `Hⁿ_ét(Z_Ω, ℚ_ℓ)`; these
commute with `Γ`.
(b) In the setting of 9.1, with `W`, `Y` proper over `R` and `Y` smooth of relative dimension `d`: under the
hypotheses of 9.1 (a), `Σ_i m_i·u_i^*(g^{−e_i}x) = 0` in `Hⁿ_ét(W_Ω, ℚ_ℓ)` for every `x ∈ Hⁿ_ét(Y_Ω, ℚ_ℓ)`; and the
inertia group of `A` in `Γ` acts trivially on `Hⁿ_ét(Y_Ω, ℚ_ℓ)`, which is the statement that smooth proper reduction
makes ℓ-adic cohomology unramified (9.1, Origin).

*Needs:* 8.2, 9.1; CohomologyOfFunctorsOnTestRings §§3.4, 3.5 (`Vⁿ`, transfer for Galois coverings);
CohomologyOfFunctorsOnTestRings §8.3 (`ℓ`-adic cohomology and `ℓ`-adic étale cohomology); EtaleCohomologyFoundations
§F.4.5 (Rational realization and finite-dimensional cohomology); EtaleCohomologyFoundations §F.4.6 (Continuous actions
and finite-level operation comparison).

### 10.11 Crystallinity, the linear Frobenius and Hodge–Tate jumps in Fontaine's terms

*Origin:* particular to this roadmap: the consequences, for 9.8, of the comparison of
CrystallineRepresentationsAndKisinModules Layer 7 (Comparison with the standard theory) between the notions of its
§3.1 and Fontaine's.

*Proof route:* `GL_m(ℚ̄_ℓ)` is the countable union of the closed subgroups `GL_m(L)`, `L` finite over `ℚ_ℓ`; by
Baire's theorem applied to the compact group `Gal(Ω/E)`, the preimage of one of them is an open subgroup, of finite
index, and the image of the whole group lies in `GL_m(L′)` for the finite extension `L′` generated by the entries of
the images of coset representatives. The vectors of `B_max ⊗ ρ` fixed by `D_A` are those of `B_max ⊗ ρ_L` tensored
over `L` with `ℚ̄_ℓ`, so crystallinity, the linear Frobenius and the jumps of `ρ` are those of `ρ_L`, to which
CrystallineRepresentationsAndKisinModules §§7.2–7.4 apply, through §7.2 (d) for the decomposition group `D_A` and §7.3
(c) for the jumps. §7.2 (a), (b) identify `D_max = (B_max ⊗ ρ_L)^{D_A}` with `D_cris` compatibly with `φ` and give
(a); on `D_max` the linear Frobenius at a Weil pair `(s, f_w)` with `s ∈ D_A` is `φ^{f_w}`, because `s` fixes `D_max`
(§7.4 (b)), and a polynomial kills the `B_max`-linear extension of an endomorphism of `D_max` exactly when it kills
the endomorphism (§7.4 (c)), which gives (b); a crystalline `ρ_L|_{D_A}` is de Rham (§7.3 (d)), and by §7.3 (b) the
jump at `h` is the multiplicity of `ℂ_ℓ(−h)`, which gives (c).

Let `ρ` be a continuous representation of `Gal(Ω/E)` on `ℚ̄_ℓ^m` satisfying (b) and (c) of 9.8, for instance the
representation of 9.8, and `A` a place of `Ω` over `ℓ` above a safe place `w`, with decomposition group `D_A`,
identified through `A` with the absolute Galois group of the completion `E_w`; let `E_{w,0}` be the maximal unramified
subfield of `E_w` and `f_w = [E_{w,0} : ℚ_ℓ]`, so that `q_w = ℓ^{f_w}`. Then `ρ` is the scalar extension of a
representation `ρ_L` on `L^m` for a finite extension `L` of `ℚ_ℓ`, and:
(a) `ρ_L|_{D_A}` is crystalline in Fontaine's sense: `D_cris = (B_cris ⊗_{ℚ_ℓ} ρ_L)^{D_A}` has dimension
`dim_{ℚ_ℓ} ρ_L` over `E_{w,0}`;
(b) `P_w(φ^{f_w}) = 0` on `D_cris ⊗_L ℚ̄_ℓ`, `φ^{f_w}` being the `E_{w,0}`-linear power of the crystalline Frobenius;
(c) for every `h ∈ J` and every local datum at `A` whose complex embedding of `E` is `Φ_{v₀}` (9.8 (c)), `ℂ_ℓ(−h)`
occurs in `ℂ_ℓ ⊗_{ℚ̄_ℓ} ρ`, on which `D_A` acts semilinearly through the local datum: `h` is a Hodge–Tate weight of
`ρ|_{D_A}` in the convention in which the cyclotomic character has Hodge–Tate weight `−1`, and `−h` is one in the
convention of CrystallineRepresentationsAndKisinModules §7.3 (b), in which the cyclotomic character has weight `+1`.
Conversely, (a)–(c) give (b) and (c) of 9.8.

*Needs:* 9.7, 9.8; CrystallineRepresentationsAndKisinModules §3.1 (crystallinity, linear Frobenius, Hodge–Tate jumps);
CrystallineRepresentationsAndKisinModules §7.2 (Crystalline representations), §7.3 (Hodge–Tate jumps), §7.4 (The
linear Frobenius and the Weil–Deligne representation); ArithmeticGaloisRepresentations §1.5 (Descent from `ℚ̄_ℓ`).

### 10.12 The eigenquotient of étale cohomology

*Origin:* particular to this roadmap: the representation of 9.8 stated on ℓ-adic étale cohomology, and its relation to
representations attached to an eigensystem in the usual sense.

*Proof route:* (a) `ι_Z` (10.10) is `Gal(Ω/E)`-equivariant and carries the operators `t(w, j)` on `V^k(Z)` to those on
`H^k_ét(Z_Ω, ℚ_ℓ)` (10.10 (a)), so by the universal property of 9.7 the two eigenquotients are isomorphic. The
statement of 9.8 asserts only that some representation has (a)–(c); the argument given under 9.8 uses of `ρ` only that
it is an eigenquotient of the family `V^k(Z)`, `0 ≤ k ≤ 2d`, with these operators and eigenvalues, and is to be
repeated for it: 9.1 (b), and 9.1 (a) applied to the congruence relation of the model, give (a); the crystallinity of
`V^k(Z)` with its relation for the linear Frobenius (PadicComparisonForFunctorCohomology §7.6) and 9.7 (b), (c) give
(b); 9.7 (d), the Hodge–Tate comparison (PadicComparisonForFunctorCohomology §6.5), the fixed point formula
(CohomologyOfFunctorsOnTestRings §7.5) and 9.5 (c) give (c). 10.11 restates (b) and (c). (b) By the Cayley–Hamilton
theorem, `P_w(r(s)) = 0` and `P_w(φ^{f_w}) = 0` on `D_cris`, and 10.11 turns the second into the statement on the
linear Frobenius.

Let `𝓜`, `Z`, `R`, `ℓ`, `ι_ℓ`, `θ` and `J` be as in 9.8, `d` the relative dimension of `Z`, and `ρ_ét` the
eigenquotient (9.7) of the family `H^k_ét(Z_Ω, ℚ_ℓ)`, `0 ≤ k ≤ 2d`, of representations of `Gal(Ω/E)`, for the
operators `t(w, j)` of 10.10 (a) and the eigenvalues `ι_ℓθ(w, j)`: the largest quotient of
`ℚ̄_ℓ ⊗ ⊕_k H^k_ét(Z_Ω, ℚ_ℓ)` on which each `t(w, j)` acts by `ι_ℓθ(w, j)`.
(a) `ρ_ét` is continuous and satisfies (a), (b) and (c) of 9.8: it is trivial on the inertia groups of the places over
safe places prime to `ℓ`, with each geometric Frobenius of norm `q_w` killed by `P_w`, crystalline in Fontaine's sense
at the places over `ℓ` above safe places, with `P_w(φ^{f_w}) = 0` on `D_cris`, and has every `h ∈ J` among its
Hodge–Tate weights as in 10.11 (c).
(b) Let `r` be a continuous representation of `Gal(Ω/E)` on `ℚ̄_ℓ^m` such that at every place `A` of `Ω` over a safe
place `w`: if `ℓ` is a unit at `A`, `r` is trivial on the inertia group of `A` and `P_w` is the characteristic
polynomial of `r(s)` for each `s` as in 9.8 (a); if `A` lies over `ℓ`, `r|_{D_A}` is crystalline and `P_w` is the
characteristic polynomial of `φ^{f_w}` on `D_cris`; and every `h ∈ J` is a Hodge–Tate weight of `r|_{D_A}` as in 10.11
(c). Then `r` satisfies (a)–(c) of 9.8.

So the conclusion of 9.8 follows from the existence of a representation attached to `θ` in the usual sense with the
weights `J`, while it records neither the dimension of `ρ`, nor its semisimplicity, nor its characteristic
polynomials: `ρ_ét` may be `0` when `J` is empty, and it is not related here to such an `r`.

*Needs:* 8.2, 9.1, 9.5, 9.7, 9.8, 10.10, 10.11; CohomologyOfFunctorsOnTestRings §§3.5, 7.5 (transfer, Woods Hole
formula); PadicComparisonForFunctorCohomology §§6.5, 7.6 (Hodge–Tate weights, crystallinity, linear Frobenius);
GaloisRepresentationsOfUnitaryEigenforms §§1.1, 1.3 (Hecke polynomials, local data, jumps).

## What the library already provides

- The factorisation of a homomorphism of group schemes through a quasi-compact, flat, surjective homomorphism that it
  kills the kernel of (used over an Artinian base in 4.3 and 7.3): `TauCeti.GroupScheme.isColimitKernelCofork`
  (multiplicative group objects; the passage from additive group objects and from points in finite local algebras to the
  scheme-theoretic kernel is a small bridge).
- A proper, locally quasi-finite morphism is finite (in 4.3): `AlgebraicGeometry.IsFinite.of_isProper_of_locallyQuasiFinite`
  (Mathlib).
- The valuative criterion of properness, which extends points of the generic fibre over a valuative arc (in 5.4):
  `AlgebraicGeometry.IsProper.eq_valuativeCriterion`, `AlgebraicGeometry.ValuativeCriterion.existence`,
  `AlgebraicGeometry.ValuativeCriterion.uniqueness` (Mathlib).

On Tau Ceti's main branch, later than the revision pinned here: the extension of a morphism from the generic point of a
base whose local rings are valuation rings to a unique section of a universally closed, separated morphism locally of
finite type (in 5.4), `AlgebraicGeometry.Scheme.Hom.existsUnique_section_of_valuationRing`.

## Results taken from other roadmaps

- Tangent polynomials of a pair of maps at a point (8.2): CohomologyOfFunctorsOnTestRings §6.6.
- The cohomology `Vⁿ` with its Galois action and functoriality, smooth and proper base change, transfer for Galois
  coverings, the fixed point formula of Woods Hole type, and the charting of smooth proper schemes over a Noetherian
  ring (9.1, 9.8): CohomologyOfFunctorsOnTestRings §§1.3, 1.5, 3.4, 3.5, 4.3, 5.6, 7.5.
- Crystallinity of the cohomology with its linear Frobenius, and Hodge–Tate classes of a given weight (9.8):
  PadicComparisonForFunctorCohomology §§6.5, 7.6.
- Crystalline representations through `B_max`, linear Frobenius and Hodge–Tate jumps (Conventions, 9.7, 9.8):
  CrystallineRepresentationsAndKisinModules §3.1.
- Hecke polynomials, local data and weights with their jumps (9.6, 9.8):
  GaloisRepresentationsOfUnitaryEigenforms §§1.1, 1.3.
- Adeles, Hecke operators of `GL_n` at a place, and the change of signs of elliptic similitudes (3.1, 8.1, 9.4):
  AdelicUnitaryGroupsAndAlgebraicModularForms §§2.1, 3.1, 7.9.
- The single cosets of the Hecke operators of `GL_n` at a place, indexed by subspaces (8.1):
  WeilRepresentationsOnBanachSpacesOfData §9.1.
- Iwahori–Hecke operators, their injectivity and twisted conjugacy, and polynomial representations of `GL_a` with their
  Schur matrices (9.2, 9.6): IntegralRepresentationsOfGeneralLinearGroups §§1.1, 1.3, 6.1, 6.3, 6.4.
- Weyl's character formula for `U(n)` (9.6): HolomorphicDiscreteSeriesOfUnitaryGroups §7.1.
- Isogenies over a base and the factorisation through an isogeny (4.3, 7.3): AbelianSchemesAndArithmeticModuli §A3.1.
- The Appell–Humbert classification, which implies 5.3: AbelianSchemesAndArithmeticModuli §A5.3.
- The comparison of `Vⁿ` with ℓ-adic étale cohomology (Conventions, 10.10, 10.12): CohomologyOfFunctorsOnTestRings
  §8.3 (`ℓ`-adic cohomology and `ℓ`-adic étale cohomology); ℓ-adic étale cohomology, its finite dimensionality and its
  continuous Galois action (10.10): EtaleCohomologyFoundations §F.4.5 (Rational realization and finite-dimensional
  cohomology), §F.4.6 (Continuous actions and finite-level operation comparison).
- The comparison of crystallinity through `B_max`, the linear Frobenius and Hodge–Tate jumps with Fontaine's theory
  (Conventions, 10.11): CrystallineRepresentationsAndKisinModules §7.2 (Crystalline representations), §7.3 (Hodge–Tate
  jumps), §7.4 (The linear Frobenius and the Weil–Deligne representation); the descent of representations over `ℚ̄_ℓ`
  to a finite extension of `ℚ_ℓ` (10.11): ArithmeticGaloisRepresentations §1.5 (Descent from `ℚ̄_ℓ`).
- PEL data, integral and unitary PEL data, similitude groups, good primes, PEL triples, Tate trivialisations, neat
  subgroups and the complex points of PEL moduli problems (3.2, 6.1, 10.1–10.3, 10.6): PELModuli §M0.5 (Integral PEL
  data), §M0.6 (Rational and p-integral PEL data), §M0.7 (The similitude group), §M0.10 (Bad primes and the good-prime
  base), §M1.2 (PEL-type abelian schemes), §M1.4 (The pro-system of symplectic Tate trivializations), §M2.2 (Neat open
  compact subgroups), §M3.4 (Complex points of PEL moduli), §M5.5 (Unitary PEL data with prescribed signatures).
- Abelian schemes over a field, ample cohomology, theta groups and level subgroups, polarised Weil pairings, full
  level structures, Tate modules and lattice uniformisation (6.1, 10.3, 10.4): AbelianSchemesAndArithmeticModuli §A0.1
  (Abelian schemes), §A2.4 (Ample cohomology, Riemann–Roch and the degree of `φ_L`), §A3.6 (Theta groups and polarized
  descent), §A3.7 (Polarized Weil pairings), §A3.8 (Full level structures), §A4.1 (The integral Tate module), §A5.1
  (Lattice uniformization).
- The analytification of schemes locally of finite type over `ℂ` (10.4): ComplexComparisonPartII §C-1.1 (Analytic
  local models and scheme analytification).
- The double-coset ring of a Hecke pair with its action on invariants, and algebraic modular forms in the rational
  coefficient model (8.1, 9.3, 10.5, 10.9): AutomorphicFormsOnReductiveGroups §0.6 (Hecke operators on invariants),
  §7.4 (Algebraic modular forms with their actual coefficient action).
- Compact and parabolic induction, first adjointness and the splitting off of cuspidal components (10.8):
  SmoothRepresentationsOfLocalGroups §SR.2.1 (Smooth and compact induction), §SR.2.2 (Jacquet functors and parabolic
  induction), §SR.3.2 (The Bernstein decomposition and centre).
- Galois representations attached to constituents of algebraic modular forms on a definite unitary group, the standard
  theorem named beside 9.8 and not used: PotentialAutomorphyInfrastructurePartII §3.6 (Galois representations attached
  to constituents of algebraic modular forms).

## References

- `[ShortProof]`: the folder `grh` of <https://github.com/lsernau/grh-lean> at commit
  `72fead102f663d5c7a407964a13dc0cf9d977207`; this roadmap covers `src/Lib/Shimura`, with the definitions of tangent
  polynomials, congruence relations, Galois coverings and null families in `src/Lib/Cohomology/Etale/Basic`.
- J. Arthur, L. Clozel, *Simple algebras, base change and the advanced theory of the trace formula* (1989), ch. 1 §2,
  after Deligne and Kazhdan.
- Birkenhake–Lange, *Complex Abelian Varieties*, 3.2.7, 4.1.5, 6.4.
- M. Bolognesi, A. Massarenti, Comment. Math. Helv. 91 (2016), Lemma 4.1.
- S. Bosch, W. Lütkebohmert, M. Raynaud, *Néron Models* (1990), 1.2/8, 4.4/1, 7.3, 8.1.
- L. Breen, *Fonctions thêta et théorème du cube*, LNM 980 (1983).
- D. Bump, A. Pekker, Proc. Amer. Math. Soc. 130 (2002), 3473–3481 (a survey of proofs).
- C.-L. Chai, *Riemann's theta formula* (2014), Theorem 1.2.
- B. Conrad, *Semistable reduction for abelian varieties* (notes), Prop. 6.3.
- Deligne, *Formes modulaires et représentations ℓ-adiques*, Sém. Bourbaki 355 (1969), Thm 4.9.
- Dummigan, *A simple trace formula for algebraic modular forms*, Exp. Math. 22 (2013).
- B. Edixhoven, G. van der Geer, B. Moonen, *Abelian Varieties* (draft), ch. IV §3, (5.1)–(5.2), ch. VI §1.
- EGA IV.
- G. Faltings, C.-L. Chai, *Degeneration of Abelian Varieties* (1990), I.2.7.
- G. Frobenius, *Über die Grundlagen der Theorie der Jacobischen Functionen*, Crelle 97 (1884).
- Goresky and MacPherson, *The topological trace formula* (2003).
- Harris, Labesse, *Conditional base change for unitary groups*, Asian J. Math. 8 (2004), Thm 2.1.2.
- M. Harris, R. Taylor, *The Geometry and Cohomology of Some Simple Shimura Varieties* (2001), III.4, III.4.1, ch. VII.
- Katz–Mazur (1985), ch. 13.
- N. Katz, *Serre–Tate local moduli*, LNM 868 (1981), §1.
- G. Kempf, *Multiplication over abelian varieties*, Amer. J. Math. 110 (1988).
- G. Kempf, *Linear systems on abelian varieties*, Amer. J. Math. 111 (1989), 65–94.
- S. Koizumi, *Theta relations and projective normality of abelian varieties*, Amer. J. Math. 98 (1976).
- R. Kottwitz, *Points on some Shimura varieties over finite fields*, J. Amer. Math. Soc. 5 (1992), §5.
- J.-P. Labesse, *Changement de base CM et séries discrètes* (2011), Thm 5.4.
- K.-W. Lan, *Elevators for degenerations of PEL structures*, Math. Res. Lett. 18 (2011).
- J. Lubin, J. Tate, *Formal moduli for one-parameter formal Lie groups*, Bull. SMF 94 (1966).
- L. Moret-Bailly, *Pinceaux de variétés abéliennes*, Astérisque 129 (1985), II.3.5.
- D. Mumford, *Abelian Varieties*, §§1–2.
- D. Mumford, *On the equations defining abelian varieties I*, Invent. Math. 1 (1966), 287–354, §§1–2, §3.
- D. Mumford, *On the equations defining abelian varieties II*, Invent. Math. 3 (1967), 75–135.
- A. Nagano, *On Riemann type relations for theta functions on bounded symmetric domains of type I*, arXiv 2301.09243
  (2023), Theorem 1.1.
- T. Sekiguchi, J. Math. Soc. Japan 29 (1977).
- Serre and Tate, Ann. of Math. 88 (1968).
- Shimura, *On the trace formula for Hecke operators*, Acta Math. 132 (1974).
- G. Shimura, *Introduction to the Arithmetic Theory of Automorphic Functions* (1971), ch. 3 and 7–8.
- S. W. Shin, *Abelian varieties and Weil representations*, Algebra Number Theory 6 (2012), Prop. 2.12.
- The Stacks project, Section 0BF9; Tags 0GKD (SGA4 XVI 2.2) and 03SN (SGA5 XV).
- Wedhorn, *Congruence relations on some Shimura varieties*, J. reine angew. Math. 524 (2000), 43–71.
