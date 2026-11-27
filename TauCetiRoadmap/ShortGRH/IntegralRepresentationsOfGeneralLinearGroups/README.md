# Integral representations of general linear groups

**Summary.** This roadmap states the background on general linear groups that the shorter proof uses, in the forms in
which it uses it. The standard theory is the reference for this background: the irreducible representations of
`GL_N(ℂ)` of a given highest weight and the Weyl and dual Weyl lattices of `GL_N` over the integers; the class
functions of the finite groups `GL_n(𝔽_q)` under Harish-Chandra induction, with Green's cuspidal characters, the
Steinberg character and Shintani descent; the Jacquet modules, the Satake isomorphism and the unitary dual of `GL_N`
over a non-archimedean local field. The roadmap states its results on these standard objects through the comparison of
Layer 7. The objects of the route, a model in coordinates, a ring of class functions on all square matrices and linear
forms that are eigenforms at pro-`p` Iwahori level, are one way to prove them, and the proofs of the route, in Layers
1–6, are stated on them. The route has two halves.

The first half (Layers 1–3) is the theory of the polynomial representations of a product `∏_τ GL(n_τ)` over an
arbitrary commutative ring, in a model by polynomials in a matrix of variables. The representation of a weight `κ`
(numbers of columns of each height) is the dual `W_R(κ)` of the module `∇_R(κ)` of polynomials that are semi-invariant
under upper triangular matrices acting on the columns; for one place it is, over `ℂ`, the irreducible representation
whose highest weight is the vector of row lengths of `κ`, and over `ℤ` the Weyl lattice of that weight (7.1). The
module `∇_R(κ)` has a basis of products of minors that is the same over every ring (1.2); a family of matrices acts on
`W_R(κ)` by its Schur matrix (1.3). Over the integers `W_ℤ(κ)` carries an integral, symmetric, positive definite Gram
matrix, the restriction of the standard form on tensors (2.1). The Fock (Fischer) pairing of polynomials inverts this
Gram matrix up to one integer, the hook number, which therefore bounds every denominator between the lattice and its
dual (2.2). Then come the adjoint formula and a bound of Schur matrices by singular values (2.3), Schur's lemma,
irreducibility under the compact group and Schur orthogonality (2.4), multiplication of semi-invariants (2.5), duals
and the invariant pairing of dual weights (3.1), mixed weights and their Cartan product (3.2), and integral branching
maps from `GL(n + 1)` to `GL(n) × GL(1)` (3.3, 3.4), whose norm bound does not see the short columns of the diagram.

The second half (Layers 4–6) is `GL_n` over finite and over local fields. Over a finite field `k`, Green's cuspidal
functions and the characters `Ξ_c` attached to squarefree polynomials `c` (labels) are defined by Green's formula in
the ring of class functions on all square matrices, with parabolic induction as product; no Deligne–Lusztig induction
is used (Layer 4). They are shown to be orthonormal irreducible characters through lifts to `GL_n(k′) ⋊ Gal(k′/k)` for
extensions `k′/k`, which also give Shintani lifting of the `Ξ_c` in prime degree (Layer 5). Over a non-archimedean
local field, Layer 6 states the pro-`p` Iwahori level structure of `GL_N`: a decomposition and a twisted conjugacy
statement, the operators `U_t`, and *exponents*, linear forms that are eigenforms of the `U_t`; Satake's formula on
exponents, the fact that a sorted unramified exponent is seen by spherical vectors, and chains of roots of the Hecke
polynomial of a spherical vector in a unitary representation.

Layer 7 compares each object of the route with its standard counterpart. For one place the model of Layers 1–3 is the
Weyl module with its contravariant form, and the hook number is the product of the hook lengths (7.1); the branching
matrix of 3.4 is nonzero and spans the intertwiners of the multiplicity-free branching rule (7.9). On invertible
matrices the ring of Layer 4 is the ring of class functions of the groups `GL_n(k)` under Harish-Chandra induction
(7.2); Green's cuspidal functions of the multiplicative functions on an algebraically closed field are the negatives
of Green's virtual characters of the Coxeter tori, the `τ_P` are Green's cuspidal characters and the `Ξ_c` their
Harish-Chandra products (7.3); the inverse `μ` of the constant function is the Steinberg character up to the sign
`(−1)^n` (7.4); and descent is Shintani descent, the lifts of Layer 5 recording less than Shintani's lift (7.5). The
pro-`p` Iwahori-fixed vectors are the invariants of the Jacquet module under the diagonal matrices congruent to `1`,
and the exponents for a character of the torus that is trivial on these matrices are the linear forms on the Jacquet
module on which the torus acts by that character, the only exponent for any other character being zero (7.6); Satake's
formula on exponents is, for the operators `T_j` and characters trivial on the units, the action of the spherical
Hecke algebra on the spherical vector of a principal series, given by the Satake transform, and the roots of the Hecke
polynomial are the Satake parameters multiplied by `q^{(N−1)/2}` (7.7); the bound and the chains of 6.8 (a), (b) are
consequences of the classification of the unitary dual (7.8). The paragraphs **In standard terms** of Layers 1–6 state
the results of the route in these terms.

**Where this sits in the argument.** A one-sided bound for a sum over primes gives a half-plane free of zeros of
Dirichlet L-functions, and the bound comes from comparing an upper and a lower bound for the covolume of a lattice of
theta lifts (OneSidedPrimeSumBoundsAndAdmissibleData). The forms that are lifted are algebraic modular forms on
definite unitary groups with values in representations of `∏_τ GL` over the infinite places of a CM field
(AdelicUnitaryGroupsAndAlgebraicModularForms); Layers 1–3 give these values their integral structure and their norms.
The norm bound of Schur matrices bounds the size of the composite lift (CompositeThetaLiftsAndShortForms), the
branching map of 3.4 restricts the chains of lifts (ThetaLiftChainsAndTheSeesawIdentity), and the invariant pairing,
the Cartan product and the hook-number denominators enter the lower bound (DeterminantsOfThetaLiftChains,
NormsOfThetaLiftsAndExchangeIdentities). The labels and their idempotents (5.3) name the good forms and the target
forms; the degree bound of 5.3 enters the main term of the second moment (RemainingAndMainTermsOfSecondMoments).
Shintani lifting and the Iwahori-level statements enter the Galois representations of eigenforms
(GaloisRepresentationsOfUnitaryEigenforms), and the chains of 6.8 enter the congruences to first order
(CongruencesOfTwistedThetaLifts).

## Conventions and notation

- *Labels.* Under each section heading, `*Origin:*` says where its statement comes from and
  `*Method of the formal proof:*` how [ShortProof] proves it. [ShortProof] is the shorter formal proof of the family
  `ShortGRH`; the line "[ShortProof], `path` (`declarations`)" at the end of a section names the file (under `src/`)
  and the declarations where it proves the statement. The names of [ShortProof] occur only on that line. The sections
  of Layer 7 are not statements of [ShortProof]; they carry `*Proof route:*` in place of the method.
- *Rings and matrices.* `R` is a commutative ring. For finite sets `a`, `b`, `M_{a×b}(R)` is the set of matrices with
  rows `a` and columns `b`; `z*` is the conjugate transpose of a complex matrix and `zᵀ` the transpose; `diag(x)` is
  the diagonal matrix of a vector `x`. `U(n)` is the group of complex unitary matrices with rows and columns `n`, with
  its Haar probability measure. A *character* of a finite group is the character of a finite-dimensional complex
  representation; a *virtual character* is a `ℤ`-combination of characters; for functions `f`, `f′` on a finite
  group `G`, `⟨f, f′⟩_G := |G|^{−1} Σ_g conj(f(g))·f′(g)`.
- *Places and rows.* `Φ` is a finite set (of places; in the applications, the infinite places of a CM field). For each
  `τ ∈ Φ`, `n_τ` is a finite set of rows with a fixed numbering by `0, …, N_τ − 1`, `N_τ := |n_τ|`. The weights,
  modules and matrices of Layers 1–3 are those of 1.1.
- *Finite fields.* `k` is a finite field with `q` elements, `K` a field containing `k`; the objects of Layers 4 and 5
  are those of 4.1 and 5.1.
- *Local fields.* `F` is a field with a valuation with values in `ℤ ∪ {∞}` whose ring of integers `𝒪` is compact
  (a non-archimedean local field), `𝔭` the maximal ideal, `𝓀 = 𝒪/𝔭` the residue field with `q` elements, `ϖ` a
  uniformiser, `|x| = q^{−ord(x)}` the normalised absolute value. The objects of Layer 6 are those of 6.1.

| Symbol | Meaning | Defined in |
|---|---|---|
| `y = (y_{(τ,a),i})` | matrix of variables, row `(τ, a)` with `a ∈ n_τ`, column `i ∈ ℕ` | 1.1 |
| `κ`, `λ_κ(τ, i)`, `‖κ‖` | weight: `κ_τ(h)` columns of height `h` at `τ`; row lengths; number of boxes | 1.1 |
| `Δ_I`, `Π_T` | minor on the rows `I` and the first columns; product of the minors of a filling `T` | 1.1 |
| `∇_R(κ)` | Borel semi-invariant polynomials of weight `κ` | 1.1 |
| `B(κ)`, `b_i` | standard basis of products of minors, indexed by `B(κ)` | 1.1, 1.2 |
| `W_R(κ) = R^{B(κ)}` | the Weyl module, dual to `∇_R(κ)` | 1.1 |
| `ev_y` | evaluation vector `(b_i(y))_i` | 1.1 |
| `S_κ(z)`, `d_τ` | Schur matrix of a family `z` of matrices; its determinant exponents | 1.1, 1.3 |
| `ρ_{κ,e}` | representation of weight `(κ, e)`, `e ∈ ℤ^Φ` | 1.1 |
| `K_κ`, `G_κ` | kernel `v_κ(yᵀx)`; integral Gram matrix | 1.1, 2.1 |
| `⟨ξ, η⟩_G`, `‖ξ‖²_G` | hermitian Gram form `ξ*G_κη` and its norm | 1.1 |
| `P_κ(ξ)` | polynomial `Σ_i (G_κξ)_i b_i` of a vector | 1.1 |
| `ι_κ`, `Λ_κ(g)` | integral embedding of `W(κ)` into tensors; action on tensors | 1.1 |
| `⟨p, p′⟩_F`, `H(κ)` | Fock pairing `p(∂)p′(0)`; hook number `⟨v_κ, v_κ⟩_F` | 1.1 |
| `𝓗(k)`, `∗`, `𝟙`, `μ` | class functions on all square matrices over `k`; parabolic-induction product; constant function 1; its inverse | 4.1, 4.2 |
| `A\|_n`, `⟨A, A′⟩_n`, `δA` | rank-`n` part; inner product on `GL_n(k)`; block average | 4.1 |
| `β_η`, `C_η` | eigenvalue sum of `η : K → ℂ`; Green's cuspidal function `(β_η·μ) ∗ 𝟙` | 4.1 |
| `ω`, `θ_x`, `τ_P` | injective character of `K^×`; the power of `ω` attached to `x`; Green's function of an irreducible `P` | 4.4 |
| `Ξ_c`, `e_c`, `x_χ` | character of a label `c`; its central idempotent; the unit naming a character `χ` of `k^×` | 4.4, 5.3 |
| `Lift_Z(A, A′)` | lift along `k′/k` by `Z`-combinations of characters of `GL_m(k′) ⋊ Gal(k′/k)` | 5.1 |
| `I₁`, `P_b`, `T⁺` | pro-`p` Iwahori subgroup; parahoric subgroup of a level function; dominant diagonal elements | 6.1 |
| `e_C`, `U_t` | mean over a compact open subgroup `C`; `U_t = e_{I₁}∘ρ(t)` | 6.1 |
| `ξ_θ` | torus character `t ↦ ∏_i θ_i(t_i)\|t_i\|^{N−1−i}` | 6.1 |
| `T_j`, `T_{r,j}`, `P_x` | Hecke operators of `GL_N(𝒪)`; partial Hecke sums; Hecke polynomial of a spherical eigenvector | 6.1 |
| `V_ν` | irreducible rational representation of `GL_N(ℂ)` of highest weight `ν` | 7.1 |
| `Ind_{a,b}`, `Res_{a,b}` | Harish-Chandra induction from, and restriction to, `GL_a(k) × GL_b(k)` | 7.2 |
| `St_n` | character of the Steinberg representation of `GL_n(k)` | 7.4 |
| `Nm_σ`, `Sh_σ` | norm `(δσ)^{ord σ}`; Shintani lift along `σ` | 7.5 |
| `𝒯`, `𝒩`, `ℬ`, `𝒯₁` | diagonal torus, upper unitriangular and upper triangular subgroups of `GL_N(F)`; `𝒯 ∩ I₁` | 7.6 |
| `V_𝒩`, `pr_𝒩`, `ρ_𝒩`, `I_ℬ(ξ)` | unnormalised Jacquet module, its projection and torus action; unnormalised principal series | 7.6 |
| `𝔥`, `𝒮` | spherical Hecke algebra of `GL_N(𝒪)`; normalised Satake transform | 7.7 |

## Layer 1: Polynomial representations of products of general linear groups over rings

This layer sets up the model (1.1), proves that the products of minors of one family of fillings are a basis of the
semi-invariants over every ring, with Weyl's character (1.2), and gives the Schur matrices their properties (1.3).

### 1.1 The polynomial model

*Origin:* definitions and conventions.

*Method of the formal proof:* the formal proof makes these definitions; the standard sets of fillings in (d) are chosen
once and for all by a choice function among the sets with the stated properties, and the Schur and Gram matrices are
defined as the unique coefficients of the expansions in (f) and (g).

(a) *Variables and minors.* `R[y]` is the polynomial ring in the variables `y_{(τ,a),i}`, `τ ∈ Φ`, `a ∈ n_τ`, `i ∈ ℕ`;
the row `(τ, a)` has colour `τ`. For an `h`-tuple `I` of rows of one colour, `Δ_I := det(y_{I(s),t})_{s,t<h}` is the
minor on the rows `I` and the first `h` columns (`Δ_I = 1` for `h = 0`).

(b) *Weights and fillings.* A *weight* `κ` for `n` is a family of integers `κ_τ(h) ≥ 0`, `τ ∈ Φ`, `1 ≤ h < N_τ`: the
diagram of `κ` at `τ` has `κ_τ(h)` columns of height `h`. Its row lengths are
`λ_κ(τ, i) := Σ_{i<h<N_τ} κ_τ(h)` (`0 ≤ i < N_τ`) and its number of boxes is `‖κ‖ := Σ_τ Σ_h h·κ_τ(h)`. A *filling* `T`
of `κ` gives each column of height `h` at `τ` an `h`-tuple of rows of colour `τ`, and `Π_T` is the product over the
columns of the minors `Δ` of these tuples.

(c) *Semi-invariants.* `∇_R(κ)` is the `R`-module of `f ∈ R[y]` with `f(yβ) = ∏_{τ,i} β_{τ,ii}^{λ_κ(τ,i)}·f(y)` as an
identity of polynomials in `y` and in the entries of generic upper triangular matrices `β_τ` (indexed by `ℕ`), where
`(yβ)_{(τ,a),j} := Σ_{i≤j} y_{(τ,a),i}·β_{τ,ij}`: one upper triangular matrix for each colour, acting on the columns.
More generally, for a colouring `c` of a finite set of rows and a finitely supported weight `l(τ, i)`, `∇_R(c, l)` is
defined by the same identity. For one colour, `∇_R(κ)` is the module `∇_R(ν)` of
IntegralWeylModulesOfGeneralLinearGroups §0.1 for the `N × (N − 1)` matrix of the variables in the first `N − 1`
columns and `ν_i = λ_κ(i)` (when `N ≥ 2`): the identity for diagonal `β` says that `f` is homogeneous of degree `λ_κ(i)` in the column
`i` (so that no later column occurs), and the identity for unitriangular `β` is the invariance under adding a multiple
of an earlier column to a later one. That roadmap writes `λ` for the row lengths; with `λ = (λ_κ(0), …, λ_κ(N − 1))`,
whose last entry is `0`, `∇_R(κ)` is its dual Weyl lattice `∇_R(λ)` (its Conventions).

(d) *Standard basis.* For each `τ` let `B_τ` be a finite set of fillings of the one-place diagram of `κ_τ` by the rows
`n_τ` such that, over every commutative ring, the products of minors `Π_T`, `T ∈ B_τ`, are linearly independent and
span the span of all products of minors of fillings of `κ_τ`, and such that the character identity of 1.2 (c) holds
for the fillings in `B_τ`; it is chosen once and for all among the sets with these properties, which exist by
1.2 (e). They need not be the semistandard tableaux. Put `B(κ) := ∏_τ B_τ` and, for `i ∈ B(κ)`,
`b_i := ∏_τ Π_{i_τ}` (each factor in the rows of colour `τ`).

(e) *The Weyl module.* `W_R(κ) := R^{B(κ)}`, read as `Hom_R(∇_R(κ), R)` through the dual basis of `(b_i)`. For an array
`y` over `R` (rows `(τ, a)`, columns `ℕ`), `ev_y := (b_i(y))_{i∈B(κ)} ∈ W_R(κ)`.

(f) *Schur matrices.* Let `n′` be a second family with `N_τ ≤ N′_τ`, and `κ` a weight for `n′` that *fits* `n`:
`κ_τ(h) = 0` for `N_τ < h < N′_τ`. Put `d_τ := κ_τ(N_τ)` if `N_τ < N′_τ` and `d_τ := 0` otherwise. For
`z = (z_τ)`, `z_τ ∈ M_{n′_τ×n_τ}(R)`, let `zy` be the array `(zy)_{(τ,b),i} := Σ_{a∈n_τ} z_τ(b, a)·y_{(τ,a),i}`, and
`y_τ` the square block of `y` in the rows `n_τ` and the columns `0, …, N_τ − 1`. The *Schur matrix*
`S_κ(z) ∈ M_{B′(κ)×B(κ)}(R)` is the matrix with
`b′_i(zy) = Σ_j S_κ(z)_{ij}·b_j(y)·∏_τ det(y_τ)^{d_τ}` for every `i`, where `b′` is the basis of (d) for `n′` and `κ`,
and `b` that for `n` and the restriction of `κ` to the heights `< N_τ` (its existence and uniqueness are 1.3 (a)). For
`n′ = n` and `e ∈ ℤ^Φ`, `ρ_{κ,e}(g) := ∏_τ det(g_τ)^{e_τ}·S_κ(g)` for `g ∈ ∏_τ GL(n_τ, R)` is the *representation of
weight `(κ, e)`* (a homomorphism by 1.3 (b)), of highest weight `λ_κ + e`.

(g) *Kernel and Gram matrix.* `v_κ := ∏_τ ∏_{1≤h<N_τ} Δ_{τ,h}^{κ_τ(h)}`, with `Δ_{τ,h}` the leading `h × h` minor of the
rows of colour `τ` in the fixed numbering, and
`K_κ(x, y) := ∏_τ ∏_{1≤h<N_τ} det(Σ_{a∈n_τ} y_{(τ,a),s}·x_{(τ,a),t})_{s,t<h}^{κ_τ(h)} ∈ ℤ[x, y]`, that is `v_κ(yᵀx)`.
The *Gram matrix* `G_κ ∈ M_{B(κ)}(ℤ)` is the matrix of coefficients in `K_κ(x, y) = Σ_{i,j} (G_κ)_{ij}·b_i(x)·b_j(y)`
(existence and uniqueness: 2.1 (b)). For complex vectors, `⟨ξ, η⟩_G := ξ*G_κη` and `‖ξ‖²_G := ⟨ξ, ξ⟩_G`. The
*polynomial* of `ξ ∈ W_R(κ)` is `P_κ(ξ) := Σ_i (G_κξ)_i·b_i ∈ ∇_R(κ)`.

(h) *Tensors.* `CF(κ)` is the set of fillings of `κ` whose columns are strictly increasing sequences of row numbers;
it indexes the basis tensors of `⊗_{columns} Λ^h(R^{n_τ})`. The *tensor embedding* `ι_κ ∈ M_{CF(κ)×B(κ)}(ℤ)` has as row
`T` the coordinates of `Π_T` in the basis `(b_i)`. For square `g_τ`, `Λ_κ(g) ∈ M_{CF(κ)}(R)` has entry at `(T, T′)` the
product over the columns of the minors of `g_τ` with rows from `T` and columns from `T′`.

(i) *Fock pairing and hook number.* For polynomials `p = Σ_α p_α y^α`, `p′ = Σ_α p′_α y^α`,
`⟨p, p′⟩_F := Σ_α α!·p_α·p′_α` (`α! = ∏ α_x!`), which is `p(∂)p′` at `0`. The *hook number* is
`H(κ) := ⟨v_κ, v_κ⟩_F ∈ ℤ`. This pairing is bilinear over every `R`; the Fischer form of
IntegralWeylModulesOfGeneralLinearGroups (Conventions), which is conjugate-linear in the first argument, is
`(p, p′) ↦ ⟨p̄, p′⟩_F` on complex polynomials, and the two agree on real ones. For one colour, `v_κ` is the
highest-weight vector `v_λ` of that roadmap, `λ` the row lengths of `κ`, and `H(κ)` is its `⟨v_λ, v_λ⟩_F`; for several
colours `H(κ)` is the product of these numbers over `τ`, the pairing being multiplicative on products of polynomials
in disjoint sets of variables.

**In standard terms.** For one place, with `GL(n, ℂ)` identified with `GL_N(ℂ)` through the fixed numbering and
`λ_κ := (λ_κ(0), …, λ_κ(N − 1))`, `ρ_{κ,e}` is the irreducible rational representation of highest weight
`λ_κ + e·(1, …, 1)` (RepresentationTheory/ClassicalGroups §3.3); for several places it is the external tensor product
over `τ` of these representations of the groups `GL(n_τ, ℂ)` (7.1 (a)). `⟨·,·⟩_G` is its invariant inner product,
contravariant and of value `1` at the highest weight vector (7.1 (b)). For one place `∇_ℤ(κ)` is the dual Weyl lattice
`∇_ℤ(λ_κ)` of IntegralWeylModulesOfGeneralLinearGroups, `P_κ` maps `W_ℤ(κ)` onto its Weyl lattice `Δ_ℤ(λ_κ)` and
carries `⟨·,·⟩_G` to the normalised Fischer form of that roadmap (7.1 (c)), and `H(κ)` is the product over the places
of the products of the hook lengths of the diagrams (7.1 (d)). The names agree with the literature: for one place
`W_R(κ) = W_ℤ(κ) ⊗ R` is the Weyl lattice of highest weight `λ_κ`, tensored with `R` and written in the coordinates
dual to the basis `(b_i)`, and the hook number is the product of the hook lengths.

*Needs:* Mathlib `MvPolynomial`, `Matrix.det`.

[ShortProof], `Lib/GLn/SchurModule/Basic` (`New.MatrixPoly`, `New.minor`, `New.tableauPoly`, `New.diagramWeight`,
`New.nabla`, `New.IsTableauBasis`, `New.BasisTableau`, `New.WeylIndexFamily`, `New.nablaBasis`, `New.weylEval`,
`New.schurDetExp`, `New.FitsRanks`, `New.schur`, `New.highestPoly`, `New.weylKernel`, `New.weylGram`, `New.toPoly`,
`New.fockPairing`, `New.hookNumber`); `Lib/GLn/SchurModule/TensorModel` (`New.ColumnFilling`, `New.fillingPoly`,
`New.fillingMatrix`, `New.minorsMatrix`)

### 1.2 A basis of products of minors over every ring, and its character

*Origin:* adapted from De Concini, Eisenbud and Procesi (1980), the standard bideterminants of a given shape form a
basis of the span of the bideterminants on initial columns, over any commutative ring: here for rows of several
colours at once, with the span identified with the module of semi-invariants over every commutative ring (zero
divisors allowed), for some family of fillings that is the same over every ring and is not identified with the
semistandard tableaux, and with Weyl's quotient of alternants for one colour.

*Method of the formal proof:* induction on the number of rows. One row `x` is set apart; polynomials are read as
polynomials in its variables over the ring of polynomials in the other rows, with monomials compared lexicographically
from the highest column down. Leading terms then match from both sides. For a semi-invariant, the possible leading
exponents in `x` are the `γ` with `γ_i ≤ l_i − l_{i+1}` (`l` the weight at the colour of `x`), and the coefficient of
such a leading term is a semi-invariant of the other rows for the weight `l − γ`. For products of minors, inserting
`x` into suitable columns of a filling of the other rows for `l − γ` gives a product whose leading term in `x` is
`y_x^γ` times the old product, with coefficient `1`. Over all admissible `γ`, these completed families have distinct
leading terms with unit coefficients, hence are independent, and they span by subtraction of leading terms and the
induction hypothesis; no step depends on the ring. For (c) the same recursion is compared with the expansion of the
alternant along `x`. For (e), (a)–(c) are applied to one colour and the columns of `κ_τ`; distinct indices `x` give
distinct fillings, since their products of minors are independent, so the `I_x` form a set as 1.1 (d) asks.

Let `m` be a finite set of rows with a colouring `c : m → Φ`, and `J` a finite set of columns, the column `j` of colour
`τ_j` and height `h_j ≥ 0`; let `l(τ, i) := #{j : τ_j = τ, h_j > i}`. A filling `I` gives each column `j` an
`h_j`-tuple of rows of colour `τ_j`, and `Π_I := ∏_j Δ_{I_j}`.

(a) Every `Π_I` lies in `∇_R(c, l)`, for every `R`.

(b) There are a finite set `X` and fillings `I_x`, `x ∈ X`, such that for every commutative ring `R` the polynomials
`Π_{I_x}` are linearly independent over `R` and span `∇_R(c, l)`.

(c) If there is only one colour, `M = |m|`, every `h_j ≤ M`, and `e : {0, …, M − 1} → m` is a bijection, then for every
`u ∈ ℂ^m`:
`(Σ_{x∈X} ∏_j ∏_{s<h_j} u_{I_x(j,s)})·det(u_{e(a)}^{b})_{a,b<M} = det(u_{e(a)}^{l(M−1−b)+b})_{a,b<M}`.

(d) Consequently, with the standard sets of 1.1 (d), which have the properties asked there by (e): for every `R` and
every `e ∈ ℕ^Φ`, the products `b_i·∏_τ det(y_τ)^{e_τ}`, `i ∈ B(κ)`, form an `R`-basis of the semi-invariants of the
weight `κ` with `e_τ` further columns of height `N_τ` at each `τ`; for `e = 0`, `(b_i)` is a basis of `∇_R(κ)`. If an
additive subgroup `A ⊂ R` contains all coefficients of `Σ_j x_j·b_j·∏_τ det(y_τ)^{e_τ}`, it contains all `x_j`.

(e) *Standard sets exist.* For every finite set of rows `n_τ` of one colour and every one-place weight `κ_τ` there is a
finite set of fillings of the diagram of `κ_τ` by `n_τ` with the properties asked of `B_τ` in 1.1 (d); so the sets
chosen there have them.

The library has neither general column heights over a ring nor the identification of the span with the
semi-invariants. On Tau Ceti's main branch, later than the revision pinned here: the case of a single column height,
for the algebra generated by the maximal minors, over any commutative ring (`TauCeti.pluckerBasisSubalgebra`), to
build on. IntegralWeylModulesOfGeneralLinearGroups §0.1 states (a) and (b) for one colour over integral domains, for
the semistandard family.

**In standard terms.** For one place, `∇_R(κ)` is the module `∇_R(λ_κ)` of IntegralWeylModulesOfGeneralLinearGroups
(Conventions; 1.1 (c)), which is the dual Weyl lattice for `R = ℤ` and, for `R = ℂ` with `g` acting by `f ↦ f(gᵀ·)`,
the irreducible representation of highest weight `λ_κ` (7.1 (a), (c)). (b) and (d) give a basis of products of minors
of it over every commutative ring, of which §0.1 there gives the semistandard form over integral domains, and (c) says
that the contents of the fillings `I_x` have as generating function the Schur polynomial of the row lengths
`l(0) ≥ l(1) ≥ ⋯`, as the contents of the semistandard tableaux do.

*Needs:* 1.1 (a)–(c) (minors, weights, semi-invariants), for (e) also 1.1 (d) (the properties asked of the standard
sets), and for (d) 1.1 (d)–(f) (the standard sets and the blocks `y_τ`); Mathlib `MvPolynomial`, `MonomialOrder`,
`Matrix.det`.

[ShortProof], `Lib/GLn/SchurModule/MinorBasis` (`New.GL.minorProduct_mem_nabla`, `New.GL.exists_bordering`,
`New.GL.degree_rowExpansion_mem_interlacing`, `New.GL.HasLeadingTerm.leadingCoeff_mem_nabla`,
`New.GL.IsStdMinorFamily`, `New.GL.exists_isStdMinorFamily`); `Lib/GLn/SchurModule/SchurMatrix`
(`New.exists_isTableauBasis`, `New.isTableauBasis_epsilon`, `New.linearIndependent_nablaBasis`,
`New.nabla_le_span_nablaBasis_mul_detPow`, `New.range_nablaCombination`,
`New.GL.linearIndependent_nablaBasis_mul_detPow`, `New.GL.coord_mem_of_coeff_mem`)

### 1.3 Schur matrices

*Origin:* adapted from the published theory of the polynomial representations of general linear groups over the
integers and of their characters as Schur polynomials (De Concini, Eisenbud and Procesi, Young diagrams and
determinantal varieties (1980); Akin, Buchsbaum and Weyman, Schur functors and Schur complexes (1982)): here in the
model of 1.1, for rectangular matrices and products over places, over every commutative ring.

*Method of the formal proof:* `b′_i(zy)` is a semi-invariant of the weight of `κ` for `n` with `d_τ` further full
columns, so 1.2 (d) gives the coefficients and their uniqueness; the expansion is defined over the polynomial ring in
the entries of `z` with integer coefficients, which gives base change. Multiplicativity is substitution twice. Each
`b_j` is a weight vector, so diagonal matrices act diagonally, and the trace factors over `τ` into the sums that occur
in 1.2 (c). For one row, the basis elements are monomials in the first column.

Let `n`, `n′` and `κ` be as in 1.1 (f).

(a) For every `z`, the coefficients `S_κ(z)` exist and are unique. Their entries are polynomials with integer
coefficients in the entries of `z`, the same over every ring; so `S_κ(φ(z)) = φ(S_κ(z))` for every ring homomorphism
`φ` applied entrywise. For `n′ = n`, `S_κ(1) = 1`, and `S_κ(g)` is continuous in `g` over a topological ring.

(b) `S_κ(gz) = S_κ(g)·S_κ(z)` for square `g_τ` with rows `n′_τ`; `S_κ(zg) = ∏_τ det(g_τ)^{d_τ}·S_κ(z)·S_κ(g)` for
square `g_τ` with rows `n_τ`; `S_κ(tz) = ∏_τ t_τ^{‖κ_τ‖}·S_κ(z)` for scalars `t_τ`, `‖κ_τ‖` the number of boxes at
`τ`; and each entry of `S_κ(z)` is the product over `τ` of the entries of the one-place Schur matrices of `z_τ`. In
particular `ρ_{κ,e}` is a homomorphism from `∏_τ GL(n_τ, R)` to the invertible matrices.

(c) For every array `y` over `R`: `∏_τ det(y_τ)^{d_τ}·S_κ(z)·ev_y = ev_{zy}`.

(d) For diagonal matrices, `S_κ(diag(x))` is diagonal with entry `∏_τ ∏_{a∈n_τ} x_{τ,a}^{w_{τ,a}(i)}` at `i`,
`w_{τ,a}(i)` the number of entries of `i_τ` equal to `a`. For `x_τ ∈ ℂ^{n_τ}` and bijections
`e_τ : {0, …, N_τ − 1} → n_τ`:
`tr S_κ(diag(x))·∏_τ det(x_{τ,e_τ(a)}^{b})_{a,b<N_τ} = ∏_τ det(x_{τ,e_τ(a)}^{λ_κ(τ,N_τ−1−b)+b})_{a,b<N_τ}`.

(e) If `R` is a field with an ultrametric absolute value and every entry of `z` has absolute value at most `1`, then
`max_i |(S_κ(z)ξ)_i| ≤ max_j |ξ_j|` for every `ξ`.

(f) For one place, `n′ = n`, `N > 1` and the one-row diagram (`κ(1) = a`, `κ(h) = 0` for `1 < h < N`), there is a bijection
`φ` from `B(κ)` to the exponent vectors `α ∈ ℕ^n` with `Σ_s α_s = a` such that, over `ℂ`, `S_κ(z)_{ij}` is the
coefficient of `X^{φ(j)}` in `∏_s (Σ_t z_{st}X_t)^{φ(i)_s}`: `S_κ` is the `a`-th symmetric power.

The formal proof states (e) for families with the same rows at every place, and (f) over `ℂ`. The library states the
character formula of (d) for its own model of the Weyl modules of one `GL_n` in characteristic `0`
(`TauCeti.diagramSchurPoly_mul_alternant` with `TauCeti.char_weylRepOfShape_diagonal_eq_eval_diagramSchurPoly`); a
comparison of the two models is not in the library.

**In standard terms.** For square matrices, through 7.1 (a), `S_κ` is the representation of `∏_τ GL(n_τ)` that is the
external tensor product of the irreducible representations of highest weights `λ_κ(τ, ·)`, written in the basis of the
model: (a) and (b) say that it is a polynomial representation defined over `ℤ` and compatible with base change, and
that `ρ_{κ,e}` is its twist by `∏_τ det^{e_τ}`; (d) is Weyl's character formula, the character at `diag(x)` of the
representation of highest weight `λ_κ` being the Schur polynomial `s_{λ_κ}(x)` (RepresentationTheory/ClassicalGroups
§4.2); and (f) identifies the representation of a one-row diagram with the symmetric power. For one place and a field
`R` with an ultrametric absolute value and valuation ring `𝒪_R`, (e) says that the lattice `W_{𝒪_R}(κ)`, the Weyl
lattice tensored with `𝒪_R` (7.1 (c)), is stable under the matrices with entries in `𝒪_R`.

*Needs:* 1.1, 1.2; Mathlib `Matrix.det`, `Matrix.vandermonde`.

[ShortProof], `Lib/GLn/SchurModule/SchurMatrix` (`New.sum_schur_smul_nablaBasis`, `New.GL.schur_eq_of_expansion`,
`New.schur_map`, `New.schur_one`, `New.schur_mul_left`, `New.schur_mul_right`, `New.schur_smul`,
`New.schur_apply_eq_prod`, `New.schur_mulVec_weylEval`, `New.schur_diagonal`, `New.weyl_character`,
`New.exists_equiv_schur_one_row_eq_symPowMatrix`, `New.continuous_schur`, `New.weylRep`); `Lib/GLn/Dual`
(`New.Rows.norm_schur_mulVec_le`)

## Layer 2: The Gram matrix over the integers and the hook number

This layer puts the integral Gram matrix on the Weyl module (2.1), shows that the Fock pairing inverts it up to the
hook number (2.2), proves the adjoint formula, the norm bound by singular values and the invariance of the Gram form
(2.3), Schur's lemma, irreducibility and Schur orthogonality on the compact group (2.4), and treats multiplication of
semi-invariants (2.5).

### 2.1 The Gram matrix

*Origin:* adapted from the published theory of the contravariant form on Weyl modules (positive definite, invariant
under the unitary group, making `g` and its transpose adjoint; Jantzen, Representations of Algebraic Groups (2003);
Goodman and Wallach, Symmetry, Representations, and Invariants (2009), ch. 5) and of the split embedding of the
integral Weyl module into tensor products of exterior powers (Akin, Buchsbaum and Weyman, Schur functors and Schur
complexes (1982)): here on the integral lattice `W_ℤ(κ)` with its basis of products of minors, through its embedding
into the integral tensors, for products over places and rectangular matrices.

*Method of the formal proof:* the Cauchy–Binet formula expands `K_κ(x, y)` as the sum over `T ∈ CF(κ)` of
`Π_T(x)·Π_T(y)`, and each `Π_T` is expanded in the basis, which gives `G_κ = ι_κᵀι_κ`. The tensor embedding has an
integral left inverse because `∇_ℤ(κ)` is free and spanned by the `Π_T`; so `G_κ` is positive definite. Adjointness
of `g` and `gᵀ` is inherited from the tensors, where it is the transpose of a matrix of minors. The other clauses are
read off the kernel, after reduction to evaluation vectors, which span over an infinite domain.

Let `κ` be a weight for `n`.

(a) `ι_κ·S_κ(g) = Λ_κ(g)·ι_κ` for every family of square matrices `g_τ` over `R`, and the `Π_T`, `T ∈ CF(κ)`, span
`∇_R(κ)`.

(b) `G_κ` exists, is unique, and `G_κ = ι_κᵀι_κ`; it is symmetric and positive definite.

(c) `G_κ·S_κ(g) = S_κ(gᵀ)ᵀ·G_κ` for every family of square matrices `g_τ` over `R`.

(d) `P_κ(ev_y) = K_κ(·, y)` for every array `y` over `R`.

(e) Let `R` be an integral domain of characteristic `0`. Then `P_κ` is injective, and for `n ⊂ n′`, `κ` fitting `n`,
`z_τ ∈ M_{n′_τ×n_τ}(R)` and `ξ ∈ W_R(κ)`: `P_κ(S_κ(z)ξ)(y′) = (P_κ(ξ)·∏_τ det(y_τ)^{d_τ})(zᵀy′)` (the left side for
`n′`, the right side substituted by `zᵀ`). Over `ℂ`, `P_κ` is onto `∇_ℂ(κ)`.

**In standard terms.** For one place, through 7.1 (c), `G_κ` is the Gram matrix of the normalised Fischer form
`⟨·,·⟩_{λ_κ}` of IntegralWeylModulesOfGeneralLinearGroups (Conventions), the contravariant form of value `1` at the
highest weight vector, on the Weyl lattice `Δ_ℤ(λ_κ)`, in the basis that `P_κ` gives it. (b) says that this form is
integral, symmetric and positive definite, (c) that it is contravariant (`g` and `gᵀ` adjoint), and (d), (e) that
`P_κ`, the map from `W_ℤ(κ)` to its dual `∇_ℤ(κ)` given by the form, is the inclusion of the Weyl lattice in the dual
Weyl lattice, injective in characteristic `0` and bijective over `ℂ`; (a) realises the representation inside the
tensor product, over the columns, of the exterior powers of the standard representation.

*Needs:* 1.1, 1.2, 1.3; Mathlib `Matrix.PosDef`.

[ShortProof], `Lib/GLn/SchurModule/TensorModel` (`New.fillingMatrixOver_mul_schur`, `New.span_fillingPoly`,
`New.exists_fillingMatrix_leftInverse`); `Lib/GLn/SchurModule/Basic` (`New.sum_weylGram_smul_eq_weylKernel_of_exists`);
`Lib/GLn/SchurModule/WeylKernel` (`New.toPoly_weylEval`, `New.fillingMatrix_transpose_mul_self`,
`New.weylGram_isSymm`, `New.weylGramOver_posDef`, `New.weylGramOver_mul_schur`, `New.toPoly_schur`,
`New.toPoly_injective`, `New.range_toPoly`)

### 2.2 The Fock pairing and the hook number as a denominator

*Origin:* adapted from Jantzen, Representations of Algebraic Groups (2003), the duality of the Weyl and dual Weyl
lattices for the contravariant form, as read on Gram determinants in IntegralWeylModulesOfGeneralLinearGroups §3.2 (b):
here the Gram matrix of `W_ℤ(κ)` times the matrix of Fock pairings of the basis of `∇_ℤ(κ)` is the hook number, with
an explicit bound for the hook number in place of its value.

*Method of the formal proof:* the two pairings of a vector `ξ` with a polynomial, `ξ(Σ c_k b_k) = Σ ξ_k c_k` and the
Fock pairing with `P_κ(ξ)`, are both invariant in the appropriate sense, so by Schur's lemma (2.4 (a)) they are
proportional; the factor is computed at the highest vector, where it is `⟨v_κ, v_κ⟩_F`. Positivity holds because
`v_κ` is a nonzero integral polynomial; the bound comes from expanding each minor into at most `h!` monomials and
bounding the Fock pairing of monomials by factorials. For (d), `η_T` is the vector that (c) attaches to the basis tensor
at `T`; through `ι_κ` it becomes `H` times the projection of that tensor onto the image of `ι_κ`, which gives both the
frame identity and the bound.

Let `κ` be a weight for `n` and `H := H(κ)`.

(a) `G_κ·(⟨b_i, b_j⟩_F)_{i,j} = H·1`. Equivalently, over every `R`, `⟨P_κ(ξ), b_k⟩_F = H·ξ_k` for all `k`, and
`⟨P_κ(ξ), P_κ(η)⟩_F = H·ξᵀG_κη`.

(b) `0 < H`, and `H ≤ (L^L)^3` whenever `‖κ‖ ≤ L`.

(c) *Denominators.* For every `R` and every `f ∈ ∇_R(κ)` there is `ζ ∈ W_R(κ)` with `P_κ(ζ) = H·f`. For every integral
tensor `v ∈ ℤ^{CF(κ)}` there is `η ∈ W_ℤ(κ)` with `G_κη = H·ι_κᵀv`.

(d) *A tight frame.* There are integral vectors `η_T ∈ W_ℤ(κ)`, `T ∈ CF(κ)`, with `Σ_T ⟨η_T, ξ⟩_G·η_T = H²·ξ` for every
`ξ ∈ ℂ^{B(κ)}` and `‖η_T‖²_G ≤ H²` for every `T`.

(e) *One row.* If `N_τ > 1` and `κ_τ(h) = 0` for `1 < h < N_τ` at every `τ`, then `H = ∏_τ κ_τ(1)!`; and over a field
`R` of characteristic `0`, for every subring `A ⊂ R`, a vector `ξ` has all coordinates in `A` if and only if `P_κ(ξ)`
lies in the `A`-span of the polynomials `∏_τ (|α_τ|!/α_τ!)·u_τ^{α_τ}`, `|α_τ| = κ_τ(1)`, where `u_τ` is the first
column of the variables of colour `τ`.

By IntegralWeylModulesOfGeneralLinearGroups §3.1 (for one colour, §3.2 (a)), `H` is the product of the hook lengths of
the diagrams; the formal proof uses only the bound (b).

*Relation to IntegralWeylModulesOfGeneralLinearGroups.* Let there be one colour and `λ` the row lengths of `κ`, a
dominant weight of `GL_N` with last entry `0`. By (a), `P_κ` carries the Gram form `⟨·,·⟩_G` on `W_ℂ(κ)` to the
normalised form `⟨·,·⟩_λ = ⟨·,·⟩_F/⟨v_λ, v_λ⟩_F` of that roadmap on `∇_ℂ(λ)`, and `⟨P_κ(ξ), f⟩_λ = ξ(f)` for
`ξ ∈ W_ℚ(κ)` and `f ∈ ∇_ℚ(λ)`; so `P_κ(W_ℤ(κ))` is the dual of `∇_ℤ(λ)` for `⟨·,·⟩_λ`, which is the Weyl lattice
`Δ_ℤ(λ)` by the duality recorded in its Conventions. By 2.1 (e), `P_κ` carries `S_κ(g)` to the action `f ↦ f(gᵀ·)` of
that roadmap, and `ρ_{κ,e}(g)` to its action for the weight `λ + e·(1, …, 1)`. In these terms (a) is the duality of
`Δ_ℤ(λ)` and `∇_ℤ(λ)` in coordinates, and (c) says `H·∇_R(λ) ⊂ Δ_R(λ)`, a bound for the same inclusion that
IntegralWeylModulesOfGeneralLinearGroups §0.3 bounds prime by prime. The sections of Layers 1–6 use the coordinates of
1.1 and do not use this identification; 7.1 states it, with the comparison over `ℂ`.

*Needs:* 1.1, 1.2, 2.1, 2.4 (a).

[ShortProof], `Lib/GLn/SchurModule/GramMatrix` (`New.weylGram_mul_fockPairing`, `New.fockPairing_toPoly_nablaBasis`,
`New.fockPairing_toPoly_toPoly`, `New.GL.exists_toPoly_eq_hookNumber_smul`,
`New.exists_weylGram_mulVec_eq_hookNumber_smul`, `New.GL.exists_tightFrame`, `New.hookNumber_one_row`,
`New.toPoly_mem_span_multinomialMonomial_iff`); `Lib/GLn/SchurModule/WeylKernel` (`New.hookNumber_pos`,
`New.hookNumber_le`)

### 2.3 The adjoint formula, the norm bound by singular values, and invariance

*Origin:* adapted from the published theory of the contravariant form on Weyl modules (unitary invariance; Jantzen,
Representations of Algebraic Groups (2003), II.8.17; Goodman and Wallach, Symmetry, Representations, and Invariants
(2009), ch. 5; Howe, Perspectives on invariant theory (1995)): here the adjoint of a Schur matrix of rectangular
matrices for the integral Gram forms, a bound of its operator norm by the singular values, and invariance of the Gram
form under rational points of a definite unitary group after any embedding of the CM field.

*Method of the formal proof:* (a) is computed on tensors through 2.1 (a), (b), where the Schur matrices become the
matrices `Λ_κ` of minors and the Cauchy–Binet formula applies to `w*z`; the full columns give the determinant factor.
For (b), (a) with `w = z` leaves `∏_τ det(z_τ*z_τ)^{d_τ}` times the form of `S_κ(z*z)`. By the spectral theorem
`z_τ*z_τ = u_τδ_τu_τ*` with `u_τ` unitary and `δ_τ` diagonal with entries `≥ 0`; by (a) for `n′ = n` the factors `u_τ`
pass onto the vector, whose norm they preserve, and by 2.1 (a), (b) the form of `S_κ(δ)` is diagonal on tensors, a
column with rows `a_1, …, a_h` contributing `δ_{τ,a_1}⋯δ_{τ,a_h}`. With the `ρ_{τ,i}` the entries of `δ_τ` taken from
the largest down, `Σ_i ρ_{τ,i}` is the trace of `z_τ*z_τ`, each such contribution is at most `ρ_{τ,0}⋯ρ_{τ,h−1}`, and
the determinant factor is `∏_τ (ρ_{τ,0}⋯ρ_{τ,N_τ−1})^{d_τ}`. (c) is (a) with `w = z` unitary; for (d), every embedding
of a CM field commutes with complex conjugation, so the images of a rational unitary matrix are unitary.

Let `n ⊂ n′` and `κ` fit as in 1.1 (f); `G` and `G′` are the Gram matrices for `n` and for `n′`.

(a) For `w_τ, z_τ ∈ M_{n′_τ×n_τ}(ℂ)`: `S_κ(w)*·G′·S_κ(z) = ∏_τ det(w_τ*z_τ)^{d_τ}·G·S_κ(w*z)`, where
`(w*z)_τ = w_τ*z_τ`.

(b) For every `z` there are numbers `ρ_{τ,i} ≥ 0`, `0 ≤ i < N_τ`, with `Σ_i ρ_{τ,i} ≤ Σ_{a,b} |z_τ(a, b)|²` at every `τ`,
such that `‖S_κ(z)ξ‖²_{G′} ≤ ∏_τ ∏_{i<N_τ} ρ_{τ,i}^{λ′(τ,i)}·‖ξ‖²_G` for every `ξ ∈ ℂ^{B(κ)}`, where
`λ′(τ, i) = Σ_{i<h<N′_τ} κ_τ(h)` are the row lengths of `κ` as a weight for `n′`.

(c) For `n′ = n`, every `e ∈ ℤ^Φ` and every `u ∈ ∏_τ U(n_τ)`, `S_κ(u)` and `ρ_{κ,e}(ū)` preserve `⟨·,·⟩_G`.

(d) Let `E` be a CM field with complex conjugation `c`, `n_τ = n` for all `τ`, and `γ ∈ GL_n(E)` with `c(γ)ᵀγ = 1`.
For every family `(σ_τ)_{τ∈Φ}` of ring homomorphisms `E → ℂ`, the matrices `σ_τ(γ)` are unitary, so `ρ_{κ,e}((σ_τ(γ))_τ)`
preserves `⟨·,·⟩_G`. In particular, if `Φ` is a set of embeddings `E → ℂ` and `γ` acts on `ℂ^{B(κ)}` by
`ρ_{κ,e}((τ(c(γ)))_τ)`, as in AdelicUnitaryGroupsAndAlgebraicModularForms §6.1 for the standard space, then for every
ring endomorphism `σ` of `ℂ`, applied to the coordinates, `⟨σ(γ·u), σ(γ·v)⟩_G = ⟨σ(u), σ(v)⟩_G`.

The formal proof proves the last sentence of (d), for `Φ` the set of infinite places of `E` with the embeddings of a
CM type, that is, the second sentence for the families `σ_τ = σ∘τ∘c` with `σ` a ring endomorphism of `ℂ`. The second
sentence in general follows from (c), because every ring homomorphism `E → ℂ` commutes with complex conjugation.

The integral Gram matrix, the formula (a) for rectangular matrices and the bound (b) are not in the library.
On Tau Ceti's main branch, later than the revision pinned here: a positive definite contravariant hermitian form on
the library's own model of the Weyl modules of one `GL_n` over `ℝ` or `ℂ` (`TauCeti.weylForm`,
`TauCeti.weylForm_apply_self_pos`, `TauCeti.weylForm_rationalWeylRep_apply`).

**In standard terms.** Through 7.1 (b), `‖·‖_G` is the norm of the invariant inner product of the representation of
7.1 (a), of value `1` at its highest weight vector: (c) and (d) are its invariance under the unitary groups, for
`n′ = n` (a) is the contravariance of 7.1 (b), and (b) bounds the operator norm of the action of `z` for these norms.

*Needs:* 1.3, 2.1; AdelicUnitaryGroupsAndAlgebraicModularForms §6.1 (action of rational unitary matrices); Mathlib
`Matrix.IsHermitian` (spectral theorem, for the singular values).

[ShortProof], `Lib/GLn/SchurModule/SchurNorm` (`New.GL.schur_conjTranspose_weylGram_schur`, `New.weylNormSq_schur_le`,
`New.gramForm_conjWeylRep`, `New.map_weightRep`, `New.gramForm_map_weightRep`)

### 2.4 Schur's lemma, irreducibility, Schur orthogonality and the highest coefficient

*Origin:* adapted from the published theory of the irreducibility of the Weyl modules of `GL_n(ℂ)` under the unitary
group (the unitarian trick; Goodman and Wallach, Symmetry, Representations, and Invariants (2009), ch. 5; Howe,
Perspectives on invariant theory (1995)) and of the orthogonality relations of Schur on compact groups: here for the
Schur matrices
of 1.1 on products of unitary groups, with the highest coefficient as a product of principal minors, and the
polarisation of products of determinants that irreducibility gives.

*Method of the formal proof:* the evaluation vector at the identity frame spans the highest weight space; a matrix that
commutes with the action preserves that space, so it multiplies the vector by a scalar, hence also its translates,
which span; commuting with `S_κ(u)` for unitary `u` is a polynomial condition, and the unitary groups are Zariski dense
in the general linear groups. Schur orthogonality follows by averaging a matrix over the compact group and applying
Schur's lemma, and irreducibility from Schur orthogonality. The highest coefficient is the kernel evaluated at a
permutation array. Polarisation applies irreducibility to the semi-invariant `∏ det(η_{τ,k}Y_τ)`.

(a) *Schur's lemma.* A complex matrix that commutes with `S_κ(u)` for every `u ∈ ∏_τ U(n_τ)` is a scalar.

From here on `n_τ = n` for all `τ`, and `ρ(u) := ρ_{κ,e}(ū)` for `u ∈ U(n)^Φ` (`ū` the complex conjugate).

(b) *Irreducibility.* For every `e ∈ ℤ^Φ` the translates `ρ(u)v`, `u ∈ U(n)^Φ`, of any nonzero `v ∈ ℂ^{B(κ)}` span
`ℂ^{B(κ)}`. Equivalently, for every nonzero `f ∈ ∇_ℂ(κ)` the polynomials `y ↦ f(uᵀy)`, `u ∈ U(n)^Φ`, span `∇_ℂ(κ)`.

(c) *Schur orthogonality.* For every linear form `ℓ` on `ℂ^{B(κ)}` and all `a, b, c ∈ ℂ^{B(κ)}`:
`∫_{U(n)^Φ} ℓ(ρ(u)c)·⟨a, ρ(u^{−1})b⟩_G du = |B(κ)|^{−1}·⟨a, c⟩_G·ℓ(b)`, `du` the Haar probability measure.

(d) *The highest coefficient.* Let `p_τ : n_τ → {0, …, N_τ − 1}` be bijections, `y_p` the array with `(y_p)_{(τ,a),i} = 1`
if `i = p_τ(a)` and `0` otherwise, and `v := ev_{y_p}`. Then `⟨v, v⟩_G = 1`, and for `g ∈ ∏_τ GL(n_τ, ℂ)`,
`vᵀ·G_κ·ρ_{κ,e}(g)·v = ∏_τ m_{w_τ}(g_τ)` with `w_τ(a) := e_τ + λ_κ(τ, p_τ(a))`, where `m_w(g)` is the product over
`t ∈ ℤ` of the principal minors of `g` on `{a : w_a ≥ t}`, each factor with `t ≤ 0` divided by `det g`, as in
HolomorphicDiscreteSeriesOfUnitaryGroups §4.1 (a). Here (d) holds for arbitrary families `n_τ`.

(e) *Polarisation.* Let `p` be a finite set with `|p| < |n|`, `r : p → n` injective, `E_r ∈ M_{p×n}(ℂ)` the matrix with
rows the standard basis vectors at `r(k)`, and `η_{τ,k} ∈ M_{p×n}(ℂ)` for `k` in finite sets `Ω_τ`. There is a finitely
supported function `c` on `U(n)^Φ` such that for every commutative `ℂ`-algebra `S` and all `Y_τ ∈ M_{n×p}(S)`:
`∏_τ ∏_{k∈Ω_τ} det(η_{τ,k}Y_τ) = Σ_u c(u)·∏_τ det(E_r u_τᵀ Y_τ)^{|Ω_τ|}`.

The library has Schur orthogonality for continuous representations of compact groups
(`ContRepresentation.schur_orthogonality_self`) and irreducibility of its own Weyl modules under `U(n)`
(`TauCeti.IsRationalRep.isIrreducible_comp_toUnits_iff` with `TauCeti.isIrreducible_rationalWeylRep`), to build on;
(c) follows from the first once the Schur matrices are seen as a continuous representation for the Haar probability
measure. The corresponding roadmap sections are RepresentationTheory/CompactGroups §4.1 (Schur orthogonality for one
irreducible unitary representation) and RepresentationTheory/ClassicalGroups §3.3 (the rational irreducible
representations of `GL_n` by highest weight); (a)–(c) also follow from them, for a family by the external tensor
product over `τ`, through the identification 7.1 (a) of the model of 1.1 with these representations, whose route does
not use (a)–(c).

**In standard terms.** Through 7.1 (a), (b), (a) is Schur's lemma and (b) the irreducibility of the restriction to
`U(n)^Φ` of `u ↦ ρ_{κ,e}(ū)`, the complex conjugate of the external tensor product of the representations of highest
weights `λ_κ(τ, ·) + e_τ·(1, …, 1)`; (c) is Schur orthogonality for it and its invariant inner product
(RepresentationTheory/CompactGroups §4.1 (One irreducible)), `|B(κ)|` being its dimension; and (d) computes the
diagonal matrix coefficient of `ρ_{κ,e}` at the weight vector `ev_{y_p}`, of norm `1`, as a product of principal
minors.

*Needs:* 1.3, 2.1, 2.3 (c); HolomorphicDiscreteSeriesOfUnitaryGroups §4.1 (a) (products of principal minors); Mathlib
`MeasureTheory.Measure.haar`.

[ShortProof], `Lib/GLn/SchurModule/WeylKernel` (`New.GL.zariski_dense_unitary`, `New.mem_range_scalar_of_commute_schur`);
`Lib/GLn/SchurModule/SchurOrthogonality` (`New.conjWeylRep`, `New.gramForm`, `New.schur_orthogonality`,
`New.weylRep_coeff_eq_prod_weightMinors`, `New.gramForm_highestVector_self`); `Lib/GLn/SchurModule/GramMatrix`
(`New.GL.weylNormSq_weylEval_permArray`); `Lib/GLn/SchurModule/Polarisation` (`New.span_conjWeylRep_eq_top`,
`New.mem_span_rowSubst_unitary`, `New.exists_pairedDetProd_eq_sum_unitary`)

### 2.5 Multiplication of semi-invariants

*Origin:* adapted from the published theory of the Cartan component `V(λ + μ) ⊂ V(λ) ⊗ V(μ)` (Fulton and Harris,
Representation Theory (1991), §15.5): here as an integral isometric embedding of Weyl lattices, dual to the
multiplication of semi-invariants, with an integral left inverse.

*Method of the formal proof:* the identity of 1.1 (c) is multiplicative in the weight, so `b_p·b_{p′}` lies in
`∇_ℤ(κ + κ′)`, and 1.2 (d) gives its coordinates, which are integers; evaluating this expansion at `y` is (a). The two
identities of (b) are tested on evaluation vectors, which span over an infinite domain: (a) and 1.3 (c) turn both
sides into tensor products, and the kernels of 1.1 (g) factor as `K_{κ+κ′} = K_κ·K_{κ′}`. For (c), each standard
filling of `κ + κ′` is cut into the columns that come from `κ` and those that come from `κ′`; the coordinates of the
two partial products of minors give an integral left inverse. (d) is the Cauchy–Schwarz inequality for the positive
definite form `G_κ ⊗ G_{κ′}` (2.1 (b)), together with the isometry of (b).

Let `κ`, `κ′` be weights for `n`, and `C ∈ M_{(B(κ)×B(κ′))×B(κ+κ′)}(ℤ)` the matrix whose row `(p, p′)` holds the
coordinates of `b_p·b_{p′}` in the basis for `κ + κ′`.

(a) `C·ev_y = ev_y ⊗ ev_y` (for `κ + κ′` on the left, `κ` and `κ′` on the right), for every array `y`.

(b) Over every infinite integral domain: `Cᵀ(G_κ ⊗ G_{κ′})C = G_{κ+κ′}`, and `(S_κ(g) ⊗ S_{κ′}(g))·C = C·S_{κ+κ′}(g)` for
square `g`.

(c) `C` has a left inverse with integer entries.

(d) If `ξ`, `η`, `ζ` are complex vectors with `P_{κ+κ′}(ζ) = P_κ(ξ)·P_{κ′}(η)`, then `‖ζ‖²_G ≤ ‖ξ‖²_G·‖η‖²_G`.

*Needs:* 1.2, 1.3, 2.1.

[ShortProof], `Lib/GLn/SchurModule/GramMatrix` (`New.GL.comulMatrix`, `New.GL.comulMatrix_mulVec_weylEval`,
`New.GL.comulMatrix_isometry`, `New.GL.comulMatrix_equivariant`, `New.GL.hasLeftInv_comulMatrix`,
`New.weylNormSq_le_mul_of_toPoly_eq`)

## Layer 3: Duals, mixed weights and branching

This layer identifies the dual of a Weyl lattice by complementary minors and builds the invariant pairing of dual
weights (3.1), embeds the representation of a mixed weight into a tensor product with a multiplicative Cartan product
(3.2), and constructs integral branching maps (3.3, 3.4).

### 3.1 Duality by complementary minors, and the pairing of dual weights

*Origin:* adapted from the published theory of duals of irreducible representations (the dual of the representation
of highest weight `λ` has highest weight `−w₀λ`; Fulton and Harris, Representation Theory (1991), §15.5; Jantzen,
Representations of Algebraic Groups (2003)), realised on complementary minors by Jacobi's identity (Grinberg, An
Introduction to Algebraic Combinatorics, Theorem 6.4.48): here as a unimodular, isometric, equivariant integer matrix
between the Weyl lattices of complementary diagrams, with the hook number of the dual weight as a denominator and an
integral invariant pairing of dual weights.

*Method of the formal proof:* on the integral tensors of 1.1 (h), taking in every column the complementary set of rows,
with the appropriate sign, carries the basis tensors of `κ` to those of `κ′` up to sign. By Jacobi's identity this
operation turns the action of `g` into that of `g^{−ᵀ}`, up to a power of `det g`, and restricted to the Weyl lattices
inside the tensors (2.1) it gives `J`, unimodular and isometric. The pairing is `A := G_{κ′}J`; its invariance follows
from 2.1 (c) and the equivariance of `J`, and its left inverse up to `H(κ′)` from 2.2 (a).

Let `κ`, `κ′` be weights for `n` with `κ′_τ(h) = κ_τ(N_τ − h)` for `1 ≤ h < N_τ`, and `D_τ := Σ_{1≤h<N_τ} κ_τ(h)`. Let
`p_τ : n_τ → {0, …, N_τ − 1}` be bijections, `p′_τ := N_τ − 1 − p_τ`, and `y_p`, `y_{p′}` the arrays of 2.4 (d).

(a) There is `J ∈ M_{B(κ)×B(κ′)}(ℤ)` with an inverse with integer entries such that `JᵀG_κJ = G_{κ′}` and, over every
field `R` of characteristic `0`, `J·ev_{y_p} = ev_{y_{p′}}` (for `κ′` on the left, `κ` on the right) and
`S_κ(g^{−ᵀ})·J = J·ρ_{κ′,−D}(g)` for every `g ∈ ∏_τ GL(n_τ, R)`.

(b) There is `C ∈ M_{B(κ)}(ℤ)` with `G_κC = H(κ′)·1`; for every `R` and `f ∈ ∇_R(κ)` there is `ζ ∈ W_R(κ)` with
`P_κ(ζ) = H(κ′)·f`.

(c) Let `n_τ = n` for all `τ`, `e, e′ ∈ ℤ^Φ` with `e_τ + e′_τ = −D_τ` (so that `(κ′, e′)` is the dual of `(κ, e)`). There
is `A ∈ M_{B(κ′)×B(κ)}(ℤ)` such that: (i) `(ρ_{κ′,e′}(g)v′)ᵀ·A·ρ_{κ,e}(g)v = v′ᵀAv` for all vectors and all
`g ∈ GL_n(R)^Φ`, over every field `R` of characteristic `0`; (ii) `C′A = H(κ′)·1` for some `C′` with integer entries;
(iii) for every `v ∈ ℂ^{B(κ)}` there is `v′ ∈ ℂ^{B(κ′)}` with `‖v′‖_G = ‖v‖_G` and `uᵀAv = ⟨v′, u⟩_G` for every `u`.

The formal proof states (c) for `Φ` the set of infinite places of a CM field (which enters only as an index set) and
`N ≥ 1`, with the duality of `(κ, e)` and `(κ′, e′)` expressed through their Harish-Chandra parameters (twice the
parameter of one is minus that of the other), together with a clause that evaluates algebraic modular forms of weight
`(κ′, e′)` through this pairing, which is the subject of AdelicUnitaryGroupsAndAlgebraicModularForms §6.1
(forms through a highest vector).

**In standard terms.** The row lengths of `κ′` at `τ` are `D_τ − λ_κ(τ, N_τ − 1 − i)`, so through 7.1 (a) `ρ_{κ′,−D}`
has highest weight `−w₀λ_κ(τ, ·)` at `τ` and is the dual of the representation `S_κ`, which `g ↦ S_κ(g^{−ᵀ})` also
realises: (a) is an isomorphism between these two realisations of the dual, with integer entries, unimodular and
isometric for the forms of 7.1 (b), and (c) is the invariant pairing between the representation of weight `(κ, e)` and
its dual, of weight `(κ′, e′)`, with the denominator `H(κ′)`.

*Needs:* 1.3, 2.1, 2.2; Tau Ceti `Matrix.det_submatrix_comp_inr_eq_sign_mul_det_mul_det_submatrix_comp_inl_nonsing_inv`
(Jacobi's identity for complementary minors).

[ShortProof], `Lib/GLn/Dual` (`New.GL.exists_star_matrix`, `New.GL.exists_int_duality_matrix`, `New.GL.IsDualIsometry`,
`New.exists_isDualIsometry`, `New.exists_dual_isometry`, `New.GL.exists_weylGram_mul_eq_hookNumber_dual_smul`,
`New.GL.exists_toPoly_eq_hookNumber_dual_smul`, `New.IsHCParam.columns_eq_of_neg`,
`New.IsHCParam.add_eq_neg_sum_of_neg`, `New.IsDualPairing`, `New.exists_isDualPairing_of_isHCParam`)

### 3.2 Mixed weights and the Cartan product

*Origin:* adapted from the published theory of the Cartan component of a tensor product (Fulton and Harris,
Representation Theory (1991), §15.5): here for a mixed weight, the sum of a polynomial weight and of the dual of
another, integrally, as an isometric embedding with an integral left inverse, and with a Cartan product of vectors of
two smaller groups whose norm is multiplicative.

*Method of the formal proof:* the mixed weight is `κ⁺ + κ^c` with `κ^c` the complementary diagram of `κ⁻`; the matrix
`M` is the multiplication matrix of 2.5 for `κ⁺` and `κ^c`, followed by the duality matrix of 3.1 on the second factor.
For the Cartan product, the images of the two vectors under the Schur matrices of the inclusions lie in the image of
`M` by a computation on evaluation vectors, and the norm identity follows from the isometry of `M`.

Let `n_τ = n` for all `τ`, `|n| = N`, and `κ⁺`, `κ⁻` weights for `n`. The *mixed weight* is
`κ^±_τ(i) := κ⁺_τ(i) + κ⁻_τ(N − i)`, `1 ≤ i < N`; put `D⁻_τ := Σ_{1≤i<N} κ⁻_τ(i)`, and let `y_id`, `y_rev` be the arrays of
2.4 (d) for the identity numbering and for the reversed one.

(a) There is `M ∈ M_{(B(κ⁺)×B(κ⁻))×B(κ^±)}(ℤ)` with a left inverse `M♭` with integer entries, with
`Mᵀ(G_{κ⁺} ⊗ G_{κ⁻})M = G_{κ^±}`, and such that over every field `R` of characteristic `0`:
`M·ev_{y_id} = ev_{y_id} ⊗ ev_{y_rev}` (for `κ^±` on the left, `κ⁺` and `κ⁻` on the right) and
`M·ρ_{κ^±,−D⁻}(g) = (S_{κ⁺}(g) ⊗ S_{κ⁻}(g^{−ᵀ}))·M` for `g ∈ GL_n(R)^Φ`.

(b) *Cartan product.* Let `ε : a ⊔ a′ → n` be a bijection from the disjoint union of two finite sets, `ε_a ∈ M_{n×a}`
and `ε_{a′} ∈ M_{n×a′}` the matrices of the restrictions of `ε` to `a` and to `a′`, and suppose that `κ⁺` has no
column of height `h` with `|a| ≤ h < N` and `κ⁻` none with `|a′| ≤ h < N`. For a field `R` of characteristic `0`, `y ∈ R^{B_a(κ⁺)}` (the Weyl module of
`κ⁺` for the rows `a`), `η ∈ R^{B_{a′}(κ⁻)}` and `g ∈ GL_n(R)^Φ`, put
`y ⋆_g η := M♭·(S_{κ⁺}(gε_a)y ⊗ S_{κ⁻}(g^{−ᵀ}ε_{a′})η)`. Then `M·(y ⋆_1 η) = S_{κ⁺}(ε_a)y ⊗ S_{κ⁻}(ε_{a′})η`,
`ρ_{κ^±,−D⁻}(g)·(y ⋆_1 η) = y ⋆_g η`, and over `ℂ`, `‖y ⋆_1 η‖²_G = ‖y‖²_G·‖η‖²_G`.

**In standard terms.** The row lengths of `κ^±` at `τ` are `λ_{κ⁺}(τ, i) + D⁻_τ − λ_{κ⁻}(τ, N − 1 − i)`, so through
7.1 (a) and 3.1, `ρ_{κ^±,−D⁻}` is the representation of highest weight `λ_{κ⁺}(τ, ·) − w₀λ_{κ⁻}(τ, ·)` at each `τ`,
and `g ↦ S_{κ⁺}(g) ⊗ S_{κ⁻}(g^{−ᵀ})` is the tensor product of the representation of highest weight `λ_{κ⁺}` with the
dual of that of highest weight `λ_{κ⁻}`. (a) embeds the first as the Cartan component of the second (Fulton and Harris
(1991), §15.5), integrally, isometrically for the forms of 7.1 (b) and with an integral left inverse, and (b) is a
Cartan product of vectors of two smaller groups.

*Needs:* 1.3, 2.1, 2.5, 3.1.

[ShortProof], `Lib/GLn/Dual` (`New.mixedWeight`, `New.GL.MixedCartanEmbedding`, `New.nonempty_mixedCartanEmbedding`,
`New.mixedCartan`, `New.Rows.mixedCartanLeftInv`, `New.Rows.cartanProduct`, `New.Rows.mixedCartan_mulVec_cartanProduct`,
`New.Rows.weylRep_mulVec_cartanProduct`, `New.Rows.weylNormSq_cartanProduct`)

### 3.3 Leading-row fillings

*Origin:* particular to this proof: the Levi-summand case of integral branching, from `GL(n_τ)` to the group of its
last rows, for any number of removed leading rows, with the hook number of the smaller diagram as a denominator.

*Method of the formal proof:* (a) is checked filling by filling. At `diag(1, y)` a product of minors vanishes unless
each column of height `h` contains the first `min(h, q_τ)` rows, that is, unless the filling is some `T₀⁺`; for `T₀⁺`
the block determinant formula (Mathlib `Matrix.det_fromBlocks₁₁`), with the identity as leading block and `y` as Schur
complement, gives `Π_{T₀}(y)`. For (b), let `L` be the integral left inverse of `ι_κ` (2.1): by (a) and `Lι_κ = 1`,
the integer matrices `ι_κLΛ♭ι_{κ♭}` and `Λ♭ι_{κ♭}` agree at the evaluation vectors of all integer arrays, which
determine a linear map, so `η := LΛ♭ι_{κ♭}ζ` satisfies (b). (c) applies (b) to the vector that 2.2 (c) gives for `κ♭`
and `Π_{T₀}`. As `P_κ(η) = Σ_T (ι_κη)_T·Π_T`, two polynomials remain to be compared; at arrays with an invertible
leading block the block determinant formula gives `Π_{T₀⁺}` as `Π_{T₀}` at the Schur complement, multiplied by a product
of leading minors that is the same for all `T₀`, and the comparison becomes 2.2 (c) for `κ♭` there.

At each `τ` let the rows `n_τ`, in the fixed numbering, be `q_τ` leading rows followed by the rows `m_τ`
(`N_τ = q_τ + |m_τ|`). For a weight `κ` for `n`, the diagram without its first `q_τ` rows is the weight `κ♭` for `m` with
`κ♭_τ(h) := κ_τ(q_τ + h)`, `1 ≤ h < |m_τ|`. For `T₀ ∈ CF(κ♭)` let `T₀⁺ ∈ CF(κ)` be the filling whose columns of height
`h ≥ q_τ` are the `q_τ` leading rows followed by the corresponding column of `T₀`, and whose columns of height `h < q_τ`
are the first `h` rows; let `Λ♭` be the integer matrix that sends the basis tensor `T₀` to the basis tensor `T₀⁺`. For an
array `y` with rows `m`, `diag(1, y)` is the array with rows `n` whose leading row number `s` is the unit vector at
column `s` and whose rows `m_τ` are those of `y` moved to the columns `q_τ, q_τ + 1, …`.

(a) For every integer array `y`: `Λ♭·ι_{κ♭}·ev_y = ι_κ·ev_{diag(1,y)}`.

(b) `Λ♭` maps the image of `W_ℤ(κ♭)` into that of `W_ℤ(κ)`: for every `ζ ∈ W_ℤ(κ♭)` there is `η ∈ W_ℤ(κ)` with
`ι_κη = Λ♭ι_{κ♭}ζ`.

(c) For every `T₀ ∈ CF(κ♭)` there is `η ∈ W_ℤ(κ)` with `P_κ(η) = H(κ♭)·Π_{T₀⁺}`.

IntegralWeylModulesOfGeneralLinearGroups §1.1 builds the branching maps for one removed row and every interlacing
weight through Capelli determinants; it does not state (c).

*Needs:* 1.3, 2.1, 2.2 (c); Mathlib `Matrix.det_fromBlocks₁₁`.

[ShortProof], `Lib/GLn/SchurModule/LeadingRows` (`New.flatColumns`, `New.leadingWedge`, `New.blockArray`,
`New.leadingWedgeMatrix`, `New.aeval_fillingPoly_leadingWedge`, `New.leadingWedgeMatrix_mulVec_weylEval`,
`New.exists_fillingMatrix_mulVec_eq_leadingWedgeMatrix_mulVec`, `New.exists_toPoly_eq_hookNumber_smul_leadingWedge`)

### 3.4 Integral branching from `GL(n + 1)` to `GL(n) × GL(1)`

*Origin:* particular to this proof: for one interlacing pair, an integer matrix from the representation of
`∏_τ GL(n_τ + 1)` to that of `∏_τ GL(n_τ)`, equivariant over every field of characteristic `0`, with an operator-norm
bound in which the columns of height below a given `q` do not count, and whose multiples are all the complex matrices
that intertwine the two representations on the unitary block matrices. The published theory gives the branching from
`GL_N` to `GL_{N−1}` with multiplicity one (Goodman and Wallach, Symmetry, Representations, and Invariants (2009),
Theorem 8.1.1; Zhelobenko, Compact Lie Groups and their Representations (1973), ch. X; Molev, Gelfand–Tsetlin bases
for classical Lie algebras, arXiv math/0211289); an integral form of it with another constant is
IntegralWeylModulesOfGeneralLinearGroups §1.1.

*Method of the formal proof:* everything is read off one polynomial in the larger rows, the *branching vector*: a
product of leading minors, taken for the columns that lose a box (exponents `γ`) in a numbering of the rows that starts
with the new row, and for the columns that keep it (exponents `κ′`) in a numbering that ends with it. Section 3.3,
applied to fillings that start with the new row, shows that a hook number `0 < c ≤ (L^L)^3` times this polynomial is
the polynomial of an integral vector; `br` is the integer matrix that equivariance generates from this one value. For
(b), an explicit contraction with tensors of the larger group compares the Gram form of the smaller module with the
form on tensors, and a Cauchy–Schwarz estimate gives the factor `c²`. For (c), the lower triangular block matrices
have a cyclic vector, which with the Zariski density of the unitary group (as in the proof of 2.4 (a)) leaves at most
one equivariant map up to a scalar.

For each `τ` let `n⁺_τ := n_τ ⊔ {∗}` (one new row), and embed `GL(n_τ) × GL(1)` into `GL(n⁺_τ)` by `(g, s) ↦ diag(g, s)`. Let
`κ` be a weight for `n⁺` and `e ∈ ℤ^Φ`. Write `κ = γ + κ′` (of the `κ_τ(h)` columns of height `h`, `γ_τ(h)` lose a box and
`κ′_τ(h)` keep it), put `κ₀_τ(h) := κ′_τ(h) + γ_τ(h + 1)` for `1 ≤ h < N_τ` and `e₀_τ := e_τ + κ′_τ(N_τ)`, and let `q ≥ 0`
be such that every column of height below `q` loses a box (`κ′_τ(h) = 0` for `h < q`). Put `λ_γ(τ) := Σ_{h≥1} γ_τ(h)`. There
is `br ∈ M_{B_n(κ₀)×B_{n⁺}(κ)}(ℤ)` such that:

(a) over every field `R` of characteristic `0`, `br·ρ_{κ,e}(diag(g, s)) = ∏_τ s_τ^{λ_γ(τ)+e_τ}·ρ_{κ₀,e₀}(g)·br` for all
`g ∈ ∏_τ GL(n_τ, R)` and `s ∈ (R^×)^Φ`;

(b) if `Σ_τ Σ_{q≤h<N_τ} h·κ₀_τ(h) ≤ L`, then `‖br·ξ‖²_G ≤ (L^{3L})²·‖ξ‖²_G` for every `ξ ∈ ℂ^{B_{n⁺}(κ)}`;

(c) every complex matrix `T` with `T·ρ_{κ,e}(diag(u, 1)) = ρ_{κ₀,e₀}(u)·T` for all `u ∈ ∏_τ U(n_τ)` is a complex multiple of
`br`.

The statement does not include `br ≠ 0`. IntegralWeylModulesOfGeneralLinearGroups §1.1 builds integral branching
maps with an explicit nonzero constant; its norm bound goes through `dim V_λ` and grows with the length of the first
row, so it does not give (b). The multiplicity one behind (c) is, for one `GL_n` and its own model,
RepresentationTheory/ClassicalGroups §6.1 (`rationalWeyl_branching`).

**In standard terms.** By 7.9, at every `τ` the highest weight of `ρ_{κ₀,e₀}` interlaces that of `ρ_{κ,e}`, the
matrices `T` of (c) form a line, and `br` spans it: `br ≠ 0`, and through 7.1 (a) `br` is, up to a scalar, the
`∏_τ GL(n_τ, ℂ)`-equivariant map of the multiplicity-free branching rule (RepresentationTheory/ClassicalGroups §6.1)
from the representation of `∏_τ GL(n⁺_τ, ℂ)` of highest weights `λ_κ(τ, ·) + e_τ·(1, …, 1)` to that of
`∏_τ GL(n_τ, ℂ)` of highest weights `λ_{κ₀}(τ, ·) + e₀_τ·(1, …, 1)`, here with integer entries and the norm bound (b).

*Needs:* 1.3, 2.1, 2.2, 2.3 (c), 2.4 (a), 3.3.

[ShortProof], `Lib/GLn/Branching/NormBound` (`New.GL.branchVector`, `New.GL.exists_smul_weylKernel_mul_eq_toPoly`,
`New.GL.extendedTensor`, `New.GL.weylNormSq_mulVec_le_of_equivariant`); `Lib/GLn/Branching/IntegralMap`
(`New.SpansBranchingMaps`, `New.GL.exists_cyclic_lower_triangular`, `New.GL.exists_int_branching_of_weylKernel`,
`New.GL.spansBranchingMaps_of_equivariant`, `New.exists_branching_matrix`)

## Layer 4: Class functions on `GL_n` over a finite field: the Hall algebra and Green's cuspidal functions

This layer defines the ring of class functions on all square matrices over a finite field with the parabolic-induction
product (4.1), proves its structure (4.2), studies its cuspidal elements and Green's cuspidal function `C_η` (4.3), and
defines Green's functions `τ_P` of irreducible polynomials (4.4).

### 4.1 The ring of class functions on all square matrices

*Origin:* definitions and conventions.

*Method of the formal proof:* the formal proof makes these definitions, with classes as similarity classes of
endomorphisms of the spaces `k^d`.

Let `k` be a field. A *class* is a similarity class of endomorphisms `g` of finite-dimensional `k`-vector spaces `V`,
invertible or not; it has a dimension `dim V` and a characteristic polynomial.

(a) `𝓗(k)` is the set of functions from classes to `ℂ`. For finite `k`, the *product* is
`(A ∗ A′)(g) := Σ_W A(g|_W)·A′(g|_{V/W})`, the sum over the subspaces `W ⊂ V` with `gW ⊂ W`; the unit `1` is the function
that is `1` on the class of dimension `0` and `0` elsewhere; `𝟙` is the constant function `1`. For `n ≥ 0`, `A|_n` is `A` on
the classes of dimension `n` and `0` elsewhere; for `g ∈ GL_n(k)`, `A(g)` is the value at the class of `g`.

(b) `⟨A, A′⟩_n := |GL_n(k)|^{−1} Σ_{g∈GL_n(k)} conj(A(g))·A′(g)`. The *block average* `δA(a, b)`, for classes `a` on `V_a`
and `b` on `V_b`, is the mean over `x ∈ Hom(V_b, V_a)` of `A` at the class of the endomorphism of `V_a ⊕ V_b` with
blocks `a`, `x` (upper right) and `b`. `A` is *cuspidal* if `δA(a, b) = 0` whenever `dim a ≠ 0` and `dim b ≠ 0`. For
`f ∈ 𝓗(k)` and `d ≥ 0`, `∂_{d,f}A` is the function `a ↦ ⟨f, δA(a, ·)⟩_d`.

(c) For a field `K ⊇ k` and any function `η : K → ℂ`, `β_η(g)` is the sum of `η(α)` over the roots `α ∈ K` of the
characteristic polynomial of `g`, with multiplicity. With `μ := 𝟙^{−1}` (4.2 (a)) and `·` the pointwise product,
*Green's cuspidal function* is `C_η := (β_η·μ) ∗ 𝟙`.

**In standard terms.** For finite `k`, by 7.2, restriction to the invertible classes is a ring homomorphism from
`𝓗(k)` onto the class functions of the groups `GL_n(k)` with Harish-Chandra induction as product (ReductiveGroups
Layer 7c), the block average of invertible classes is Harish-Chandra restriction, cuspidality in the sense of (b)
restricts to the usual cuspidality, and `⟨·,·⟩_n` is the usual inner product. By 7.3 (a), if `K` is algebraically
closed and `η` is a homomorphism on `K^×`, `C_η` restricts on `GL_n(k)` to minus Green's virtual character of the
Coxeter torus (FiniteReductiveGroups §5.6 (b)); by 7.4, `μ` restricts to `(−1)^n` times the Steinberg character. The
name *Hall algebra* refers to the form of the product, which is the Hall product of the category of finite-dimensional
`k[X]`-modules, a class being the module `V` on which `X` acts by `g`; in the literature the Hall algebra of such a
category is spanned by the isomorphism classes, that is, it consists of the finitely supported functions on classes,
while `𝓗(k)` consists of all functions.

*Needs:* none.

[ShortProof], `Lib/LocalGL/Green/HallAlgebra` (`New.SimClass`, `New.Hall`, `New.Hall.constOne`, `New.Hall.rankPart`,
`New.Hall.evalGL`, `New.Hall.blockAverage`, `New.Hall.IsCuspidal`, `New.Hall.rankInner`, `New.Hall.skew`,
`New.Hall.moebius`, `New.Hall.mulMoebius`, `New.Hall.brauerLift`, `New.Hall.greenCuspidal`)

### 4.2 The Hall algebra: Mackey's formula, adjunction and Frobenius reciprocity

*Origin:* adapted from the published theory of the ring of class functions of the finite general linear groups under
parabolic induction (Green, The characters of the finite general linear groups (1955); for the ring on all matrices,
Chen, arXiv 2408.06191, Proposition 3.2): here on all square matrices, invertible or not, with Mackey's formula for
block averages, the adjoint of multiplication, and the Leibniz rule for the adjoint of a cuspidal element.

*Method of the formal proof:* the ring laws are identities between sums over chains of stable subspaces.
Commutativity holds because `g` is similar to its dual map, for which the roles of `W` and `V/W` are exchanged. `𝟙` is
invertible because `(1 − 𝟙)^m` vanishes in dimensions below `m`. Mackey's formula (b) comes from a parametrisation of
the stable subspaces of a block upper triangular endomorphism by data on its two diagonal blocks, through which the
average over the upper right block can be taken term by term. The adjunction (c) is an orbit–stabiliser count: the
subspaces of one dimension form one orbit of the general linear group, the stabiliser of one of them is a group of
block upper triangular matrices, and the mean over the group that defines the left side of (c), expanded over the
stable subspaces, becomes a mean over the three blocks of that stabiliser, which is the right side. In (d), the first
identity follows from cuspidality alone, and the Leibniz rule from (b) and this count, with cuspidality; Frobenius
reciprocity (e) is proved by induction on the number of levels.

Let `k` be finite.

(a) `(𝓗(k), +, ∗)` is a commutative `ℂ`-algebra with unit `1`, and `𝟙` is invertible; `μ := 𝟙^{−1}`.

(b) *Mackey's formula.* For classes `a` on `V` and `b`:
`δ(A ∗ A′)(a, b) = Σ_W (δA(a|_W, ·) ∗ δA′(a|_{V/W}, ·))(b)`, the sum over the `a`-stable subspaces `W ⊂ V`.

(c) *Adjunction.* If `f` vanishes off the classes of dimension `d`, then `⟨f ∗ A′, A⟩_{d+n} = ⟨A′, ∂_{d,f}A⟩_n`.

(d) For `c` cuspidal and `d ≠ 0`: `∂_{d,f}c = ⟨f, c⟩_d·1` for every `f`, and `∂_{d,c}` is a derivation:
`∂_{d,c}(A ∗ A′) = ∂_{d,c}A ∗ A′ + A ∗ ∂_{d,c}A′`.

(e) *Frobenius reciprocity.* Let `b` map a finite set `r` of size `n` to a finite totally ordered set `I`, `P_b ⊂ GL_r(k)`
the block upper triangular matrices for the levels `b`, `g_a` the diagonal block of level `a`, `n_a := |b^{−1}(a)|`, and
`A_a ∈ 𝓗(k)` for `a ∈ I`. For every class function `Y` on `GL_r(k)`:
`⟨(∏_a A_a|_{n_a})|_{GL_r(k)}, Y⟩_{GL_r(k)} = ⟨(g ↦ ∏_a A_a(g_a)), Y|_{P_b}⟩_{P_b}`, the product `∏_a` on the left taken
with `∗`. So on `GL_n(k)` the product `∗` is Harish-Chandra (parabolic) induction.

**In standard terms.** By 7.2, on the invertible classes (a) is the ring of class functions of the groups `GL_n(k)`
under Harish-Chandra induction, (c) the adjunction between Harish-Chandra induction and restriction, and (e) Frobenius
reciprocity for parabolic induction, by which `∗` is Harish-Chandra induction (ReductiveGroups Layer 7c); (b) and (d)
are statements on the Harish-Chandra restriction of products.

*Needs:* 4.1; Mathlib `Module.End`, `Submodule`.

[ShortProof], `Lib/LocalGL/Green/HallAlgebra` (`New.Hall.mul_simClassOf`, `New.simClassOf_eq_dualMap`,
`New.Hall.one_sub_constOne_pow_apply_eq_zero`, `New.Hall.isUnit_constOne`, `New.Hall.blockAverage_mul`,
`New.Hall.rankInner_mul_eq_rankInner_skew`, `New.Hall.skew_of_isCuspidal`, `New.Hall.rankInner_mul_of_isCuspidal`,
`New.Hall.skew_mul`, `New.classInner_evalGL_prod`)

### 4.3 Cuspidal functions, `μ`, and the torus identity

*Origin:* adapted from Green, The characters of the finite general linear groups (1955), Theorem 1, and Springer, Sém.
Bourbaki 441 (1973/74), 1.1–1.7, the eigenvalue sums as virtual characters, expanded through Green's virtual
characters (as in FiniteReductiveGroups §5.6 (b)), and from Carter, Finite groups of Lie type (1985), the Steinberg
character times a torus character: here `C_η ∗ 𝟙 = −β_η` with `C_η` cuspidal, in the ring of 4.1, without
Deligne–Lusztig characters; the vanishing of `μ` off semisimple classes (Krasula, arXiv 2403.05656, Lemma 23; Crapo's
complementation theorem (1966)) is used where the literature uses the Steinberg character, `μ` being on `GL_n(k)` the
Steinberg character times `(−1)^n` (7.4), and the inner product of `C_η` with `B·μ` is a mean over the torus `L^×`.

*Method of the formal proof:* (a) Evaluated at `g`, the relation `μ ∗ 𝟙 = 1` makes `μ` the Möbius function of the
modular lattice of `g`-stable subspaces, and a form of Crapo's complementation theorem then shows that this lattice
is complemented, so `g` is semisimple, when `μ(g) ≠ 0`. The identity `C_η ∗ 𝟙 = −β_η` is the termwise identity
`β_η(g|_W)μ(g|_W) + μ(g|_W)β_η(g|_{V/W}) = β_η(g)μ(g|_W)` summed over `W`. Cuspidality is computed with Mackey's
formula. For (c), if the characteristic polynomial of `g` had two distinct irreducible factors, a Fitting component
would split `g` into two nonzero diagonal blocks with block average `A(g)`, which cuspidality makes `0`. The values at
multiplication by a generator are counts of subspaces; the torus identity follows by grouping the semisimple classes
of `GL_m(k)` with irreducible characteristic polynomial as conjugates of multiplication operators of `L`.

Let `k` be finite with `q` elements, `K ⊇ k` a field and `η : K → ℂ` any function.

(a) If `μ(g) ≠ 0` then `g` is semisimple.

(b) `C_η ∗ 𝟙 = −β_η`; `C_η` vanishes in dimension `0` and is cuspidal.

(c) If `A` is cuspidal and `A(g) ≠ 0`, the characteristic polynomial of `g` is `P^j` with `P` irreducible.

(d) If `g` acts on a space of dimension `d`, and `η′(z) = a·η(z)` for every `z ∈ K` with `z^{q^d} = z` whose orbit
`z, z^q, …, z^{q^{d−1}}` lists the eigenvalues of `g` in `K` with multiplicity, then `C_{η′}(g) = a·C_η(g)`.

(e) Let `k′ = k[z]` be a finite extension with `Q` elements, `V` a `k′`-vector space of dimension `d ≥ 1`, `g` the
multiplication by `z` on `V` as a `k`-linear map, and `N(X) := ∏_{0≤i<d}(X − Q^i)`. Then `μ(g) = N(0)`,
`C_η(g) = −N′(1)·Σ_α η(α)` (`N′` the derivative of `N`, the sum over the roots in `K` of the minimal polynomial of
`z`), and
`(C_η·μ)(g)·(|V| − 1) = Σ_α η(α)·|{h ∈ GL_k(V) : hz = zh}|`.

(f) *The torus identity.* Let `L` be a finite extension of `k` of degree `m` and `φ : L → K` a `k`-algebra map. For every
`B ∈ 𝓗(k)`: `⟨C_η, B·μ⟩_m = |L^×|^{−1} Σ_{z∈L^×} conj(η(φ(z)))·B(z·)`, where `B(z·)` is the value at the class of
multiplication by `z` on `L`.

For `η` a multiplicative character of an algebraic closure of `k`, FiniteReductiveGroups §5.6 (b) also gives that `β_η`
is a virtual character of every `GL_n(k)`, through Deligne–Lusztig characters; (f) is the form "cuspidal times
Steinberg is induced from a torus" in which the formal proof uses it.

*Needs:* 4.1, 4.2; Mathlib `IsModularLattice`, `Module.End.IsSemisimple`, `minpoly`.

[ShortProof], `Lib/LocalGL/Green/CuspidalFunctions` (`New.Hall.crapo_complementation`,
`New.Hall.sum_moebius_simClassOf_endOnSub`, `New.Hall.isSemisimple_of_moebius_ne_zero`,
`New.Hall.greenCuspidal_mul_constOne`, `New.Hall.greenCuspidal_eq_zero_of_dim_lt_one`,
`New.Hall.isCuspidal_greenCuspidal`, `New.Hall.IsCuspidal.exists_charpoly_eq_pow`, `New.greenCuspidal_simClassOf_eq_mul`,
`New.moebius_and_greenCuspidal_lsmul`, `New.mulMoebius_greenCuspidal_lsmul`, `New.rankInner_greenCuspidal_mulMoebius`)

### 4.4 Green's cuspidal functions `τ_P`

*Origin:* adapted from Green, The characters of the finite general linear groups (1955), Theorems 2, 9, 12–14, the
cuspidal characters of `GL_n(𝔽_q)`, their degree and their values, with the criterion for two of them to coincide (as
in FiniteReductiveGroups §5.2): here defined by Green's formula in the ring of 4.1, named by irreducible polynomials
through a fixed injective character of `K^×`, with cuspidality, orthonormality and independence of the root.

*Method of the formal proof:* cuspidality is 4.3 (b). Independence of the root: the roots of `P` are the Frobenius
conjugates of one of them, and the corresponding characters `θ_x` agree, up to the conjugation, on the eigenvalues that
matter (4.3 (d)). Orthonormality: with `L` of degree `d` over `k`, every irreducible `S` of degree `d` with `S(0) ≠ 0` has
a root named by a character of `L^×`; writing `τ_S` through `(β·μ) ∗ 𝟙`, the Leibniz rule for pairing with the cuspidal
`τ_P` (4.2 (d)) and the torus identity 4.3 (f) turn the inner product into a mean over `L^×` of a product of characters,
which is `1` or `0` by the orthogonality of the characters of `L^×`; for `S` of another degree `τ_S` lives in another
rank.

Let `k` be finite with `q` elements, `K` an algebraically closed field containing `k`, and `ω : K^× → ℂ^×` an injective
character. For `Q ≥ 2` and `x ∈ K` with `x^{Q−1} = 1`, let `θ_x := ω^j` on `K^×` and `θ_x(0) := 0`, where `j ∈ ℕ`
satisfies `ω(x) = e^{2πij/(Q−1)}`. For a monic irreducible `P ∈ k[X]` of degree `d` with `P(0) ≠ 0` and a root `x` of `P`, with
`Q := q^d`, *Green's cuspidal function* of `P` is `τ_P := (−1)^d·(C_{θ_x})|_d`.

(a) `τ_P` does not depend on the choice of the root `x`, and it is cuspidal.

(b) For every monic irreducible `S` with `S(0) ≠ 0`: `⟨τ_P, τ_S⟩_d = 1` if `S = P` and `0` otherwise.

(c) If `P(1) ≠ 0`, then `∂_{d,τ_P}𝟙 = 0`.

(d) For `Q = q`, the map `a ↦ θ_a|_{k^×}` is an isomorphism from `k^×` onto the group of characters of `k^×`; for a character
`χ` of `k^×`, `x_χ ∈ k^×` denotes the unit with `θ_{x_χ}|_{k^×} = χ`.

The formal proof fixes one exponent `j` for each `x`. That `τ_P` does not depend on `j` either follows from 4.3 (d)
with `a = 1`: two admissible `j` differ by a multiple of `Q − 1`, so the two characters agree at every `z` with
`z^Q = z`.

FiniteReductiveGroups §5.2 with §5.6 (b) (which identifies Green's class function with `R_{T_{(n)}}^G`) also implies (a) and
(b), through Deligne–Lusztig theory; the formal proof avoids it.

**In standard terms.** By 7.3 (b), `τ_P|_{GL_d(k)}` is the irreducible cuspidal character `(−1)^{d−1}R_{T_{(d)}}(θ_P)`
of FiniteReductiveGroups §5.2 attached to the regular character `θ_P = θ_x|_{𝔽_{q^d}^×}` of `𝔽_{q^d}^×`, whose
Frobenius orbit depends only on `P`: (a) is its independence of the root and its cuspidality, (b) the orthonormality
of these characters, distinct `P` giving distinct orbits, and (c) says, through 7.2 (b), that it is orthogonal to the
trivial character when `P(1) ≠ 0`; (d) is, for `d = 1`, the bijection `x ↦ θ_x|_{𝔽_Q^×}` of the proof of 7.3 (b). The
name *Green's cuspidal function*, for `C_η` and for `τ_P`, refers to Green's formula, by which they are defined; these
are not the Green functions `Q_T^G` of FiniteReductiveGroups §5.6, the values of the Deligne–Lusztig characters at
unipotent elements.

*Needs:* 4.1, 4.2, 4.3.

[ShortProof], `Lib/LocalGL/Green/TauFunctions` (`New.thetaChar`, `New.greenTau`, `New.labelChar`, `New.IsLabel`,
`New.charName`, `New.labelChar_eq_greenTau`, `New.isCuspidal_greenTau`, `New.greenTau_eq`, `New.rankInner_greenTau`,
`New.thetaChar_charName`)

## Layer 5: Lifts along extensions of finite fields and Green's characters of labels

This layer defines descent from `GL_n(k′) ⋊ Gal(k′/k)` and lifts of class functions (5.1), shows that lifts are
multiplicative and that the eigenvalue sums lift (5.2), deduces that the characters `Ξ_c` of labels are orthonormal
irreducible characters with their degree bound, twists and idempotents (5.3), and proves Shintani lifting of the `Ξ_c`
in prime degree (5.4).

### 5.1 Descent along a coset, and the extension of invariant characters

*Origin:* adapted from Shintani, J. Math. Soc. Japan 28 (1976), Shintani descent: the norm classes of a coset and the
preservation of inner products (as in FiniteReductiveGroups §5.11 (a), (b)), and, for (c), the extension of an
invariant irreducible character from a normal subgroup (as in TensorInductionAndFiniteGroupInputs §6.2 (b)): here
descent is stated through a choice of roots `r(γ)` with `r(γ)^{ord σ} = γ` in the coset of `σ`, in place of the norm
map, and the extension criterion is stated for any finite group `Γ` with two numerical conditions.

*Method of the formal proof:* all roots come from one unit of a group algebra. Let `c` generate a cyclic group `C` of
order `|GL_n(k₀)|`, and let `σ` act on `k′[C]` through the coefficients. As `c` is a `σ`-fixed unit, the surjectivity
of the norm onto the `σ`-fixed units (a form of Hilbert's Theorem 90, GaloisRepresentationsOfUnitaryEigenforms §5.2
(c), (d)) gives a unit `z` with `c = z·σ(z)⋯σ^{ord σ−1}(z)`; the matrix part of `r(γ)` is the image of `z` under the
algebra map `k′[C] → M_n(k′)` with `c ↦ γ`. Being a polynomial in `γ`, it is compatible with conjugation and lies in
every subalgebra that contains `γ`. The isometry is a count: each element over `σ` is conjugate by a matrix to some
`r(γ)`, and the conjugates are counted through centralisers. For (c), the function `f` equal to `Y` on `G` and to `Θ`
off `G` is recognised as an irreducible character: it has norm one by the first condition, its pairings with the
irreducible characters whose restriction to `G` contains `Y` are integers by the second, and `f(1) = Y(1)` is a
positive degree.

Let `k ⊂ k′` be finite fields, `Γ := Gal(k′/k)` acting on `GL_n(k′)` entrywise, and `E_n := GL_n(k′) ⋊ Γ`.

(a) *Definitions.* For a field `k₀` with `k ⊂ k₀ ⊂ k′` and `X ∈ 𝓗(k₀)`, a function `Ψ` on `E_n` *descends* to `X` if
`Ψ(s) = X(s^{ord σ})` for every `σ ∈ Γ` with fixed field `k₀` and every `s ∈ E_n` over `σ` with `s^{ord σ} ∈ GL_n(k₀)`. For
a commutative semiring `Z` with a homomorphism to `ℂ` (in practice `ℕ`, `ℤ` or a ring) and `A ∈ 𝓗(k)`, `A′ ∈ 𝓗(k′)`, `A`
*lifts* to `A′`,
`Lift_Z(A, A′)`, if for every `m ≥ 0` some `Z`-combination of characters of `E_m` descends both to `A` (over `k`) and to
`A′` (over `k′`, that is, it equals `A′` on `GL_m(k′)`).

(b) *Roots and isometry.* Let `σ ∈ Γ` have fixed field `k₀`. There is `r : GL_n(k₀) → E_n` with `r(γ)` over `σ`,
`r(γ)^{ord σ} = γ`, `r(vγv^{−1}) = v·r(γ)·v^{−1}` for `v ∈ GL_n(k₀)`, and such that every `x ∈ GL_n(k′)` with
`x·r(δ)·x^{−1} = r(γ)` lies in `GL_n(k₀)`; every element of `E_n` over `σ` is conjugate by a matrix to some `r(γ)`. If class
functions `Ψ`, `Ψ′` on `E_n` descend over the coset of `σ` to `X`, `X′`, then
`|Γ|·|E_n|^{−1} Σ_{s over σ} conj(Ψ(s))·Ψ′(s) = ⟨X, X′⟩_{GL_n(k₀)}`; and induction from a parabolic subgroup of `E_n`
commutes with descent (the induced function descends to the product `∗` of the descended functions).

(c) *Extension of invariant characters.* Let `Γ` be any finite group acting on a finite group `G`, `Y` a `Γ`-invariant
irreducible character of `G`, and `Θ` a virtual character of `G ⋊ Γ` with `|Γ|·⟨Θ, Θ⟩ = ⟨Θ|_G, Θ|_G⟩ + |Γ| − 1` and
`⟨Y, Θ|_G⟩ = 1 + |Γ|·m` for an integer `m`. Then the function equal to `Y` on `G` and to `Θ` off `G` is an irreducible
character of `G ⋊ Γ`.

FiniteReductiveGroups §5.11 (a), (b) give (b) through Lang's theorem and norm classes, except its last clause, which is
the first part of §5.11 (c); §5.11 is stated for the Frobenius `x ↦ x^{|k₀|}` as generator of `Gal(k′/k₀)`, while (b)
holds for every `σ` with fixed field `k₀`, that is, for every generator. TensorInductionAndFiniteGroupInputs §6.2 gives
a form of (c) for a normal subgroup of prime index with a virtual character of norm one on one coset.

**In standard terms.** By 7.5 (a), (b), a class function on `E_n` descends to `X` over the coset of `σ` exactly when
its values there are the Shintani lift `Sh_σ(X)`, the function `δ ↦ X(γ)` for `γ ∈ GL_n(k₀)` conjugate to
`δ·σ(δ)⋯σ^{ord σ − 1}(δ)`, which for the Frobenius is the lift of FiniteReductiveGroups §5.11 (a), (b); so (b)
contains, for every generator `σ`, the bijection of norm classes and the isometry of the Shintani lift.
`Lift_Z(A, A′)` records only that some `Z`-combination of characters of `E_m` equals `A′` on `GL_m(k′)` and the
Shintani lifts of `A` on the cosets of the generators of `Γ`, for every `m`.

*Needs:* 4.1, 4.2 (e); GaloisRepresentationsOfUnitaryEigenforms §5.2 (c), (d) (norms onto fixed units, tame actions);
Tau Ceti `TauCeti.exists_eq_irreducibleCharacter_or_neg` (virtual characters of norm one).

[ShortProof], `Lib/LocalGL/Shintani/CosetRootChoice` (`New.DescendsOnCoset`, `New.IsRootChoice`, `New.exists_isRootChoice`,
`New.IsRootChoice.exists_conj_eq_of_map_eq`, `New.IsRootChoice.index_mul_finMean_eq_classInner`, `New.induceClassFn`,
`New.classInner_induceClassFn_of_surjective`, `New.DescendsOnCoset.induce`, `New.IsIrreducibleChar.extend_semidirect`);
`Lib/LocalGL/Shintani/CosetDescent` (`New.GalSemidirect`, `New.DescendsTo`, `New.Lift`, `New.exists_isRootChoice_GL`,
`New.DescendsTo.induceClassFn_parabolic`)

### 5.2 Lifts are multiplicative, and the eigenvalue sums lift

*Origin:* adapted from Green, The characters of the finite general linear groups (1955), Theorem 1, and Springer, Sém.
Bourbaki 441 (1973/74), 1.1–1.7, the eigenvalue sums as virtual characters (as in FiniteReductiveGroups §5.6 (b)),
and from Shintani, J. Math. Soc. Japan 28 (1976), for the compatibility of lifting with Harish-Chandra induction (as in
the first part of FiniteReductiveGroups §5.11 (c)): here in the stronger form of a lift along any extension `k′/k`,
proved without Brauer's induction theorem and without Deligne–Lusztig characters, by inducing a character of
`(k′ ⊗_k L)^× ⋊ Gal(k′/k)`.

*Method of the formal proof:* differences are immediate; products use 5.1 (b) for parabolic induction; for the factor
`μ`, in the ranks below `N` the element `μ·(1 − (1 − 𝟙)^N)` agrees with `μ` and is a polynomial in `𝟙`, which lifts to
itself. For (c), `θ` composed with `φ` and with the product over `Gal(k′/k)` is a character of
`(k′ ⊗_k L)^× ⋊ Gal(k′/k)`, and `Ψ` is its induction to `E_m`; its descent over `k` is identified with `C_θ·μ` by the
isometry of 5.1 (b) and the torus identity 4.3 (f). (d) is an induction on the rank, which combines (a), (c) and the
identity `β_θ = −C_θ ∗ 𝟙` of 4.3 (b).

Let `k ⊂ k′` be finite fields and `Z`, `R` as in 5.1 (a), `R` a ring.

(a) `Lift_Z(𝟙, 𝟙)` and `Lift_Z(1, 1)`; `Lift_R(A, A′)` and `Lift_R(B, B′)` imply `Lift_R(A − B, A′ − B′)`; `Lift_Z(A, A′)` and
`Lift_Z(B, B′)` imply `Lift_Z(A ∗ B, A′ ∗ B′)`; `Lift_R(A, A′)` implies `Lift_R(A·μ, A′·μ)` and
`Lift_R((−1)^m·((A·μ) ∗ 𝟙)|_m, (−1)^m·((A′·μ) ∗ 𝟙)|_m)` for every `m`.

(b) If `Lift_Z(A, A′)` along the trivial extension `k′ = k` for some `A′`, then `A|_{GL_n(k)}` is a `Z`-combination of characters
of `GL_n(k)` for every `n`.

(c) Let `K ⊇ k′` be a field, `θ` a multiplicative character of `K`, `L` an extension of `k` of degree `m`, and
`φ : k′ ⊗_k L → K` a `k′`-algebra map. There is a character `Ψ` of `E_m` that descends over `k` to `C_θ·μ` and descends over
`k′` to every `X ∈ 𝓗(k′)` with `⟨X, Y⟩_m = |(k′ ⊗_k L)^×|^{−1} Σ_t conj(θ(φ(∏_{τ∈Gal(k′/k)} τ(t))))·Y(t·)` for all
`Y ∈ 𝓗(k′)`, the sum over `t ∈ (k′ ⊗_k L)^×`, `τ` acting on the factor `k′`, and `Y(t·)` the value at multiplication by
`t` on `k′ ⊗_k L`.

(d) For `K ⊇ k′` algebraically closed and every multiplicative character `θ` of `K`, there is `B ∈ 𝓗(k′)` with
`Lift_ℤ(β_θ, B)`; taking `k′ = k` and (b), `β_θ|_{GL_n(k)}` is a virtual character of `GL_n(k)` for every `n`.

FiniteReductiveGroups §5.6 (b) also gives the last clause of (d) through Deligne–Lusztig characters; the lift itself is used
in 5.3 and 5.4.

*Needs:* 4.2, 4.3, 5.1.

[ShortProof], `Lib/LocalGL/Shintani/CosetDescent` (`New.Lift.lift_constOne`, `New.Lift.one`, `New.Lift.sub`, `New.Lift.mul`,
`New.Lift.mulMoebius`, `New.Lift.rankPart_mulMoebius_mul_constOne`, `New.Lift.evalGL_mem_virtualChars`,
`New.exists_norm_char_semidirect`, `New.exists_torus_induced_descendsTo`, `New.exists_lift_brauerLift`)

### 5.3 The characters of labels

*Origin:* adapted from Green, The characters of the finite general linear groups (1955), Theorems 2, 9, 12–14, and
from the published theory of the characteristic map of `GL_n(𝔽_q)` and of the irreducibility of Harish-Chandra
products of distinct cuspidal characters (as in FiniteReductiveGroups §5.4), of which this is the case of a squarefree
label: here the characters are products, for the induction product of 4.1, of the functions `τ_P` of 4.4, with
orthonormality, a lower bound for the degree in place of its value, the twist by `χ∘det`, and their central
idempotents.

*Method of the formal proof:* orthonormality is an induction on the irreducible factors of the labels, through the
adjunction and the Leibniz rule of 4.2 (c), (d) and the orthonormality of the `τ_P` (4.4). That `Ξ_c` is a character comes
from 5.2: each `τ_P` is `(−1)^d((β_θ·μ) ∗ 𝟙)|_d` and lifts by 5.2 (a) from the lift of `β_θ`, so `Ξ_c` is a virtual character
of norm one with integral inner products with all characters and a degree of nonnegative real part, hence an
irreducible character. For the degree bound, pairing `Ξ_c` with the indicator of the identity times `μ` (whose value at
the identity is `∏_{i<r}(−q^i)` by 4.3 (e)) gives `Ξ_c(1)·∏_{i<r} q^i·m = |GL_r(k)|` for a natural number `1 ≤ m ≤ q^r`, and
`∏_{i<r}(1 − q^{−i−1}) ≥ 1 − r/q`. The twist computes `θ` of a determinant as `θ` of the product of the eigenvalues.

Let `k`, `q`, `K`, `ω` be as in 4.4. A *label* of degree `r` is a monic squarefree `c ∈ k[X]` of degree `r` with `c(0) ≠ 0`;
`Ξ_c := ∏_{P|c} τ_P ∈ 𝓗(k)`, the product `∗` over the monic irreducible factors.

(a) `Ξ_c = Ξ_c|_r`; for labels `c`, `c′` of degree `r`, `⟨Ξ_c, Ξ_{c′}⟩_r = 1` if `c = c′` and `0` otherwise; `Ξ_c|_{GL_r(k)}` is an
irreducible character of `GL_r(k)`.

(b) `Re Ξ_c(1) ≥ 0` and `|Ξ_c(1)|²/|GL_r(k)| ≥ (1 − r/q)/q^r`.

(c) For a character `χ` of `k^×`: `Ξ_{X−x_χ} = (χ∘det)|_1`, and `Ξ_c(g)·χ(det g) = Ξ_{c_χ}(g)` for `g ∈ GL_r(k)`, where `c_χ`
is the label whose roots are `x_χ` times those of `c`.

(d) If `c(1) ≠ 0`, then `⟨Ξ_c, A ∗ 𝟙⟩_r = ⟨Ξ_c, A⟩_r` for every `A ∈ 𝓗(k)`.

(e) *Idempotents.* Let `e_c := |GL_r(k)|^{−1}·Ξ_c(1)·Σ_g conj(Ξ_c(g))·g ∈ ℂ[GL_r(k)]` for labels `c` of degree `r` (and `e_c := 0`
for other `c`). The `e_c` are orthogonal central idempotents. For a nonzero `l ∈ k^r` and a character `χ` of `k^×` such that
`x_χ` is not a root of `c`: `(Σ_h χ(det h)^{−1}·h)·e_c = 0`, the sum over the invertible `h = 1 + u·lᵀ`, `u ∈ k^r`. For a finite
family of finite fields `k_w` and labels `c_w` of degree `r`, the tensor products `⊗_w e_{c_w}` in `ℂ[∏_w GL_r(k_w)]` are
orthogonal central idempotents, and so is any sum of them.

The formal proof states (e) for one fixed choice of `ω`, on an algebraic closure of `k`. FiniteReductiveGroups §5.4 with §5.2
and §5.6 (b) also implies (a), and its §5.5 gives the exact degree, through Deligne–Lusztig theory; the formal proof
avoids it.

**In standard terms.** By 7.3 (c), for a label `c`, `Ξ_c|_{GL_r(k)}` is the Harish-Chandra product of the cuspidal
characters of FiniteReductiveGroups §5.2 attached to the regular characters `θ_P` of the irreducible factors `P` of
`c`, which lie in distinct Frobenius orbits; it is the irreducible character that FiniteReductiveGroups §5.4 (d)
attaches to the Green datum with value the partition `(1)` at these orbits, of degree
`∏_{1≤i≤r}(q^i − 1)/∏_{P|c}(q^{deg P} − 1)` (7.3 (c)). (a) is its irreducibility and the orthonormality of these
characters, (b) follows from this degree, and (c) follows from the twist of the cuspidal character attached to a
regular character `θ` of `𝔽_{q^d}^×` by `χ∘det`, which is the cuspidal character attached to `θ·(χ∘N_{𝔽_{q^d}/k})`
(FiniteReductiveGroups §5.2), applied to each factor of the Harish-Chandra product; in rank `1` the cuspidal character
attached to `θ` is `θ`. A *label* here is a polynomial; through `P ↦` (the Frobenius orbit of `θ_P`) it corresponds to
a label of FiniteReductiveGroups, a function from Frobenius orbits to `ℕ`, with values in `{0, 1}`, and this
correspondence depends on `ω`.

*Needs:* 4.2, 4.3, 4.4, 5.1 (a), 5.2.

[ShortProof], `Lib/LocalGL/Green/LabelCharacters` (`New.labelChar_X_sub_C`, `New.rankPart_labelChar`,
`New.rankInner_labelChar_mul_constOne`, `New.rankInner_labelChar`, `New.IsLabel.isIrreducibleChar_labelChar`,
`New.IsLabel.isChar_labelChar`, `New.lift_labelChar_self`, `New.labelIdem_orthogonal`, `New.hyperplaneSum_mul_labelIdem`,
`New.tupleIdem`, `New.isCentralProj_tupleIdem`, `New.tupleIdem_orthogonal`, `New.isCentralProj_sum_tupleIdem`,
`New.evalGL_labelChar_mul_det`); `Lib/LocalGL/Green/TauFunctions` (`New.labelIdem`, `New.hyperplaneSum`,
`New.labelChar_degree_bounds`)

### 5.4 Shintani lifting of the characters of labels in prime degree

*Origin:* adapted from Shintani, J. Math. Soc. Japan 28 (1976), and Silberger and Zink, J. Algebra 319 (2008), Theorem
5.1, the lifting of the characters of `GL_n(𝔽_q)` along extensions of finite fields and its value on Green's
characters (as in FiniteReductiveGroups §5.11 (b), (d), (e)): here, in prime degree and for every label, one character
of `GL_r(k′) ⋊ Gal(k′/k)` equal to `Ξ_c` over `k′` on `GL_r(k′)` and to `Ξ_c` of the `l`-th power on the other cosets,
with sign `+1`; no norm map on classes and no bijection of characters is stated.

*Method of the formal proof:* by 5.2 (a), a lift of `Ξ_c` is the product of lifts of the `Ξ_P` of the irreducible
factors `P` of `c`. For `P = X − 1`, `Ξ_P` is the trivial character of `GL_1(k)` (5.3 (c)), and the rank-one part of
(b) for the trivial characters lifts it. For `P` of degree `r` with `P(1) ≠ 0`, 5.2 (c) with `L = k[X]/(P)` provides a
character of `E_r` with descent `C_{θ_x}·μ` over `k` and `(−1)^r·Ξ_P·μ` over `k′`. Combined with the lift of the
eigenvalue sum (5.2 (d)), it gives a virtual character on the cosets of `E_r`; its inner products are evaluated by
(c), and the extension criterion 5.1 (c), whose congruence is checked modulo the prime `l`, shows that the result is a
character.

Let `k ⊂ k′` be finite fields with `[k′ : k] = l` prime, `K ⊇ k′` algebraically closed and `ω` an injective character of
`K^×`; `Ξ` over `k` and over `k′` are formed with the same `ω`.

(a) For every label `c` over `k`: `Lift_ℕ(Ξ_c, Ξ_{c′})`, where `c′` is the image of `c` in `k′[X]`.

(b) For characters `χ` of `k^×` and `χ′` of `k′^×` with `x_{χ′} = x_χ` (in `k′`): `Lift_ℕ((χ∘det), (χ′∘det))` (on all ranks).

(c) If class functions `Ψ`, `Ψ′` on `E_n` descend to `A`, `A′ ∈ 𝓗(k)`, then
`l·⟨Ψ, Ψ′⟩_{E_n} = ⟨Ψ|_{GL_n(k′)}, Ψ′|_{GL_n(k′)}⟩ + (l − 1)·⟨A, A′⟩_n`.

FiniteReductiveGroups §5.11 (d) states the lift of a cuspidal character in prime degree up to a sign and on the coset of
the Frobenius, and §5.11 (e) only the label of a constituent for products; they do not give (a).

**In standard terms.** By 7.5 (c), (a) says that for `[k′ : k] = l` prime the irreducible character
`Ξ_{c′}|_{GL_r(k′)}`, which is invariant under `Gal(k′/k)`, extends to an irreducible character of
`GL_r(k′) ⋊ Gal(k′/k)` whose values on every coset other than `GL_r(k′)` are the Shintani lift of `Ξ_c|_{GL_r(k)}`:
`Ξ_c` and `Ξ_{c′}` correspond under Shintani descent, with sign `+1`. For `c` irreducible this implies
FiniteReductiveGroups §5.11 (d), with `ε = +1`. Through 7.5 (b), (b) follows from the identity
`Sh_σ(χ∘det) = (χ∘N_{k′/k})∘det` for every `σ ≠ 1` in `Gal(k′/k)`: such a `σ` generates `Gal(k′/k)`, so
`det Nm_σ(δ) = N_{k′/k}(det δ)`; for the Frobenius it is the identity `Sh_l(χ∘det) = (χ∘N_{k′/k})∘det` of
FiniteReductiveGroups §5.11 (b). The character `χ′` of `k′^×` with `x_{χ′} = x_χ` is `χ∘N_{k′/k}` (as in the proof of
7.5 (c)), and `δσ ↦ χ′(det δ)` is a character of `GL_m(k′) ⋊ Gal(k′/k)` whose values on the coset of every `σ ≠ 1` are
those of `Sh_σ(χ∘det)`; and (c) is the sum, over the `l − 1` cosets other than `GL_n(k′)`, of the isometry of the
Shintani lift.

*Needs:* 4.4, 5.1, 5.2, 5.3.

[ShortProof], `Lib/LocalGL/Shintani/LiftingGreenCharacters` (`New.sum_evalGL_prod_eq_zero_iff`,
`New.exists_rankInner_labelChar_eq_finMean`, `New.exists_isChar_descendsTo_labelChar`, `New.lift_detChar`,
`New.DescendsTo.card_mul_classInner`, `New.shintani_lift_labelChar`)

## Layer 6: `GL_N` over a local field at pro-`p` Iwahori level

This layer defines the level structure, the operators `U_t`, exponents and Hecke operators (6.1), proves a decomposition
(6.2) and a twisted conjugacy statement (6.3), the quadratic relation and the injectivity of some `U_t` (6.4), Satake's
formula on exponents (6.5), the sorting of exponents (6.6), the survival of sorted unramified exponents on spherical
vectors (6.7), and the chains of roots of the Hecke polynomial of a spherical vector (6.8).

### 6.1 Parahoric subgroups, the operators `U_t`, exponents and Hecke operators

*Origin:* definitions and conventions.

*Method of the formal proof:* the formal proof makes these definitions; the parahoric subgroups are preimages of
subgroups of `GL_N(𝓀)` under reduction, which makes them compact and open.

Let `F`, `𝒪`, `𝔭`, `𝓀`, `q`, `ϖ`, `|·|` be as in the Conventions, `N ≥ 1`, and `ρ` a smooth complex representation of
`GL_N(F)` on `V` (every vector is fixed by an open subgroup).

(a) For a level function `b : {0, …, N − 1} → ℕ`, the *parahoric subgroup* `P_b` is the set of `g ∈ GL_N(𝒪)` with
`g_{ij} ∈ 𝔭` whenever `b(j) < b(i)`. The *pro-`p` Iwahori subgroup* `I₁` is the set of `g ∈ GL_N(𝒪)` with `g_{ij} ∈ 𝔭` for
`i > j` and `g_{ii} ≡ 1 (mod 𝔭)`. `T⁺` is the monoid of diagonal `t = diag(t_0, …, t_{N−1})` with `|t_0| ≤ |t_1| ≤ ⋯ ≤ |t_{N−1}|`;
`t` is *strictly dominant* if the inequalities are strict.

(b) For a compact open subgroup `C`, `e_C` is the mean over `C`, `V^C` the space of vectors fixed by `C`, and, for
`g ∈ GL_N(F)`, the *Hecke operator* of `CgC` is `x ↦ Σ_h ρ(h)x`, the sum over representatives `h` of `CgC/C`, as in
AdelicUnitaryGroupsAndAlgebraicModularForms §1.4. For `t ∈ T⁺`, `U_t := e_{I₁}∘ρ(t)` on `V^{I₁}`.

(c) For characters `θ_0, …, θ_{N−1}` of `F^×`, `ξ_θ(t) := ∏_i θ_i(t_i)·|t_i|^{N−1−i}`. For a character `ξ` of the diagonal
torus, a linear form `ℓ` on `V` is an *exponent* for `ξ` if `ℓ(ρ(t)e_{I₁}x) = ξ(t)·ℓ(x)` for all `x ∈ V` and `t ∈ T⁺`. A vector
`x` is an *Iwahori eigenvector* for `ξ` if `x ≠ 0`, `x ∈ V^{I₁}` and `U_t x = ξ(t)x` for every `t ∈ T⁺`.

(d) For `0 ≤ j ≤ N`, `T_j` is the Hecke operator of the double coset `GL_N(𝒪)·diag(ϖ, …, ϖ, 1, …, 1)·GL_N(𝒪)` (`j` entries
`ϖ`), the set of `g` with `g` and `ϖg^{−1}` integral and `|det g| = q^{−j}`, as in
AdelicUnitaryGroupsAndAlgebraicModularForms §3.1 and WeilRepresentationsOnBanachSpacesOfData §9.1. For `0 ≤ r ≤ N`, the
*partial Hecke sum* `T_{r,j}` is `x ↦ Σ_g ρ(g)x`, the sum over the cosets `g·GL_N(𝒪)` in that double coset whose lattice
`g𝒪^N` contains the first `r` standard basis vectors; `T_{0,j} = T_j`. For `x ∈ V^{GL_N(𝒪)}` with `T_j x = t_j x` for all `j`, the *Hecke polynomial* of
`x` is `P_x(X) := Σ_{j=0}^{N} (−1)^j·q^{j(j−1)/2}·t_j·X^{N−j}`, the polynomial `H_{q,N}(t)` of
GaloisRepresentationsOfUnitaryEigenforms §1.1.

**In standard terms.** By 7.6, `pr_𝒩` identifies `V^{I₁}` with the invariants under `𝒯₁ = 𝒯 ∩ I₁` of the unnormalised
Jacquet module `V_𝒩` of `V` along the upper triangular Borel subgroup `ℬ = 𝒯𝒩`, the operator `U_t` with the action of
`t`, and an Iwahori eigenvector for `ξ` with a nonzero vector of `(V_𝒩)^{𝒯₁}` on which `𝒯` acts by `ξ`. An exponent
for `ξ` is `0` unless `ξ` is trivial on `𝒯₁`, and then it is `ℓ_𝒩∘pr_𝒩∘e_{I₁}` for a unique linear form `ℓ_𝒩` on `V_𝒩`
with `ℓ_𝒩∘ρ_𝒩(t) = ξ(t)ℓ_𝒩`, or equivalently a `GL_N(F)`-equivariant map from `V` to the unnormalised principal series
`I_ℬ(ξ)`; `I_ℬ(ξ_θ)` is the normalised principal series of the character `t ↦ ∏_i θ_i(t_i)|t_i|^{(N−1)/2}`. In the
literature the exponents of `V` are characters of the torus, those by which it acts on quotients of `V_𝒩`; here an
exponent is a linear form, and a nonzero exponent for `ξ` exists exactly when `ξ` is trivial on `𝒯₁` and is such a
character. By 7.7 (b), the roots of the Hecke polynomial `P_x` of (d) are the entries of the Satake parameter of the
eigencharacter of `x` (SmoothRepresentationsOfLocalGroups §SR.4.2 (Spherical parameters)) multiplied by `q^{(N−1)/2}`.

*Needs:* AdelicUnitaryGroupsAndAlgebraicModularForms §§1.4, 1.5, 3.1 (compact means, Hecke operators);
WeilRepresentationsOnBanachSpacesOfData §9.1 (basic double cosets); GaloisRepresentationsOfUnitaryEigenforms §1.1 (Hecke
polynomial).

[ShortProof], `Lib/LocalGL/Iwahori/ParahoricStructure` (`New.residuePreimage`, `New.blockParahoric`, `New.proIwahori`,
`New.dominantTorus`, `New.IsExponent`, `New.IsIwahoriEigen`, `New.normAbsChar`, `New.torusChar`, `New.iwahoriDoubleCoset`);
`Lib/LocalGL/Iwahori/HeckeDegrees` (`New.partialCosets`, `New.partialHecke`, `New.partialHecke_zero_eq_heckeGL`);
`Lib/LocalGL/SphericalChainLemma` (`New.Patching.HasRootChain`)

### 6.2 The Iwasawa–Bruhat decomposition and the Iwahori factorisation

*Origin:* adapted from the published theory of the Iwahori decomposition of `p`-adic groups (Iwahori and Matsumoto,
Publ. IHES 25 (1965); Casselman, Introduction to admissible representations of p-adic groups: GL_n (notes), §13):
here for `GL_N`, as the existence of a factorisation `g = u·t·σ·k` with `k` in the pro-`p` Iwahori subgroup and, with
the same `u`, the Iwahori factorisation of the elements of `I₁`, together with the multiplicativity of `t ↦ U_t`.

*Method of the formal proof:* (a) is Gaussian elimination by an upper unitriangular matrix, treating the rows from the
bottom up: each row has a pivot, an entry of maximal absolute value (the leftmost one), and multiples of its row are
removed from the rows above. What remains is the product of a monomial matrix and an element of `I₁`; for `g ∈ I₁`
the eliminating matrix also lies in `I₁` and the remainder is lower triangular. For (b), an element of `I₁` splits as
a factor that `t` conjugates into `I₁` times a factor that fixes `ρ(t′)x` (its conjugate by `t′` lies in `I₁`), so the
mean over `I₁` between `ρ(t)` and `ρ(t′)` can be dropped.

(a) For every `g ∈ GL_N(F)` there is an upper unitriangular `u ∈ GL_N(F)` such that `g = u·t·σ·k` with `t` diagonal, `σ` a
permutation matrix and `k ∈ I₁`, and such that, if `g ∈ I₁`, then `u ∈ I₁` and `u^{−1}g` is lower triangular.

(b) `t ↦ U_t` is a homomorphism of monoids from `T⁺` to the endomorphisms of `V^{I₁}`, for every smooth representation.

ReductiveGroupsPartII §RG2.4.2 (the Iwahori–Bruhat decomposition and the Iwahori factorisation) and §RG2.4.4 (the Iwasawa
decomposition) also imply (a), through Bruhat–Tits theory; the formal proof avoids it.

*Needs:* 6.1.

[ShortProof], `Lib/LocalGL/Iwahori/ParahoricStructure` (`New.exists_row_reduction`, `New.exists_iwasawa_bruhat`,
`New.compactMean_diagGL_compactMean_diagGL`, `New.iwahoriHeckeHom`)

### 6.3 Twisted conjugacy in `I₁tI₁`

*Origin:* adapted from the published theory of `σ`-conjugacy classes in Iwahori double cosets (Görtz, Haines, Kottwitz
and Reuman, Compositio 146 (2010), Theorem 1.1.5): here for the pro-`p` Iwahori subgroup of `GL_N`, a strictly
dominant diagonal `t`, and conjugacy to `t` up to a diagonal element of `I₁`.

*Method of the formal proof:* successive approximation: an element of `I₁tI₁` is twisted-conjugated by elements of `I₁` into
the conjugates of `I₁` by increasing powers of `t`, which shrink towards the diagonal; compactness of `I₁` gives a cluster
point of the conjugating elements, and the closed conditions pass to it.

Let `σ` be a continuous ring endomorphism of `F` with `|σ(x)| = |x|` whose entrywise action on `GL_N(F)` is surjective
(`σ = id` is allowed), and `t` diagonal with `|t_0| < |t_1| < ⋯ < |t_{N−1}|`. For every `g ∈ I₁tI₁` there are `k ∈ I₁` and a
diagonal `d ∈ I₁` with `k^{−1}·g·σ(k) = t·d`.

*Needs:* 6.1.

[ShortProof], `Lib/LocalGL/Iwahori/ParahoricStructure` (`New.eventually_v_mul_pow_le_one`,
`New.eventually_pow_mul_mem_dominantTorus`, `New.exists_inv_mul_mul_map_eq_diagGL_mul`)

### 6.4 The quadratic relation, and injectivity of a `U_t`

*Origin:* adapted from the published theory of the Iwahori–Hecke algebra (the quadratic relation `(T_s − q)(T_s + 1) = 0`)
and of the injectivity of Iwahori-fixed vectors into the Jacquet module (Casselman, The unramified principal series of
p-adic groups I, Compositio 40 (1980); Haines, Kottwitz and Prasad, Iwahori–Hecke algebras, arXiv math/0309168, §1):
here as an identity for linear forms invariant under `I₁`, and as the injectivity of one `U_t` with `t` strictly
dominant on `V^{I₁}`, for every smooth representation.

*Method of the formal proof:* (a) is a computation in the root subgroup of `(a, b)`. Modulo `I₁`, `q` times the left
side becomes a sum over the residue classes `w ∈ 𝓀` of the values of `φ∘ρ(s)` at the translates of `x` by
`1 + wE_{ab}`. The class `w = 0` gives `φ(ρ(s)x)`, since `s` conjugates `1 + wE_{ab}`, `w ∈ 𝔭`, into `I₁`. For a
unit `w`, `s(1 + wE_{ab})` factors as an upper unitriangular matrix in `I₁`, a diagonal matrix of the shape in (a)
and the lower unitriangular matrix `1 + w^{−1}E_{ba}`, which fixes `x`; so each such class gives `c`. For (b),
`t := s_0⋯s_{N−1}` with `s_a := diag(1, …, 1, ϖ^{−1}, …, ϖ^{−1})` (`a` entries `1`) is strictly dominant, and by 6.2 (b)
it suffices that each `U_{s_a}` is injective; this follows from (a) with `c = 0`, applied once per inversion of the
cyclic permutation `π` for which `πs_a` normalises `I₁`. (c) is the definition of an exponent at `t = 1` and at the
diagonal matrices with unit entries, which normalise `I₁`, so that the mean can be dropped there.

(a) Let `b = a + 1`, `s` the permutation matrix of the transposition of `a` and `b`, `φ` a linear map on `V` with
`φ(ρ(k)z) = φ(z)` for `k ∈ I₁`, and `x ∈ V` fixed by `1 + wE_{ba}` for every `w ∈ 𝒪`. If `φ(ρ(d)x) = c` for every diagonal
`d` with entry `−v^{−1}` at `a`, `v` at `b` and `1` elsewhere (`|v| = 1`), then `q·φ(ρ(s)e_{I₁}x) = φ(ρ(s)x) + (q − 1)·c`.

(b) There is a strictly dominant `t` such that `U_t` is injective on `V^{I₁}`.

(c) An exponent `ℓ` for `ξ` satisfies `ℓ∘e_{I₁} = ℓ`, `ℓ∘ρ(k) = ℓ` for `k ∈ I₁`, and `ℓ(ρ(t)z) = ξ(t)·ℓ(z)` for every diagonal `t` with
unit entries and every `z ∈ V`.

**In standard terms.** Through 7.6 (a), which rests on it, (b) is equivalent to the injectivity on `V^{I₁}` of the
projection `pr_𝒩` to the Jacquet module, and then every `U_t`, `t ∈ T⁺`, is injective on `V^{I₁}`; (c) says that an
exponent, a form `ℓ_𝒩∘pr_𝒩∘e_{I₁}` (7.6 (b)), is invariant under `I₁` and transforms by `ξ` under the diagonal
matrices with unit entries.

*Needs:* 6.1, 6.2.

[ShortProof], `Lib/LocalGL/Iwahori/QuadraticRelation` (`New.conj_monomial_mem_blockParahoric`, `New.quadratic_relation`,
`New.exists_iwahoriHeckeHom_injective`, `New.IsExponent.apply_compactMean`, `New.IsExponent.apply_proIwahori`,
`New.IsExponent.apply_diagGL_unit`, `New.IsExponent.apply_monomial_translate`)

### 6.5 Iwahori degrees, partial Hecke sums and Satake's formula

*Origin:* adapted from the published theory of the Satake transform of the characteristic functions of double cosets of
`GL_n` over a nonarchimedean local field (as in LocalFactorsOfTwistsAndTypes §3.2): here only the cosets of
`diag(ϖ, …, ϖ, 1, …, 1)`, as the value of an exponent on the partial Hecke sums of a spherical vector, in stages, in the
unnormalised convention `|t_i|^{N−1−i}`.

*Method of the formal proof:* (a) counts the cosets of `I₁tI₁/I₁`: they have representatives `u·t` with `u` upper
unitriangular, and all of them give one vector once averaged over `I₁`. (c) rests on a count over the residue field:
for a lattice in the double coset, one counts the residue rows with first nonzero entry `1` in place `r` that vanish on
it modulo `ϖ`, and the count depends only on whether the lattice contains the `r`-th basis vector. (b) then follows by
induction on `N − r`, starting from `r = N`. An exponent `ℓ` is invariant under `I₁` (6.4 (c)), so (c) applies with
`ψ = ℓ`; and `ℓ(ρ(b_r)z) = y_r·q^{−(N−1−r)}·ℓ(z)` for `z = T_{r+1,j}x`, which is fixed by a parahoric subgroup (that
of the level function `i ↦ max(i − r, 0)`). This value is not a clause of 6.4: it is the case `σ = 1`, `t = b_r` of
the identity `ℓ(ρ(t)ρ(σ)y) = ξ(t)·ℓ(ρ(σ)y)` for an exponent `ℓ` for `ξ`, a permutation matrix `σ`, a vector `y` fixed by
the elements of a parahoric subgroup `P_f` with diagonal entries `≡ 1 (mod 𝔭)`, and a diagonal `t` subject to an order
condition relative to `σ` and `f` (for `σ = 1`: whenever `i < j`, `|t_i| ≤ |t_j|`, or `f(j) ≤ f(i)` and
`|t_i| ≤ q·|t_j|`), which the formal proof has beside 6.4 ([ShortProof], `Lib/LocalGL/Iwahori/QuadraticRelation`
(`New.IsExponent.apply_monomial_translate`)). With these, the step from `r + 1` to `r` becomes the recursion of the
elementary symmetric functions under adjoining the variable `y_r`. (d) is a bijection between the two families of
cosets, given by the inverse transpose followed by `c^{−1}`.

Let `F` be a non-archimedean local field, `ρ` smooth.

(a) For `t ∈ T⁺` and `x ∈ V^{I₁}`, the Hecke operator of `I₁tI₁` sends `x` to `deg(t)·U_t x`, where
`deg(t) := ∏_{i<j} |t_j/t_i|` is the number of cosets in `I₁tI₁/I₁`.

(b) *Satake's formula, in stages.* Let `x ∈ V^{GL_N(𝒪)}`, `θ_0, …, θ_{N−1}` characters of `F^×`, `ℓ` an exponent for `ξ_θ`, and
`y_i := θ_i(ϖ)`. For `0 ≤ r ≤ N` and `j ≥ 0`: `ℓ(T_{r,j}x) = q^{−j(j−1)/2}·e_j(y_r, …, y_{N−1})·ℓ(x)`, `e_j` the elementary
symmetric function. For `r = 0` this is the value of `ℓ` on `T_j x`.

(c) *The hyperplane count.* For `x ∈ V^{GL_N(𝒪)}`, `0 ≤ r < N`, and every linear map `ψ` on `V` invariant under `ρ(k^{−1})` for
the `k` with `k^{−1} ∈ I₁` whose off-diagonal entries lie in row `r`:
`q^{N−1−r}·ψ(ρ(b_r)T_{r+1,j}x) = ψ(q^j·(T_{r,j+1}x − T_{r+1,j+1}x))`, `b_r` the diagonal matrix with `ϖ` at `r` and `1` elsewhere.

(d) *Duality.* For `x ∈ V^{GL_N(𝒪)}` and `r + i + j = N`, the partial sum `T_{r,j}` of the representation `g ↦ ρ(g^{−ᵀ})` sends `x`
to `ρ(c)T_{r,i}x`, `c` diagonal with entries `1` at the first `r` places and `ϖ^{−1}` at the others.

LocalFactorsOfTwistsAndTypes §3.2 (Macdonald's formula for every residue cardinality, extending the formula that
SmoothRepresentationsOfLocalGroups §SR.4.3 states for `GL_n` over an unramified quadratic extension) gives the Satake
transform of these double cosets in the Hecke algebra; passing from it to (b) needs that an exponent factors through
the Jacquet module, which is not stated there and is 7.6 (b); 7.7 (a) makes this passage for `r = 0`. The formal proof
proves (a)–(d) for `F` the completion of a number field at a finite place.

**In standard terms.** (a) says that `I₁tI₁` is the union of `δ_ℬ(t)^{−1}` cosets, `δ_ℬ` the modulus of the upper
triangular Borel subgroup, so that through 7.6 (a) its Hecke operator corresponds to `δ_ℬ(t)^{−1}ρ_𝒩(t)` on the
Jacquet module, as SmoothRepresentationsOfLocalGroups §SR.2.3 (Pairings, canonical lifting, Iwahori invariants and
Whittaker functionals) states for admissible representations. (b) for `r = 0` and `θ_i` trivial on `𝒪^×` is the case
of the double cosets of the `T_j` of Satake's formula 7.7 (a):
`ℓ(f·x) = 𝒮(f)(q^{−(N−1)/2}θ_0(ϖ), …, q^{−(N−1)/2}θ_{N−1}(ϖ))·ℓ(x)` for every `f` in the spherical Hecke algebra, `𝒮`
the normalised Satake transform, which sends the double coset of `T_j` to `q^{j(N−j)/2}e_j`
(SmoothRepresentationsOfLocalGroups §SR.4.3 (The general linear group)); if some `θ_i` is not trivial on `𝒪^×`, both
sides of (b) for `r = 0` vanish. The partial sums `T_{r,j}` with `r > 0`, and (c), (d), are steps of the route.

*Needs:* 6.1, 6.2, 6.4 (c); WeilRepresentationsOnBanachSpacesOfData §9.1 (basic double cosets, duality
`T_i ↔ T_{N−i}`).

[ShortProof], `Lib/LocalGL/Iwahori/HeckeDegrees` (`New.iwahoriDegree`, `New.heckeFun_iwahoriDoubleCoset_eq_iwahoriDegree_smul`,
`New.echelonRows`, `New.card_echelonRows_mem_residueKer`, `New.partialHecke_hyperplane_count`,
`New.IsExponent.apply_partialHecke`, `New.partialHecke_dual`)

### 6.6 Sorting exponents

*Origin:* adapted from the published theory of the exponents of the Jacquet modules of principal series representations of
`p`-adic groups (Casselman, The unramified principal series of p-adic groups I, Compositio 40 (1980); Haines, Kottwitz
and Prasad, Iwahori–Hecke algebras, arXiv math/0309168, §1): here for `GL_N` at pro-`p` Iwahori level, with exponents
in the sense of 6.1: (a) starts from an exponent `ℓ` and a vector `x` as there with `ℓ(x) ≠ 0` and gives an exponent
for a permutation of the characters along which `|θ_i(ϖ)|` does not increase; (b) turns an Iwahori eigenvector into an
exponent when the representation has an invariant positive definite form; (c) and (d) combine the two into Iwahori
eigenvectors with such characters.

*Method of the formal proof:* if two adjacent characters are in the wrong order, the quadratic relation 6.4 (a) for that
transposition shows that the exponent with the two characters exchanged is nonzero at the translate of `x`; induction on the
number of inversions. That the exchanged form, built from `ℓ∘ρ(s)∘e_{I₁}` for the transposition `s`, is an exponent
uses, besides 6.4 (a) and (c), the value of an exponent at a translate `ρ(t)ρ(σ)y` recalled in the sketch of 6.5,
which is not a clause of 6.4; the formal proof has it beside 6.4 ([ShortProof],
`Lib/LocalGL/Iwahori/QuadraticRelation` (`New.IsExponent.apply_monomial_translate`)), and uses it again in (c).
For unitary `ρ`, the finite-dimensional space of `I₁`-fixed vectors of a cyclic span is stable under the
commuting operators `U_t` and their adjoints, so a joint eigenvector of the duals of the `U_t` exists at the eigenvalue of `y`, and
the invariant form turns it into an exponent. The last statement takes the eigenvectors along a sum over `GL_N(𝓀)` against
the Harish-Chandra induced character of the `χ_a∘det` (4.2 (e)).

Let `ρ` be smooth.

(a) Let `x ∈ V^{I₁}` be such that the diagonal matrices with unit entries act on `x` by a character `τ` (`ρ(t)x = τ(t)x`), and
such that every permutation matrix whose permutation `σ` satisfies `τ(ε e_i) = τ(ε e_{σ(i)})` for all units `ε` and all `i`
acts on `x` by a scalar (`ε e_i` the diagonal matrix with `ε` at `i` and `1` elsewhere). If `ℓ` is an exponent for `ξ_θ` with
`ℓ(x) ≠ 0`, there is a permutation `σ` such that some exponent for `ξ_{θ∘σ}` is nonzero at `ρ(σ^{−1})x` and
`i ↦ |θ_{σ(i)}(ϖ)|` does not increase.

(b) Let `x ∈ V` be any vector, let `ρ` carry an invariant positive definite hermitian form `B`, and let the `I₁`-fixed vectors
of the span `⟨ρ(GL_N(F))x⟩` form a finite-dimensional space. If this span contains an Iwahori eigenvector `y` for `ξ`, it
contains `w` with `B(w, w) ≠ 0` such that `B(w, ·)` is an exponent for `ξ`.

(c) Let `x ≠ 0` satisfy the hypotheses of (a), and let `ρ`, `B` and `x` satisfy those of (b). Then there are characters `θ_i`
such that some exponent for `ξ_θ` is nonzero at `x`, `θ_i(ε) = τ(ε e_i)` for units `ε`, and for some permutation `σ` the values
`|θ_{σ(i)}(ϖ)|` do not increase and the span of `x` contains an Iwahori eigenvector for `ξ_{θ∘σ}`.

(d) Let `ρ` be unitary as in (b) with finite-dimensional `I₁`-fixed vectors in every cyclic span, and let `x ∈ V` be any
vector fixed by the kernel of `GL_N(𝒪) → GL_N(𝓀)`. Let `χ_1, …, χ_s` be distinct characters of `𝓀^×`, `m_1 + ⋯ + m_s = N`,
`Y := (∏_a (χ_a∘det)|_{m_a})|_{GL_N(𝓀)}` (product `∗` of 4.1), `λ : GL_N(𝓀) → GL_N(𝒪)` a section of the reduction, and
suppose `Σ_{g∈GL_N(𝓀)} conj(Y(g))·ρ(λ(g))x ≠ 0`. Then the span of `x` contains an Iwahori eigenvector for some `ξ_θ` with `|θ_i(ϖ)|` non-increasing in `i`, and there is a labelling
`c : {0, …, N − 1} → {1, …, s}` taking each value `a` exactly `m_a` times with `θ_i(ε) = χ_{c(i)}(ε mod 𝔭)` for every unit `ε`.

**In standard terms.** Through 7.6 (b), (c), for characters `θ_i` trivial on `1 + 𝔭` an exponent for `ξ_θ` is a
`GL_N(F)`-equivariant map `Υ : V → I_ℬ(ξ_θ)`, its value at `v ∈ V` being `Υ(e_{I₁}v)(1)` (for other `θ_i` the only
exponent is `0`), and an Iwahori eigenvector for `ξ` is a vector of `V^{I₁}` whose image in the Jacquet module `V_𝒩`
is a nonzero vector on which `𝒯` acts by `ξ`. So (a) says that, for `x` as there, if such a map `Υ` has `Υ(x)(1) ≠ 0`,
there are a permutation `σ` along which `|θ_{σ(i)}(ϖ)|` does not increase and a map `Υ′` to the principal series
`I_ℬ(ξ_{θ∘σ})` of the permuted characters with `Υ′(e_{I₁}ρ(σ^{−1})x)(1) ≠ 0`; (b) that, for `ρ`, `B` and `x` as there,
a character `ξ` trivial on `𝒯₁` by which `𝒯` acts on a nonzero vector of the Jacquet module of the span of `x` is also
one by which `𝒯` acts on a one-dimensional quotient of that Jacquet module, through the form `B(w, ·)`; and (c), (d)
combine the two.

*Needs:* 4.1, 4.2 (e), 6.1, 6.2, 6.4.

[ShortProof], `Lib/LocalGL/Iwahori/SortedExponents` (`New.IsExponent.apply_permGL_swap_diagGL_compactMean`,
`New.IsExponent.exists_sorted`, `New.IsIwahoriEigen.exists_isExponent`, `New.exists_sorted_isIwahoriEigen_of_diagGL_smul`,
`New.exists_sorted_of_detChar`)

### 6.7 Sorted unramified exponents are seen by spherical vectors

*Origin:* adapted from the published theory of the unramified principal series of `p`-adic groups (Casselman, The
unramified principal series of p-adic groups I, Compositio 40 (1980), Propositions 2.4, 2.5, 3.6; Haines, Kottwitz and
Prasad, Iwahori–Hecke algebras, arXiv math/0309168, §1): here, for `GL_N` and exponents in the sense of 6.1, a nonzero
exponent with unramified characters and non-increasing `|θ_i(ϖ)|` does not vanish on the `GL_N(𝒪)`-fixed vectors;
with ties between the `|θ_i(ϖ)|` allowed and no regularity or admissibility assumed; and, in (b), the stability of
the eigenspaces of `P_1` under the Hecke operator of `diag(ϖ, 1, …, 1)` at level `I₁`.

*Method of the formal proof:* (a) goes down the chain of parahoric subgroups `P_{min(m,·)}`, `0 ≤ m ≤ N` (6.1 (a)),
from `GL_N(𝒪)` at `m = 0` to the Iwahori subgroup at `m = N`, showing at each level that `ℓ` vanishes on all means over
`P_{min(m,·)}`; at `m = 0` this is the hypothesis. For the step from `m` to `m + 1`, the mean over the larger group of
a vector fixed by the smaller one is written, on `I₁`-invariant forms, through the translates of that vector by the
transpositions `(m j)`, with multiplicities counted over the residue field by the last nonzero coordinate. For `z`
fixed by a parahoric subgroup, `ℓ` at the translate by `(m j)` of `ρ(d_m)z`, `d_m` diagonal with `ϖ^{−1}` at `m` and
`1` elsewhere, is `θ_j(ϖ)^{−1}·q^{N−1−j}` times `ℓ` at the translate of `z`. This is the case `σ = (m j)`, `t = d_j`
of the identity `ℓ(ρ(t)ρ(σ)y) = ξ(t)·ℓ(ρ(σ)y)` recalled in the sketch of 6.5, which is not a clause of 6.4; the formal
proof has it beside 6.4 ([ShortProof], `Lib/LocalGL/Iwahori/QuadraticRelation`
(`New.IsExponent.apply_monomial_translate`)). The ordering of the `|θ_i(ϖ)|` excludes the one relation between them
under which `ℓ` could survive the step. At `m = N`, `ℓ` is invariant under the Iwahori subgroup, because the `θ_i` are
trivial on units (6.4 (c)), so `ℓ(x)` is the value of `ℓ` on the mean of `x` over it, which is `0`.

(a) Let `ρ` be smooth, `ℓ` an exponent for `ξ_θ` with every `θ_i` trivial on `𝒪^×` and `|θ_0(ϖ)| ≥ |θ_1(ϖ)| ≥ ⋯ ≥ |θ_{N−1}(ϖ)|`. If
`ℓ` vanishes on `V^{GL_N(𝒪)}`, then `ℓ = 0`.

(b) Let `P_1 := P_{min(1,·)}` (the `k ∈ GL_N(𝒪)` with `k_{i0} ∈ 𝔭` for `i ≠ 0`), `χ` a function on `F`, and
`V_χ := {z ∈ V^{I₁} : ρ(k)z = χ(k_{00})·z for all k ∈ P_1}`. Then `V_χ` is stable under the Hecke operator of
`I₁·diag(ϖ, 1, …, 1)·I₁`.

The formal proof proves (b) for `F` the completion of a number field at a finite place.

**In standard terms.** Through 7.6 (c), (a) says that for `θ_i` trivial on `𝒪^×` with `|θ_0(ϖ)| ≥ ⋯ ≥ |θ_{N−1}(ϖ)|`,
every nonzero `GL_N(F)`-equivariant map from `V` to `I_ℬ(ξ_θ)`, the normalised principal series of
`t ↦ ∏_i θ_i(t_i)|t_i|^{(N−1)/2}`, is nonzero on `V^{GL_N(𝒪)}`; so every nonzero subrepresentation of this principal
series contains its line of `GL_N(𝒪)`-fixed vectors, and the Hecke polynomial of a spherical eigenvector at which such
an exponent does not vanish is `∏_i (X − θ_i(ϖ))` (7.7 (b), (c)).

*Needs:* 6.1, 6.2, 6.4 (c), 6.5 (a).

[ShortProof], `Lib/LocalGL/Iwahori/SphericalExponents` (`New.sum_by_last_nonzero_coord`, `New.exists_compactMean_and_swap_eq_sum`,
`New.Patching.parahoricEigenspace`, `New.Patching.parahoricEigenspace_mem_invtSubmodule`,
`New.IsExponent.eq_zero_of_apply_permGL_swap_eq_zero`, `New.IsExponent.eq_zero_of_eq_zero_on_spherical`)

### 6.8 Chains of roots of the Hecke polynomial of a spherical vector

*Origin:* adapted from the published theory of the unitary dual of the general linear groups over `p`-adic fields (the
classification by segments: Tadić, Classification of unitary representations in irreducible representations of
general linear group (non-archimedean case), Ann. ENS 19 (1986); the inequality at the ends of segments: Bernstein,
P-invariant distributions on GL(N), LNM 1041 (1984)): here, without any classification and without irreducibility,
for the roots of the Hecke polynomial of one spherical eigenvector in a smooth representation with an invariant
positive definite form: a bound from below for the top root of a chain, the chain property, and an orthogonality at
pro-`p` Iwahori level in which only the top root of a chain survives.

*Method of the formal proof:* the inputs are the hyperplane count 6.5 (c) with the duality 6.5 (d), which describe how
`U` and its adjoint for `B` act on the partial Hecke sums `T_{1,j}x`; by 6.5 (a) and the invariance of `B`, that
adjoint is `q^{N−1}·e_{I₁}∘ρ(diag(ϖ^{−1}, 1, …, 1))∘e_{I₁}`. From these formulas, each root `c` of `P` gives an
eigenvector of `U` for `c`, obtained by applying to `x` the cofactor of `X − c` in `P`, evaluated at `U`; (a) is the
positivity of `B` on this vector. For (b), the adjoint of `T_j` for `B` is the operator of the inverse double coset
(AuxiliaryAlgebraAndAnalysisForThetaLifts §2.2 (b)), which sends `x` to `ρ(ϖ^{−1}·1)T_{N−j}x`
(WeilRepresentationsOnBanachSpacesOfData §9.1 (b)); this makes the set of roots of `P` symmetric under
`y ↦ q^{N−1}/ȳ`, and (a), applied inside a string of roots, propagates the string. For (c), the same pairing shows that
the vector of `c` vanishes when `qc` is also a root; so the factors of the roots below the top one can be removed one
after the other.

Let `E` be a number field, `w` a finite place with residue field of `q` elements, `F = E_w`, `N ≥ 1`, `ρ` a smooth representation of
`GL_N(F)` on `V` with a positive definite hermitian form `B` invariant under `ρ`, and `x ≠ 0` in `V^{GL_N(𝒪)}` with `T_j x = t_j x`
for `0 ≤ j ≤ N`; `P := P_x`. Let `U` be the Hecke operator of `I₁·diag(ϖ, 1, …, 1)·I₁`.

(a) If `P(c) = 0` and `P(qc) ≠ 0`, then `|c|² ≥ q^{N−2}`.

(b) If `P(c) = 0` and `|c|²·q^k = q^N`, then `c, cq, …, cq^{k−1}` are roots of `P`.

(c) Let `d ≠ 0`, `k ≥ 0` and `R ∈ ℂ[X]`, and suppose `P(X/d) = ∏_{i=0}^{k}(X − q^i)·S(X)` with `S` dividing `R` (so `c, cq, …, cq^k` are roots
of `P` for `c = 1/d`). Then `B(x, ((dU − q^k)·R(dU))y) = 0` for every `y ∈ V^{I₁}`.

LocalFactorsOfTwistsAndTypes §3.4 and §7.2 (i) bound the Satake parameters of a
spherical vector of a unitary representation in an annulus (`Q^{−(n−1)/2} ≤ |α_i| ≤ Q^{(n−1)/2}`); they give neither
the bound (a) at the top of a chain nor (b) or (c).

On Tau Ceti's main branch, later than the revision pinned here: `TauCeti.glnHeckePolynomial`, the same formal
polynomial as `P_x`.

**In standard terms.** (a) and (b) are consequences of the classification of the irreducible unitarizable
representations of `GL_N(F)` (Tadić (1986); AutomorphicSpectralTheory §7.0b): by 7.8, the span of `x` is such a
representation, with a nonzero `GL_N(𝒪)`-fixed vector and Hecke polynomial `P`, and the classification groups the
roots of `P` into strings `c, cq^{−1}, …, cq^{1−m}` with `|c|² = q^{N+m−2}`, or with `q^{N+m−3} < |c|² < q^{N+m−1}` in
pairs, which gives (a), with strict inequality, and (b). (c) has no counterpart in 7.8.

*Needs:* 6.1, 6.5 (c), (d); AuxiliaryAlgebraAndAnalysisForThetaLifts §2.2 (b) (adjoints of spherical Hecke operators);
WeilRepresentationsOnBanachSpacesOfData §9.1 (b) (duality `T_i ↔ T_{N−i}`).

[ShortProof], `Lib/LocalGL/SphericalChainLemma` (`New.Patching.HasRootChain`, `New.Patching.chain_lemma_of_adjoint`,
`New.Patching.chain_lemma`, `New.Patching.le_norm_sq_of_isRoot_of_not_isRoot_mul`, `New.Patching.isRoot_chain_of_norm`,
`New.Patching.pairing_aeval_heckeCoset_eq_zero`)

## Layer 7: Comparison with the standard theory

The standard theory is the reference for the objects of this roadmap. For Layers 1–3 it is the theory of the
irreducible rational representations of `GL_N(ℂ)` (RepresentationTheory/ClassicalGroups) and of the Weyl and dual Weyl
lattices of `GL_N` over the integers (IntegralWeylModulesOfGeneralLinearGroups); for Layers 4 and 5, the class
functions of the groups `GL_n(k)` under Harish-Chandra induction (ReductiveGroups Layer 7c), Green's characters and
Shintani descent (FiniteReductiveGroups §§5.2, 5.4, 5.6 (b), 5.11) and the Steinberg character
(SmoothRepresentationsOfLocalGroupsPartII §4.1); for Layer 6, the Jacquet modules, the Satake isomorphism and the
unitary dual of `GL_N(F)` (SmoothRepresentationsOfLocalGroups §§SR.2.1, SR.2.2, SR.2a.1, SR.3.3, SR.4.1–SR.4.3;
AutomorphicSpectralTheory §7.0b). This layer states how each object of the route is related to its standard
counterpart, by an identification or by the implication that holds; through it, the paragraphs **In standard terms**
of Layers 1–6 state the results of the route on the standard objects. The route of Layers 1–6 does not use this layer.

### 7.1 The polynomial model and the Weyl modules

*Origin:* comparison of the model of 1.1 with the irreducible rational representations of `GL_N(ℂ)`
(RepresentationTheory/ClassicalGroups) and with the Weyl and dual Weyl lattices of
IntegralWeylModulesOfGeneralLinearGroups; not part of the formal proof.

*Proof route:* (a) For one place, by 1.3 (a), (b), `g ↦ S_κ(g)` is a polynomial representation of `GL_N(ℂ)` and
`ρ_{κ,e}` a rational one, so `ρ_{κ,e}` is a direct sum of representations `V_ν` (RepresentationTheory/ClassicalGroups
§§0.4, 3.3). By 1.3 (d) for the fixed numbering, its character at `diag(x)` is `(x_0⋯x_{N−1})^e` times the quotient of
the two alternants there, which is the Schur polynomial `s_{λ_κ}(x)`. The character of `V_ν` is
`(x_0⋯x_{N−1})^{ν_{N−1}}` times the Schur polynomial of `ν − ν_{N−1}·(1, …, 1)` (§§4.2, 4.3 there), and after
multiplication by a common power of `x_0⋯x_{N−1}` these characters are linearly independent (the Schur basis of §4.1
there); so the sum has the single term `ν = λ_κ + e·(1, …, 1)`. For several places, by 1.3 (b), `S_κ(g)` is the
Kronecker product over `τ` of the one-place Schur matrices, on `B(κ) = ∏_τ B_τ`, and `∏_τ det(g_τ)^{e_τ}` is the
product of the twists. (b) Positivity is 2.1 (b) and invariance 2.3 (c), as `|det u_τ| = 1`. For `n′ = n` the
exponents `d_τ` vanish, and 2.3 (a) with `z = 1` reads `S_κ(w)*G_κ = G_κS_κ(w*)`, which is the contravariance. If
`(ξ, η) ↦ ξ*Aη` is a hermitian form invariant under the `S_κ(u)`, `G_κ^{−1}A` commutes with them, so it is a scalar by
2.4 (a), real because `A` and `G_κ` are hermitian. Since `diag(x)·y_p = y_p·diag(x∘p^{−1})` on the first `N_τ` columns
at each `τ`, the semi-invariance of 1.1 (c) and 1.3 (c) give
`S_κ(diag(x))ev_{y_p} = ∏_{τ,a} x_{τ,a}^{λ_κ(τ, p_τ(a))}·ev_{y_p}`, which for the fixed numberings is the highest
weight; and `⟨ev_{y_p}, ev_{y_p}⟩_G = 1` by 2.4 (d). (c) is the relation recorded in 2.2 (*Relation to
IntegralWeylModulesOfGeneralLinearGroups*): `P_κ` is injective (2.1 (e)); by 2.2 (a) and `H(κ) = ⟨v_κ, v_κ⟩_F` (1.1
(i)), `⟨P_κ(ξ), P_κ(η)⟩_F = H(κ)·ξ*G_κη`, and `⟨P_κ(ξ), f⟩_{λ_κ} = ξ(f)` for rational `ξ` and `f ∈ ∇_ℚ(κ)`, so
`P_κ(W_ℤ(κ))` is the dual of `∇_ℤ(λ_κ)` for `⟨·,·⟩_{λ_κ}`, which is `Δ_ℤ(λ_κ)`
(IntegralWeylModulesOfGeneralLinearGroups, Conventions); the actions correspond by 2.1 (e) with `z = g`. (d) For one
place `v_κ` is the vector `v_{λ_κ}` of that roadmap, and `⟨v_{λ_κ}, v_{λ_κ}⟩_F` is the product of the hook lengths
(§3.1, §3.2 (a) there); for several places the Fock pairing is multiplicative over the colours (1.1 (i)).

For one place (`Φ` a point), identify `GL(n, ℂ)` with `GL_N(ℂ)` through the fixed numbering of the rows and put
`λ_κ := (λ_κ(0), …, λ_κ(N − 1))`, a dominant weight with last entry `0`. For a dominant weight `ν` of `GL_N`, `V_ν` is
the irreducible rational representation of `GL_N(ℂ)` of highest weight `ν` (RepresentationTheory/ClassicalGroups
§3.3). For several places the same applies at each `τ`, with the weight `λ_κ(τ, ·)` of `GL(n_τ)`.

(a) *The representation.* For one place, `ρ_{κ,e}` on `ℂ^{B(κ)}` is isomorphic to `V_{λ_κ+e·(1, …, 1)}`; in particular
`g ↦ S_κ(g)` is the irreducible polynomial representation of highest weight `λ_κ`, whose character at `diag(x)` is the
Schur polynomial `s_{λ_κ}(x)`. For several places, `ρ_{κ,e}` is isomorphic, as a representation of `∏_τ GL(n_τ, ℂ)`,
to the external tensor product of the `V_{λ_κ(τ,·)+e_τ·(1, …, 1)}`.

(b) *The form.* `⟨·,·⟩_G` is a positive definite hermitian form on `ℂ^{B(κ)}`, invariant under `ρ_{κ,e}(u)` for
`u ∈ ∏_τ U(n_τ)` and contravariant: `⟨S_κ(g)ξ, η⟩_G = ⟨ξ, S_κ(g*)η⟩_G` for every family `g` of complex square
matrices, `g*` the conjugate transpose at each `τ`. Every hermitian form invariant under the `S_κ(u)` is a real
multiple of it, and `⟨v, v⟩_G = 1` for the highest weight vector `v = ev_{y_p}` of 2.4 (d), `p_τ` the fixed
numberings.

(c) *The lattices.* For one place, `∇_R(κ)` is the dual Weyl lattice `∇_R(λ_κ)` of
IntegralWeylModulesOfGeneralLinearGroups (Conventions) for every commutative ring `R` (1.1 (c)), which its §0.1 treats
for integral domains `R`, and `P_κ` maps `W_ℤ(κ)` isomorphically onto the Weyl lattice `Δ_ℤ(λ_κ)` of that roadmap (its
Conventions), the dual of the dual Weyl lattice `∇_ℤ(λ_κ)` for the normalised Fischer form `⟨·,·⟩_{λ_κ}`. It carries
`S_κ(g)` to the action `f ↦ f(gᵀ·)`, `ρ_{κ,e}(g)` to the action of that roadmap for the weight `λ_κ + e·(1, …, 1)`,
and `⟨·,·⟩_G` to the normalised form: `⟨P_κ(ξ), P_κ(η)⟩_{λ_κ} = ⟨ξ, η⟩_G`. So `W_R(κ) = W_ℤ(κ) ⊗ R` is `Δ_ℤ(λ_κ) ⊗ R`,
and `G_κ` is the Gram matrix of the contravariant form of the Weyl lattice of value `1` at the highest weight vector,
in the basis that `P_κ` gives it.

(d) *The hook number.* `H(κ)` is the product over `τ` of the products of the hook lengths of the Young diagrams with
rows `λ_κ(τ, 0) ≥ λ_κ(τ, 1) ≥ ⋯`.

*Needs:* 1.1, 1.3 (a)–(d), 2.1 (b), (e), 2.2 (a), 2.3 (a), (c), 2.4 (a), (d); RepresentationTheory/ClassicalGroups
§0.4 (Complete reducibility over `ℂ`), §3.3 (Highest weight and the classification), §4.1 (Schur products and
representation multiplicities), §4.2 (Characters are Schur polynomials), §4.3 (The rational character is Laurent);
IntegralWeylModulesOfGeneralLinearGroups (Conventions), §0.1 (Standard bideterminant basis and saturation), §3.1 (The
Fischer norm of a product of leading minors), §3.2 (The Fischer norm of `v_λ` and the slopes of the Weyl and dual Weyl
lattices).

### 7.2 The ring of class functions and Harish-Chandra induction

*Origin:* comparison of the ring of 4.1 with the class functions of the finite general linear groups under parabolic
induction (Green (1955); the Harish-Chandra functors of ReductiveGroups Layer 7c); not part of the formal proof.

*Proof route:* (a) If `g` is invertible, so are `g|_W` and `g|_{V/W}` for every `g`-stable `W`, so the value of
`A ∗ A′` at an invertible class involves only invertible classes: restriction to the invertible classes is a ring
homomorphism, onto because a function on the invertible classes extends by zero. For functions `A_a` and a class
function `Y` on `GL_n(k)`, 4.2 (e) and Frobenius reciprocity for `P_b ⊂ GL_n(k)` give
`⟨(∏_a A_a|_{n_a})|_{GL_n(k)}, Y⟩_{GL_n(k)} = ⟨Ind_{P_b}^{GL_n(k)}(g ↦ ∏_a A_a(g_a)), Y⟩_{GL_n(k)}`, so the two class
functions agree; ReductiveGroups Layer 7c identifies Harish-Chandra induction with induction from `P_b` of the
inflation from its block diagonal quotient. (b) For an invertible class `a` on `V_a` and a class `b` on `V_b`, let `𝒰`
be the unipotent radical of the stabiliser of `V_a` in `GL(V_a ⊕ V_b)`. The endomorphism with diagonal blocks `a`, `b`
and upper right block `x` is `diag(a, b)·u` for a unique `u ∈ 𝒰`, and `u` runs over `𝒰` once as `x` runs over
`Hom(V_b, V_a)`; so `δA(a, b)` is the mean over `𝒰` of `A(diag(a, b)u)`, which is the character form of the
restriction to the invariants of `𝒰` of ReductiveGroups Layer 7c (the character of these invariants at an element of
the Levi subgroup is the mean over `u ∈ 𝒰` of the character at its product with `u`). If `a` or `b` is not invertible,
none of these endomorphisms is, which gives the clause on extensions by zero. (c) is (a) and (b) read on 4.2 (c), (e).

Let `k` be finite and, for `n ≥ 0`, `Cl_n` the space of complex class functions on `GL_n(k)` (`Cl_0 = ℂ`), with the
inner product `⟨·,·⟩_n`. For `a + b = n`, `Ind_{a,b} : Cl_a ⊗ Cl_b → Cl_n` and `Res_{a,b} : Cl_n → Cl_a ⊗ Cl_b` are
Harish-Chandra induction from, and restriction to, the block diagonal subgroup `GL_a(k) × GL_b(k)` along the block
upper triangular matrices, on class functions: the characters of the functors of ReductiveGroups Layer 7c, with
complex coefficients. A class function on `GL_n(k)` is *cuspidal* if `Res_{a,b}` kills it whenever `a, b ≥ 1`.

(a) *The ring.* `A ↦ (A|_{GL_n(k)})_{n≥0}` is a surjective ring homomorphism from `(𝓗(k), +, ∗)` onto `∏_{n≥0} Cl_n`
with the product `(f ∗ f′)_n = Σ_{a+b=n} Ind_{a,b}(f_a ⊗ f′_b)`; its kernel is the ideal of the functions that vanish
on the invertible classes. On `GL_n(k)` the product `∏_a A_a|_{n_a}` of 4.2 (e) is the Harish-Chandra induction of
`⊗_a A_a|_{GL_{n_a}(k)}` from the block diagonal subgroup of `P_b`.

(b) *Restriction and cuspidality.* For invertible classes `a`, `b` of dimensions `m`, `m′`,
`δA(a, b) = Res_{m,m′}(A|_{GL_{m+m′}(k)})(a, b)`. So if `A` is cuspidal in the sense of 4.1 (b), every `A|_{GL_n(k)}`
is cuspidal; and a class function on `GL_n(k)` is cuspidal exactly when its extension by zero to all classes is
cuspidal in the sense of 4.1 (b). For `f` vanishing off the invertible classes of dimension `d` and `a` invertible of
dimension `m`, `∂_{d,f}A(a) = ⟨f, Res_{m,d}(A|_{GL_{m+d}(k)})(a, ·)⟩_d`.

(c) On the invertible classes, 4.2 (c) is the adjunction between `Ind_{a,b}` and `Res_{a,b}`, and 4.2 (e) is Frobenius
reciprocity for parabolic induction.

*Needs:* 4.1, 4.2 (c), (e); ReductiveGroups Layer 7c (Harish–Chandra functors and biadjunctions).

### 7.3 Green's cuspidal functions, Green's characters and the characters of labels

*Origin:* comparison of the functions `C_η`, `τ_P` and `Ξ_c` of 4.1 (c), 4.4 and 5.3 with Green's virtual characters
of Coxeter tori, Green's cuspidal characters and their Harish-Chandra products (Green (1955), Theorems 2, 9, 12–14;
FiniteReductiveGroups §§5.2, 5.4, 5.6 (b)); not part of the formal proof.

*Proof route:* (a) By 4.3 (b), `C_η ∗ 𝟙 = −β_η` and `C_η` vanishes in dimension `0`. On `GL_n(k)`, `β_η` is the
eigenvalue sum `b_{θ̃}^{(n)}` of FiniteReductiveGroups §5.6 (b) for the restriction of `θ̃` to `k̄^×`, the eigenvalues
of an invertible matrix lying in `k̄^×`, and by 7.2 (a) `C_η ∗ 𝟙` restricts to
`Σ_{1≤a≤n} Ind_{a,n−a}(C_η|_{GL_a(k)} ⊗ 1)`. §5.6 (b) there writes
`b_{θ̃}^{(n)} = Σ_{1≤a≤n} Ind_{a,n−a}(R_{T_{(a)}}(θ̃|_{𝔽_{q^a}^×}) ⊗ 1)`. By induction on `n` the terms with `a < n`
agree, and the terms with `a = n` are the two sides of (a). (b) As `x^{Q−1} = 1` with `Q = q^d` and `ω` is injective,
`ω` maps `𝔽_Q^×` onto the group of `(Q − 1)`-th roots of unity; for `z₀ ∈ 𝔽_Q^×` with `ω(z₀) = e^{2πi/(Q−1)}`,
`θ_x|_{𝔽_Q^×}` is the character with `z₀ ↦ ω(x)`. So `x ↦ θ_x|_{𝔽_Q^×}` is an isomorphism from `𝔽_Q^×` onto its group
of characters, with `θ_{x^q} = θ_x^q`. The roots of `P` are the `d` distinct `x^{q^i}`, so `θ_P` is regular and its
orbit is the set of the `θ_{x^{q^i}}|_{𝔽_Q^×}`, which determines `P`; orbits of polynomials of different degrees have
different sizes. Then (a) with `θ̃ = θ_x` and `τ_P = (−1)^d(C_{θ_x})|_d` (4.4) gives the formula. (c)
`Ξ_c = ∏_i τ_{P_i}` for `∗` (5.3), and 7.2 (a) with the formula of (b) for each `τ_{P_i}` gives the first formula. The
label of FiniteReductiveGroups with value `1` at the orbits of the `θ_{P_i}` has the Levi subgroup `∏_i GL_{d_i}` and
the cuspidal character `⊠_i (−1)^{d_i−1}R_{T_{(d_i)}}(θ_{P_i})` (§5.2 there), and §5.4 (b), (d) there, with
`s_{(1)} = p_1`, identify its Harish-Chandra induction with the irreducible character of the Green datum stated; the
degree of a character induced from a subgroup is the index times the degree of the inducing character, the index in
`GL_r(k)` of the block upper triangular subgroup with blocks of sizes `d_1, …, d_s` is
`∏_{1≤j≤r}(q^j − 1)/∏_{1≤i≤s}∏_{1≤j≤d_i}(q^j − 1)` (the group `GL_n(k)` has `q^{n(n−1)/2}∏_{1≤j≤n}(q^j − 1)`
elements), and the cuspidal character attached to `θ_{P_i}` has degree `∏_{1≤j<d_i}(q^j − 1)` (§5.2 there).

Let `k` be finite with `q` elements, `K` an algebraically closed field containing `k`, `k̄ ⊂ K` the algebraic closure
of `k` in `K` and `𝔽_{q^n} ⊂ k̄` its subfield with `q^n` elements, so that the groups `GL_n(k)` and the fields
`𝔽_{q^n}` are as in FiniteReductiveGroups §5.2. For a character `θ` of `𝔽_{q^n}^×`, `R_{T_{(n)}}(θ)` is Green's
virtual character of FiniteReductiveGroups §5.6 (b), the Deligne–Lusztig character of the Coxeter torus, whose
rational points form `𝔽_{q^n}^×`. If `θ` is regular (its conjugates `θ^{q^i}`, `i < n`, are distinct),
`(−1)^{n−1}R_{T_{(n)}}(θ)` is the irreducible cuspidal character of FiniteReductiveGroups §5.2 attached to `θ`, which
depends only on the Frobenius orbit of `θ`.

(a) For every homomorphism `θ̃ : K^× → ℂ^×`, every `η : K → ℂ` equal to `θ̃` on `K^×` and every `n ≥ 1`:
`C_η|_{GL_n(k)} = −R_{T_{(n)}}(θ̃|_{𝔽_{q^n}^×})`.

(b) Let `ω` be as in 4.4, `P ∈ k[X]` monic irreducible of degree `d` with `P(0) ≠ 0`, and `x ∈ k̄` a root of `P`. Then
`θ_P := θ_x|_{𝔽_{q^d}^×}` (4.4, with `Q = q^d`) is regular, its Frobenius orbit depends only on `P`, and distinct `P`
give distinct orbits; and `τ_P|_{GL_d(k)} = (−1)^{d−1}R_{T_{(d)}}(θ_P)` is the cuspidal character attached to `θ_P`.

(c) For a label `c` of degree `r` with monic irreducible factors `P_1, …, P_s` of degrees `d_1, …, d_s`,
`Ξ_c|_{GL_r(k)}` is the Harish-Chandra induced character, from the block diagonal subgroup `∏_i GL_{d_i}(k)`, of
`⊗_i (−1)^{d_i−1}R_{T_{(d_i)}}(θ_{P_i})`. It is the irreducible character that FiniteReductiveGroups §5.4 (d) attaches
to the Green datum with value the partition `(1)` at the orbits of the `θ_{P_i}` and the empty partition elsewhere,
and its degree is `∏_{1≤i≤r}(q^i − 1)/∏_{1≤i≤s}(q^{d_i} − 1)`.

*Needs:* 4.1 (c), 4.3 (b), 4.4, 5.3, 7.2 (a); FiniteReductiveGroups §5.2 (Green's cuspidal characters), §5.4 (b), (d)
(The characteristic map of a label), §5.6 (b) (Uniformity and Green functions).

### 7.4 The inverse of the constant function and the Steinberg character

*Origin:* comparison of `μ` (4.2 (a), 4.3) with the Steinberg character (SmoothRepresentationsOfLocalGroupsPartII
§4.1), and of the torus identity 4.3 (f) with the product of the Steinberg character and a character of a torus
(Carter (1985)); not part of the formal proof.

*Proof route:* (a) `𝟙 − 1` vanishes in dimension `0`, so its `m`-th power under `∗` vanishes in the dimensions below
`m`, and `μ = Σ_{m≥0}(−1)^m(𝟙 − 1)^m`, the sum being finite in each dimension. In dimension `n` the `m`-th power is
the sum, over the compositions `(n_1, …, n_m)` of `n` into positive parts, of the products `𝟙|_{n_1} ∗ ⋯ ∗ 𝟙|_{n_m}`,
which on `GL_n(k)` are the permutation characters `Ind_{P_b}^{GL_n(k)}1` of the groups `P_b` of 4.2 (e) (4.2 (e) with
all `A_a = 𝟙`, and Frobenius reciprocity). So `μ|_{GL_n(k)}` is the sum over the compositions of
`(−1)^m·Ind_{P_b}^{GL_n(k)}1`, `m` the number of parts, which is `(−1)^n St_n`. At the class of dimension `0`,
`μ ∗ 𝟙 = 1` gives the value `1`. (b) is 4.3 (a), (e) read through (a). (c) `μ` takes integer values (by the recursion
`μ ∗ 𝟙 = 1`), so the left side of 4.3 (f) is `⟨C_η·μ, B⟩_m`, and by Frobenius reciprocity for `L^× ⊂ GL_m(k)` its
right side is `⟨Ind_{L^×}^{GL_m(k)}(η∘φ), B⟩_m`, for every `B`. The second form follows with (a) and 7.3 (a).

Let `k` be finite with `q` elements. For `n ≥ 1`, `St_n` is the character of the Steinberg representation of `GL_n(k)`
of SmoothRepresentationsOfLocalGroupsPartII §4.1, for the split group `GL_n` over `k` and its upper triangular Borel
subgroup: `St_n` is the sum, over the compositions `(n_1, …, n_m)` of `n` into positive parts, of
`(−1)^{n−m}·Ind_{P_b}^{GL_n(k)}1`, `P_b` the group of block upper triangular matrices with diagonal blocks of sizes
`n_1, …, n_m` (a standard parabolic subgroup, as in 4.2 (e)); in the alternating sum of that section over the sets of
simple reflections, the composition with `m` parts corresponds to a set of `n − m` of them.

(a) `μ|_{GL_n(k)} = (−1)^n·St_n` for every `n ≥ 1`, and `μ` is `1` at the class of dimension `0`.

(b) On invertible matrices, 4.3 (a) is therefore the vanishing of `St_n` off the semisimple elements of `GL_n(k)`, and
4.3 (e) gives `St_n(g) = (−1)^n·∏_{0≤i<d}(−Q^i)` for `g` as there, the multiplication by `z` on a vector space of
dimension `d` over `k′ = k[z]`, a field with `Q` elements, and `n = d·[k′ : k]`.

(c) For `L`, `φ` and `η` as in 4.3 (f), `L` of degree `m` over `k` and `L^×` acting on `L ≅ k^m` by multiplication:
`(C_η·μ)|_{GL_m(k)} = Ind_{L^×}^{GL_m(k)}(η∘φ)`. With (a) and 7.3 (a), if `K` is algebraically closed and `η` is a
homomorphism `θ̃` on `K^×`, this reads `R_{T_{(m)}}(θ̃|_{𝔽_{q^m}^×})·St_m = (−1)^{m−1}·Ind_{L^×}^{GL_m(k)}(θ̃∘φ)`,
where `𝔽_{q^m} = φ(L)`.

*Needs:* 4.2 (a), (e), 4.3 (a), (e), (f), 7.3 (a); SmoothRepresentationsOfLocalGroupsPartII §4.1 (The Steinberg
representation of a finite reductive group).

### 7.5 Descent and Shintani's lift

*Origin:* comparison of descent and lifts (5.1, 5.4) with Shintani's norm map and lift (Shintani, J. Math. Soc. Japan
28 (1976); FiniteReductiveGroups §5.11); not part of the formal proof.

*Proof route:* (a) By 5.1 (b), `δσ` is conjugate by a matrix `g` to some `r(γ)`, `γ ∈ GL_n(k₀)`, and then
`g·Nm_σ(δ)·g^{−1} = r(γ)^{ord σ} = γ`. Two elements of `GL_n(k₀)` conjugate in `GL_n(k′)` are conjugate in `GL_n(k₀)`
(rational canonical form). For the Frobenius, FiniteReductiveGroups §5.11 (a) defines the norm class as the class of
such an element, and §5.11 (b) the lift by its value there. (b) Every element over `σ` is some `δσ`, with
`(δσ)^{ord σ} = Nm_σ(δ)`. If `Ψ` descends to `X` over the coset of `σ`, conjugating `δσ` by a matrix to `r(γ_δ)` gives
`Ψ(δσ) = X(γ_δ)`. Conversely, if `Nm_σ(δ) ∈ GL_n(k₀)` one may take `γ_δ = Nm_σ(δ)`. Descent over `k` concerns the `σ`
with fixed field `k`, which are the generators of `Γ`, and descent over `k′` the element `σ = 1`. The character
induced from the trivial character of the normal subgroup `GL_m(k′)` is `|Γ|` on it and `0` elsewhere. (c) `c′` is
squarefree, `k` being perfect, and `c′(0) ≠ 0`. 5.4 (a) gives a character `Ψ` of `E_r` that descends to `Ξ_c` over `k`
and to `Ξ_{c′}` over `k′`; its restriction to `GL_r(k′)` is irreducible (5.3 (a) over `k′`), so `Ψ` is irreducible,
and (b) gives its values. Let `c = P` be irreducible of degree `m` with root `x`. If `l ∤ m`, `P` is irreducible over
`k′`, and `θ_x` formed with `Q′ = q^{lm}` is `θ_P∘N_{𝔽_{q^{lm}}/𝔽_{q^m}}`: if `ω(x) = e^{2πij/(q^m−1)}`, the exponent
`j(q^{lm} − 1)/(q^m − 1)` is admissible for `Q′`. If `l ∣ m`, `P` is over `k′` the product of `l` irreducible factors
of degree `m/l` with the roots `x, x^q, …, x^{q^{l−1}}`, formed with the same `Q = q^m`, whose characters are the
`θ_P^{q^i}`, `i < l`. In both cases 7.3 (b), (c) over `k′`, with the same `ω`, identify `Ξ_{c′}|_{GL_m(k′)}` with the
representation `τ` of §5.11 (d) for `θ_P`, and 7.3 (b) identifies `Ξ_P|_{GL_m(k)}` with the cuspidal character
attached to `θ_P`. If `τ̃` is a representation of `E_m` with character `Ψ`, its operator at `Fr` intertwines `τ` with
`τ∘Fr`, its `l`-th power is `1`, and `Ψ(δFr)` is the trace of `τ(δ)` composed with it.

Let `k ⊂ k′`, `Γ = Gal(k′/k)` and `E_n = GL_n(k′) ⋊ Γ` be as in 5.1, and write `δσ` for the element `(δ, σ)` of `E_n`.
For `σ ∈ Γ` with fixed field `k₀` and `δ ∈ GL_n(k′)` put `Nm_σ(δ) := δ·σ(δ)⋯σ^{ord σ − 1}(δ) = (δσ)^{ord σ}`.

(a) *Norm classes.* `Nm_σ(δ)` is conjugate in `GL_n(k′)` to an element `γ_δ` of `GL_n(k₀)`, unique up to conjugacy in
`GL_n(k₀)`. For `X ∈ 𝓗(k₀)` the *Shintani lift* along `σ` is `Sh_σ(X)(δ) := X(γ_δ)`. When `σ` is the Frobenius
`x ↦ x^{|k₀|}` of `k′/k₀`, the class of `γ_δ` is the norm class of `δ` of FiniteReductiveGroups §5.11 (a), over `k₀`,
and `Sh_σ(X)` is the Shintani lift of `X|_{GL_n(k₀)}` of §5.11 (b).

(b) *Descent.* A class function `Ψ` on `E_n` descends to `X` over the coset of `σ` (5.1 (a)) exactly when
`Ψ(δσ) = Sh_σ(X)(δ)` for every `δ ∈ GL_n(k′)`. So `Lift_Z(A, A′)` says that for every `m` some `Z`-combination `Ψ` of
characters of `E_m` equals `A′` on `GL_m(k′)` and `Sh_σ(A)` on the coset of every generator `σ` of `Γ`. It records
nothing on the other cosets, and it does not determine `A′` from `A`: if `k′ ≠ k`, adding to `Ψ` the character induced
from the trivial character of `GL_m(k′)` shows that `Lift_Z(A, A′)` implies `Lift_Z(A, A′ + |Γ|·𝟙)`.

(c) *Labels in prime degree.* Let `[k′ : k] = l` be prime, `ω` an injective character of `K^×` for an algebraically
closed field `K ⊇ k′`, `c` a label of degree `r` over `k` and `c′` its image in `k′[X]`, a label over `k′`. There is
an irreducible character `Ψ` of `E_r` equal to `Ξ_{c′}` on `GL_r(k′)` with `Ψ(δσ) = Sh_σ(Ξ_c)(δ)` for every `σ ≠ 1`
and every `δ`: the irreducible character `Ξ_{c′}|_{GL_r(k′)}`, invariant under `Γ`, has an extension to `E_r` whose
values on every coset other than `GL_r(k′)` are the Shintani lift of `Ξ_c|_{GL_r(k)}`. For `c = P` irreducible of
degree `m` this gives FiniteReductiveGroups §5.11 (d) for the regular character `θ_P` of 7.3 (b), with `ε = +1`, the
operator called `A` there being the operator of the Frobenius `Fr : x ↦ x^q` of `k′/k` (written `F` there) in a
representation of character `Ψ`: `Ξ_P|_{GL_m(k)}` is the cuspidal character attached to `θ_P`, and
`Ξ_{c′}|_{GL_m(k′)}` is the representation `τ` of §5.11 (d).

*Needs:* 5.1, 5.3 (a), 5.4 (a), 7.3 (b), (c); FiniteReductiveGroups §5.11 (a), (b), (d) (Shintani descent for `GL_n`).

### 7.6 Exponents and Jacquet modules

*Origin:* comparison of the exponents and Iwahori eigenvectors of 6.1 (c) with the Jacquet modules of
SmoothRepresentationsOfLocalGroups §SR.2.2, through the comparison of Iwahori-fixed vectors with the Jacquet module
(Casselman, The unramified principal series of p-adic groups I, Compositio 40 (1980);
SmoothRepresentationsOfLocalGroups §SR.2.3, there for admissible representations), here for every smooth
representation by 6.4 (b); not part of the formal proof.

*Proof route:* (a) By 6.2 (a), every element of `I₁` is the product of an upper unitriangular matrix in `I₁` and a
lower triangular one in `I₁`, so `I₁ = 𝒩₀𝒯₁𝒩̄₁` with `𝒩₀ := 𝒩 ∩ I₁` and `𝒩̄₁` the lower unitriangular matrices with
entries in `𝔭`, the Haar probability measure of `I₁` being the product of those of the factors; so
`e_{I₁} = e_{𝒩₀}e_{𝒯₁}e_{𝒩̄₁} = e_{𝒩̄₁}e_{𝒯₁}e_{𝒩₀}`. For `t ∈ T⁺`, `t^{−1}𝒩̄₁t ⊆ 𝒩̄₁`, so `e_{𝒩̄₁}ρ(t)x = ρ(t)x` for
`x ∈ V^{I₁}`; as `pr_𝒩∘e_{𝒩₀} = pr_𝒩` and `pr_𝒩(x)` is fixed by `𝒯₁`,
`pr_𝒩(U_t x) = e_{𝒯₁}ρ_𝒩(t)pr_𝒩(x) = ρ_𝒩(t)pr_𝒩(x)`. Surjectivity onto `(V_𝒩)^{𝒯₁}` is Jacquet's lemma for every
smooth representation (SmoothRepresentationsOfLocalGroups §SR.2a.1, *jacquet-lemma-smooth*; `I₁ = 𝒩̄₁𝒯₁𝒩₀` is in good
position for `ℬ` and the lower triangular Borel subgroup). Injectivity: if `pr_𝒩(x) = 0`, then `e_C x = 0` for a
compact open subgroup `C` of `𝒩` (§SR.2.2, *jacquet-lemma*). For the strictly dominant `t` of 6.4 (b) the groups
`t^{−m}𝒩₀t^m` increase to `𝒩`, so `C ⊆ t^{−m}𝒩₀t^m` for some `m`, and
`U_t^m x = U_{t^m}x = e_{𝒩̄₁}e_{𝒯₁}ρ(t^m)e_{t^{−m}𝒩₀t^m}x = 0` (6.2 (b)); as `U_t` is injective, `x = 0`. The Hecke
operator of `I₁tI₁` is `deg(t)U_t` (6.5 (a)), and `deg(t) = δ_ℬ(t)^{−1}`. `T⁺` generates `𝒯` as a group and `ρ_𝒩(t)`
is invertible, which gives the last clause. (b) For `t ∈ 𝒯₁ ⊂ I₁ ∩ T⁺` the definition of an exponent gives
`ℓ(x) = ℓ(ρ(t)e_{I₁}x) = ξ(t)ℓ(x)`. For `ℓ_𝒩` as stated, `ℓ := ℓ_𝒩∘pr_𝒩∘e_{I₁}` satisfies
`ℓ(ρ(t)e_{I₁}x) = ℓ_𝒩(pr_𝒩(U_t e_{I₁}x)) = ξ(t)ℓ(x)` by (a); it vanishes only if `ℓ_𝒩` vanishes on `(V_𝒩)^{𝒯₁}`, hence
everywhere, as `ℓ_𝒩 = ℓ_𝒩∘e_{𝒯₁}`. Conversely an exponent `ℓ` satisfies `ℓ = ℓ∘e_{I₁}` and `ℓ(U_t v) = ξ(t)ℓ(v)` for
`v ∈ V^{I₁}`, so `ℓ_𝒩 := ℓ∘(pr_𝒩|_{V^{I₁}})^{−1}∘e_{𝒯₁}` is `ξ`-equivariant under `T⁺`, hence under `𝒯`, and gives
back `ℓ`. (c) Frobenius reciprocity for smooth induction (SmoothRepresentationsOfLocalGroups §SR.2.1,
*frobenius-reciprocity*: composition with evaluation at `1`) identifies the maps `Υ` with the linear forms on `V` that
transform by `ξ` under `ℬ` (`ξ` extended trivially on `𝒩`), `Υ` corresponding to `v ↦ Υ(v)(1)`. Such a form vanishes
on the kernel of `pr_𝒩`, the span of the `ρ(u)v − v` with `u ∈ 𝒩` (§SR.2.2, *jacquet-module*), so these forms are the
`𝒯`-equivariant forms `V_𝒩 → ℂ_ξ`, `Υ` corresponding to the form `pr_𝒩(v) ↦ Υ(v)(1)`; compose with (b). Finally
`δ_ℬ(t)^{1/2} = ∏_i |t_i|^{(N−1)/2−i}`.

Let `ρ` be a smooth complex representation of `GL_N(F)` on `V`. Let `𝒯` be the diagonal torus of `GL_N(F)`, `𝒩` the
upper unitriangular subgroup, `ℬ = 𝒯𝒩` the upper triangular Borel subgroup and `𝒯₁ := 𝒯 ∩ I₁`, the diagonal matrices
with entries in `1 + 𝔭`. `V_𝒩` is the unnormalised Jacquet module of `V` along `ℬ`, `pr_𝒩 : V → V_𝒩` the projection
and `ρ_𝒩` the action of `𝒯` on `V_𝒩` (SmoothRepresentationsOfLocalGroups §SR.2.2, *jacquet-module*), and
`δ_ℬ(t) = ∏_{i<j}|t_i/t_j|` is the modulus of `ℬ`. For a character `ξ` of `𝒯`, `I_ℬ(ξ)` is the unnormalised principal
series, on the smooth functions `f` on `GL_N(F)` with `f(bg) = ξ(b)f(g)` for `b ∈ ℬ` (`ξ` extended trivially on `𝒩`),
`GL_N(F)` acting by right translation.

(a) *Iwahori-fixed vectors.* `pr_𝒩` maps `V^{I₁}` bijectively onto `(V_𝒩)^{𝒯₁}`, and `pr_𝒩(U_t x) = ρ_𝒩(t)·pr_𝒩(x)`
for `x ∈ V^{I₁}` and `t ∈ T⁺`; so the Hecke operator of `I₁tI₁` corresponds to `δ_ℬ(t)^{−1}ρ_𝒩(t)`. A vector
`x ∈ V^{I₁}` is an Iwahori eigenvector for `ξ` exactly when `pr_𝒩(x)` is a nonzero vector with
`ρ_𝒩(t)pr_𝒩(x) = ξ(t)pr_𝒩(x)` for every `t ∈ 𝒯`.

(b) *Exponents.* If `ξ` is not trivial on `𝒯₁`, the only exponent for `ξ` is `0`. If `ξ` is trivial on `𝒯₁`,
`ℓ_𝒩 ↦ ℓ_𝒩∘pr_𝒩∘e_{I₁}` is a bijection from the linear forms `ℓ_𝒩` on `V_𝒩` with `ℓ_𝒩∘ρ_𝒩(t) = ξ(t)·ℓ_𝒩` for all
`t ∈ 𝒯` onto the exponents for `ξ`; on `V^{I₁}` the exponent is `ℓ_𝒩∘pr_𝒩`.

(c) *Principal series.* If `ξ` is trivial on `𝒯₁`, `Υ ↦ (x ↦ Υ(e_{I₁}x)(1))` is a bijection from the
`GL_N(F)`-equivariant linear maps `Υ : V → I_ℬ(ξ)` onto the exponents for `ξ`. For characters `θ_i` of `F^×`, `ξ_θ` is
`δ_ℬ^{1/2}` times the character `t ↦ ∏_i θ_i(t_i)|t_i|^{(N−1)/2}`, so `I_ℬ(ξ_θ)` is the normalised principal series of
that character (SmoothRepresentationsOfLocalGroups §SR.2.2, *parabolic-induction*), and `V` has a nonzero exponent for
`ξ_θ` exactly when the `θ_i` are trivial on `1 + 𝔭` and `V` has a nonzero map to that principal series.

*Needs:* 6.1, 6.2 (a), (b), 6.4 (b), (c), 6.5 (a); SmoothRepresentationsOfLocalGroups §SR.2.1 (Smooth and compact
induction), §SR.2.2 (Jacquet functors and parabolic induction), §SR.2a.1 (Stabilisation and the second adjunction).

### 7.7 Satake's formula on exponents and the Hecke polynomial

*Origin:* comparison of 6.5 (b) and of the Hecke polynomial of 6.1 (d) with the Satake isomorphism and the Satake
parameters (SmoothRepresentationsOfLocalGroups §§SR.4.1–SR.4.3), and of 6.7 (a) with the spherical vectors of
principal series; not part of the formal proof.

*Proof route:* (a) `ξ_θ` is trivial on `𝒯 ∩ GL_N(𝒪)`. By 7.6 (c), `ℓ(x) = Υ(x)(1)` for `x ∈ V^{I₁}` and a map
`Υ : V → I_ℬ(ξ_θ)`. By 6.2 (a), `GL_N(F) = ℬ·GL_N(𝒪)`, so the `GL_N(𝒪)`-fixed vectors of `I_ℬ(ξ_θ)` are the multiples
of the function `v₀` with `v₀(bk) = ξ_θ(b)`, and `Υ(x) = ℓ(x)v₀` for `x ∈ V^{GL_N(𝒪)}`. By §SR.4.2
(*spherical-parameter*), `f` acts on `v₀` by the value of the raw transform `δ_ℬ^{−1/2}𝒮(f)` at the point of `ξ_θ`,
which is the value of `𝒮(f)` at `(q^{−(N−1)/2}θ_i(ϖ))_i`, because `ξ_θ` takes the value `q^{−(N−1−i)}θ_i(ϖ)` at the
diagonal matrix with `ϖ` at `i` and `1` elsewhere, and `δ_ℬ^{1/2}` the value `q^{i−(N−1)/2}`. Apply `Υ` to `f·x` and
evaluate at `1`. The value `q^{j(N−j)/2}e_j(q^{−(N−1)/2}θ_0(ϖ), …) = q^{−j(j−1)/2}e_j(θ_0(ϖ), …)` gives the second
formula. (b) `𝒮` is an isomorphism onto the symmetric Laurent polynomials (§SR.4.1), which are generated by
`e_1, …, e_N` and `e_N^{−1}`, so `𝔥` is generated by the indicators of the double cosets of the `T_j` and the inverse
of that of `T_N`, and `x` is an eigenvector. If `𝔠_j` is the eigenvalue of `𝒮^{−1}(e_j)` and
`q^{−(N−1)/2}y_0, …, q^{−(N−1)/2}y_{N−1}` are the roots of `X^N − 𝔠_1X^{N−1} + ⋯ + (−1)^N𝔠_N` (`𝔠_N ≠ 0`), the
eigencharacter is the evaluation of `𝒮(f)` at that point,
`t_j = q^{j(N−j)/2}e_j(q^{−(N−1)/2}y) = q^{−j(j−1)/2}e_j(y)`, and `P_x(X) = Σ_j (−1)^je_j(y)X^{N−j}`. With (a),
`ℓ(x) ≠ 0` makes the two characters of `𝔥` equal, and the symmetric functions determine the points up to order. (c)
The form `x ↦ Υ(e_{I₁}x)(1)` is a nonzero exponent for `ξ_θ` (7.6 (c)); by 6.7 (a) it is nonzero at some
`x ∈ V^{GL_N(𝒪)}`, where it is `Υ(x)(1)`. For a subrepresentation, apply this to its inclusion.

Let `F`, `𝒪`, `ϖ` and `q` be as in the Conventions, `ρ` a smooth representation of `GL_N(F)` on `V`, and `𝒯`, `ℬ`,
`I_ℬ` as in 7.6. `𝔥` is the algebra, under convolution, of the compactly supported complex functions on `GL_N(F)`
invariant on both sides under `GL_N(𝒪)`, acting on `V^{GL_N(𝒪)}` by `f·x := Σ_g f(g)ρ(g)x`, the sum over the cosets
`g·GL_N(𝒪)`, so that the indicator of a double coset acts by its Hecke operator (6.1 (b)). `𝒮` is its normalised
Satake transform, onto the symmetric Laurent polynomials in `X_0, …, X_{N−1}`, `X_i` the class of the diagonal matrix
with `ϖ` at `i` and `1` elsewhere (SmoothRepresentationsOfLocalGroups §SR.4.1); `𝒮` sends the indicator of the double
coset of `T_j` to `q^{j(N−j)/2}e_j(X_0, …, X_{N−1})` (§SR.4.3).

(a) *Satake's formula on exponents.* Let `θ_0, …, θ_{N−1}` be characters of `F^×` trivial on `𝒪^×` and `ℓ` an exponent
for `ξ_θ`. For every `x ∈ V^{GL_N(𝒪)}` and `f ∈ 𝔥`,
`ℓ(f·x) = 𝒮(f)(q^{−(N−1)/2}θ_0(ϖ), …, q^{−(N−1)/2}θ_{N−1}(ϖ))·ℓ(x)`. For the indicator of the double coset of `T_j`
this is `ℓ(T_j x) = q^{−j(j−1)/2}e_j(θ_0(ϖ), …, θ_{N−1}(ϖ))·ℓ(x)`, the case `r = 0` of 6.5 (b). If some `θ_i` is not
trivial on `𝒪^×`, `ℓ` vanishes on `V^{GL_N(𝒪)}` (6.4 (c)), and both sides of 6.5 (b) for `r = 0` are `0`.

(b) *The Hecke polynomial.* Let `x ≠ 0` in `V^{GL_N(𝒪)}` satisfy `T_j x = t_j x` for `0 ≤ j ≤ N`. Then `x` is an
eigenvector of `𝔥`, and there are `y_0, …, y_{N−1} ∈ ℂ^×`, unique up to order, with
`f·x = 𝒮(f)(q^{−(N−1)/2}y_0, …, q^{−(N−1)/2}y_{N−1})·x` for every `f ∈ 𝔥`: `(q^{−(N−1)/2}y_i)_i` is the Satake
parameter of the eigencharacter of `x` (§SR.4.2), and `P_x(X) = ∏_i (X − y_i)`. If moreover `ℓ` is as in (a) with
`ℓ(x) ≠ 0`, the `y_i` are the `θ_i(ϖ)` in some order.

(c) *Spherical vectors of principal series.* If the `θ_i` are trivial on `𝒪^×` and `|θ_0(ϖ)| ≥ ⋯ ≥ |θ_{N−1}(ϖ)|`,
every nonzero `GL_N(F)`-equivariant map `Υ : V → I_ℬ(ξ_θ)` is nonzero on `V^{GL_N(𝒪)}`; in particular every nonzero
subrepresentation of `I_ℬ(ξ_θ)` contains its line of `GL_N(𝒪)`-fixed vectors. Through 7.6 (c), the first statement is
6.7 (a) for `V`.

*Needs:* 6.1, 6.2 (a), 6.4 (c), 6.5 (b), 6.7 (a), 7.6; SmoothRepresentationsOfLocalGroups §SR.4.1 (The Satake
transform and isomorphism), §SR.4.2 (Spherical parameters), §SR.4.3 (The general linear group).

### 7.8 Chains of roots and the unramified unitary dual

*Origin:* comparison of 6.8 (a), (b) with the classification of the unitary dual of `GL_N` over a `p`-adic field by
segments (Tadić, Ann. ENS 19 (1986), resting on Bernstein, LNM 1041 (1984); AutomorphicSpectralTheory §7.0b); not part
of the formal proof.

*Proof route:* (a) By 7.7 (b), `x` is an eigenvector of `𝔥`, and `e_{GL_N(𝒪)}ρ(g)x` is a multiple of the Hecke
operator of `GL_N(𝒪)gGL_N(𝒪)` applied to `x`, so `V_x^{GL_N(𝒪)} = e_{GL_N(𝒪)}V_x = ℂx`. If `M ⊂ V_x` is a
subrepresentation other than `V_x`, then `x ∉ M`, so `M^{GL_N(𝒪)} = 0` and `B(x, v) = B(x, e_{GL_N(𝒪)}v) = 0` for
`v ∈ M`; the vectors `w` with `B(w, M) = 0` form a subrepresentation that contains `x`, hence `V_x`, so `B(v, v) = 0`
and `v = 0` for `v ∈ M`. (b) First, an irreducible smooth representation `𝔡` of `GL_n(F)`, `n ≥ 1`, that is
square-integrable modulo the centre (SmoothRepresentationsOfLocalGroups §SR.3.3, *square-integrable-tempered*) and has
a nonzero `GL_n(𝒪)`-fixed vector `z` has `n = 1`. Indeed `𝔡` is admissible (§SR.3a.1, *admissibility-of-irreducibles*)
and has an invariant positive definite hermitian form (§SR.3.3), so 6.6 (c) for `GL_n(F)` applies to `z`, with
`τ = 1`, and gives characters `θ_0, …, θ_{n−1}` of `F^×`, a permutation `σ` with `|θ_{σ(0)}(ϖ)| ≥ ⋯ ≥ |θ_{σ(n−1)}(ϖ)|`
and an Iwahori eigenvector `z′ ∈ 𝔡` for `ξ_{θ∘σ}`. The scalar matrix `ϖ·1` lies in `T⁺` and acts on `𝔡` by a number of
absolute value `1`, the central character being unitary; so `|ξ_{θ∘σ}(ϖ·1)| = 1`, that is
`∏_i |θ_i(ϖ)| = q^{n(n−1)/2}`, and `|θ_{σ(0)}(ϖ)| ≥ q^{(n−1)/2}`. By 7.6 (a) for `GL_n(F)`, the diagonal torus acts by
`ξ_{θ∘σ}` on the nonzero image of `z′` in the unnormalised Jacquet module of `𝔡` along the upper triangular Borel
subgroup; so it acts on a nonzero vector of the normalised Jacquet module (§SR.2.2, *jacquet-module*) by the character
`t ↦ ∏_i θ_{σ(i)}(t_i)|t_i|^{(n−1)/2}` (7.6 (c)), which is therefore one of the central exponents of §SR.3.3, and
whose absolute value at `diag(ϖ, 1, …, 1)` is `q^{−(n−1)/2}|θ_{σ(0)}(ϖ)| ≥ 1`. If `n ≥ 2`, `diag(ϖ, 1, …, 1)` lies in
the closed negative cone of the torus (it is in `T⁺`) and not in its compact-times-central part, and this contradicts
Casselman's criterion (§SR.3.3, *casselman-criterion*). Next, `F = E_w` has characteristic `0`, and by
AutomorphicSpectralTheory §7.0b (*Unitary and residual-Speh Shintani lift*) the irreducible representation `V_x` of
(a), with its positive definite invariant hermitian form, is isomorphic to a product, for normalised parabolic
induction from a block upper triangular parabolic subgroup, of blocks of two kinds: `Speh(𝔡, m)`, the Langlands
quotient of `|det|^{(m−1)/2}𝔡 × ⋯ × |det|^{−(m−1)/2}𝔡` for an irreducible square-integrable representation `𝔡` of some
`GL_n(F)` and `m ≥ 1` (the block `u(δ, k)` of that section), and `|det|^s Speh(𝔡, m) × |det|^{−s}Speh(𝔡, m)` with
`0 < s < 1/2`. As `GL_N(F) = 𝒬·GL_N(𝒪)` for every block upper triangular parabolic subgroup `𝒬` (6.2 (a)), the
`GL_N(𝒪)`-fixed vectors of a representation induced from `𝒬` are the vectors of the inducing representation fixed by
the integral points of the block diagonal subgroup (§SR.2.1, *induced-invariants*), and passing to fixed vectors is
exact (§SR.0.3, *invariants-exact*); so every block, every `Speh(𝔡, m)` that occurs, and every such `𝔡`, has a nonzero
vector fixed by its integral points. By the first step `n = 1`, and `𝔡` is a unitary character `ϑ` of `F^×` trivial on
`𝒪^×`. Then `|det|^{s′}Speh(ϑ, m)`, `s′ ∈ {0, s, −s}`, is a quotient of the normalised principal series
`ϑ|·|^{s′+(m−1)/2} × ⋯ × ϑ|·|^{s′−(m−1)/2}` of `GL_m(F)`, and by induction in stages and the exactness of induction
(§SR.2.1, *induction-in-stages*, *induction-exactness*; §SR.2.2, *parabolic-induction*) `V_x` is a quotient of the
normalised principal series of `GL_N(F)` of the character `χ = (χ_0, …, χ_{N−1})` of `𝒯` that lists these characters,
block after block. The `GL_N(𝒪)`-fixed vectors of that principal series form a line (as in the proof route of 7.7
(a)), on which `𝔥` acts by `f ↦ 𝒮(f)(χ_0(ϖ), …, χ_{N−1}(ϖ))` (§SR.4.2, *spherical-parameter*), and
`ℂx = V_x^{GL_N(𝒪)}` is a quotient of this line; so by 7.7 (b) the `q^{−(N−1)/2}y_i` are the `χ_i(ϖ)` in some order.
The factor `|det|^{s′}Speh(ϑ, m)` contributes the values `ϑ(ϖ)q^{−s′−(m−1)/2+i}`, `0 ≤ i < m`, a string with top
`ϑ(ϖ)q^{(m−1)/2−s′}`. Multiplying by `q^{(N−1)/2}` gives strings of roots of `P` with tops
`c = q^{(N−1)/2}ϑ(ϖ)q^{(m−1)/2}` for the blocks of the first kind, and `q^{(N−1)/2}ϑ(ϖ)q^{(m−1)/2±s}` for the two
factors of a block of the second kind, where `|ϑ(ϖ)| = 1`. (c) If `P(qc) ≠ 0`, `c` is the top of every string that
contains it, and the tops satisfy `|c|² > q^{N+m−3} ≥ q^{N−2}`. If `|c|² = q^{N−k}` and `c = c₀q^{−i}` with `c₀` the
top of a string of length `m` and `0 ≤ i < m`, then `|c₀|² = q^{N−k+2i}` is an integral power of `q`, so the string is
of the first kind, `k = 2i + 2 − m ≤ i + 1`, and `cq^j = c₀q^{j−i}` lies in the string for `0 ≤ j ≤ k − 1`.

Let `E`, `w`, `F = E_w`, `q`, `N`, `ρ`, `B`, `x`, `t_j` and `P = P_x` be as in 6.8, and `𝔥` as in 7.7. A *string* of
length `m ≥ 1` with top `c ∈ ℂ^×` is the multiset `{c, cq^{−1}, …, cq^{1−m}}`.

(a) The span `V_x` of the vectors `ρ(g)x`, `g ∈ GL_N(F)`, is an irreducible representation of `GL_N(F)` with
`V_x^{GL_N(𝒪)} = ℂx`, on which `B` is a positive definite invariant hermitian form; its Satake parameter is
`(q^{−(N−1)/2}y_i)_i` for the roots `y_i` of `P` (7.7 (b)).

(b) *The unramified unitary dual.* The roots of `P`, counted with multiplicity, form a union of strings of two kinds:
strings of length `m` with top `c` such that `|c|² = q^{N+m−2}`, and pairs of strings of the same length `m` whose
tops `c`, `c′` have the same argument and satisfy `q^{N+m−3} < |c|² < q^{N+m−1}`, `|c|² ≠ q^{N+m−2}` and
`|c|²·|c′|² = q^{2(N+m−2)}`.

(c) Hence, if `P(c) = 0` and `P(qc) ≠ 0`, then `|c|² > q^{N−2}`, which is 6.8 (a) with strict inequality; and if
`P(c) = 0` and `|c|²q^k = q^N` with `k ≥ 1`, then `c, cq, …, cq^{k−1}` are roots of `P`, which is 6.8 (b).

*Needs:* 6.2 (a), 6.6 (c), 6.8, 7.6 (a), (c), 7.7 (b); AutomorphicSpectralTheory §7.0b (Local matching and twisted
character transfer); SmoothRepresentationsOfLocalGroups §SR.0.3 (Compact open invariants and averaging), §SR.2.1
(Smooth and compact induction), §SR.2.2 (Jacquet functors and parabolic induction), §SR.3a.1 (Compact and cuspidal
representations), §SR.3.3 (Tempered representations and the conditional Langlands classification), §SR.4.1 (The Satake
transform and isomorphism), §SR.4.2 (Spherical parameters).

### 7.9 Integral branching and the branching rule

*Origin:* comparison of 3.4 with the multiplicity-free branching from `GL_N` to `GL_{N−1}`
(RepresentationTheory/ClassicalGroups §6.1; Goodman and Wallach, Symmetry, Representations, and Invariants (2009),
Theorem 8.1.1); not part of the formal proof.

*Proof route:* (a) From the definitions, `λ_κ(τ, i) − λ_{κ₀}(τ, i) − κ′_τ(N_τ) = γ_τ(i + 1)` and
`λ_{κ₀}(τ, i) + κ′_τ(N_τ) − λ_κ(τ, i + 1) = κ′_τ(i + 1)`, both `≥ 0`. (b) Through 7.1 (a), with the rows of `n⁺_τ`
numbered so that `∗` comes last (another numbering changes the representations by isomorphisms),
RepresentationTheory/ClassicalGroups §6.1 gives at each `τ` a nonzero `GL(n_τ, ℂ)`-equivariant map from the
representation of highest weight `λ_κ(τ, ·) + e_τ·(1, …, 1)` to that of highest weight
`λ_{κ₀}(τ, ·) + e₀_τ·(1, …, 1)`, the second weight interlacing the first by (a); their tensor product over `τ` is a
nonzero complex matrix `T` as in 3.4 (c). By 3.4 (c), `T` is a multiple of `br`, so `br ≠ 0`, and every matrix as in
3.4 (c) is a multiple of `br`. By 3.4 (a) with `s = 1`, `br` is equivariant for `∏_τ GL(n_τ, ℂ)`.

Let `n`, `n⁺`, `κ = γ + κ′`, `e`, `κ₀`, `e₀` and `br` be as in 3.4, and at each `τ` let `λ_κ(τ, ·)` be the row lengths
of `κ` as a weight for `n⁺` and `λ_{κ₀}(τ, ·)` those of `κ₀` as a weight for `n`.

(a) The highest weights interlace: `λ_κ(τ, i) ≥ λ_{κ₀}(τ, i) + κ′_τ(N_τ) ≥ λ_κ(τ, i + 1)` for `0 ≤ i < N_τ`, so that,
through 7.1 (a), the highest weight `λ_{κ₀}(τ, ·) + e₀_τ·(1, …, 1)` of `ρ_{κ₀,e₀}` at `τ` interlaces the highest
weight `λ_κ(τ, ·) + e_τ·(1, …, 1)` of `ρ_{κ,e}`.

(b) `br ≠ 0`. The complex matrices `T` with `T·ρ_{κ,e}(diag(u, 1)) = ρ_{κ₀,e₀}(u)·T` for all `u ∈ ∏_τ U(n_τ)` are the
complex multiples of `br`, and they are the `∏_τ GL(n_τ, ℂ)`-equivariant maps between the representations of 7.1 (a),
the space of maps of the multiplicity-free branching rule.

*Needs:* 3.4, 7.1 (a); RepresentationTheory/ClassicalGroups §6.1 (`GLₙ ↓ GLₙ₋₁`).

## Results taken from other roadmaps

No section of Layers 1–6 takes a result from a roadmap outside this family. They cite these background roadmaps of the
family: AdelicUnitaryGroupsAndAlgebraicModularForms §§1.4, 1.5, 3.1, 6.1 (in 2.3 and 6.1),
HolomorphicDiscreteSeriesOfUnitaryGroups §4.1 (a) (in 2.4), GaloisRepresentationsOfUnitaryEigenforms §§1.1, 5.2 (c),
(d) (in 5.1 and 6.1), WeilRepresentationsOnBanachSpacesOfData §9.1 (in 6.1, 6.5 and 6.8) and
AuxiliaryAlgebraAndAnalysisForThetaLifts §2.2 (b) (in 6.8).

Layer 7 takes results from these general roadmaps: RepresentationTheory/ClassicalGroups §§0.4, 3.3, 4.1, 4.2, 4.3, 6.1
(in 7.1 and 7.9); ReductiveGroups Layer 7c (in 7.2); SmoothRepresentationsOfLocalGroupsPartII §4.1 (in 7.4);
SmoothRepresentationsOfLocalGroups §§SR.0.3, SR.2.1, SR.2.2, SR.2a.1, SR.3a.1, SR.3.3, SR.4.1, SR.4.2, SR.4.3 (in 7.6,
7.7 and 7.8); AutomorphicSpectralTheory §7.0b (in 7.8). It also rests on these roadmaps of the family
RiemannHypothesisForDirichletLFunctions: IntegralWeylModulesOfGeneralLinearGroups (Conventions), §§0.1, 3.1, 3.2 (in
7.1) and FiniteReductiveGroups §§5.2, 5.4, 5.6 (b), 5.11 (a), (b), (d) (in 7.3 and 7.5). The paragraphs **In standard
terms** also name RepresentationTheory/CompactGroups §4.1 (in 2.4) and SmoothRepresentationsOfLocalGroups §SR.2.3 (in
6.5).

## What the library already provides

- Jacobi's identity for the complementary minors of a matrix with invertible determinant and of its inverse:
  `Matrix.det_submatrix_comp_inr_eq_sign_mul_det_mul_det_submatrix_comp_inl_nonsing_inv`
  (`TauCeti/LinearAlgebra/Matrix/Determinant/ComplementaryMinor.lean`). Used in 3.1.
- A virtual character of norm one of a finite group, over `ℂ`, is an irreducible character or the negative of one:
  `TauCeti.exists_eq_irreducibleCharacter_or_neg`, on the virtual characters `TauCeti.virtualCharacters`
  (`TauCeti/RepresentationTheory/CharacterTable/VirtualCharacter.lean`). Used in 5.1.

## References

- `[ShortProof]`: the folder `grh` of <https://github.com/lsernau/grh-lean> at commit
  `72fead102f663d5c7a407964a13dc0cf9d977207`; this roadmap covers `src/Lib/GLn` and `src/Lib/LocalGL`.
- Akin, Buchsbaum, Weyman, *Schur functors and Schur complexes*, Adv. Math. 44 (1982).
- Bernstein, *P-invariant distributions on GL(N)*, LNM 1041 (1984).
- R. Carter, *Finite groups of Lie type* (1985).
- Casselman, *Introduction to admissible representations of p-adic groups: GL_n* (notes).
- Casselman, *The unramified principal series of p-adic groups I*, Compositio 40 (1980).
- Z. Chen, arXiv 2408.06191.
- H. Crapo, the complementation theorem (1966).
- De Concini, Eisenbud, Procesi, *Young diagrams and determinantal varieties*, Invent. Math. 56 (1980).
- Fulton, Harris, *Representation Theory* (1991).
- Goodman, Wallach, *Symmetry, Representations, and Invariants* (2009).
- Görtz, Haines, Kottwitz, Reuman, Compositio 146 (2010).
- J. A. Green, *The characters of the finite general linear groups*, Trans. AMS 80 (1955).
- Grinberg, *An Introduction to Algebraic Combinatorics*.
- Haines, Kottwitz, Prasad, *Iwahori–Hecke algebras*, arXiv math/0309168.
- Howe, *Perspectives on invariant theory* (1995).
- Iwahori, Matsumoto, Publ. IHES 25 (1965).
- Jantzen, *Representations of Algebraic Groups*, 2nd ed. (2003).
- D. Krasula, arXiv 2403.05656.
- Molev, *Gelfand–Tsetlin bases for classical Lie algebras*, arXiv math/0211289.
- T. Shintani, J. Math. Soc. Japan 28 (1976), 396–414.
- A. Silberger, E.-W. Zink, J. Algebra 319 (2008), 4147–4176.
- T. A. Springer, Sém. Bourbaki 441 (1973/74).
- Tadić, *Classification of unitary representations in irreducible representations of general linear group
  (non-archimedean case)*, Ann. ENS 19 (1986).
- Zhelobenko, *Compact Lie Groups and their Representations* (1973).
