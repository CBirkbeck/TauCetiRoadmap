# Auxiliary algebra and analysis for theta lifts

**Summary.** This roadmap states the auxiliary results of general algebra, linear algebra and analysis that the
other roadmaps of the family `ShortGRH` use, that are targets in their own right, and that neither Mathlib nor the
Tau Ceti library states in the form needed. They are independent of one another and of the data of the argument.

The argument of the family runs as follows: a one-sided bound for a sum over primes gives a half-plane free of zeros
of Dirichlet L-functions, and the one-sided bound comes from comparing an upper and a lower bound for the covolume of
a lattice of theta lifts (OneSidedPrimeSumBoundsAndAdmissibleData). The formal proof uses the results here at
scattered places of that comparison and of its background:

- Amitsur's theorem (1.1) puts the characteristic polynomials of a matrix representation over the base ring in
  Ribet's method (CongruencesOfTwistedThetaLifts, congruences to first order).
- The statement on multiplicative functions of finite modules (1.2), a consequence of the non-singularity of the
  Cartan matrices of group algebras over finite fields, gives the exact cocycle counts that the route uses in place of
  duality and the Greenberg–Wiles formula (IdelicReciprocityCountsAndCyclotomicClassGroups).
- The weighted Combinatorial Nullstellensatz with multiplicity (1.3) enters the bound for the elementary divisors of
  a Hecke operator (CompositeThetaLiftsAndShortForms).
- Auerbach's lemma for a compact family of linear forms (2.1) gives bases with bounded coordinates for the stable
  lattices of ℓ-adic representations (GaloisRepresentationsOfUnitaryEigenforms, SelmerBoundsForAnticyclotomicTwists).
- Gelfand's trick for `GL_n` over a valuation ring (2.2), whose statement that the Hecke operators commute is, over a
  non-archimedean local field, equivalent to the commutativity of the spherical Hecke algebra, makes the Hecke
  operators at split places commute and gives their adjoints (WeilRepresentationsOnBanachSpacesOfData,
  IntegralRepresentationsOfGeneralLinearGroups, GaloisRepresentationsOfUnitaryEigenforms).
- The complex Gaussian integral for accretive matrices (3.1) normalises the Fock model of the Weil representation
  (WeilRepresentationsOnBanachSpacesOfData) and enters Gauss sums of good reduction
  (AbelianSchemesWithThetaStructuresAndTheirCohomology).
- Hua's integral bound (3.2) enters the bound for the remaining terms of the second moment at one real place
  (RemainingAndMainTermsOfSecondMoments).

Two of these results are stated through objects of the formal proof where the literature has standard ones: 1.2
through Higman's trace condition and functions multiplicative in exact sequences, where the literature has projective
modules and the Cartan matrix of a group algebra, and 2.2 through Hecke functions acting on the fixed vectors of a
representation, where it has the spherical Hecke algebra. The standard theory is the reference, and Layer 4 relates
the two: the trace condition is projectivity over `𝔽_ℓ[Δ]`; 1.2 follows from the non-singularity of Cartan matrices
over finite fields of characteristic `ℓ`, and over such a field is equivalent to the non-singularity of the diagonal
block of the Cartan matrix at the simple modules on which the central element `z` is not the identity; and over a
non-archimedean local field the Hecke functions form the spherical Hecke algebra, acting on fixed vectors as in the
general theory. Sections 1.2 and 2.2 state their results on the standard objects as well; the objects of the formal
proof are one way to prove them, and the proofs of the route are stated on them.

There are four layers. Layer 1 is algebra (1.1–1.3), Layer 2 linear algebra and Hecke operators (2.1, 2.2), Layer 3
analysis (3.1, 3.2), and Layer 4 the comparison of 1.2 and 2.2 with the standard theory (4.1, 4.2). The two sections
before the references list the results of other roadmaps used here, among them the auxiliary results of the shorter
proof that other roadmaps state, and those that the library already provides.

## Conventions and notation

- *Labels.* Under each section heading, `*Origin:*` says where its statement comes from and `*Method of the formal
  proof:*` how [ShortProof] proves it. [ShortProof] is the shorter formal proof of the family `ShortGRH`; the line
  "[ShortProof], `path` (`declarations`)" at the end of a section names the file (under `src/`) and the declarations
  where it proves the statement. The names of [ShortProof] occur only on that line, and every name on that line is
  a declaration of [ShortProof], also where it lies outside its namespace `New` (such as `Matrix.IsAccretive` in 3.1).
  In Layer 4, whose statements [ShortProof] does not prove, `*Proof route:*` takes the place of the method line and
  gives a route for a contributor, and no [ShortProof] line follows.
- *Standard terms.* A paragraph beginning **In standard terms.**, after the statement of a section that other roadmaps
  use, gives its result on the standard objects of the literature and names the section of Layer 4 that relates the
  two forms.
- *Modest statements.* Where a general section of another roadmap also implies a statement here, the section says so
  in a closing sentence. The statement here is the case that the family uses, and it has a proof that does not pass
  through the general theorem.
- *Data of the argument.* The letters that OneSidedPrimeSumBoundsAndAdmissibleData fixes for the data of the argument
  do not occur here. Each section fixes its own notation, with the conventions below.

### Table of symbols

| Symbol | Meaning |
|---|---|
| `Aᴴ`, `x*` | the conjugate transpose of a complex matrix `A`, of a column vector `x` |
| `H ≥ 0`, `H > 0` | `H` is hermitian positive semidefinite, positive definite |
| `dx` on `ℂ^n` | Lebesgue measure on `ℂ^n`, identified with `ℝ^{2n}` by real and imaginary parts |
| `M_{m×n}(R)`, `M_n(R)` | matrices over a ring `R` |
| `χ_A(X)` | the characteristic polynomial `det(X − A)` of a square matrix `A` |
| `𝔪_z` | in 1.3, for a field `K` and a point `z ∈ K^ι`, the ideal of the polynomials over `K` that vanish at `z` |
| `cost_κ(α)` | for weights `κ : ι → ℤ_{>0}` and a monomial `X^α`, the weighted degree `Σ_u α_u/κ_u` |
| `R[Δ]`-module | for a group `Δ` and a commutative ring `R`, an `R`-module with an `R`-linear action of `Δ` |
| `O`, `K = GL_n(O)` | in 2.2, a valuation ring of a field `F`, and the subgroup of `GL_n(F)` of matrices that have, with their inverse, all entries in `O` |
| `T_f` | the Hecke operator of a function `f` on `GL_n(F)`, defined in 2.2 |
| `ᵗg` | the transpose of a matrix `g` |
| `Irr_z(k)`, `C_k`, `C_z` | in 4.1, for a finite field `k` of characteristic `ℓ`: the simple `k[Δ]`-modules on which `z` is not the identity, the Cartan matrix of `k[Δ]`, and its diagonal block at `Irr_z(k)` |
| `f ∗ f′`, `𝓗(G, K; A)` | in 4.2, the convolution of Hecke functions and the algebra they form |

## Layer 1: Algebra

### 1.1 Amitsur's theorem on characteristic polynomials over the base ring

*Origin:* adapted from Amitsur's theorem on the characteristic polynomial of a sum of matrices (Amitsur, *On the
characteristic polynomial of a sum of matrices*, 1980; Chenevier, *The p-adic analytic space of pseudocharacters of a
profinite group and pseudorepresentations over arbitrary rings*, 2014, (1.5)): here, the integrality consequence for a
homomorphism of an algebra to matrices, tested on a spanning set.

*Method of the formal proof:* for (a), a polynomial `Q` over `B` lifting the characteristic polynomial of `ρ(−w)`
gives, through the Cayley–Hamilton theorem, `F = Q(0)` and `v` as the value at `−w` of `(Q − Q(0))/X`. For (b), the
coefficients of `χ_{ρ(w)}` are those of the reversed polynomial `det(1 − t·ρ(w))`, so it suffices that this
determinant, taken in `A[t]` modulo a power of `t` beyond the coefficient wanted, comes from `B[t]`. Writing `w` as a
combination of spanning elements `s`, the matrix `1 − t·ρ(w)` is a product of matrices `1 − t^j·c·ρ(s)` (`j ≥ 1`,
`c` from `B[t]`), whose determinants come from `B[t]`, up to corrections of higher order in `t`; a downward induction
on that order disposes of the corrections.

Let `B` be a commutative ring, `A` a commutative `B`-algebra, `Λ` a `B`-algebra (associative and unital, not
necessarily commutative) and `ρ : Λ → M_n(A)` a homomorphism of `B`-algebras. Call `w ∈ Λ` *integral for `ρ`* if every
coefficient of `χ_{ρ(w)}` lies in the image of `B → A`.

(a) If `w` is integral for `ρ`, there are `v ∈ Λ` and `F ∈ B` such that `det ρ(w)` is the image of `F` and
`ρ(v)ρ(w) = ρ(w)ρ(v) = F·1`.

(b) If `Λ` is spanned as a `B`-module by elements that are integral for `ρ`, then every element of `Λ` is integral
for `ρ`.

The formal proof proves the case of (a) in which every element of `Λ` is integral for `ρ`; its argument uses this
only for `−w`, which is integral for `ρ` when `w` is, since the coefficients of `χ_{ρ(−w)}` are those of `χ_{ρ(w)}`
up to sign.

The applications take spanning sets that are closed under multiplication (matrices over `Λ` with a single non-zero
row, products of constants with powers of a variable, the elements of a group); for such spanning sets (b) also
follows from Amitsur's formula for determinants and the descent of a determinant to the subring of its
coefficients, IntegralHeckeAndGaloisDeterminants §0.5.

*Needs:* Mathlib `Matrix.charpoly`, `Matrix.aeval_self_charpoly` (the Cayley–Hamilton theorem),
`Matrix.reverse_charpoly`, `AdjoinRoot` (the quotient `A[t]/(t^e)`).

[ShortProof], `Lib/General/LinearAlgebra/Eigenvalues` (`New.exists_adjugate_of_charpoly_mem`,
`New.amitsur_charpoly_mem_of_span`)

### 1.2 Multiplicative functions of finite modules that are trivial on projective modules

*Origin:* adapted from the finiteness of the cokernel of the Cartan map of a group algebra in positive
characteristic (Serre, *Linear Representations of Finite Groups*, 1977, Theorem 35): here, a form for functions with
values in `ℚ_{≥0}` that are multiplicative in exact sequences, on the finite modules killed by `ℓ` on which a central
element fixes no non-zero vector, with projectivity read through Higman's criterion.

*Method of the formal proof:* a dévissage through permutation modules, in place of Brauer characters and of the
induction from cyclic subgroups by which Milne, *Arithmetic Duality Theorems*, I 2.10–2.12, treats the local Euler
characteristic. The group is first replaced by its quotient `Δ̄` by the subgroup generated by a power of `z` whose
order is prime to `ℓ`, a normal subgroup as `z` is central. For a finite `Δ̄`-set `Y`, the module of maps `Y → M`
with the diagonal action again lies in `𝒞`, and `φ` of it is the product over the orbits of `Y`. The two affine
hyperplanes of `(ℤ/ℓ)^{Δ̄}` on which the coordinates sum to `0` and to `1` carry the same linear part of the action,
so their function modules have the same value of `φ`; those of the second satisfy Higman's criterion. An induction
over the subgroups `H` of `Δ̄` then gives `φ = 1` on the maps from every orbit `Δ̄/H`, and `M` is the module of maps
from a point.

Let `Δ` be a finite group, `z ∈ Δ` a central element, `ℓ` a prime and `R` a commutative ring. Let `𝒞` be the class of
the finite `R[Δ]`-modules `M` with `ℓM = 0` on which `z` fixes no non-zero vector; if `0 → M′ → M → M″ → 0` is an
exact sequence of `R[Δ]`-modules with `M ∈ 𝒞`, then `M′` and `M″` lie in `𝒞`. Say that `P ∈ 𝒞` satisfies Higman's
criterion if some additive map `τ : P → P` has `Σ_{g∈Δ} g∘τ∘g⁻¹ = id_P`. (Higman's criterion is the classical test for
`P`, a module over `𝔽_ℓ[Δ]` with `𝔽_ℓ = ℤ/ℓ`, to be projective over `𝔽_ℓ[Δ]`; the statement below uses the condition
on `τ` as written.) Here, as in the formal proof, "satisfies Higman's criterion" names the trace condition on `P`
itself; in the literature Higman's criterion is a theorem on projectivity relative to a subgroup, and its case of the
trivial subgroup and the coefficient field `𝔽_ℓ` says that this condition holds exactly for the modules that are
projective over `𝔽_ℓ[Δ]`; 4.1 (a) states that case.

Let `φ` assign to every `M ∈ 𝒞` a number `φ(M) ∈ ℚ_{≥0}` such that `φ(M) = φ(M′)·φ(M″)` for every exact sequence
`0 → M′ → M → M″ → 0` of `R[Δ]`-modules with `M ∈ 𝒞`. If `φ(P) = 1` for every `P ∈ 𝒞` that satisfies Higman's
criterion, then `φ(M) = 1` for every `M ∈ 𝒞`.

**In standard terms.** The modules of `𝒞` that satisfy Higman's criterion are those whose underlying `𝔽_ℓ[Δ]`-module
is projective, and, when `R` acts through a finite quotient field `k`, those that are projective `k[Δ]`-modules (4.1
(a)); `𝒞` consists of the finite `R[Δ]`-modules killed by `ℓ` on which `z − 1` is bijective, and their composition
factors are simple `k[Δ]`-modules, for finite quotient fields `k` of `R` of characteristic `ℓ`, on which `z` is not
the identity (4.1 (b)). In these terms the statement reads: a function on `𝒞` with values in `ℚ_{≥0}`, multiplicative
in exact sequences, that is `1` on the modules of `𝒞` projective over `𝔽_ℓ[Δ]`, is `1`. It is a consequence of the
non-singularity of the Cartan matrix of `k[Δ]` for every finite field `k` of characteristic `ℓ` (4.1 (c), from Brauer
reciprocity, RepresentationTheory/ModularCharactersAndBlocks §3.1), and for `R = k` a finite field of characteristic
`ℓ` it is equivalent to the non-singularity of the diagonal block of that matrix at the simple modules on which `z` is
not the identity (4.1 (d)).

The formal proof states this for a compact topological group `G`, an open normal subgroup `U` and an element `z ∈ G`
whose commutators with all elements of `G` lie in `U`, on the discrete `R`-linear `G`-modules (as in
IdelicReciprocityCountsAndCyclotomicClassGroups §3.1) on which `U` acts trivially, with Higman's criterion summed over
representatives of `G/U`; this is the statement above for `Δ = G/U`. The library has the Cartan map
(`TauCeti.cartanMap`) and Artin's induction identity in the Grothendieck group of a group algebra
(`TauCeti.natCard_nsmul_eq_sum_artinCoeff_indK0_resK0`), not the finiteness of the cokernel.
The statement also follows from the non-singularity of the Cartan matrix over a splitting field,
RepresentationTheory/ModularCharactersAndBlocks §3.1, applied to the composition factors; 4.1 (c), (d) give that
route, through a change of the finite field.

*Needs:* Mathlib `QuotientGroup.mk` (quotients of groups), `Representation` (`R[Δ]`-modules), `ZMod`.

[ShortProof], `Lib/General/Algebra/CartanMap` (`New.DiscreteModule.IsHigmanProjective`,
`New.DiscreteModule.FiniteKilledFixedInj`, `New.DiscreteModule.IsMultiplicative`,
`New.DiscreteModule.IsMultiplicative.eq_one_of_eq_one_on_isHigmanProjective`)

### 1.3 The weighted Combinatorial Nullstellensatz with multiplicity

*Origin:* adapted from the Combinatorial Nullstellensatz and its forms with multiplicity (Alon, *Combinatorial
Nullstellensatz*, 1999; Ball and Serra, *Punctured combinatorial Nullstellensätze*, 2009): here, with a weight `1/κ_u`
for each variable, total degree replaced by the weighted degree, and in place of a grid any set of at least `∏ κ_u`
points at which each `X_u^{κ_u}` agrees with a polynomial of weighted degree below `1`.

*Method of the formal proof:* a dimension count for jets. The polynomials `ψ_u = X_u^{κ_u} − g_u` vanish at every
`z_t`, and replacing `X_u^{κ_u}` by `ψ_u + g_u` lowers the cost; so, by well-founded induction on the cost, every
polynomial of cost `< d` is a linear combination of products `X^α·ψ^γ` with all `α_u < κ_u` and `|γ| < d`, and
every polynomial at all is such a combination plus one whose jets of order `< d` vanish at all the `z_t`. By the
Chinese remainder theorem the jets of order `< d` at the `#T` distinct points take all values, and since
`#T ≥ ∏ κ_u` there are at least as many jet coordinates as products. Hence the jets of the products are linearly
independent, and a polynomial of cost `< d` whose jets vanish is `0`.

Let `K` be a field, `ι` a finite set, `κ : ι → ℤ_{>0}` and `cost(α) = cost_κ(α) = Σ_{u∈ι} α_u/κ_u` for exponents
`α ∈ ℕ^ι`. Let `(z_t)_{t∈T}` be a finite family of pairwise distinct points of `K^ι` with `#T ≥ ∏_{u∈ι} κ_u`, and for
each `u ∈ ι` let `g_u ∈ K[X_u : u ∈ ι]` be a polynomial all of whose monomials have cost `< 1`, with
`g_u(z_t) = (z_t)_u^{κ_u}` for every `t ∈ T`. Let `d ≥ 0` be an integer and let `f ≠ 0` be a polynomial with
`f ∈ 𝔪_{z_t}^d` for every `t ∈ T`. Then some monomial `X^α` with non-zero coefficient in `f` has `cost(α) ≥ d`.

The hypotheses force `#T = ∏ κ_u`: modulo the ideal generated by the polynomials `X_u^{κ_u} − g_u`, which vanish at
all the `z_t`, every polynomial is congruent to a combination of the monomials with all `α_u < κ_u`, and evaluation at
distinct common zeros is onto `K^T` on that quotient. For a grid `∏_u S_u` with `#S_u = κ_u` one may take
`g_u = X_u^{κ_u} − ∏_{s∈S_u}(X_u − s)`. Mathlib has the multiplicity-free theorem on grids
(`MvPolynomial.combinatorial_nullstellensatz_exists_eval_ne_zero`), which does not give this statement.

*Needs:* Mathlib `MvPolynomial`, `Finsupp.weight` (weighted degree of an exponent), `MvPolynomial.vanishingIdeal`.

[ShortProof], `Lib/General/Algebra/MultivariatePolynomials` (`New.exists_le_weight_of_mem_vanishingIdeal_pow`)

## Layer 2: Linear algebra and Hecke operators

### 2.1 Auerbach's lemma for a compact family of linear forms

*Origin:* adapted from the published theory of Auerbach bases of finite-dimensional normed spaces: here, for a
compact family of linear forms over any field, measured through a ring homomorphism into a normed field.

*Method of the formal proof:* the classical argument by a determinant of largest size. Against a fixed basis of
`U`, the norm of `φ` of the determinant of `n` forms of the family is a continuous function of their indices on the
compact space `𝒜^n`; it attains its maximum, which is positive because the forms span the dual space. The forms at a
maximising tuple are a basis of the dual space, and `z` is the basis dual to it. Cramer's rule expresses each value
`ℓ_a(z_k)` as a quotient of two such determinants whose denominator is the largest one, so the bound follows.

Let `U` be a vector space of finite dimension `n` over a field `K`, `𝒜` a compact topological space and
`(ℓ_a)_{a∈𝒜}` a family of linear forms on `U` whose only common zero is `0`. Let `φ : K → L` be a ring homomorphism
into a normed field `L` such that `a ↦ φ(ℓ_a(v))` is continuous on `𝒜` for every `v ∈ U`. Then there are
`a_1, …, a_n ∈ 𝒜` and a basis `z_1, …, z_n` of `U` such that `ℓ_{a_1}, …, ℓ_{a_n}` is the dual basis of `(z_k)`, that is
`ℓ_{a_j}(z_k) = δ_{jk}`, and `‖φ(ℓ_a(z_k))‖ ≤ 1` for all `a ∈ 𝒜` and all `k`.

For `K = L = ℝ` or `ℂ` and the unit sphere of the dual of a norm on `U` this is Auerbach's lemma. The library has a
real affine analogue (`IsCompact.exists_affineBasis_abs_coord_le_one`), which does not give the statement over other
fields.

*Needs:* Mathlib `Module.Basis.dualBasis`, `Module.Basis.det`, `Module.Basis.det_smul_mk_coord_eq_det_update`
(Cramer's rule), `Continuous.exists_forall_ge'` (maximum on a compact space).

[ShortProof], `Lib/General/LinearAlgebra/MatrixNormBounds` (`New.exists_auerbach`)

### 2.2 Gelfand's trick for `GL_n` over a valuation ring

*Origin:* adapted from the commutativity of the spherical Hecke algebra of `GL_n` (Gelfand's trick, by the
transpose; Tits, *Reductive groups over local fields*, Corvallis 1979, 3.3.3; Tamagawa, *On the zeta functions of a
division algebra*, 1963): here, for `GL_n` over any field with a valuation ring, as operators on fixed vectors of any
representation over a commutative semiring.

*Method of the formal proof:* everything rests on the automorphism `g ↦ ᵗg⁻¹` of `G`, which preserves `K`. For (a),
elimination with pivots over `O` (for non-zero `a, b ∈ F`, `a/b` or `b/a` lies in `O`) gives `g = k·D·k′` with
`k, k′ ∈ K` and `D` diagonal, and `D` is its own transpose. By (a) the automorphism carries each double coset `KgK`
to `Kg⁻¹K`; it also permutes the cosets `gK`, and reindexing the sum that defines `T′_{f^∨}` along it, together with
the invariance of `β`, gives (b). For (c), each composite of two Hecke operators acts on `W^K` as the operator of a
convolution of `f` and `f′`, and a bijection of `G/K` made from the same automorphism matches the terms of the two
convolutions.

Let `F` be a field, `O` a valuation ring of `F`, `n ≥ 1`, `G = GL_n(F)` and `K = GL_n(O)`. Let `A` be a commutative
semiring, `π` a representation of `G` by `A`-linear maps of an `A`-module `W`, and `W^K` the vectors fixed by `K`. Call
`f : G → A` a *Hecke function* if `f(kgk′) = f(g)` for all `k, k′ ∈ K` and `f` vanishes outside finitely many cosets
`gK`. For a Hecke function `f` and `v ∈ W^K` put `T_f v = Σ_{gK∈G/K} f(g)·π(g)v`, a finite sum that does not depend on
the representatives and lies in `W^K`.

(a) For every `g ∈ G`, `ᵗg ∈ KgK`.

(b) Let `σ` be a ring endomorphism of `A`. If `f` is a Hecke function, so is `f^∨(g) = σ(f(g⁻¹))`. If `π′` is a second
representation of `G` on an `A`-module `W′`, with Hecke operators `T′`, and `β : W × W′ → Z`, with values in an
`A`-module, is `σ`-semilinear in the first variable, `A`-linear in the second and invariant under `G`, then
`β(T_f v, v′) = β(v, T′_{f^∨} v′)` for all `v ∈ W^K` and `v′ ∈ W′^K`.

(c) For Hecke functions `f, f′` and `v ∈ W^K`, `T_f(T_{f′}v) = T_{f′}(T_f v)`.

**In standard terms.** Let `F` be a non-archimedean local field, `O` its ring of integers and `A` a commutative ring.
The Hecke functions are then the elements of the spherical Hecke algebra of `(GL_n(F), GL_n(O))` over `A`: under the
convolution `(f ∗ f′)(x) = Σ_{gK∈G/K} f(g)f′(g⁻¹x)` they form an algebra isomorphic to the level algebra `H(G, K; A)`
of SmoothRepresentationsOfLocalGroups §SR.1.2, the indicator of `KgK` going to the basis element `[KgK]`. That section
lets the level algebra act on `W^K` on the right, and `T_f` is the right action of the image of `f^ι`,
`f^ι(x) = f(x⁻¹)`: the operator `T_f` of the indicator `f` of `KgK` is the right action of `[Kg⁻¹K]`, not of `[KgK]`
(4.2 (b)). For a `ℚ`-algebra `A` and a smooth representation, `T_f v = ∫_G f(g)π(g)v dg` with `K` of volume `1`, the
action of `f` in the convolution algebra (4.2 (c)). Since `T_{f∗f′} = T_f∘T_{f′}` (4.2 (a)), (c) for all
representations is equivalent to the commutativity of this algebra, which holds over every commutative semiring `A`
(4.2 (d): SmoothRepresentationsOfLocalGroups §SR.4.1 through the Satake transform, and for `A = ℂ` and `F` of
characteristic `0` AutomorphicFormsOnReductiveGroups §3.5). For `A = ℂ`, `σ` complex conjugation, one smooth
representation (`π′ = π`) and `β` a `G`-invariant hermitian form on it, conjugate-linear in the first variable, (b)
says that on `K`-fixed vectors the adjoint for `β` of the operator of the indicator of `KgK` is the operator of the
indicator of `Kg⁻¹K`: the formula `β(π(f)v, v′) = β(v, π(f^*)v′)`, `f^*(g) = conj(f(g⁻¹))`, for the convolution
operators of the unimodular group `G` (4.2 (e)). Over a valuation ring that is not the ring of integers of a local
field, a double coset `KgK` need not be a finite union of cosets `hK`; when some double coset is not, (a)–(c) are
statements about the algebra `𝓗(G, K; A)` of 4.2 (a), which the level algebras of SmoothRepresentationsOfLocalGroups
§SR.1.2, defined for compact open subgroups of locally profinite groups, do not cover.

Over a non-archimedean local field of characteristic `0` and with `A = ℂ`, (c) also follows from the commutativity of
the spherical Hecke
algebra, AutomorphicFormsOnReductiveGroups §3.5, through the Satake transform. The library has the abstract
criterion that a Hecke ring is commutative when an anti-involution fixes every double coset
(`HeckeCosetModule.mul_comm_of_antiInvolution`), with its instance for `SL_n(ℤ)` and the integral matrices of
positive determinant in `GL_n(ℚ)` (`HeckeRing.GLn.commSemiringHeckeRing`), and the Smith normal form over a discrete
valuation ring (`Matrix.exists_smith_normal_form_of_isDiscreteValuationRing`); its Hecke pairs ask finite coset
decompositions of the double cosets, which a general valuation ring does not give, so the local instance and the
passage to operators on fixed vectors are missing. On Tau Ceti's main branch, later than the revision pinned here:
the instance for `GL_n(ℤ) ⊂ GL_n(ℚ)` (`HeckeRing.GLn.mul_comm_fullHeckeRing`).

*Needs:* Mathlib `ValuationSubring`, `Matrix.GeneralLinearGroup`, `Representation`.

[ShortProof], `Lib/General/LinearAlgebra/IntegralLattices` (`New.IsValuationPair.smith_normal_form`,
`New.isValuationPair_valuationSubring`, `New.exists_invTransposeGL_inv_eq`, `New.IsHeckeFunction.heckeFun_adjoint`,
`New.IsHeckeFunction.heckeFun_comm`)

## Layer 3: Analysis

### 3.1 The complex Gaussian integral for accretive matrices

*Origin:* adapted from the published theory of Gaussian integrals on `ℂ^n`: here, for a matrix with positive definite
hermitian part, not necessarily hermitian, and a shift on one side of the quadratic form.

*Method of the formal proof:* (a) comes from the Ostrowski–Taussky inequality for `H = A + Aᴴ`. (b) is reduced to
one complex variable. Writing `A + Aᴴ = CᴴC` and diagonalising the skew-hermitian part of `A` by a matrix that is
unitary for the inner product of `A + Aᴴ` makes `A` congruent to a diagonal matrix: `A = Pᴴ·diag(d)·P` with `P`
invertible and `Re d_i > 0`. After the linear substitution by `P`, whose real Jacobian is `|det P|²`, the integral
splits into `n` integrals over `ℂ`, each a Gaussian integral on `ℝ²` with value `π/d_i`, and
`det A = |det P|²·∏ d_i`.

Let `A ∈ M_n(ℂ)` be accretive, that is, `A + Aᴴ > 0`.

(a) `det A ≠ 0`.

(b) For every `a ∈ ℂ^n` the function `x ↦ exp(−x*A(x − a))` is integrable on `ℂ^n` and
`∫_{ℂ^n} exp(−x*A(x − a)) dx = π^n·(det A)⁻¹`.

Part (a) also has a direct proof: if `Ax = 0`, then `x*(A + Aᴴ)x = 2·Re(x*Ax) = 0`, so `x = 0`. The library has
the integral for a hermitian positive definite matrix in the form of the density of a proper complex Gaussian
distribution (`TauCeti.Probability.integral_properComplexGaussianPDFReal_eq_one`), with a shift on both sides and a
real integrand, which does not give (b) for a matrix that is not hermitian.

*Needs:* EigenvalueAndSingularValueInequalities §4.2 (the Ostrowski–Taussky inequality), only for (a) along the route
of the formal proof; Mathlib `GaussianFourier.integral_cexp_neg_mul_sum_add` (the Gaussian integral on `ℝ²`),
`MeasureTheory.Measure.map_linearMap_addHaar_eq_smul_addHaar` (Lebesgue measure under linear maps),
`MeasureTheory.integral_fintype_prod_volume_eq_prod` (products of integrals).

[ShortProof], `Lib/General/Analysis/GaussianIntegral` (`Matrix.IsAccretive`, `Matrix.IsAccretive.det_ne_zero`,
`New.Fock.integral_gauss`)

### 3.2 Hua's bound for integrals of negative powers of determinants

*Origin:* adapted from Hua's integrals over the classical domains (Hua, *Harmonic Analysis of Functions of Several
Complex Variables in the Classical Domains*, AMS, 1963): here, an upper bound, not an evaluation, with an affine change
of the rows.

*Method of the formal proof:* (a) peels off one row at a time, by induction on `s`. Fixing one row and integrating
over the others first, the fixed row joins `M`, which stays positive definite, and `r` goes up by one, so the
induction hypothesis bounds the inner integral by a constant times `|det(M + wᴴw)|^{−(r+1)}`. This leaves an integral
over one row: with `M = CᴴC` and the linear substitution that turns `w` into `yC`, the matrix determinant lemma gives
`|det(M + wᴴw)| = |det C|²·(1 + |y|²)`, and since `r ≥ k` the integrand is at most a constant times
`(1 + |y|²)^{−(k+1)}`, whose integral over `ℂ^k` is `π^k/k!` by the Gamma integral and the Gaussian integral. (b)
applies (a) to all the rows with `S = 1`, `a = 0` and `r = #κ`, after the linear change of variables `X ↦ SX + c`
(real Jacobian `|det S|^{2#κ}`), and uses `π^k/k! ≤ 1` for `k ≥ 7`.

(a) Let `k ≥ 0`, `M ∈ M_k(ℂ)` with `M > 0`, `S ∈ M_k(ℂ)` invertible, `γ ≥ 0` and `r ≥ k` an integer. Let `s` be a finite
set and `(a_i)_{i∈s}` row vectors in `ℂ^k`, and for row vectors `y_i ∈ ℂ^k` put `w_i = y_iS + a_i`. Then

`∫_{(ℂ^k)^s} γ·|det(M + Σ_{i∈s} w_iᴴw_i)|^{−(#s + r)} ∏_{i∈s} dy_i ≤ γ·(π^k/(k!·|det S|²))^{#s}·|det M|^{−r}`.

(b) Let `ι`, `κ` be finite sets with `#κ ≥ 7`, `G ∈ M_κ(ℂ)` with `G > 0`, `S ∈ M_ι(ℂ)` invertible, `c ∈ M_{ι×κ}(ℂ)` and
`γ ≥ 0`. Then

`∫_{M_{ι×κ}(ℂ)} γ·|det(G + (SX + c)ᴴ(SX + c))|^{−(#κ + #ι)} dX ≤ γ·|det S|^{−2#κ}·|det G|^{−#κ}`,

`dX` Lebesgue measure on `M_{ι×κ}(ℂ) = ℂ^{ι×κ}`.

The bound `#κ ≥ 7` in (b) cannot be dropped: for one row (`#ι = 1`), `G = 1`, `S = 1` and `c = 0` the integral in (b)
is `γ·π^{#κ}/#κ!`, which exceeds `γ` when `γ > 0` and `1 ≤ #κ ≤ 6` (at `#κ = 6`, `π^6/6! ≈ 1.34`).

*Needs:* Mathlib `MeasureTheory.Measure.map_linearMap_addHaar_eq_smul_addHaar` (Lebesgue measure under linear maps),
`Real.integral_rpow_mul_exp_neg_mul_Ioi`, `Real.Gamma_nat_eq_factorial` (the Gamma integral),
`GaussianFourier.integral_rexp_neg_mul_sq_norm` (the Gaussian integral on `ℂ`),
`MeasureTheory.lintegral_eq_lmarginal_univ` (iterated integrals over the rows),
`Matrix.det_one_add_replicateCol_mul_replicateRow` (the matrix determinant lemma),
`CStarAlgebra.isStrictlyPositive_iff_eq_star_mul_self` (positive definite as `CᴴC`). The integral
`∫_{ℂ^k} (1 + |y|²)^{−(k+1)} dy = π^k/k!` is part of this section.

[ShortProof], `Lib/General/Analysis/HolomorphicIntegrals` (`New.lintegral_norm_det_add_vecMulVec_inv_pow_le`,
`New.hua_integral_le`, `New.lintegral_norm_det_add_inv_pow_le`)

## Layer 4: Comparison with the standard theory

Two sections of the route are stated through objects of the formal proof where the literature has standard ones. 1.2
uses Higman's trace condition and functions multiplicative in exact sequences, where the literature has projective
modules over a group algebra and its Cartan matrix; 2.2 uses Hecke functions acting on the fixed vectors of a
representation, where it has the spherical Hecke algebra and its action. The standard theory is the reference. 4.1
identifies the trace condition with projectivity, derives 1.2 from the non-singularity of Cartan matrices over finite
fields of characteristic `ℓ`, and shows that over such a field 1.2 is equivalent to the non-singularity of the
diagonal block of the Cartan matrix at the simple modules on which `z` is not the identity. 4.2 makes the Hecke
functions over any valuation ring an algebra under convolution acting through the operators `T_f`, and identifies it,
over a non-archimedean local field, with the spherical Hecke algebra of the general roadmaps and the operators with
its action, read through the inversion `g ↦ g⁻¹` (4.2 (b)), so that 2.2 (c), for all representations, is equivalent to
the commutativity of that algebra, and 2.2 (b), for complex coefficients and an invariant hermitian form, is the
adjoint formula for its operators on fixed vectors. The sections of this layer are stated and proved on the standard
objects; [ShortProof] does not prove them.

### 4.1 Higman's criterion, projective modules and the Cartan matrix

*Origin:* adapted from Higman's criterion for projectivity over the group algebra of a finite group and from the
finiteness of the cokernel of the Cartan map of a group algebra in positive characteristic (Serre, *Linear
Representations of Finite Groups*, 1977, Theorem 35): here, the trace condition and the multiplicative functions of
1.2 compared with projective modules over `𝔽_ℓ[Δ]` and over `k[Δ]`, and with the Cartan matrix of `k[Δ]`, for finite
fields `k` of characteristic `ℓ`.

*Proof route:* (a) An additive map of a group killed by `ℓ` is `𝔽_ℓ`-linear. If `τ` satisfies the condition,
`p ↦ Σ_{g∈Δ} g ⊗ τ(g⁻¹p)` is an `𝔽_ℓ[Δ]`-linear section of the surjection `𝔽_ℓ[Δ] ⊗_{𝔽_ℓ} P → P`, `g ⊗ p ↦ gp`, where
`Δ` acts on the free module `𝔽_ℓ[Δ] ⊗_{𝔽_ℓ} P` through the left factor; so `P` is projective (the library has this
direction, `Rep.projective_of_id_mem_range_norm_linHom`). Conversely, on `𝔽_ℓ[Δ]` the coefficient of `1`,
`τ(Σ_g a_g g) = a_1·1`, satisfies the condition; the condition passes to finite direct sums, coordinatewise, and to a
direct summand `P` of `Q`, with equivariant inclusion `j` and projection `r`, through `r∘τ∘j`; and a finite projective
module is a direct summand of a finite free one. If `R` acts on `P` through a finite field `k`, a projective
`k[Δ]`-module is projective over `𝔽_ℓ[Δ]`, as `k[Δ]` is free over `𝔽_ℓ[Δ]`. If `P` is projective over `𝔽_ℓ[Δ]`, then
`k ⊗_{𝔽_ℓ} P`, with `k` acting on the left factor, is a projective `k[Δ]`-module, and `P` is a direct summand of it
because `k` is separable over `𝔽_ℓ`: for a separability idempotent `Σ_i x_i ⊗ y_i` of `k ⊗_{𝔽_ℓ} k` (so
`Σ_i x_i y_i = 1` and `Σ_i a x_i ⊗ y_i = Σ_i x_i ⊗ a y_i` for `a ∈ k`), `p ↦ Σ_i x_i ⊗ y_i p` is a `k[Δ]`-linear
section of the multiplication `k ⊗_{𝔽_ℓ} P → P`. (b) As `M` is finite, `z − 1` is injective on `M` exactly when it is
bijective; it is then bijective on every subquotient of `M`, and it is bijective on `M` when it is so on the factors
of a composition series. On a simple `R[Δ]`-module `S`, `z − 1` is `0` or bijective, its kernel being a submodule. The
ring `R` acts on `S` by `R[Δ]`-endomorphisms, `R` being central in `R[Δ]`; these form a finite division ring by
Schur's lemma, hence a field (Mathlib `littleWedderburn`), and the image of `R` in it is a finite domain, hence a
field `k`, of characteristic `ℓ` as `ℓS = 0`. (c) *Non-singularity.* Let `k₀` be the residue field of the splitting
`ℓ`-modular system of RepresentationTheory/ModularCharactersAndBlocks §1.1 for `Δ`, at a place above `ℓ`; by Brauer
reciprocity `det C_{k₀} ≠ 0` (RepresentationTheory/ModularCharactersAndBlocks §3.1). Let `k₁` be a finite field
containing copies of `k` and of `k₀`. Both `k₀` and `k₁` contain a primitive `e′`-th root of unity, so for each of
them scalar extension to an algebraic closure is a bijection on the isomorphism classes of simple modules
(RepresentationTheory/ModularCharactersAndBlocks §2.3), and hence so is scalar extension from `k₀` to `k₁`. Scalar
extension is exact and carries projective modules to projective modules, so it commutes with the Cartan maps, from the
Grothendieck group of finitely generated projective modules to that of finite modules; it is an isomorphism on the
second group, so the image of the Cartan map of `k₁[Δ]` has finite index, and `det C_{k₁} ≠ 0`, the matrix being
square because the projective indecomposable modules correspond to the simple ones through their tops. Restriction of
scalars from `k₁` to `k` is exact, carries projective modules to projective modules (`k₁[Δ]` is free over `k[Δ]`), and
commutes with the Cartan maps, and restriction after extension multiplies the class of a `k[Δ]`-module by `[k₁ : k]`.
So if `|det C_{k₁}|` times the extension of a class `x` is the Cartan image of `y`, then `[k₁ : k]·|det C_{k₁}|·x` is
the Cartan image of the restriction of `y`; the image of the Cartan map of `k[Δ]` has finite index, and `det C_k ≠ 0`.
*The block.* As `z` is central it acts on `P_T` by a `k[Δ]`-endomorphism. The ring `End(P_T)` is local, `P_T` being
indecomposable of finite length, and the kernel of the surjection `End(P_T) → End(T)` (projectivity of `P_T` lifts
every endomorphism of its top `T`) is its maximal ideal, which is nilpotent. If `T ∈ Irr_z(k)`, the image `z|_T − 1`
is nonzero, so `z − 1` is a unit of `End(P_T)` and, by (b), every composition factor of `P_T` lies in `Irr_z(k)`. If
`T ∉ Irr_z(k)`, `z − 1` lies in the maximal ideal, so it is nilpotent on `P_T` and `z` is the identity on every
composition factor. Ordering the simple modules with `Irr_z(k)` first makes `C_k` block diagonal, so
`det C_k = det C_z·det C_1`, `C_1` the other block, and `det C_z ≠ 0`. The Grothendieck group of the finite
`k[Δ]`-modules on which `z − 1` is bijective is free on `Irr_z(k)` (Jordan–Hölder and (b)), and the columns of `C_z`
are the classes of the `P_T`, `T ∈ Irr_z(k)`. (d) Through `R → k`, the finite `k[Δ]`-modules on which `z − 1` is
bijective are modules of `𝒞`, exact sequences of them are exact sequences of `R[Δ]`-modules, and the projective ones
satisfy Higman's criterion by (a). For `T ∈ Irr_z(k)`, multiplicativity along a composition series gives
`1 = φ(P_T) = ∏_S φ(S)^{[P_T : S]}`, the product over `S ∈ Irr_z(k)`. As `T` is a composition factor of `P_T`,
`φ(T) ≠ 0`; so the vector `(log φ(S))_{S∈Irr_z(k)}` is killed by the transpose of `C_z`, hence is `0`. By (b) every
`M ∈ 𝒞` has a composition series whose factors are such `S`, for quotient fields `k` of `R`, so `φ(M) = 1`. Conversely
let `R = k`. By the Krull–Schmidt theorem and the block decomposition, a projective `k[Δ]`-module on which `z − 1` is
bijective is a direct sum of covers `P_T` with `T ∈ Irr_z(k)`. If `det C_z = 0`, an integer vector `v ≠ 0` with
`Σ_S v_S [P_T : S] = 0` for every `T ∈ Irr_z(k)` gives the function `φ(M) = ∏_S 2^{v_S·[M : S]}` on `𝒞`,
multiplicative in exact sequences, equal to `1` on every `P_T` and so, by (a), on every module of `𝒞` that satisfies
Higman's criterion, and different from `1` at a simple module `S` with `v_S ≠ 0`.

Let `Δ`, `z`, `ℓ`, `R` and `𝒞` be as in 1.2, and `e′` the largest divisor prime to `ℓ` of the exponent of `Δ`. For a
finite field `k` of characteristic `ℓ` and a simple `k[Δ]`-module `T`, let `P_T` be the projective cover of `T`; let
`C_k = ([P_T : S])_{S,T}` be the Cartan matrix of `k[Δ]`, with rows and columns indexed by the isomorphism classes of
simple `k[Δ]`-modules and `[P_T : S]` the multiplicity of `S` as a composition factor of `P_T`; let `Irr_z(k)` be the
set of isomorphism classes of simple `k[Δ]`-modules on which `z` is not the identity, and `C_z` the submatrix of `C_k`
with `S, T ∈ Irr_z(k)`, which by (c) is a diagonal block of the matrix `C_k`. The word *block* has this sense of
linear algebra here. A block of `k[Δ]` in the sense of modular representation theory is a primitive idempotent of the
centre of `k[Δ]`; the central element `z − 1` acts invertibly or nilpotently on each such block, so `Irr_z(k)`
consists of the simple modules of some of the blocks of `k[Δ]`, and `C_z` is in general not the Cartan matrix of a
single one.

(a) *Higman's criterion.* A finite `R[Δ]`-module `P` with `ℓP = 0` satisfies Higman's criterion (1.2) if and only if
`P` is projective as an `𝔽_ℓ[Δ]`-module. If `R` acts on `P` through a quotient of `R` that is a field `k`, this holds
if and only if `P` is a projective `k[Δ]`-module.

(b) *The class `𝒞`.* A finite `R[Δ]`-module `M` with `ℓM = 0` lies in `𝒞` if and only if `z − 1` is bijective on `M`,
and if and only if `z` is not the identity on any composition factor of `M`. Every composition factor `S` of such an
`M` is a simple `k[Δ]`-module for a quotient `k` of `R` that is a finite field of characteristic `ℓ`, `R` acting on
`S` through `k`, and its class lies in `Irr_z(k)`.

(c) *The Cartan matrix.* For every finite field `k` of characteristic `ℓ`, `det C_k ≠ 0`. For `T ∈ Irr_z(k)` every
composition factor of `P_T` lies in `Irr_z(k)`, and for `T ∉ Irr_z(k)` none does; hence `det C_z ≠ 0`. Equivalently,
the classes of the projective `k[Δ]`-modules on which `z − 1` is bijective span a subgroup of finite index in the
Grothendieck group of the finite `k[Δ]`-modules on which `z − 1` is bijective, which is free on `Irr_z(k)`.

(d) *1.2 in standard terms.* (a)–(c) imply 1.2. For `R = k` a finite field of characteristic `ℓ`, 1.2 is equivalent to
`det C_z ≠ 0`: by (a) it says that a function on the finite `k[Δ]`-modules on which `z − 1` is bijective, with values
in `ℚ_{≥0}` and multiplicative in exact sequences, that is `1` on the projective ones is `1` everywhere.

For `z = 1`, `Irr_z(k)` is empty and `𝒞` consists of the zero module. For `Δ` of order prime to `ℓ`, every
`k[Δ]`-module is projective and `C_k` is the identity matrix; every module of `𝒞` then satisfies Higman's criterion,
with `τ = |Δ|⁻¹·id`, and 1.2 needs no Cartan matrix.

*Needs:* 1.2; RepresentationTheory/ModularCharactersAndBlocks §1.1 (A splitting modular system), §2.3 (Residue-field
splitting), §3.1 (Projective characters and Brauer reciprocity); Tau Ceti `Rep.projective_of_id_mem_range_norm_linHom`
(one direction of Higman's criterion), `TauCeti.exists_isProjectiveCover_of_finite` (projective covers); Mathlib
`littleWedderburn`.

### 4.2 Hecke functions and the spherical Hecke algebra

*Origin:* adapted from the spherical Hecke algebra of `GL_n` over a non-archimedean local field and its commutativity
(Gelfand's trick; Tits, *Reductive groups over local fields*, Corvallis 1979, 3.3.3; Tamagawa, *On the zeta functions
of a division algebra*, 1963): here, the Hecke functions of 2.2 over any valuation ring made an algebra under
convolution, and over a local field identified with the level algebra and with the convolution algebra of the general
theory.

*Proof route:* (a) For `f′` left `K`-invariant, the term of `gK` in `(f ∗ f′)(x)` does not depend on the
representative `g`, and only the finitely many cosets in the support of `f` contribute. `f ∗ f′` is left `K`-invariant
because `f` is (substitute `kg` for `g`), right `K`-invariant because `f′` is, and vanishes outside the union of the
sets `g·supp f′`, `g` running over representatives of the cosets in the support of `f`, a finite union of cosets as
`supp f′` is one. Associativity is the substitution `h = gy` in the double sum, and `1_K ∗ f = f ∗ 1_K = f`. For
`v ∈ W^K`, `T_f T_{f′} v = Σ_{gK, hK} f(g)f′(h)π(gh)v`, and grouping the terms by the coset `xK = ghK` gives
`T_{f∗f′}v`. On the finitely supported functions `G/K → A`, with `(π(g)u)(x) = u(g⁻¹x)`, the indicator `1_K` of the
coset `K` is fixed by `K` and `T_f 1_K = f`, so `T_f T_{f′} 1_K = f ∗ f′`. (b) `K` is compact and open, so `KgK` is
compact and covered by finitely many of the open cosets `xK` it contains. `h_f` is invariant under the diagonal action
of `G`, and its support is the union of the finitely many `G`-orbits of the pairs `(K, gK)` with `g` in the support of
`f`; a `G`-invariant function on `G/K × G/K` is determined by its values at the pairs `(K, yK)`, so `f ↦ h_f` is
bijective onto `H(G, K; A)`. For the matrix product of SmoothRepresentationsOfLocalGroups §SR.1.2,
`(h_f ∗ h_{f′})(K, zK) = Σ_{yK} f(y)f′(y⁻¹z) = (f ∗ f′)(z)`. The basis element `[KgK]` is the function equal to `1` at
the pairs `(xK, yK)` with `x⁻¹y ∈ KgK` and `0` elsewhere, as the Checks of that section fix (`[KgK]` sends the coset
`K` to the sum of the cosets in `Kg⁻¹K`). The right action there is `v ∗ h = Σ_{Kg∈K\G} h(K, gK)π(g)⁻¹v`; for
`h = h_{f^ι}` the term of `Kg` is `f(g⁻¹)π(g⁻¹)v`, and `Kg ↦ g⁻¹K` is a bijection `K\G → G/K`. (c) For `f` right
`K`-invariant and `v ∈ W^K`, `g ↦ f(g)π(g)v` is constant on each coset `gK`, of volume `μ(K) = 1`, so the integral of
SmoothRepresentationsOfLocalGroups §SR.1.1 is the sum over `G/K`; the same computation for `y ↦ f(y)f′(y⁻¹x)` turns
the convolution of that section into `∗`. A compactly supported `K`-bi-invariant function is supported on finitely
many of the open double cosets. (d) Let `q` be the number of elements of the residue field of `O`. Over a coefficient
ring in which `q` is a unit, the Satake transform maps the level algebra injectively and multiplicatively into the
algebra of finitely supported functions on the cocharacter lattice of the diagonal torus, which is commutative
(SmoothRepresentationsOfLocalGroups §SR.4.1); so `H(G, K; ℤ[q⁻¹])` is commutative. The coefficient of the indicator of
`KhK` in the product of the indicators of `KgK` and `Kg′K` is the natural number `#{yK ⊆ KgK : y⁻¹h ∈ Kg′K}`, the same
for every `A` (SmoothRepresentationsOfLocalGroups §SR.1.2 identifies these structure constants with Shimura's
multiplicities); the equalities between them over `ℤ[q⁻¹]` give the commutativity over every commutative semiring. For
`A = ℂ` and `F` of characteristic `0` this is also AutomorphicFormsOnReductiveGroups §3.5, which is stated at the
finite places of a number field: every finite extension of a field `ℚ_p` is the completion of a number field at a
finite place. A second route is Gelfand's trick, 2.2 (a): `f ↦ f∘θ`, `θ(g) = ᵗg`, is an anti-automorphism of
`𝓗(G, K; A)`, since `θ` reverses products, preserves `K` and induces the bijection `hK ↦ ᵗx·ᵗh⁻¹K` of `G/K` that
matches the two sums; and it fixes every Hecke function, since `ᵗg ∈ KgK`. (e) Substitute `A = ℂ` and `σ` in 2.2 (b),
and use (c) for the second form.

Let `F`, `O`, `n`, `G = GL_n(F)`, `K = GL_n(O)` and the commutative semiring `A` be as in 2.2. For Hecke functions
`f, f′` put `(f ∗ f′)(x) = Σ_{gK∈G/K} f(g)·f′(g⁻¹x)` and `f^ι(x) = f(x⁻¹)`, and let `1_K` be the indicator function of
`K`.

(a) *The algebra of Hecke functions.* `f ∗ f′` is a Hecke function, and the Hecke functions form an associative
`A`-algebra `𝓗(G, K; A)` under `∗`, with unit `1_K`. For every representation `π` of `G` on an `A`-module `W`,
`T_{f∗f′} = T_f∘T_{f′}` and `T_{1_K} = id` on `W^K`. Hence 2.2 (c), for all representations, is equivalent to the
commutativity of `𝓗(G, K; A)`, and also to 2.2 (c) for the representation by left translations on the finitely
supported functions `G/K → A`.

(b) *Local fields: the level algebra.* Let `F` be a non-archimedean local field, `O` its ring of integers and `A` a
commutative ring. Every double coset `KgK` is a finite union of cosets `xK`, so the Hecke functions are the
`K`-bi-invariant functions supported on finitely many double cosets. The map `f ↦ h_f`, `h_f(xK, yK) = f(x⁻¹y)`, is an
isomorphism of `A`-algebras from `𝓗(G, K; A)` onto the level algebra `H(G, K; A)` of
SmoothRepresentationsOfLocalGroups §SR.1.2, and sends the indicator of `KgK` to the basis element `[KgK]`. For every
representation `π` of `G` on an `A`-module `W` and `v ∈ W^K`, `T_f v = v ∗ h_{f^ι}`, where `v ∗ h` is the right action
of `H(G, K; A)` on `W^K` of that section; so `f ↦ T_f` is the action of the spherical Hecke algebra on `W^K`, read as
a left action through the anti-involution `[KgK] ↦ [Kg⁻¹K]`.

(c) *Local fields: convolution.* If moreover `A` is a `ℚ`-algebra and `μ` is the `A`-valued Haar measure on `G` with
`μ(K) = 1` (SmoothRepresentationsOfLocalGroups §SR.1.1), then `𝓗(G, K; A)` is the subalgebra of `K`-bi-invariant
functions of the Hecke algebra `H(G, A)` of that section, `∗` being its convolution, and for a smooth representation
`π` and `v ∈ W^K`, `T_f v = ∫_G f(g)π(g)v dμ(g)`.

(d) *Commutativity.* For a non-archimedean local field `F`, `𝓗(G, K; A)` is commutative for every commutative semiring
`A`; with (a) this gives 2.2 (c) over such `F`.

(e) *Adjoints.* Let `A = ℂ`, `σ` complex conjugation, `π′ = π` and `β` a `G`-invariant hermitian form on `W`,
conjugate-linear in the first variable. Then `f^∨ = f^*`, `f^*(g) = conj(f(g⁻¹))`, and 2.2 (b) says that
`β(T_f v, v′) = β(v, T_{f^*}v′)` for `v, v′ ∈ W^K`; for `f` the indicator of `KgK`, `f^*` is the indicator of `Kg⁻¹K`.
Over a local field and for a smooth representation `π`, with (c), this is the relation `β(π(f)v, v′) = β(v, π(f^*)v′)`
between the convolution operators of the unimodular group `G`, on `K`-fixed vectors.

Over a valuation ring that is not the ring of integers of a local field, a double coset need not be a finite union of
cosets (for `F = ℂ((t))`, `O = ℂ[[t]]` and `n = 2`, `K·diag(t, 1)·K` is the union of the cosets indexed by the points
of `ℙ¹(ℂ)`), the Hecke functions vanish on such double cosets, and (a) describes the algebra that 2.2 is about; the
level algebras of SmoothRepresentationsOfLocalGroups §SR.1.2, defined for compact open subgroups of locally profinite
groups, do not cover the case in which some double coset is not a finite union of cosets.

*Needs:* 2.2; SmoothRepresentationsOfLocalGroups §SR.1.1 (Functions, measures and convolution), §SR.1.2 (Level
algebras and the double-coset ring), §SR.4.1 (The Satake transform and isomorphism); AutomorphicFormsOnReductiveGroups
§3.5 (Spherical lines and Flath factorization).

## Results taken from other roadmaps

- The Ostrowski–Taussky inequality, in the form `|det H| ≤ 2^n·|det Θ|` for complex `n × n` matrices with `H ≥ 0` and
  `Θ + Θᴴ − H ≥ 0`: EigenvalueAndSingularValueInequalities §4.2 (`det H ≤ |det A|` for `A` with positive semidefinite
  hermitian part `H`), with the monotonicity of the determinant on positive semidefinite matrices.
- The integrality of the exponential of a power series without constant term whose coefficients have valuation at
  least `1/(p − 1)`, over `ℂ_p`, in several variables: RiemannHypothesisForDirichletLFunctions/TaylorBoundsAndDepthsOnHeightTwoFormalGroups
  §4.1 (c), at radius `0`.
- An integral point of `ℚ̄_ℓ^m` at which each of finitely many polynomials over `ℚ̄_ℓ` takes a value at least as large
  as each of its coefficients: RestrictedPowerSeries §2.4 (maximum principle), applied to the product of the
  polynomials over a finite extension of `ℚ_ℓ` that contains their coefficients, with the multiplicativity of the
  Gauss norm of RestrictedPowerSeries §1.1.
- The identity `Σ_{U≤W} (−X)^{dim U} q^{dim U(dim U−1)/2} = ∏_{l<dim W}(1 − q^lX)` over the subspaces of a subspace
  `W` of `𝔽_q^n`, which combines the `q`-binomial theorem with the number of subspaces of a given dimension:
  ArithmeticStatisticsPartIV §3.2, which states both ingredients (both are on Tau Ceti's main branch, see the end of
  the next list).
- For an integral scheme with a projective embedding over a field and its base change to a noetherian ring, the
  monomials of degree `m` span the sections of the `m`-th power of the line bundle for all large `m`: GroebnerGeometry
  §4.10, on the library's projective schemes and line bundles.
- Embeddings into `ℂ` extending an embedding of a countable ring, and isomorphisms `ℂ ≅ L` for algebraically closed
  `L` of the cardinality of `ℂ` matching two embeddings: DeligneWeightsAndPurity §0.5 (i), (ii), through the fraction
  field.
- For finitely many groups `G_v` with subgroups `H_v`, the index of `∏_v H_v` in `∏_v G_v` is `∏_v [G_v : H_v]`:
  AdelicAlgebraicGroups §4.4 (index of product subgroups), with Mathlib's `Subgroup.index_pi` for one ambient group.
- Absolutely integrally closed rings: the definition, fields, quotients and localisations: ArcTopologyAndDescent §0.1.
- Polar decomposition `g = kz` in the unitary group of a diagonal sign form (existence): RepresentationTheory/LieGroups
  §9.2, the general Cartan decomposition applied to this group, realified as a closed subgroup of `GL_{2n}(ℝ)` stable
  under transpose; the group is not one of the matrix applications that section works out.
- The Cauchy–Binet formula for `det(AX)`, `A` of size `k × I` and `X` of size `I × k`: PadicMeasuresIwasawaAlgebras §6.4.
- Splitting `ℓ`-modular systems, the splitting of a finite group by a field of characteristic `ℓ` that contains the
  prime-to-`ℓ` roots of unity of its exponent, and Brauer reciprocity with the non-singularity of the Cartan matrix:
  RepresentationTheory/ModularCharactersAndBlocks §1.1, §2.3, §3.1 (in 1.2 and 4.1).
- The convolution algebra of a locally profinite group, the level algebra of a compact open subgroup with its right
  action on fixed vectors and its structure constants, and the Satake transform of the spherical Hecke algebra:
  SmoothRepresentationsOfLocalGroups §SR.1.1, §SR.1.2, §SR.4.1 (in 2.2 and 4.2).
- The commutativity of the spherical Hecke algebra at a hyperspecial subgroup, at a finite place of a number field:
  AutomorphicFormsOnReductiveGroups §3.5 (in 2.2 and 4.2).

## What the library already provides

- The mean value property of holomorphic functions on a disc, and entire functions determined by their Taylor
  series at `0`: `DiffContOnCl.circleAverage`, `Complex.taylorSeries_eq_of_entire'`.
- Dirichlet's `S`-unit theorem and a class number bound stronger than `h ≤ (2^n·|d|)^{n+1}`:
  `TauCeti.finrank_sUnits_numberField`, `Set.unit_fg_of_units`, `NumberField.classNumber_le_bound`.
- Line bundles on schemes, their Picard group and triviality over local rings:
  `TauCeti.AlgebraicGeometry.LineBundleClass`,
  `TauCeti.AlgebraicGeometry.LineBundleClass.subsingleton_spec_of_isLocalRing`.
- The chain rule for substitution in multivariate power series, and Legendre's bounds for `v_p(n!)` and `‖n!‖`:
  `MvPowerSeries.pderiv_subst`, `Nat.Prime.sub_one_mul_multiplicity_factorial`, `Padic.rpow_neg_div_le_norm_factorial`.
- Degree against order for multivariate power series, and continuity of partial derivatives for the coefficientwise
  topology: `MvPowerSeries.degree_le_order_prod_pow`, `MvPowerSeries.WithPiTopology.continuous_pderiv`.
- The Frobenius on power series in characteristic `p` and `(Σ f_i)^{p^n} = Σ f_i^{p^n}`: `PowerSeries.map_frobenius_expand`,
  `sum_pow_char_pow`.
- The bialternant formula for Schur polynomials: `TauCeti.diagramSchurPoly_mul_alternant`.
- Extension of scalars of commutative algebras is left adjoint to restriction: `CommAlgCat.extendRestrictScalarsAdj`.
- Fitting ideals of finite modules and their base change: `TauCeti.fittingIdeal_baseChange`.
- The length of the cokernel of a square matrix over a noetherian domain of dimension at most one is the order of
  its determinant: `Matrix.length_quotient_range_mulVecLin_eq_ord_det`.
- Gauss's lemma for polynomials: `Polynomial.gaussNorm_mul`; the maximum principle for restricted power series:
  `MvPowerSeries.exists_norm_restrictedEval₂_eq_norm`.
- `log ∘ exp` and `exp ∘ log` for power series: `PowerSeries.logOf_subst_exp`, `PowerSeries.subst_exp_logOf`.
- The étale criterion for a ring with a finite group action (Chase–Harrison–Rosenberg): `TauCeti.MulSemiringAction.etale`;
  isomorphisms of algebraically closed fields extending a given one: `IsTranscendenceBasis.exists_ringEquiv_comp_algebraMap`.
- Stone–Weierstrass for star subalgebras and Fourier inversion on the circle:
  `ContinuousMap.starSubalgebra_topologicalClosure_eq_top_of_separatesPoints`,
  `has_pointwise_sum_fourier_series_of_summable`.
- Teichmüller representatives in adically complete rings and in local fields: `Perfection.teichmuller`,
  `TauCeti.eq_teichmullerLift_iff`.
- Jacobi's formula for the derivative of the determinant and `det(exp A) = exp(tr A)`: `Matrix.hasFDerivAt_det`,
  `Matrix.det_exp`; Fischer's and Hadamard's inequalities: the files `TauCeti/Analysis/InnerProductSpace/Gram/Fischer.lean`
  and `TauCeti/Analysis/InnerProductSpace/Gram/Hadamard.lean`.

On Tau Ceti's main branch, later than the revision pinned here:

- Uniqueness of Taylor expansions, two functions analytic at a point with the same Taylor series there agreeing near
  it: `TauCeti.taylorSeries_inj`.
- fpqc descent of sections and of morphisms into quasi-coherent modules:
  `AlgebraicGeometry.Scheme.Modules.isSheaf_bigPresheaf_fpqcTopology`,
  `TauCeti.AlgebraicGeometry.Descent.existsUnique_pullback_map_eq_of_mem_fpqcTopology`. Descent of quasi-coherent
  modules along fpqc coverings is SchemeAndStackFoundations §1.1; at the pins the library has the pseudofunctor of
  quasi-coherent modules (`TauCeti.AlgebraicGeometry.Descent.qcohPseudofunctor`).
- Divisibility of a multivariate power series by a constant: `MvPowerSeries.C_dvd_iff_dvd_coeff`; at the pins the
  library has the one-variable form (`PowerSeries.C_dvd_iff_dvd_coeff`).
- The `q`-binomial theorem and the count of the subspaces of `𝔽_q^n` of a given dimension:
  `TauCeti.prod_one_add_pow_mul_eq_sum_gaussianBinomial`, `TauCeti.card_submodule_finrank_eq_gaussianBinomial`; both
  are stated in ArithmeticStatisticsPartIV §3.2.
- The product formula for the Fitting ideals of an extension whose quotient is quadratically presented:
  `TauCeti.fittingIdeal_eq_mul_of_exact`, stated in PadicMeasuresIwasawaAlgebras §6.6.
- The coefficient bound for `exp(xX)` over extensions of `ℚ_p`: `PowerSeries.norm_coeff_rescale_exp_mul_pow_le`.
- Decay of Fourier transforms from bounds on derivatives:
  `TauCeti.one_add_norm_pow_mul_norm_fourier_le_of_tsupport_subset`.

## References

- `[ShortProof]`: the folder `grh` of <https://github.com/lsernau/grh-lean> at commit
  `72fead102f663d5c7a407964a13dc0cf9d977207`; this roadmap covers results of `src/Lib/General` in the files
  `Algebra/CartanMap`, `Algebra/MultivariatePolynomials`, `Analysis/GaussianIntegral`, `Analysis/HolomorphicIntegrals`,
  `LinearAlgebra/Eigenvalues`, `LinearAlgebra/IntegralLattices` and `LinearAlgebra/MatrixNormBounds`.
- N. Alon, *Combinatorial Nullstellensatz* (1999).
- S. A. Amitsur, *On the characteristic polynomial of a sum of matrices*, Linear and Multilinear Algebra 8 (1980),
  no. 3, 177–182.
- S. Ball, O. Serra, *Punctured combinatorial Nullstellensätze* (2009).
- G. Chenevier, *The p-adic analytic space of pseudocharacters of a profinite group and pseudorepresentations over
  arbitrary rings*, LMS Lecture Note Ser. 414 (2014).
- Hua, *Harmonic Analysis of Functions of Several Complex Variables in the Classical Domains*, AMS (1963).
- J. Milne, *Arithmetic Duality Theorems*.
- J.-P. Serre, *Linear Representations of Finite Groups* (1977).
- T. Tamagawa, *On the zeta functions of a division algebra*, Ann. Math. 77 (1963).
- J. Tits, *Reductive groups over local fields*, Corvallis 1979.
