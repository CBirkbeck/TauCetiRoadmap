# Roadmap: congruences of twisted theta lifts

**Summary.** The Riemann hypothesis for Dirichlet `L`-functions follows from a one-sided bound for a sum over primes,
which gives a zero-free half-plane. That bound comes from comparing two bounds for the covolume of a lattice of theta
lifts: an upper bound from a composite lift that is divisible at each prime, and a lower bound from the norms of the
lifts. The lower bound needs, prime by prime, a twist for which the theta lifts have few congruences with other forms:
the orthogonal projection onto the space of lifts must take integral forms (orthogonal to the false lifts) to forms
whose denominators are bounded, and the sum of these denominators over all primes must fit a fixed budget. This
roadmap proves that such twists exist. It is the first half of the congruence part of the lower bound; the second
half, SelmerBoundsForAnticyclotomicTwists, makes the Selmer groups small and bounds the local losses.

The headline theorems are these. (1) *Regular families of twists* (7.3): for all admissible data `D` there is an
`m`-fold twist `θ_ι`, of modulus prime to `ℓ`, for each prime `ℓ` and each `ι : ℂ ≃ ℚ̄_ℓ`, such that for every ramified
pair the inverse ratios of `L`-values at the first `m` powers of the twists and their inverses have height at most `x₁`,
and for each `1 ≤ j ≤ m` the denominators of the projections to the lifts at `θ_ι^j` are bounded by numbers `γ_ℓ`
whose sum over the primes is at most `f·a·(log b)³/(m·k)`. (2) *The bound for denominators* (6.9): for a twist `ϑ` of
small ramification and a space `Z` spanned by lifts, each with a twisted main summand of small divisible Selmer length
(1.5), the projection to `Z` has bounded denominators on the integral forms `y` orthogonal to the false lifts: a single
operator `Λ` on `Z`, whose determinant has `ℓ`-adic norm at least `ℓ^(−dim Z·r_O·β_ℓ)` (`r_O` the rank of the smaller
space of the descent pair), makes every `Λ(pr_Z y)` integral. The exponent `β_ℓ` is made up of explicit local losses,
the twist allowance, an error term (class number and odd classes) and `v_ℓ` of the order of the chosen general linear
groups; no order of a group of even classes occurs in it. (3) *Ribet's
element* (6.5): for finitely many conjugate self-dual `ℓ`-adic representations, some of which have the trace of a
twisted main summand plus `t′` powers of the inverse cyclotomic character, there is one Hecke-side element, a
polynomial in tie variables at auxiliary places, that multiplies every `det(1 − u(g))` into the ideal of tied traces,
has no monomial properly dividing the product of the variables, and whose top coefficient has valuation at most
`sel + 2t′·ram + r′·loc + e_ℓ − 2v_ℓ(n_GL)`. (4) *Taylor–Wiles places in a triangle* (4.3): at every level `ℓ^ν` there
are auxiliary places, indexed by one finite ordered set, whose tame generators and Frobenius elements cut down the even
classes of the Tate twists one after another, up to a bounded power of `ℓ`. (5) *Main summands* (2.8): every Hecke
eigensystem of a good form on `W_m` has, for each lift index `j`, a rank-`r` representation that gives, for every
twist, the traces of the normalised representations of the lifted eigenforms up to `t` powers of the inverse
cyclotomic character.

The roadmap rests on OneSidedPrimeSumBoundsAndAdmissibleData for the data (fields, places, sizes, level, twists,
heights); on ThetaLiftChainsAndTheSeesawIdentity for the descent pairs and the good forms; on
DeterminantsOfThetaLiftChains for the lifts `W_j → V_j` and the main pairs; on
NormsOfThetaLiftsAndExchangeIdentities §1.3 and §1.4 for the false lifts and the denominator predicate; and on
SelmerBoundsForAnticyclotomicTwists for the twisting theorem and the local losses above `ℓ`. Its regular families are
used by DeterminantsOfThetaLiftChains, which defines them and proves Theorem C with them.

Layer 1 fixes the Galois-theoretic notions: conjugate self-dual representations, representations of a type, main
summands, lift settings and Selmer lengths with divisible coefficients. Layer 2 attaches these to the forms of the
argument and produces main summands for the good eigensystems. Layer 3 is Ribet's method to first order as pure
algebra, over any group and any discrete valuation ring. Layer 4 builds the triangles of Taylor–Wiles places that
remove the even classes. Layer 5 builds the operators at the auxiliary places on the Hecke side. Layer 6 assembles
Ribet's element and the bound for denominators. Layer 7 chooses the twists and sums the bounds over the primes. Layer
8 compares the objects of the route with the standard ones.

The standard theory is the reference for the Galois-theoretic objects of this roadmap: the semisimple `ℓ`-adic
representations of automorphic representations and their conjugate self-duality, Bloch–Kato Selmer groups, classes in
Galois cohomology and extensions, the parts of Selmer groups of classes under complex conjugation, dual Selmer groups,
Taylor–Wiles data, the fundamental characters of tame inertia, and the Hecke algebra generated by Hecke operators. The
route works with objects of its own, suited to its proofs, and its proofs are stated on them: representations attached
in a weak sense, self-duality imposed on traces, modules of cocycles cut out by linear relations, Kummer maps defined
by relations, Taylor–Wiles places without a residual condition, and a Hecke algebra of functions on eigensystems.
Layer 8 relates each of them to its standard counterpart, by an identification or by the implication that holds, and
the sections used by other roadmaps and the headline theorems stated in terms of these objects state their results
also in standard terms through it. In these terms, the representation of (5) is, up to a twist, the complement of the
powers of the inverse cyclotomic character in the normalised Galois representation of every automorphic representation
in which a lifted eigenform has a nonzero component, and the bounds on divisible Selmer lengths in (2) and (3) are
bounds for relaxed Bloch–Kato Selmer groups of twisted lattices of main summands (8.3, 8.4); the objects of the route
are one way to prove these statements.

## Conventions and notation

Notation not restated here is that of OneSidedPrimeSumBoundsAndAdmissibleData §2.1 (the parameters), §2.2 (the field
and its infinite places), §3.2 (admissible data), §3.3 (their sizes), §3.4 (twists and the characters of the lifts)
and §4.1 (the unit of the errors), whose letters follow the reading guide of the formal proof, and of
DivisibilityOfThetaDerivatives §1.5 (the chosen places and the residue characters `ω`). Descent pairs, labels, good
forms and lifts are those of ThetaLiftChainsAndTheSeesawIdentity §2.16 (descent pairs), §2.18 (the descent pairs of
the chain), §2.5 (labels and the idempotent `e₀`), §2.7 (good forms) and of DeterminantsOfThetaLiftChains §2.1 (the
lift of a descent pair).

**Data and fields.** `D` is admissible data. `E = K(ζ)` is its CM field, `K = ℚ(√−d)`, `F = E⁺`, `f` the number of
infinite places of `E`, `Φ` its CM type, and for an embedding `σ : E → ℂ`, `ε(σ) = 1` if `σ ∈ Φ` and `ε(σ) = −1`
otherwise. `E` contains a primitive `5040`-th root of unity and lies in a cyclotomic field. `Ω` is a fixed algebraic
closure of `ℚ` containing `E`, `G_E = Gal(Ω/E)`, `c` a fixed complex conjugation and `g^c = c g c`. `υ` is the
splitting character of the Weil data of `E` (DivisibilityOfThetaDerivatives §1.4 (c)). The two level
primes are `p₀, p₁`, `M = p₀p₁`, `N` is the level, and the *chosen places* are the places of `E` dividing `π_M` (half
of those above `M`). The *bad places* for a prime `ℓ` are the places of `E` dividing `ℓ·M·N`.

**Sizes.** `m` is the number of lifts, `r` and `k = r + 1 − m` the ranks, `t = 5r`, `Δ = 2r⁸` the gap and `h_Δ = r⁸`,
`κ_j` the lift weight of step `j` (an integer at each infinite place), `λ_q(v)` (`q < r`) the target parameter at the
infinite place `v`, `x ≤ x₁ ≤ b` the scales, `a = x·b`, `u_err = f·a·(log b)³` the unit of the errors and
`B_den = u_err/(m·k)` the denominator budget (`β_tot` in DeterminantsOfThetaLiftChains §1.3). `ω` is the fixed family of residue characters, trivial off the chosen
places and of order `q₂` at them. `n_GL` is the product over the chosen places `w` of the orders of `GL_{rt}(k_w)`,
`k_w` the residue field.

**Twists.** A *twist* `ϑ` is a tame automorphic character of `U(1)` of weight `0`, with tame part `ϑ_tame` nontrivial
at every place of its modulus `Q(ϑ)`; an `m`-fold twist `τ` has `τ_tame,w^n ≠ 1` for `w ∈ Q(τ)` and `1 ≤ n ≤ m`, and
`τ^j` denotes its `j`-th power as a twist (OneSidedPrimeSumBoundsAndAdmissibleData §3.4 (tame characters, twists and
`m`-fold twists)). The *level places* of `D` for `ϑ` are the chosen places and the places of `Q(ϑ)`
(ThetaLiftChainsAndTheSeesawIdentity §2.6 (the level places of a twist)).

**Coefficients.** `ℓ` is a prime and `ι : ℂ ≃ ℚ̄_ℓ` a fixed isomorphism. A *coefficient ring* is the ring of integers
`O` of a finite Galois extension of `ℚ_ℓ` in `ℚ̄_ℓ`, with fraction field `K_O`; "for all large `O`" means for all
coefficient rings containing a given one. Lengths of `O`-modules are *normalised* so that `O/ℓ` has length `1`. `v_ℓ`
is the valuation of `ℚ̄_ℓ` with `v_ℓ(ℓ) = 1`, with values in `[0, ∞]` (negative values read as `0`). `cyc` is the
`ℓ`-adic cyclotomic character, `χ = cyc⁻¹`, and `O(−e)` the rank-one representation `χ^e`. `G_ν ⊂ G_E` is the
subgroup fixing the `ℓ^ν`-th roots of unity.

**Representations.** An `ℓ`-adic representation of rank `n` is a homomorphism `R : G_E → GL_n(ℚ̄_ℓ)`; a *lattice* of
`R` over `O` is a homomorphism `u : G_E → M_n(O)` that is conjugate to `R` over `ℚ̄_ℓ`. A place of `Ω` is a valuation
subring; for a place `A` over a finite place `w` of `E`, `I_A` is its inertia group, `τ_A` the chosen generator of tame
inertia, and a *Frobenius datum* is a place `w` of prime norm, a place `A` over it and a geometric Frobenius element
there. "For most Frobenii" refers to the filter of the formal proof: a set of Frobenius data belongs to it if every
nonempty open set of `G_E` has a nonempty open part `U` such that, for almost all `w`, it contains every datum with
Frobenius in `U`; "near `g`" refines this by Frobenius near `g` (the background entry of 1.1). `R` is
*attached* to a system `H` of Hecke polynomials if three things hold: `R` is continuous; the trace form
`(X, Y) ↦ tr(XY)` is nondegenerate on the `ℚ̄_ℓ`-span of `R(G_E)`; and, for each `η > 0` and most Frobenius data
`(w, A, s)`, the coefficients of the characteristic polynomial `det(X − R(s))` of the geometric Frobenius element `s`
are within `η` of those of `ι(H_w)`, the Hecke polynomials being the monic ones defined below (the background
entry of 1.1; BaseChangeAndGaloisRepresentationsForUnitaryGroups §16.1 states the full theorem for automorphic
representations, with equality at every unramified place, of which the route uses only this weak form for
eigenforms). The first two conditions are part of the definition: a representation that is not semisimple can satisfy the
third alone. A system of Hecke polynomials may have several attached representations; a statement about "`R` attached
to `H`" is about every one of them. Here *attached* is this weak condition; in the literature a representation
attached to `H` is a continuous semisimple one that is unramified, with `det(X − R(s)) = ι(H_w)` at the geometric
Frobenius elements, at all but finitely many places. When such a representation exists, the representations attached
to `H` here are exactly its conjugates (GaloisRepresentationsOfUnitaryEigenforms §10.2 (b)), although attachment here
does not tie the characteristic polynomial at a given place to `H_w` (§10.2 (c)); for an eigenform on the standard
definite unitary group they are the conjugates of the Galois representation `r_{ℓ,ι}(Π)` of an automorphic
representation `Π` in which the form has a nonzero component (GaloisRepresentationsOfUnitaryEigenforms §10.4 (b)). The
*avatar* of an algebraic Hecke character is its `ℓ`-adic Galois character
through `ι`; `ψ_ϑ` is the avatar of the base change of `ϑ⁻¹` to `E`.

**Frobenius elements and Hodge–Tate jumps.** Frobenius elements in this roadmap are geometric: the inverse of an
element that stabilises `A` and acts on residues as `x ↦ x^{Nw}`. (SelmerBoundsForAnticyclotomicTwists uses the
arithmetic Frobenius element, and writes `χ` for the cyclotomic character itself, where this roadmap writes
`χ = cyc⁻¹`.) Hodge–Tate jumps have the sign of SelmerBoundsForAnticyclotomicTwists §3.1: for a `ℤ_ℓ`-algebra map
`γ` from the coefficients to `ℂ_ℓ`, the multiplicity of the jump `u` of a representation on `T` is the dimension of
the space of `γ`-semilinear maps `f : T → ℂ_ℓ` with `f(gx) = cyc(g)^{−u}·g(f(x))` for `g` near `1` in the
decomposition group. So `cyc` has the jump `−1`, `χ = cyc⁻¹` has the jump `1`, and `O(−e) = χ^e` has the jump `e`.
For a weight `κ` on a unitary group of rank `N`, with highest weight `λ_1(v) ≥ … ≥ λ_N(v)` at the infinite place `v`,
*the jumps of `κ` in rank `N`* are the family that has, at `σ : E → ℂ` over `v`, the `N` integers `j − 1 − λ_j(v)`,
`1 ≤ j ≤ N`, if `σ ∈ Φ`, and the `N` integers `λ_j(v) + N − j` if `σ ∉ Φ`.

**Places and sets of places.** A finite set `Q` of places of `E` is *auxiliary* for a set `S` if its places have prime
norm, neither they nor their conjugates lie in `S`, and no conjugate of a place of `Q` lies in `Q`. `Q̄` is the set of
conjugates, `I_Q` the union of the inertia groups above `Q ∪ Q̄`.

**Labels.** A *label* of degree `n` over a finite field is a monic squarefree polynomial of degree `n`, nonzero at `0`;
it is *primitive* if it is irreducible with a root generating the units of the extension of degree `n`; it names one
of Green's characters of `GL_n` of the field, and its idempotent is the central idempotent of that character
(FiniteReductiveGroups §5.7: the characters of a label and the central idempotent of a label; a squarefree label
carries one character, at once generic and semisimple).

**Descent pairs.** The letter `O` names a coefficient ring and also a descent pair. A descent pair is always
introduced as such, or carries one of its data (`r_O`, `n_O`, `t_O`, `χ_O`, `μ_O`, `ψ_O`, `w_O`, `J_O`, `F(O)`, `O_j(ϑ)`,
a type `(O, t′, J, c, S)`, a lift setting `(O, c)`); `K_O`, `O/ℓ^ν`, `O(−e)`, `M_n(O)` and "for all large `O`" refer to
coefficient rings. A descent pair `O` (ThetaLiftChainsAndTheSeesawIdentity §2.16 (descent pairs)) has a hermitian space `W`
of rank `r_O`, the standard definite space `V` of rank `n_O > r_O`, `t_O = n_O − r_O`, chosen places `w_i`, twist
places, weights, a character `μ_O` of `U(1)` of weight `w_O` with tame part `ψ_O`, and the characters `ν_W`, `ν_V` of
`U(1)` attached to `W` and `V`. `F(O)` is the space of algebraic
forms on `V` of the weight and level of `O`, with its Petersson product; `T_{w,i}` are the Hecke operators at a split
place `w` off the places of `O` and their conjugates, and the Hecke polynomial operator at `x ∈ ℂ` is
`Σ_{i ≤ n_O} (−x)^i q_w^{i(i−1)/2} T_{w,i}`. On a form of rank `n`, spherical at `w`, on which `T_{w,i}` acts by `t_i`
(`t_0 = 1`), this operator acts by `Q_w(x) = Σ_{i ≤ n} (−x)^i q_w^{i(i−1)/2} t_i`, and the *Hecke polynomial* of the
form at `w` is the monic polynomial `H_w(X) = X^n·Q_w(1/X) = Σ_{i ≤ n} (−1)^i q_w^{i(i−1)/2} t_i X^{n−i}`. The Hecke
polynomials of forms and of systems in this roadmap (in "attached", in 2.1, 2.8, 5.2 and 6.6) are the monic `H_w`;
the lifted Hecke polynomials of ThetaLiftChainsAndTheSeesawIdentity §2.16 are written with `Q_w`, and the two are
exchanged by `X ↦ 1/X`. Check: the constant form on a definite space of rank `2` has `t_1 = q_w + 1`, `t_2 = 1`, so
`Q_w(x) = (1 − x)(1 − q_w x)` and `H_w(X) = (X − 1)(X − q_w)`, the characteristic polynomial of a geometric Frobenius
element on `1 ⊕ χ`. The *normalising character* `χ_O` is the avatar of the algebraic Hecke
character made from the inverse of the character of `W`, of weight `−r_O`, namely
`y ↦ ν_W(y/ȳ)⁻¹·υ(y)^{r_O}·|y|^{r_O/2}`; the *normalised representation* of `R` is
`R ⊗ χ_O`. For a twist `ϑ` and `1 ≤ j ≤ m`, `O_j(ϑ)` is the `j`-th descent pair for `ϑ` (`W = W_j`, `V = V_j` of rank
`r + t`, character of weight `−κ_j` twisted by `ϑ`; ThetaLiftChainsAndTheSeesawIdentity §2.18 (the descent pairs of
the chain)), and `Z_j(ϑ) ⊂ F(O_j(ϑ))` is the space of lifts, the image of the good forms on `W_j`
(ThetaLiftChainsAndTheSeesawIdentity §2.7 (good forms)) under the lift `W_j → V_j` (DeterminantsOfThetaLiftChains §2.1
(the lift of a descent pair)). A *system* is a space of forms with given Hecke eigenvalues at almost
all places; it carries Hecke polynomials and an attached representation, chosen once among those attached to them.
The *weight of `O`* is the weight of the forms of `F(O)` on `V`, and *the jumps of the weight of `O`* are its jumps in
rank `n_O` (above). The *normalised jumps* `J_O` of `O` are these jumps, each lowered at `σ` by the exponent at `σ` of
the infinity type of the algebraic Hecke character whose avatar is `χ_O`; they are the jumps of the normalised
representation `R ⊗ χ_O` of a representation `R` with the jumps of the weight of `O`. This defines `J_O` for `n_O`
of either parity; 2.6 (a) writes it out when `n_O` is even.

**Base data.** *Base data* `B` on the standard definite space `V` of rank `n`, for a weight `κ` and an integer
`n_B ≥ 1`, consist of: a finite set `S_B` of finite places of `E`; a space `F_B` of algebraic forms of weight `κ` on
`V`, stable under every operator on the forms of weight `κ` that commutes with the translations by the components at
`S_B ∪ S̄_B` of the integral points of `U(V)(𝔸_f)`, and on which some open subgroup acts by a character through its
components at `S_B ∪ S̄_B`; such that `n_B` is a common multiple of the orders of the stabilisers `Γ ∩ gK₀g⁻¹`, `Γ`
the rational points of `U(V)`, `K₀` the integral points and `g ∈ U(V)(𝔸_f)`. For a finite family `u` of finite places
of `E`, the *forms of `B` of level `u`* are the forms of `F_B` fixed by the components, at the places off
`S_B ∪ S̄_B`, of the integral points that reduce to `1` at the places of `u`; the *forms of base level* are those of
level `u = ∅`, and "principal level at `u`" means level `u`. A *system of `B` at level `u`* is a system that contains
a nonzero form of `B` of level `u`; the *base systems* are those at level `∅`. A form of `B` is *integral above `ℓ`*
if its values at the points whose components above `ℓ` are integral have coordinates that `ι` sends to integers of
`ℚ̄_ℓ`. These are the base data of the Taylor–Wiles method on a definite unitary group (the background entry of 2.6).

**Labels of the formal proof.** Under each heading, `*Origin:*` says where the statement comes from and
`*Method of the formal proof:*` how the shorter formal proof proves it; `[ShortProof]` names the file and declaration
where it does. Layer 8 is not part of the formal proof: its sections give a `*Proof route:*` in place of the method.
Every name in code font that begins with `New.` is a declaration of `[ShortProof]`, not of Mathlib or
Tau Ceti. Sections cite the sibling roadmaps of this family by section number, `<Roadmap> §k.n`.

### Table of symbols

| Symbol | Meaning | Defined |
|---|---|---|
| `D, E, K, F, f, Φ, ε(σ)` | data, CM field, `ℚ(√−d)`, `E⁺`, number of infinite places, CM type, sign of an embedding | OneSidedPrimeSumBoundsAndAdmissibleData §2.1, §2.2, §3.2; Conventions |
| `Ω, G_E, c, g^c` | algebraic closure of `ℚ`, `Gal(Ω/E)`, complex conjugation, `cgc` | Conventions |
| `υ` | splitting character of the Weil data of `E` | DivisibilityOfThetaDerivatives §1.4; Conventions |
| `p₀, p₁, M, N, π_M` | level primes, `p₀p₁`, level, the integer whose divisors are the chosen places | OneSidedPrimeSumBoundsAndAdmissibleData §3.2; chosen places DivisibilityOfThetaDerivatives §1.5 |
| `m, r, k, t` | number of lifts, ranks, `k = r + 1 − m`, `t = 5r` | OneSidedPrimeSumBoundsAndAdmissibleData §3.2 |
| `Δ, h_Δ, κ_j, λ_q(v)` | gap `2r⁸`, `r⁸`, lift weight, target parameter | OneSidedPrimeSumBoundsAndAdmissibleData §3.2, §3.4 (there the row parameter); ThetaLiftChainsAndTheSeesawIdentity §2.4 |
| `x, x₁, b, a, u_err, B_den` | scales, `xb`, `f·a·(log b)³`, `u_err/(mk)` | OneSidedPrimeSumBoundsAndAdmissibleData §3.2, §4.1; Conventions |
| `ω, q₂` | residue characters at the chosen places, their order | DivisibilityOfThetaDerivatives §1.5; OneSidedPrimeSumBoundsAndAdmissibleData §3.2 |
| `n_GL` | `∏_{w chosen} #GL_{rt}(k_w)` | Conventions |
| `ϑ, Q(ϑ), ϑ_tame, τ^j` | twist, its modulus, tame part, `j`-th power of an `m`-fold twist | OneSidedPrimeSumBoundsAndAdmissibleData §3.4 |
| `ℓ, ι, O, K_O, v_ℓ` | prime, `ℂ ≃ ℚ̄_ℓ`, coefficient ring, its fraction field, valuation | Conventions |
| `cyc, χ, O(−e), G_ν` | cyclotomic character, its inverse, Tate twist, kernel modulo `ℓ^ν` | Conventions |
| `ψ_ϑ, χ_O` | avatar of `ϑ⁻¹`, normalising character of a descent pair | Conventions |
| `O, r_O, n_O, t_O, w_i, μ_O, ψ_O, w_O, ν_W, ν_V, F(O)` | descent pair and its data, forms on `V` | ThetaLiftChainsAndTheSeesawIdentity §2.16 |
| `O_j(ϑ), Z_j(ϑ)` | `j`-th descent pair for `ϑ`, space of lifts | ThetaLiftChainsAndTheSeesawIdentity §2.18; DeterminantsOfThetaLiftChains §2.1 (the lift) |
| `e₀` | idempotent of the good forms | ThetaLiftChainsAndTheSeesawIdentity §2.5 |
| `c̃_i, e_c` | scaled label, type projection | 1.4 |
| `e′_ℓ` | the twist allowance `(4f + 3)·r·v_ℓ(n_GL) + 2^(−ℓ)` | 1.5 |
| `sel(ρ, Q, γ)` | crystalline Selmer length with divisible coefficients | 1.5 |
| `Ev_e(O, S, ν), Sha_e(O, ν)` | even and odd classes in `(O/ℓ^ν)(−e)` | 4.1 |
| `β_ℓ, loc_ℓ, e_ℓ, o_D` | clearing bound, local defect bound, error term, odd class bound | 6.1 |

## Layer 1: Conjugate self-dual representations, main summands and lift settings

The Selmer bounds of the lower bound apply to `ℓ`-adic representations of `G_E` that are conjugate self-dual with
prescribed local behaviour. This layer names them: representations of a level and of a type (1.2), main summands, the
rank-`r_O` representations that carry the congruences of a lift (1.3), lift settings, the label tuples for which the
argument runs (1.4), and Selmer lengths with divisible coefficients of a twisted lattice (1.5).

### 1.1 Galois-theoretic notation

*Origin:* definitions and conventions.

*Method of the formal proof:* the notions are those of the background of the formal proof, with the conventions
fixed in the Conventions of this roadmap.

The notions of the Conventions are fixed as stated there: coefficient rings and normalised lengths, lattices of
`ℓ`-adic representations, places of `Ω` with their inertia groups, tame generators and Frobenius data, the filter of
most Frobenii, attached representations, avatars and the normalising character of a descent pair, bad places and
auxiliary sets. In addition:

- a representation `R` is *of finite type* at a place `A` of `Ω` if it is trivial on an open subgroup of inertia at
  `A` when `A ∤ ℓ`, and potentially crystalline at `A` when `A | ℓ`; it *has jumps* `J`, a multiset `J(σ)` of
  integers for each `σ : E → ℂ`, at `A` if its Hodge–Tate jumps (with the sign of the Conventions) at the embeddings `ι∘σ` inducing `A` are `J(σ)`; it
  is *good* at `A` if it is unramified (crystalline above `ℓ`); a polynomial `P` *kills* an element `s` of `G_E` at `A`
  if `P(R(s)) = 0` (above `ℓ`, for `s` in the decomposition group, the analogous condition on the Weil–Deligne datum of
  the periods); the element is an inertia element in 2.1 (c) and in the conditions of a type, and a geometric
  Frobenius element in the attached representations;
- for a lattice `ρ` over `O`, a set `T` of places, an `O`-module `B` and a set `L` of linear relations, the *Selmer
  module* is the module of locally constant cocycles `G_E → Bⁿ` for `ρ` unramified outside `T` that satisfy the
  relations of `L`; the *crystalline relations* of `ρ` are, for each place `v` above `ℓ`, the finitely supported
  families `(f_g)` of `n × n` matrices over `O` on the decomposition group `D_v` of the chosen place of `Ω` over `v`,
  extended by zero to `G_E`, with `Σ_g f_g·z(g) = 0` for every crystalline cocycle `z : D_v → Oⁿ` of `ρ`
  (SelmerBoundsForAnticyclotomicTwists §§3.1, 4.1); a function `G_E → Bⁿ` *satisfies* them if each such sum, formed
  with its values, vanishes;
- for an index set `J` and a group element family `τ : J → G_E`, `τ^±` is the family on `J × {+, −}` with
  `τ^±(j, +) = τ_j` and `τ^±(j, −) = (τ_j^c)⁻¹`.

**In standard terms.** For continuous `R`, the local conditions above are those of
GaloisRepresentationsOfUnitaryEigenforms §1.3, which its §10.3 (The local conditions of 1.3 and the standard local
conditions) compares with the standard ones: good means unramified, respectively crystalline in Fontaine's sense above
`ℓ`; of finite type means that the image of inertia is finite, respectively potentially crystalline; at a place above
`ℓ` where `R` is de Rham, the jumps are the labelled Hodge–Tate weights, in the convention in which the cyclotomic
character has Hodge–Tate weight `−1`; and of the Weil–Deligne representation only annihilating polynomials of its
operators are recorded. A *Selmer module* here is a module of cocycles, whereas in the literature a Selmer group is a
group of classes in Galois cohomology cut out by local conditions; GaloisRepresentationsOfUnitaryEigenforms §10.7
(Selmer modules of cocycles and Selmer groups of classes), (a) and (b), relates the two. For a lattice with continuous
action whose restrictions to the decomposition groups above `ℓ` are potentially crystalline, and `B = O/a` with
`a ≠ 0` or `B = K_O/O`, a map `D_v → Bⁿ` (locally constant if `B = K_O/O`) satisfies the crystalline relations at
`v | ℓ` exactly when it is a continuous cocycle whose class lies in the Bloch–Kato condition `H¹_f`
(SelmerBoundsForAnticyclotomicTwists §6.1 (Selmer groups of cocycles and Bloch–Kato Selmer groups), (a)); 8.4 gives
the resulting comparison for the modules of 1.5.

*Needs:* ThetaLiftChainsAndTheSeesawIdentity §2.16 (descent pairs); SelmerBoundsForAnticyclotomicTwists §3.1 (Hodge–Tate
jumps, potentially crystalline lattices and crystalline cocycles over a local Galois group), §4.1 (the crystalline
relations of a lattice);
GaloisRepresentationsOfUnitaryEigenforms §1.2 (the filter of most Frobenius data of a number field and its refinement near a group element, which
is not the trivial filter by Chebotarev's density theorem); GaloisRepresentationsOfUnitaryEigenforms §§1.5, 7.3 (Galois representations of
eigensystems in the weak sense: over a CM field with Weil data, every eigenform on the standard definite unitary group
has a representation attached to its Hecke polynomials, and at the places of `Ω` over a place where the form is
spherical every attached representation is good, has the jumps of the weight and, if the place is split, has its
geometric Frobenius elements killed by the Hecke polynomial); IdelicReciprocityCountsAndCyclotomicClassGroups §9.1 (the `ℓ`-adic avatar of
an algebraic Hecke character: a continuous character of `G_E` whose value at most geometric Frobenius elements is `ι` of
the value of the Hecke character at a uniformiser); ShortGRH
background (the local conditions on an `ℓ`-adic representation `R` of `G_E` at a place `A` of `Ω`, each taken along
every embedding of `Ω` in `ℚ̄_ℓ` that induces `A` together with the open embedding of the decomposition group of `A` in
`Gal(ℚ̄_ℓ/ℚ_ℓ)` that goes with it, and vacuous above `ℓ` if there is none: `R` is of finite type at `A` if `R(s) = 1`
for the inertia elements `s` at `A` in a neighbourhood of `1` when `ℓ` is a unit at `A`, and its restriction to the
decomposition group is potentially crystalline along every such embedding; good if `R` is trivial on the inertia group
when `ℓ` is a unit at `A`, and that restriction is crystalline along every such embedding; `R` has the jumps `J` at `A`
if along every such embedding `e` and for every `g ∈ Gal(ℚ̄_ℓ/ℚ_ℓ)` the multiplicity of each integer `u` as a
Hodge–Tate jump of the restriction at `g` equals its multiplicity in `J` at the embedding `ι⁻¹∘g⁻¹∘e` of `E` in `ℂ`;
and a polynomial `P` kills an element `s` of `G_E` at `A` if `P(R(s)) = 0` when `ℓ` is a unit at `A`, and, along every
such embedding, for `s` in the decomposition group and every `k` such that the inverse of the image of `s` is a
Frobenius element for `ℓ^k`, the restriction is potentially crystalline and `P` vanishes at the linearised Frobenius
of `(s, k)` on the crystalline periods; [ShortProof] `Lib/GaloisRep/Main/LocalConditions.lean`
(`New.GaloisRep.IsFiniteTypeAt`, `New.GaloisRep.IsGoodAt`, `New.GaloisRep.HasJumpsAt`, `New.GaloisRep.PolyKillsAt`));
GaloisRepresentationsOfUnitaryEigenforms §§9.2, 9.3 (Selmer modules: locally constant cocycles of `G_E` in a power of a module, unramified outside a set
of places and obeying given linear relations; their length with coefficients in `K_O/O` bounds the length at every
finite level).

[ShortProof], `New/Congruences/GaloisRepresentations/SelmerHypotheses` (`New.Selmer.badPlaces`, `New.Selmer.normalizingAvatar`, `New.Selmer.normalisedRep`, `New.Data.TameChar.invAvatar`)

### 1.2 Conjugate self-dual representations of a level, and representations of a type

*Origin:* definitions and conventions.

*Method of the formal proof:* self-duality is imposed on traces only, which is the form in which it is checked for
attached representations (2.1) and used in the lattice arguments (6.2).

Let `R` be an `ℓ`-adic representation of rank `n`, `t′ ≥ 0`, `J` a family of multisets of jumps and `S` a set of
finite places of `E`.

1. `R` is *conjugate self-dual with twist `t′`* if `R` is continuous, the trace form `(X, Y) ↦ tr(XY)` is
   nondegenerate on the `ℚ̄_ℓ`-span of `R(G_E)`, and `tr R(g^c) = χ(g)^(t′−1)·tr R(g⁻¹)` for all `g ∈ G_E` (with
   `t′ − 1` read as `0` when `t′ = 0`).
2. `R` is *conjugate self-dual of level `S`* (with twist `t′` and jumps `J`) if it is as in (1) and, at every finite
   place `v` that is outside `S` or lies above `ℓ` or above `M`, and every place `A` of `Ω` over `v`: `R` is of finite
   type at `A`, has jumps `J` at `A`, and is good at `A` if `v` is not above `M`.
3. For a descent pair `O` and labels `c = (c_i)`, `c_i` a polynomial over the residue field `k_{w_i}` of the chosen
   place `w_i`, `R` is a *representation of type `(O, t′, J, c, S)`* if it is as in (2) and, for each `i` and each
   place `A` over `w_i`, every inertia element at `A` is killed by the polynomial whose roots are the images of the
   roots of `c_i`, read through the fixed injective character of the algebraic closure of `k_{w_i}` and the tame
   exponent of the element at level `r_O!`. These two notions are as follows. For each chosen place `w`, with residue
   field `k_w` of order `q`, fix an injective multiplicative character `T_w : k̄_w^× → ℂ^×` of an algebraic closure
   `k̄_w` of `k_w` (one exists, `k̄_w^×` being the group of roots of unity of order prime to the characteristic). An
   element `s` of the inertia group at a place `A` over `w` has *tame exponent `a ∈ ℕ` at level `f ≥ 1`* if, with
   `Q = q^f`, there are a uniformiser `π ∈ E` at `w`, an element `z ∈ Ω` with `z^{Q−1} = π`, and a ring homomorphism `φ`
   from the integers of `Ω` to `k̄_w` that kills the centre of `A` and extends the reduction modulo `w`, such that
   `s(z)/z` is an integer of `Ω` and `T_w(φ(s(z)/z)) = exp(2πi/(Q − 1))^a`. The condition is then: whenever `s` has
   tame exponent `a` at level `r_O!` at a place `A` over `w_i`, the polynomial `∏_x (X − ι(T_{w_i}(x)^a))`, the product
   over the roots `x` of `c_i` in `k̄_{w_i}` with multiplicity, kills `R(s)`. (The tame exponent,
   defined here by a Kummer character, plays the part of the map `t_m : I_w → k_{w,m}^×` that
   BaseChangeAndGaloisRepresentationsForUnitaryGroups §14.2 defines through the Artin map, with `m = r_O!`; the two
   are not compared here and that section is not a supplier.)

Check: `R = ⊕_{e<t′} χ^e` is conjugate self-dual with twist `t′`. Its image spans the diagonal matrices, on which the
trace form is nondegenerate, and `χ(g^c) = χ(g)`, so `χ(g)^(t′−1)·tr R(g⁻¹) = Σ_{e<t′} χ(g)^(t′−1−e) = tr R(g^c)`. With
`cyc` in place of `χ` in the relation, the right side is `Σ_{e<t′} χ(g)^(−(t′−1)−e)`, and the relation fails for
`t′ ≥ 2`.

**In standard terms.** For continuous `R`, (1) says that `R` is semisimple and `R^c ≅ R^∨ ⊗ χ^{t′−1}`
(`R^c(g) = R(g^c)`, `R^∨` the contragredient, `t′ − 1` read as `0` when `t′ = 0`), that is `R^c ≅ R^∨ ⊗ cyc^{1−t′}`
for `t′ ≥ 1`, the cyclotomic character having Hodge–Tate weight `−1`; no polarisation, and so no sign, is part of the
notion (8.1). The conditions of (2) are the local conditions of 1.1, read through
GaloisRepresentationsOfUnitaryEigenforms §10.3. In (3), the tame exponents of an inertia element at level `f` are the
discrete logarithms, through `T_w`, of its values under the `f` fundamental characters of level `f·[k_w : 𝔽_{p_w}]`
(`p_w` the characteristic of `k_w`) whose embedding is over `k_w`; and when the roots of `c_i` are nonzero and lie in
the extension of `k_{w_i}` of degree `r_O!`, as for a product of polynomials of degree at most `r_O` that do not
vanish at `0`, the polynomial of (3) does not depend on the choice among them (8.2).

*Needs:* 1.1.

[ShortProof], `New/Congruences/GaloisRepresentations/SelmerHypotheses` (`New.Selmer.IsConjSelfDual`, `New.Selmer.IsConjSelfDualOfLevel`, `New.Selmer.IsRepOfType`)

### 1.3 Main summands

*Origin:* definitions and conventions.

*Method of the formal proof:* the conditions are those that the twisting theorem (SelmerBoundsForAnticyclotomicTwists
§5.4) and Ribet's method (6.4, 6.5) use; the residual consequences (5) follow from the spanning clause by linear algebra.

1. *Weight conditions.* Jumps `J` satisfy the *main-summand weight conditions* for `(r′, t′)` if `(r′, t′, J)` are
   main summand weights in the sense of SelmerBoundsForAnticyclotomicTwists §4.1 (there `w_j`, `h₂` and `k_D` stand for
   `κ_j`, `h_Δ` and `k`).
2. *Main summand.* A representation `R` of rank `r′` is a *main summand* with string length `t′` and jumps `J` if `R`
   is conjugate self-dual of empty level with twist `t′` and jumps `J` (1.2 (2), `S = ∅`), `J` satisfies (1) for
   `(r′, t′)`, and:
   - at every place `v` above `M` and not above `ℓ` and every `A` over `v` there are `γ ∈ I_A` (the tame generator if
     `v` is chosen) and an integer `N′` prime to `v` with `R(s^{N′}) = 1` for all `s ∈ I_A`, and
     `v_ℓ det(R(γ) − 1) ≤ r′·v_ℓ(n_GL)`, `v_ℓ det(R((γ^c)⁻¹) − 1) ≤ r′·v_ℓ(n_GL)`;
   - for all large `O`, the image of every lattice of `R` over `O` spans `M_{r′}(O)` over `O`;
   - for all large `O` and every lattice `u` of `R` over `O`, some `g` with `cyc(g) = p₀^{r′}` or `cyc(g) = p₁^{r′}`
     has `u(g)` scalar;
   - some `γ` in an inertia group above `M`, not above `ℓ`, acts by a scalar `y` with `|y^{ℓ^a·i} − 1| = 1` for all
     `a ≥ 0` and `1 ≤ i ≤ 4r′ + 2`.
3. *Lift trace.* A representation `u` of rank `n` has *lift trace* `(ψ, R, t′)` if
   `tr u(g) = ψ(g)·tr R(g) + Σ_{0 ≤ e < t′} χ(g)^e` for all `g`.
4. *Main summand of a pair and a system.* For a descent pair `O` and a system of Hecke eigenvalues `z`, `R` is a main
   summand for `(O, z)` if it is a main summand with string length `t_O` for some jumps, and for every tame character
   `ϑ`, every descent pair `V′` of the same ranks as `O` (`r_{V′} = r_O`, `n_{V′} = n_O`) with `μ_{V′} = μ_O·ϑ`, every
   eigenform `y` for `V′` lifting `z` (its Hecke polynomials
   at the split places off the level are those of a lift of `z`, ThetaLiftChainsAndTheSeesawIdentity §2.16 (the Hecke
   polynomial of a lift)), with Hecke polynomials `H`, and every `S′` attached to `H`, the normalised representation of `S′`
   for `V′` has lift trace `(ψ_ϑ, R, t_O)`.
5. *Residual consequences.* If `R` is a main summand of rank `r′`, then for all large `O`: (a) for every lattice `u`
   and every ring map `O → k` to a field, the only `u(G_E)`-stable subspaces of `k^{r′}` are `0` and `k^{r′}`; (b) if
   `R` has matrices over `O` in two bases `B`, `B′`, then `B′ = α·B·κ` with `α ∈ ℚ̄_ℓ^×` and `κ ∈ GL_{r′}(O)`.

**In standard terms.** Let `R` be a main summand for `(O, z)` and suppose that some eigenform `y` for a descent pair
`V′` as in (4), for a tame character `ϑ`, lifts `z`; let `Π_y` be an automorphic representation of the definite
unitary group of rank `n_O` in which `y` has a nonzero component. Then
`(R ⊗ ψ_ϑ) ⊕ ⊕_{0 ≤ e < t_O} χ^e ≅ r_{ℓ,ι}(Π_y) ⊗ χ_{V′}`, with `r_{ℓ,ι}(Π_y)` the Galois representation of `Π_y`
(GaloisRepresentationsOfUnitaryEigenforms §10.4 (b)): up to the twist by `ψ_ϑ`, `R` is the complement of the
characters `χ^e`, `e < t_O`, in the normalised Galois representation of the lifted form, and it is determined up to
isomorphism by `z` (8.3).

*Needs:* 1.1, 1.2; SelmerBoundsForAnticyclotomicTwists §4.1 (main summand weights);
ThetaLiftChainsAndTheSeesawIdentity §2.16 (descent pairs and lifted Hecke polynomials).

[ShortProof], `New/Congruences/GaloisRepresentations/SelmerHypotheses` (`New.Selmer.IsMainSummandLike`, `New.Selmer.HasLiftTrace`, `New.Selmer.IsMainSummand`, `New.Selmer.IsMainSummandLike.eventually_eq_bot_or_eq_top`, `New.Selmer.IsMainSummandLike.eventually_lattice_unique`)

### 1.4 Lift settings and type projections

*Origin:* definitions and conventions.

*Method of the formal proof:* the type projection is the action of a central idempotent of a finite group algebra by
translations at the chosen places, which commute with the Hecke operators at other places.

Let `O` be a descent pair with chosen places `w_i`, `ϑ` a twist and `c = (c_i)` labels. The *scaled label* `c̃_i` is
`c_i` with its roots multiplied by the element of `k_{w_i}^×` that names the character `ψ_O(w_i)⁻¹`. `O` with `c` is a
*lift setting for `ϑ`* if:

- the places of `O` are the level places of `D` for `ϑ`, and `ψ_O = ω^j·ϑ_tame` for some `1 ≤ j ≤ m`;
- `r_O` and `t_O` are odd, `r_O ≤ r` and `t_O ≤ t`;
- each `c_i` is a label of degree `r_O`, and `c̃_i` does not have the root `1`;
- over each of `p₀, p₁` there is a chosen place `w_i` above it with either `r_O = r` and `c_i` primitive, or `r_O = 1`
  and `c_i = X − 1`.

The *type projection* `e_c` is the endomorphism of `F(O)` by which the tensor product of the idempotents of the labels
`c_i` acts through `∏_i GL_{r_O}(k_{w_i})`. Then:

(a) `e_c` is a self-adjoint idempotent, and its range is stable under the Hecke polynomial operators at every `x ∈ ℂ`
and every split place `w` with `w, w̄` off the places of `O`;
(b) if `O` with `c` is a lift setting for `ϑ`, every `w_i` is a chosen place of `D` and `n_O ≤ 2·n_m`, with
`n_m = k + m(t + 1)`;
(c) infinitely many split places of `E` lie, with their conjugates, off the places of `O`.

*Needs:* 1.1; FiniteReductiveGroups §5.7 (the character and the central idempotent of a squarefree label);
ThetaLiftChainsAndTheSeesawIdentity §2.16 (descent pairs), §2.6 (the level places of a twist).

[ShortProof], `New/Congruences/GaloisRepresentations/SelmerHypotheses` (`New.Selmer.IsLiftSetting`, `New.Selmer.scaledTypePoly`, `New.Selmer.typeProjection`, `New.Selmer.IsLiftSetting.range_typeProjection_mem_invtSubmodule`)

### 1.5 Twisted lattices and Selmer lengths with divisible coefficients

*Origin:* definitions and conventions.

*Method of the formal proof:* the module with coefficients in `O/ℓ^μ` embeds in the one with divisible coefficients,
whose length bounds it.

Let `ψ : G_E → ℚ̄_ℓ^×` be a character, `R` a representation, `Q` a finite set of places, `γ ∈ G_E` and `ζ` an integer
of `ℚ̄_ℓ`.

1. The *twist allowance* is `e′_ℓ = (4f + 3)·r·v_ℓ(n_GL) + 2^(−ℓ)`.
2. For a lattice `ρ` over `O` and `μ ≥ 0`, `Sel_μ(ρ, Q, γ)` is the module of continuous cocycles `G_E → (O/ℓ^μ)ⁿ` for
   `ρ` that are unramified outside the places above `ℓ`, above `M` and in `Q ∪ Q̄`, satisfy the crystalline relations
   above `ℓ` and vanish at `γ`; `sel(ρ, Q, γ) ∈ ℕ ∪ {∞}` is the length of the same module with values in `(K_O/O)ⁿ`.
3. A *twisted lattice* for `(ψ, R, γ, ζ)` over `O` is a lattice `u` of `R` over `O` and a model `ψ′` of `ψ` with values
   in `O` such that `ψ′(γ)u(γ) = ζ·1`, `ζ ∈ O`, `ζ − 1` is a unit, and `γ` lies in an inertia group at a place not
   above `ℓ`. `R` *has a twisted lattice* for `(ψ, γ, ζ)` if one exists over all large `O`.
4. `R` *has divisible Selmer length at most `s`* for `(ψ, Q, γ, ζ)` if, for all large `O`, there is a twisted lattice
   `(u, ψ′)` with normalised length of `sel(ψ′u, Q, γ)` at most `s`.

Then: (a) the length of `Sel_μ(ρ, Q, γ)` is at most `sel(ρ, Q, γ)` for every `μ`; (b) a divisible Selmer bound gives
a twisted lattice; (c) it holds for every larger bound.

**In standard terms.** Let `S_Q` be the set of the places above `ℓ`, above `M` and in `Q ∪ Q̄`, and let `ρ`, with
reductions modulo every power of `ℓ` locally constant, be trivial on the inertia groups at the places outside `S_Q`,
with `ρ(γ) = ζ·1`, `ζ − 1` a unit. Then `z ↦ [z]` maps `Sel_μ(ρ, Q, γ)`, and the module of (2) with values in
`(K_O/O)ⁿ`, injectively to Galois cohomology, with image containing the Bloch–Kato Selmer group of `ρ` relaxed at the
places of `S_Q` not above `ℓ`, and equal to it when `ρ` is potentially crystalline at the places above `ℓ`. So
`sel(ρ, Q, γ)` is at least the length of `H¹_{f,S_Q}(E, ρ ⊗ K_O/O)`, with equality in the potentially crystalline
case, and for a main summand twisted by a character that is anticyclotomic of modulus `Q` (4.1 (4)), no place of `Q`
lying above `ℓ`, a divisible Selmer bound (4) is exactly a bound for the relaxed Bloch–Kato Selmer groups of twisted
lattices (8.4 (a)–(d)).

*Needs:* 1.1.

[ShortProof], `New/Congruences/GaloisRepresentations/SelmerHypotheses` (`New.Selmer.twistError`, `New.Selmer.selmerCocycles`, `New.Selmer.HasDivisibleSelmerLengthLe`, `New.Selmer.length_selmerCocycles_le_crystallineSelmerLength`)

## Layer 2: Galois representations of the forms and main summands

The forms of the argument have Galois representations attached in the weak sense of the formal proof. This layer
shows that they are conjugate self-dual (2.1), that the descent pairs and the main pairs of the data are lift settings
(2.2), how representations of a type behave under twisting and at the bad places (2.3–2.5), that forms of a type sit
in base data of the Taylor–Wiles method (2.6), and that the good eigensystems have main summands (2.7, 2.8).

### 2.1 Attached representations are conjugate self-dual

*Origin:* adapted from the conjugate self-duality of the Galois representations of automorphic representations of
unitary groups (Chenevier and Harris (2013); Shin (2011)): here on traces, for representations attached in the weak sense, deduced from the
duality of the Hecke operators at a split place and its conjugate.

*Method of the formal proof:* the Hecke operators at `w` and `w̄` are adjoint, which relates the coefficients of the
two Hecke polynomials; this gives the trace relation at most Frobenii, and it passes to every `g` along the filter of
most Frobenii near `g`.

(a) Let `f ≠ 0` be a form in rank `k′ + 1`, spherical at a split place `w` and at `w̄`, with Hecke polynomials `H_w`,
`H_{w̄}` (monic, Conventions). Then `H_w(0)·[X^{k′}]H_{w̄} = q_w^{k′}·[X]H_w`. Check: in rank one, `H_w = X − t_1` and
`H_{w̄} = X − t_1⁻¹`, and both sides are `1`; for the constant form in rank two, `H_w = H_{w̄} = (X − 1)(X − q_w)`, and
both sides are `−q_w(q_w + 1)`. For the reversed polynomials `Q_w` the identity fails in both cases.
(b) If `f` is an eigenform of rank `n` with system `H` of Hecke polynomials, then every representation `R` attached to
`H` (continuity and the nondegenerate trace form included, as in the Conventions) is conjugate self-dual with twist `n`
(1.2 (1)).
(c) Let `R` be conjugate self-dual with twist `k′` and of finite type at the conjugate place `Ā` of a place `A`. Then
`R` is of finite type at `A`; if `R` has at `Ā` the jumps of a weight `κ` in rank `k′` (Conventions), it has them at `A`; and a
polynomial that kills an inertia element `s` at `Ā` kills `(s^c)⁻¹` at `A` (the statement is for inertia elements
only). Composing `σ` with complex conjugation replaces each jump `u` of
a weight in rank `k′` by `k′ − 1 − u`.

**In standard terms.** By 8.1 (a), (b) says that every `R` attached to `H` is semisimple with `R^c ≅ R^∨ ⊗ cyc^{1−n}`;
by GaloisRepresentationsOfUnitaryEigenforms §10.4 (b) these `R` are the conjugates of the Galois representation
`r_{ℓ,ι}(Π_f)` of an automorphic representation `Π_f` in which `f` has a nonzero component, so
`r_{ℓ,ι}(Π_f)^c ≅ r_{ℓ,ι}(Π_f)^∨ ⊗ cyc^{1−n}` (8.1 (c)), the cyclotomic character having Hodge–Tate weight `−1`.

*Needs:* 1.2; GaloisRepresentationsOfUnitaryEigenforms §§1.5, 7.3 (Galois representations of eigensystems in the weak sense: over a CM field with Weil
data, every eigenform on the standard definite unitary group has a representation attached to its Hecke polynomials, and
at the places of `Ω` over a place where the form is spherical every attached representation is good, has the jumps of
the weight and, if the place is split, has its geometric Frobenius elements killed by the Hecke polynomial); GaloisRepresentationsOfUnitaryEigenforms §1.2 (the filter of most
Frobenius data of a number field and its refinement near a group element, which is not the trivial filter by
Chebotarev's density theorem).

[ShortProof], `New/Congruences/GaloisRepresentations/AttachedRepresentations` (`New.Selmer.isConjSelfDual_of_attached`, `New.Selmer.coeff_zero_mul_coeff_star`, `New.Selmer.isFiniteTypeAt_and_hasJumpsAt_of_conjPlace`)

### 2.2 The pairs of the data are lift settings

*Origin:* particular to this proof: the good label tuples of the target forms, and the constant label `X − 1` of the
rank-one lifts of the main pairs, satisfy the conditions of a lift setting.

*Method of the formal proof:* the conditions are read off the definitions of good tuples (degree `r`, no root a
`q₂`-th root of unity, one primitive label over each level prime) and of the main pairs; the divisibility in (c) is
that of `p^d − 1` into the order of `GL_{rt}(𝔽_p)`.

(a) For `1 ≤ j ≤ m`, a twist `ϑ` and a good tuple `c` of labels at the chosen places, `O_j(ϑ)` with `c` is a lift
setting for `ϑ`.
(b) For a main pair `p = (ν, z)` for `j` and a twist `ϑ`, the descent pair of the lift of `νϑ` from `U(1)` to `U(2z)`
with every label `X − 1` is a lift setting for `ϑ`, and its lifted form lies in the range of the type projection.
(c) For `i ∈ {0, 1}` and `1 ≤ d ≤ rt`, `p_i^d − 1` divides `n_GL`; so `v_ℓ(p_i^d − 1) ≤ v_ℓ(n_GL)`.
(d) A finite set of places of `E` above `M` has at most `4f` elements, and some chosen place lies above `p₀` or `p₁`,
not above `ℓ`, with residue field of order `p₀` or `p₁`.
(e) A lattice `u` of `R` over `O` is continuous if `R` is, is trivial where `R` is, has the traces of `R`, and comes
with an injective `O`-algebra map `M_n(O) → M_n(ℚ̄_ℓ)` that sends `u(g)` to `R(g)` and keeps traces and determinants.

*Needs:* 1.4; ThetaLiftChainsAndTheSeesawIdentity §2.5 (good tuples of labels), §2.16 (descent pairs), §2.18 (the
descent pairs `O_j(ϑ)` of the chain); DeterminantsOfThetaLiftChains §1.1 (main pairs);
DivisibilityOfThetaDerivatives §1.5 (the chosen places: each lies above `p₀` or `p₁` and has norm that prime, used in
(c) and (d)); OneSidedPrimeSumBoundsAndAdmissibleData §3.2 (the level primes and the ranks `r`, `t` in `n_GL`);
NormsOfThetaLiftsAndExchangeIdentities §§2.1, 2.5 (the theta lift of a character of `U(1)` to `U(2z)`, its lifted
form, and the lift of a pair).

[ShortProof], `New/Congruences/GaloisRepresentations/AttachedRepresentations` (`New.Selmer.isLiftSetting_descentPair`, `New.Selmer.isLiftSetting_mainPair`, `New.Selmer.trivialLift_mem_range_typeProjection`, `New.Selmer.levelPrime_pow_sub_one_dvd_chosenGroupOrder`, `New.Selmer.ellVal_levelPrime_pow_sub_one_le`, `New.Selmer.card_le_of_subset_placesAboveM`, `New.Selmer.exists_chosen_notMem_placesDividing`, `New.Selmer.IsLatticeIn.exists_algHom`, `New.Selmer.IsLatticeIn.continuous`, `New.Selmer.IsLatticeIn.eq_one`, `New.Selmer.IsLatticeIn.trace_eq`)

### 2.3 Twisting by avatars, and representations of labelled eigenforms

*Origin:* particular to this proof: representations of a type are stable under twisting by the avatar of a character
of `U(1)` tamely ramified only at the chosen places, and arise from eigenforms whose local types at the chosen places
are induced from labels.

*Method of the formal proof:* the avatar shifts the jumps by minus its infinity type and acts on tame inertia at the
chosen places through the residue character, which scales the roots of the labels; the local conditions of an
attached representation come from the local behaviour of attached representations at spherical and at depth-zero
places.

Let `O` with some labels `d` be a lift setting for `ϑ`.
(a) Let `R` be a representation of type `(O, k′, J, c, S)`, let `a` be a character of `U(1)` of weight `e` whose tame
part `ψ` is trivial at every place that is not chosen, and let `α` be the avatar of the algebraic Hecke character
`y ↦ a(y/ȳ)·υ(y)^(−k″)·|y|^(j′ − k″/2)` (`υ` the splitting character, Conventions), for integers `k″, j′`. If
`(b′ − 1) + (2j′ − k″) = k′ − 1`
(with `b′ − 1` and `k′ − 1` read as `0` when `b′ = 0` or `k′ = 0`, as in 1.2 (1)), then `R ⊗ α` is a representation of type `(O, b′, J′, c′, S)` with
`J′(σ) = J(σ)` shifted by minus the infinity type of the character at `σ` (which is `j′ + e(v) − k″` for `σ ∈ Φ` and
`j′ − e(v)` otherwise, `v` the place of `σ`), and `c′_i` the label `c_i` with roots multiplied by the element naming
`ψ(w_i)`.
(b) Let `f` be an eigenform of weight `κ` on the definite space of rank `n′`, with Hecke polynomials `H` and `R`
attached to `H`. Suppose `f` is spherical at every place outside `S` or above `ℓM`, except the chosen places of `O` and
their conjugates, and that the type of `f` at `w_i` is induced from the label `c_i` of degree `r_O` and, if
`n′ > r_O`, the trivial character of one further block `GL_{n′ − r_O}`, where in that case `c_i(1) ≠ 0`. Then `R` is a
representation of type `(O, n′, jumps of κ, c_i·(X − 1)^(n′ − r_O), S)`.

*Needs:* 1.2, 1.4, 2.1; DivisibilityOfThetaDerivatives §1.4 (c) (the splitting character `υ` of the Weil data);
IdelicReciprocityCountsAndCyclotomicClassGroups §9.1 (the `ℓ`-adic avatar of an algebraic Hecke character: a continuous character
of `G_E` whose value at most geometric Frobenius elements is `ι` of the value of the Hecke character at a uniformiser;
[ShortProof] `Lib/PadicHodge/Characters.lean` (`New.AlgHeckeChar.avatar`, `New.AlgHeckeChar.continuous_avatar`,
`New.AlgHeckeChar.eventually_avatar_frob`)); GaloisRepresentationsOfUnitaryEigenforms §6.4 (e) (the local behaviour of that avatar over a CM field containing a primitive `5040`-th root of unity: at every place of `Ω` over a finite place it is of finite type with the jumps minus the infinity type, and each inertia element and each geometric Frobenius `s` is killed by `X − ι(θ(x))` for an `x` whose local Artin symbol is `s`); GaloisRepresentationsOfUnitaryEigenforms §§1.5, 7.3 (Galois representations of eigensystems in the weak
sense: over a CM field with Weil data, every eigenform on the standard definite unitary group has a representation
attached to its Hecke polynomials, and at the places of `Ω` over a place where the form is spherical every attached
representation is good, has the jumps of the weight and, if the place is split, has its geometric Frobenius elements
killed by the Hecke polynomial); GaloisRepresentationsOfUnitaryEigenforms §8.4 (attached representations at depth-zero places, restricted
to inertia: if an eigenform has at a split place a type induced from a label and characters, every attached
representation is, at the places of `Ω` over it, of finite type with the jumps of the weight, and each inertia element
is killed by the polynomial whose roots are the images of the roots of the label and of the characters under the tame
exponent of the element).

[ShortProof], `New/Congruences/GaloisRepresentations/AttachedRepresentations` (`New.Selmer.IsRepOfType.twist_avatar`, `New.Selmer.isRepOfType_of_hasProductLabel`)

### 2.4 Inertia above the level primes; representations of a type are main summands

*Origin:* particular to this proof: the conditions of a main summand at the places above `M` and on the image follow
from the type at the chosen places and the numerical weight conditions.

*Method of the formal proof:* inertia above `p_l` acts through roots of unity of order prime to `ℓ` named by the
scaled labels; a primitive label (or `X − 1`) gives an element whose eigenvalues are pairwise incongruent conjugates,
which forces the image of a lattice to span all matrices and gives a scalar at an element of cyclotomic character
`p_l^{r_O}`; the order `q₂` of `ω` keeps the scalar far from `1`.

Let `O` with `c` be a lift setting for `ϑ`.
(a) Let `v` divide `p_l` (`l ∈ {0, 1}`), `A` over `v` and `t′ ≥ 0`. There is `γ ∈ I_A`, the tame generator if `v` is
chosen, such that every `s ∈ I_A` has a multiset `μ` of `r_O + t′` roots of unity, each of order dividing
`p_l^{r_O!} − 1` and some `p_l^d − 1` with `1 ≤ d ≤ r`, whose polynomial `∏_{y ∈ μ}(X − y)` kills `s` at `A` and
`(s^c)⁻¹` at `Ā` in every representation of a type with labels `c̃_i·(X − 1)^{t′}`; and `1 ∉ μ` if `t′ = 0` and
`s = γ`.
(b) If `R` of rank `r_O` is a representation of type `(O, k′, J, c̃, ∅)` and `J` satisfies the main-summand weight
conditions for `(r_O, k′)`, then `R` is a main summand with string length `k′` and jumps `J`.

*Needs:* 1.2, 1.3, 1.4, 2.1, 2.2.

[ShortProof], `New/Congruences/GaloisRepresentations/RowsAndColumnsFromLabels` (`New.Selmer.exists_inertiaGroup_isInertiaSpectrum`, `New.Selmer.IsRepOfType.isMainSummandLike`)

### 2.5 Inertia at the twist places

*Origin:* particular to this proof: at a place of the modulus of the twist, the parahoric type of the forms makes
inertia act on the normalised representation with the two eigenvalues `1` and `ψ_ϑ`.

*Method of the formal proof:* the parahoric type at a twist place has the block of the embedding `W ⊂ V` with the
character `ψ_O⁻¹` and the complementary block trivial; local–global compatibility at such a place gives the quadratic
relation, and the normalising character is unramified there.

Let `O` with `c` be a lift setting for `ϑ`, `Q(ϑ)` auxiliary for the bad places, `f` an eigenform of the weight of `O`
with Hecke polynomials `H`, `R` attached to `H`, and suppose `f` has the parahoric type of `O` at every twist place:
an integral matrix whose reduction is block triangular for the decomposition (complement of `W`, `W`) multiplies `f`
by `ψ_O⁻¹` of the determinant of the `W`-block of the reduction. Then for every place `A` of `Ω` over a place of
`Q(ϑ) ∪ Q(ϑ)̄`, `R` is of finite type at `A` and `(X − ψ_ϑ(s))(X − 1)` kills every `s ∈ I_A`; and the normalised
representation `u = R ⊗ χ_O` satisfies `(u(g) − ψ_ϑ(g))(u(g) − 1) = 0` for all `g ∈ I_{Q(ϑ)}`.

*Needs:* 1.1, 1.4, 2.1; GaloisRepresentationsOfUnitaryEigenforms §8.1 (a form with a parahoric type at a
split place has a product label there, under conditions on the label of the first block and the distinct characters of
the others; [ShortProof] `Lib/GaloisRep/LocalGlobal/LocalFormTypes.lean` (`New.HasParahoricType.hasProductLabel`)),
§8.4 (attached representations at depth-zero places, restricted to inertia: if an eigenform has at a split place a
type induced from a label and characters, every attached representation is, at the places of `Ω` over it, of finite
type with the jumps of the weight, and each inertia element is killed by the polynomial whose roots are the images of
the roots of the label and of the characters under the tame exponent of the element; [ShortProof]
`Lib/GaloisRep/LocalGlobal/LabelCompatibility.lean` (`New.GaloisRep.Attached.isLabelledAt`,
`New.GaloisRep.exists_isTameExponent`)); IdelicReciprocityCountsAndCyclotomicClassGroups §9.1 (the `ℓ`-adic avatar of an algebraic Hecke character: a
continuous character of `G_E` whose value at most geometric Frobenius elements is `ι` of the value of the Hecke
character at a uniformiser); GaloisRepresentationsOfUnitaryEigenforms §6.4 (e) (the local behaviour of that avatar over a CM field containing a primitive `5040`-th root of unity: each inertia element `s` at a place of `Ω` over a finite place `w` is killed by `X − ι(θ(x))` for a unit `x` of `E_w` whose local Artin symbol is `s`).

[ShortProof], `New/Congruences/GaloisRepresentations/RowsAndColumnsFromLabels` (`New.Selmer.isFiniteTypeAt_and_polyKillsAt_of_mem_conjClosure`, `New.Selmer.normalisedRep_quadratic_on_inertia`)

### 2.6 Forms of a type and their base data

*Origin:* particular to this proof: the image of the type projection lies in base data of the Taylor–Wiles method on
the definite space, and every system of these base data, at every auxiliary level, has a normalised representation of
a type with the quadratic relation at the twist places.

*Method of the formal proof:* the normalised representation of an eigenform with the labels `c̃_i` is a
representation of a type by 2.3 and the twist by `χ_O`; the base data are the forms of the type fixed by `O` at its
places, with `n_GL` as common multiple of the stabiliser orders; `n_GL·e_c` has integral coefficients.

Let `O` with `c` be a lift setting for `ϑ`, with `Q(ϑ)` auxiliary for the bad places.
(a) If `f` is an eigenform of the weight of `O` with the labels `c̃_i` at the chosen places (completed by the trivial
character of one further block `GL_{t_O}`), spherical at the places outside `S` or above `ℓM` except the chosen places and their
conjugates, and `R` is attached to its Hecke polynomials, then `R ⊗ χ_O` is a representation of type
`(O, t_O, J_O, c̃_i·(X − 1)^{t_O}, S)`, where `J_O` are the normalised jumps of `O` (Conventions). If `n_O` is even and `l = 2λ` is a
doubled parameter on `W` that fits `O` (ThetaLiftChainsAndTheSeesawIdentity §2.16), then `J_O(σ)` consists of `0, 1, …, t_O − 1` and the numbers
`(t_O − 1 − ε(σ)(l_q(v) − 2w_O(v)))/2`, `q < r_O`, `v` the place of `σ`.
(b) A `(c, S)`-form is an eigenform of the weight of `O`, of type `c`, with the level and character of `O` off `S ∪ S̄`.
If `S` avoids the bad places, the normalised representation of a `(c, S)`-form is a representation of type
`(O, t_O, J_O, c̃_i·(X − 1)^{t_O}, Q(ϑ) ∪ Q(ϑ)̄ ∪ S ∪ S̄)`.
(c) There are jumps `J` and base data `B` (Conventions) on the definite space of rank `n_O`, for the weight of `O`
and the integer `n_B = n_GL`, such that: the forms `e_c y` (`y ∈ F(O)`) are forms of `B` of base level; if
`y` is integral above `ℓ`, so is `n_GL·e_c y`; and for every finite family `u` of places outside the bad places and
every system `x` of `B` at principal level at `u`, the normalised representation `R_x` of `x` is a representation of
type `(O, t_O, J, c̃_i·(X − 1)^{t_O}, Q(ϑ) ∪ Q(ϑ)̄ ∪ u ∪ ū)` with `(R_x(g) − ψ_ϑ(g))(R_x(g) − 1) = 0` on `I_{Q(ϑ)}`.

*Needs:* 1.4, 2.3, 2.5; ThetaLiftChainsAndTheSeesawIdentity §2.16 (doubled parameters that fit a descent pair);
GaloisRepresentationsOfUnitaryEigenforms §9.1 (base data of the Taylor–Wiles method on a definite unitary group, as in the
Conventions: base data are a finite set of places, a space of forms of the weight that is kept by every operator
commuting with the translations by the stabiliser of the lattice at these places and their conjugates and on which some
open subgroup acts by a character through its components at these places and their conjugates, and an integer divisible
by the order of every stabiliser `Γ ∩ gK°g⁻¹`; for a family `L` of places, the forms of level `L` are the forms of the
base data fixed by the components, off the places of the base data and their conjugates, of the principal level at `L`;
the systems of level `L` are the isotypic spaces that contain a nonzero form of level `L`; the integral forms above `ℓ`
are the forms whose values at the points integral above `ℓ` have coordinates that `ι` sends to `ℓ`-adic integers; and
the Hecke algebra is the algebra of the functions `t` on the systems of level `L` whose operator, the multiplication of
the forms of each system `x` by `ι⁻¹(t(x))`, preserves the integral forms of level `L`).

[ShortProof], `New/Congruences/GaloisRepresentations/BaseLevelOfLabel` (`New.Selmer.isRepOfType_normalisedRep`, `New.Selmer.normalisedJumps_eq_range_add_map`, `New.Selmer.IsFormOfType.isRepOfType_normalisedRep`, `New.Selmer.exists_baseLevel`)

### 2.7 The jumps of the descent pairs and of the main pairs

*Origin:* particular to this proof: the Hodge–Tate jumps that the target parameter and the lift weights give satisfy
the main-summand weight conditions.

*Method of the formal proof:* elementary inequalities between `λ_q`, `κ_j`, `t` and `Δ` from the sizes of the data;
the low jumps are the last `m` parameters, which the gap separates from the high ones.

Let `1 ≤ j ≤ m`. For `σ` over the infinite place `v` put `u_q(σ) = ⌊t/2⌋ − ε(σ)(λ_q(v) + κ_j(v))`, `q < r`.
(a) For `q + 1 < k`, `|ε(σ)u_q + κ_j(v)| ≤ t`; for `k ≤ q + 1 ≤ r`, `Δ ≤ 4|u_q|` and `|u_q| ≤ 2mΔ`; if `2mΔ ≤ B` and
`B + t < κ_j(v)`, exactly `m` of the `u_q(σ)` have `|u_q| ≤ B`. The family `J_j(σ) = {u_q(σ) : q < r}` satisfies the
main-summand weight conditions for `(r, t)`.
(b) For a weight `(d, κ)` whose doubled Harish-Chandra parameter is that of `W` (twice `λ`), the jumps of `(d, κ)` in
rank `r` at `σ`, lowered by `(r − t)/2 + ε(σ)w` for any integer `w`, are the numbers `⌊t/2⌋ − ε(σ)(λ_q(v) + w)`, `q < r`.
(c) For a main pair `p = (ν, z)` for `j`, with `ν` of weight `−c_p`, the single jump `z − 1 − ε(σ)c_p(v)` satisfies
`|ε(σ)u + κ_j(v)| ≤ t` and the main-summand weight conditions for `(1, 2z − 1)`.

*Needs:* 1.3; OneSidedPrimeSumBoundsAndAdmissibleData §3.2 (the ranks, `t`, the gap `Δ` and the lift weights `κ_j`),
§3.3 (their sizes), §3.4 (the row parameter `λ_q(v)`, here the target parameter);
DeterminantsOfThetaLiftChains §1.1 (main pairs).

[ShortProof], `New/Congruences/GaloisRepresentations/RowsFromEigensystems` (`New.Selmer.abs_descentPair_weight_add_liftWeight_le`, `New.Selmer.le_natAbs_descentPair_jump_and_le`, `New.Selmer.countP_low_weights_descentPair`, `New.Selmer.isMainSummandWeights_descentPair`, `New.Selmer.abs_mainPair_weight_add_liftWeight_le`, `New.Selmer.isMainSummandWeights_mainPair`, `New.Selmer.map_jumps_sub_eq_map_targetParameter`)

### 2.8 Main summands for the Hecke eigensystems of good forms

*Origin:* adapted from Mínguez (2008): the explicit Howe correspondence for dual pairs of type II, which gives, place
by place, the parameter of a theta lift at the split places of hyperspecial level; here as an identity of traces: the
normalised representation of every eigenform on `V` that lifts a given system has the trace of one rank-`r_O`
representation twisted by `ψ_ϑ`, the same for all twists `ϑ`, plus `t_O` powers of `χ`, and that representation is a
main summand.

*Method of the formal proof:* the Hecke polynomial of a lift at a split place factors as a `q`-Pochhammer string times
the rescaled Hecke polynomial of the system; comparing linear coefficients and multiplying by the normalising
character gives the trace identity at most Frobenii; a representation of a type whose traces are the limits of the
eigenvalues is then a main summand for the pair by 2.4 (b) and 2.7.

Let `O` be a descent pair, `c` labels with `O, c` a lift setting for the trivial twist, `r_O − t_O = 2a′`.
(a) Let `V′` be a descent pair with `r_{V′} ≥ 1`, and `n = n_{V′}`. If `y ≠ 0` for `V′` lifts the system `b` and has
Hecke polynomial `H` at a split place `w` with `w`, `w̄` off the places of `V′`, then
`−[X^{n−1}]H = q_w^{t_{V′}}·(ν_w/ν′_w)·b_w(1) + (Σ_{i < t_{V′}} q_w^i)·ν_w`, where `ν_w`, `ν′_w` are the values at a
uniformiser at `w` of the Hecke characters `x ↦ ν(x/x̄)·υ(x)^{−N}`, for `(ν, N) = (ν_W, r_{V′})` and `(ν_V, n_{V′})`
respectively (`ν_W`, `ν_V` the characters of `W` and `V` of `V′`), times `q_w^{N/2}`.
(b) If `V′` is a descent pair of the same ranks as `O` (`r_{V′} = r_O`, `n_{V′} = n_O = n`) with `μ_{V′} = μ_O·ϑ` for a
tame `ϑ`, and `y` is an eigenform for `V′` lifting `b` with Hecke polynomials `H`, then for most Frobenii `φ` at places
`w`: `−χ_{V′}(φ)·ι([X^{n−1}]H_w) = ψ_ϑ(φ)·α_O(φ)·ι(b_w(1)) + Σ_{e < t_{V′}} χ(φ)^e`, with `ψ_ϑ` the avatar of
`ϑ⁻¹(y/ȳ)` (Conventions) and `α_O` that of `μ_O⁻¹(y/ȳ)|y|^{a′}`.
(c) If `R` of rank `r_O` is a representation of type `(O, r_O, J, c, ∅)` whose trace at every `g` is the limit of
`ι(b_w(1))` along most Frobenii near `g`, and the jumps `J(σ)` lowered by `(r_O − t_O)/2 − ε(σ)w_O(v)` satisfy the
main-summand weight conditions for `(r_O, t_O)`, then there is a main summand for `(O, b)` (1.3 (4)).
(d) If the Hecke eigenvalues `p(w, i)` occur in a nonzero good form on `W_m`, then for each `1 ≤ j ≤ m` there is a
rank-`r` representation that is a main summand for `(O_j(1), p)`.

**In standard terms.** By GaloisRepresentationsOfUnitaryEigenforms §10.4 (b), the representations attached to the
Hecke polynomials of an eigenform are the conjugates of the Galois representation of an automorphic representation in
which it has a nonzero component. So, by 8.3, if `y` is an eigenform lifting the system `p` of (d) for a descent pair
`V′` as in 1.3 (4), for `O_j(1)` and a tame character `ϑ`, and `Π_y` is an automorphic representation of the definite
unitary group of rank `r + t` in which `y` has a nonzero component, the main summand `R` of (d) satisfies
`(R ⊗ ψ_ϑ) ⊕ ⊕_{0 ≤ e < t} χ^e ≅ r_{ℓ,ι}(Π_y) ⊗ χ_{V′}`: up to the twist by `ψ_ϑ` it is the complement of the
characters `χ^e`, `e < t`, in the normalised Galois representation of the lift, and it is determined by `p` up to
isomorphism.

*Needs:* 1.3, 1.4, 2.1, 2.4, 2.6, 2.7; ThetaLiftChainsAndTheSeesawIdentity §2.7 (good forms), §2.16 (lifted Hecke
polynomials), §2.18 (the descent pairs `O_j(1)` of the chain and the fit of the target parameter); ShortGRH background
(Galois representations of eigensystems in the weak sense: over a CM field with Weil data, every eigenform on the
standard definite unitary group has a representation attached to its Hecke polynomials, and at the places of `Ω` over a
place where the form is spherical every attached representation is good, has the jumps of the weight and, if the place
is split, has its geometric Frobenius elements killed by the Hecke polynomial; [ShortProof]
`Lib/GaloisRep/Main/AttachedRepresentations.lean` (`New.GaloisRep.Attached`, `New.GaloisRep.SphericalCompat`),
`Lib/GaloisRep/Main/AllRanks.lean` (`New.GaloisRep.sphericalCompat_std`)); GaloisRepresentationsOfUnitaryEigenforms §1.2 (the filter of most
Frobenius data of a number field and its refinement near a group element, which is not the trivial filter by
Chebotarev's density theorem); IdelicReciprocityCountsAndCyclotomicClassGroups §9.1 (the `ℓ`-adic avatar of an algebraic Hecke character: a continuous character
of `G_E` whose value at most geometric Frobenius elements is `ι` of the value of the Hecke character at a uniformiser;
[ShortProof] `Lib/PadicHodge/Characters.lean` (`New.AlgHeckeChar.avatar`, `New.AlgHeckeChar.continuous_avatar`,
`New.AlgHeckeChar.eventually_avatar_frob`)).

[ShortProof], `New/Congruences/GaloisRepresentations/RowsFromEigensystems` (`New.Selmer.neg_coeff_eq_of_hasLiftHeckePolynomial`, `New.Selmer.eventually_trace_frob_eq_of_hasLiftHeckePolynomial`, `New.Selmer.exists_isMainSummand_of_isRepOfType`, `New.Selmer.exists_isMainSummand_descentPair`)

## Layer 3: Ribet's method to first order

Ribet's method produces, from a lattice in a representation that is residually reducible along a family, an element
of the coefficient algebra whose value at a point bounds a congruence ideal. Here it is done to first order: auxiliary
places tie tame inertia to Frobenius through variables `X_j`, only the coefficients of the monomials dividing
`∏ X_j` are read, and the cocycles of the characters are cut down by a triangular condition instead of being counted.
The layer is pure algebra: a group `G`, a discrete valuation ring `O` and finitely many representations `u_x` of `G`.
Throughout, `v` is the normalised valuation of the discrete valuation ring `O` (`v` of a uniformiser is `1`).

### 3.1 Trace ideals, tie ideals, triangle costs and common Ribet elements

*Origin:* definitions and conventions.

*Method of the formal proof:* the relations are taken in the group ring over a polynomial ring, and modules of
functions are used in place of Galois cohomology so that the statements hold for any group.

Let `O` be a commutative ring, `L` an `O`-algebra, `G` a group, `J` a finite index set, `R_J = O[X_j : j ∈ J]`, and
`u_x : G → M_σ(O)` (`x ∈ Y`) representations.

1. *Fitting ideal and functions.* For a submodule `N ⊂ R_J^s`, `Fitt(N)` is the ideal generated by the determinants of
   the square matrices whose rows lie in `N`: it is Tau Ceti `Submodule.minorsIdeal` of `N` with `p = #s`, the zeroth
   Fitting ideal of `R_J^s/N` (Tau Ceti `TauCeti.fittingIdeal_eq_minorsIdeal_ker`). For `Φ : Oⁿ → R_J^s`, `z : G → Oⁿ`
   and `p ∈ O`, the *module of functions* of `N` is the module of the functions `g ↦ Ψ(z(g))` on `G`, for the
   `O`-linear `Ψ : Oⁿ → O/p` that vanish on `Φ⁻¹(N)`.
2. *Ribet cocycles.* For a representation `ρ` of `G` over `O` and an `O`-module `B`, the Ribet cocycles are the
   cocycles `c : G → B^d` for `ρ` such that `Σ_g θ_g·c(g) = 0` whenever `Σ_g θ_g·(u_x(g) − 1) = 0` for all `x`; for
   `T ⊂ G` and `γ ∈ G`, those vanishing on `T` and at `γ`.
3. *Character cocycles.* For a character `χ : G → O^×`, elements `δ_v ∈ G`, `γ, a ∈ G`: a Ribet cocycle `c : G → O/p`
   for `χ` that vanishes at the `δ_v` and, if `c(γ) = 0`, has `(χ(g) − 1)·c(a) = 0` for all `g`. A module `Z` of
   functions is *detected* by a finite `s ⊂ G` if a member vanishing on `s` is `0`.
4. *Trace ideal.* For an `O`-subalgebra `S` of the families `Y → L[X_j]` and an `S`-submodule `𝒥`, elements `τ_i, φ_i`
   of `G`, indices `k(i) ∈ J`, `p ∈ O` and polynomials `ε_j ∈ O[X]`: `𝒥` is a *trace ideal* if `S` contains the
   constant families `X_j` and the coefficients of the characteristic polynomials of the `u_x(g)`, and `𝒥` contains
   the families `p·tr u_x(g)` and `tr((u_x(τ_i) − 1)u_x(g)) − X_{k(i)}·tr(((X − 1)ε_{k(i)})(u_x(φ_i))·u_x(g))`.
5. *Tie ideal and tied rows.* In `R_J[G]`, with `I` the augmentation ideal and `ρ₀ ∈ R_J[G]`, the *tie ideal* is the
   left ideal spanned by the elements killed by every `u_x`, by `p·I`, by the ties
   `τ_k − 1 − X_j·ε_j(φ_k)·(φ_k − 1)` for `k = (j, ±)`, and by `I·ρ₀`. For generators `gen_i ∈ G`, a row `(r_i)` over
   `R_J[G]` is *tied* if `Σ_i r_i(gen_i − 1)` lies in the tie ideal. The *tied normaliser* for `γ, a ∈ G` and `c₁ ∈ O` is
   `ρ₀ = n + (1 − n)(a − 1)` with `n = c₁(γ − 1)`.
6. *Triangle cost.* For a module `Z` of functions `G → B`, `τ, τ′, φ, φ′ : J → G` (`J` linearly ordered), `I ⊂ J`,
   `C ∈ O` and `b`, `Z` has *triangle cost* `(I, C, b)` if there is `A ⊂ G` such that, with `Z₀` the members vanishing
   on `A`: (a) for `j ∈ I` and `c ∈ Z₀` with `c(τ_i) = c(τ′_i)` for all `i < j` and `c(φ_i) = c(φ′_i)` for the `i < j`
   in `I`, `C·c(τ_j) = C·c(τ′_j)`; (b) for every submodule `Z₁ ⊂ Z₀` whose members vanish at all `τ_j, τ′_j` and have
   `c(φ_j) = c(φ′_j)` for `j ∈ I`, the length of `Z/Z₀` plus the length of `Z₁` modulo its `C`-torsion is at most `b`.
7. *Common Ribet element.* For functions `β_i : Y → L`, `𝓧 ⊂ Y`, `π ∈ 𝓧` and `c ∈ L`: the constant families `β_i` lie
   in `S` and vanish on `𝓧`, and some `f ∈ S` has `f·β_i ∈ 𝒥` for all `i`, has at every `x ∈ 𝓧` coefficient `0` at every
   monomial properly dividing `∏_j X_j`, and has coefficient `c` at `∏_j X_j` in `f(π)`.

**In standard terms.** A Ribet cocycle of `ρ` with values in `B` is a cocycle whose `O[G]`-linear map on the
augmentation ideal, `g − 1 ↦ c(g)`, vanishes on the elements of the augmentation ideal killed by every `u_x` (8.5
(a)). When some `u_x` is conjugate over `O` to a block sum in which `ρ` and the trivial character occur, the
coboundaries are Ribet cocycles, and the Ribet cocycles modulo coboundaries are the classes in `H¹(G, B^d)` of the
extensions of the trivial module by `B^d` on which the `O`-algebra spanned by the families `(u_x(g))_x` acts (8.5
(b)); for `G = G_E`, finitely many continuous `u_x` over a coefficient ring `O`, and `B = O/a` with `a ≠ 0` or
`B = K_O/O`, these classes lie in continuous cohomology and are unramified wherever all the `u_x` are (8.5 (c)). The
Fitting ideal of (1) is the standard one; trace ideals, tie ideals, triangle costs and common Ribet elements are
notions of the route.

*Needs:* none.

[ShortProof], `Lib/General/Algebra/FittingIdealsAndLengths` (`New.Selmer.fittingIdeal`, `New.Selmer.formsMod`); `New/Congruences/LocalLoss/Basic` (`New.Selmer.ribetCocyclesIn`); `New/Congruences/FirstOrder/FittingBlock` (`New.Selmer.HasTriangleCost`, `New.Selmer.IsTraceIdeal`, `New.Selmer.ribetCocyclesVanishingOn`, `New.Selmer.IsCharacterCocycle`, `New.Selmer.IsDetectedBy`, `New.Selmer.IsCommonRibetElement`); `New/Congruences/FirstOrder/RibetMatrices` (`New.Selmer.tieIdeal`, `New.Selmer.tiedRows`, `New.Selmer.tiedNormaliser`)

### 3.2 Amitsur's formula for block matrices and Ribet's polynomial

*Origin:* adapted from Amitsur's formula (IntegralHeckeAndGaloisDeterminants §0.5) and the Cayley–Hamilton theorem,
as in Ribet's method (Bellaïche and Chenevier (2009)): here for an algebra represented by matrices whose characteristic polynomials are defined over a subring,
and a square matrix of relations modulo a two-sided ideal and a left ideal.

*Method of the formal proof:* Amitsur's formula expresses the characteristic coefficients of a block matrix through
those of products of blocks; the Cayley–Hamilton theorem for the block matrix `ρ(B)` gives the polynomial.

Let `R` be a commutative ring, `L` an `R`-algebra, `Λ` an `R`-algebra and `ρ : Λ → M_σ(L)` an `R`-algebra map.
(a) If the characteristic polynomial of every `ρ(w)` has coefficients in the image of `R`, then for every square
matrix `P` over `Λ` the block matrix `(ρ(P_{ab}))` has characteristic polynomial with coefficients in the image of `R`.
(b) Suppose the `w ∈ Λ` whose `ρ(w)` has characteristic coefficients in the image of `R` span `Λ` over `R`. Let `𝔞` be
a two-sided ideal containing `ker ρ`, `y ∈ Λ^N`, `I` the left ideal spanned by its entries, `ρ₀ ∈ Λ`, and `B` a square
matrix over `Λ` with `(By)_a ∈ 𝔞 + Iρ₀` for every `a`. Then some `P ∈ R[X]` has `P(0) = det(ρ(B))` (the block matrix)
and `zP(ρ₀) ∈ 𝔞` for all `z ∈ I`; moreover `tr ρ(ρ₁P(ρ₀))` lies in the image of `R` for all `ρ₁ ∈ Λ`, and if `ρ(z) = δ`
for some `z ∈ I` and `δ ∈ R`, then `δ·tr ρ(ρ₁P(ρ₀)) = tr ρ(a)` for some `a ∈ 𝔞`.

*Needs:* IntegralHeckeAndGaloisDeterminants §0.5.

[ShortProof], `New/Congruences/FirstOrder/RibetMethod` (`New.amitsur_charpoly_comp_coeff_mem_range`, `New.Selmer.exists_ribet_polynomial`)

### 3.3 Ribet's element for a matrix of tied rows

*Origin:* particular to this proof: Ribet's polynomial of 3.2, read through a family of representations, gives one
element of the algebra of characteristic coefficients that multiplies the determinants of the left ideal into the
module of tied traces, with a prescribed value on the points where the representation is a block plus characters.

*Method of the formal proof:* 3.2 (b) applied in the group algebra with the ideal of elements whose traces lie in `𝒥`;
on the block points the determinant of `B` splits into the determinants of the block and of each character, and the
element `ρ₁` isolates the first character.

Let `u_x : O[G] → M_σ(O)` (`x ∈ Y`) be algebra maps and `S` an `O`-algebra of functions `Y → L` containing the
constants and the functions `x ↦` coefficients of the characteristic polynomial of `u_x(g)`. Let `𝒥` be an
`S`-submodule of functions `Y → L`, `y ∈ O[G]^N`, `I` its left span, `𝔞` the left ideal spanned by the `w` with
`x ↦ tr u_x(wg)` in `𝒥` for all `g`, `ρ₀, ρ₁ ∈ O[G]`, `μ₀ ∈ O`, and `B` a square matrix with `(By)_a ∈ 𝔞 + Iρ₀`.
Suppose that on `𝓧 ⊂ Y`, `u_x` is the block sum of `ψ_x` (rank `r′`) and characters `η_0, …, η_{t′−1}` (`t′ ≥ 1`), that `ψ_x(ρ₁) = 0`, `η_e(ρ₁) = μ₀` for `e = 0` and
`0` otherwise, and `η_0(ρ₀) = 0`. Then some `f ∈ S` has `f·(x ↦ det u_x(w)) ∈ 𝒥` for all `w ∈ I`, and
`f(x) = μ₀·det ψ_x(B)·∏_e det η_e(B)` for `x ∈ 𝓧`.

*Needs:* 3.2.

[ShortProof], `New/Congruences/FirstOrder/RibetMethod` (`New.Selmer.exists_ribet_element_of_tied_rows`)

### 3.4 Fitting ideals of modules with a triangle cost

*Origin:* particular to this proof: a bound for the Fitting ideal of a module of relations in polynomial variables,
through the module of functions it defines and a triangular condition at the variables.

*Method of the formal proof:* the module is enlarged in three stages: by the relations that make the functions vanish
on a set, at the cost of a length; by the triangle, one variable at a time; and finally read at `X_j = 0`, where the
constant coefficient is bounded by a length modulo torsion.

Let `O` be a discrete valuation ring, `J` a finite linear order, `R_J = O[X_j]`, `s ⊂ G` finite, `Φ : Oⁿ → R_J^s`
linear, `z : G → Oⁿ`, `N ⊂ R_J^s` a submodule, `p ≠ 0`, `τ, τ′, φ, φ′ : J → G`, `C ∈ O`, `I ⊂ J`. Suppose that the module
of functions of `N` has triangle cost `(I, C, b)`; that `Φ(pv) ∈ N` for all `v`; that `Φ(z(g)) − e_g ∈ N` for `g ∈ s`
(`e_g` the basis vector); that `Φ(z(τ_j)) − X_jΦ(z(φ_j))` and `Φ(z(τ′_j)) − X_jΦ(z(φ′_j))` lie in `N`; and that for
`j ∈ I` and `i < j`, either `i ∈ I` or `X_i·R_J^s ⊂ N`. Then some `F ∈ R_J` has `v(F(0)) ≤ b + (#I + #s)·v(C)` and
`F·∏_{j∈I} X_j ∈ Fitt(N)`.

*Needs:* 3.1.

[ShortProof], `New/Congruences/FirstOrder/FittingBlock` (`New.Selmer.exists_mul_prod_X_mem_fittingIdeal`, `New.Selmer.exists_mem_fittingIdeal_addVal_constantCoeff_le`)

### 3.5 Tied rows on the block

*Origin:* particular to this proof: matrices of tied rows whose determinant on the main block is bounded by the
length of a module of cocycles.

*Method of the formal proof:* the rows given by cocycle relations, by the generators and by the normaliser are tied.
Read through `ρ` at `X_j = 0`, they span a lattice whose quotient is dual to the module of Ribet cocycles of the block,
and a basis of that lattice is a square matrix whose determinant has the length of the quotient as valuation.

Let `O` be a discrete valuation ring, `J` finite, `u_x` representations of `G` over `O` with coordinates `z` for
finitely many generators `gen_i` (`u_x(g) − 1 = Σ_i z_i(g)(u_x(gen_i) − 1)` for all `g, x`), `ρ` a representation of rank `r′` whose image spans
`M_{r′}(O)`, `γ ∈ G` with `ρ(γ) = y·1`, `c₁(y − 1) = 1`, `a ∈ G`, and let `b₀` bound the length of the Ribet cocycles of
`ρ` with values in `K_O/O` that vanish at the `τ_k` and at `γ`. Then some square matrix of rows tied for the tied
normaliser of `(γ, a, c₁)` has, through `ρ` at `X_j = 0`, a determinant of valuation at most `b₀`. The step from the
left module of rows to one matrix is LengthBoundsInPadicFamilies §1.8b (2), for the one surjective block map given by
`ρ`; what is proved here is that the rows in question are tied and that the solution module of their relations is the
module of Ribet cocycles above.

*Needs:* 3.1; LengthBoundsInPadicFamilies §1.8b (for one surjective block map onto `M_{r′}(O)` and a left module of
rows, some array of rows has determinant of valuation at most the length of the solution module with values in
`K_O/O`).

[ShortProof], `New/Congruences/FirstOrder/RibetMatrices` (`New.Selmer.exists_tiedRows_addVal_det_le`)

### 3.6 Tied rows for the characters

*Origin:* particular to this proof: tied rows that serve all characters at once, with determinants on each character
controlled modulo the monomials that do not divide `∏ X_j`.

*Method of the formal proof:* for each character the cocycle relations define a module of relations whose module of
functions is a module of character cocycles; 3.4 puts a multiple of the product of the variables of that type in its
Fitting ideal, and unit rows at the generators glue the characters into one matrix.

Let `O` be a discrete valuation ring and `u_x` representations of `G` over `O` with coordinates for generators made of
elements `δ_v` (`v ∈ W`) and two finite sets `s₀, s ⊂ G`. Let `γ, a ∈ G`, `c₁ ∈ O`, and let `ξ_e` (`e < t′`) be
characters trivial on `γ` and the `δ_v`; let `o_v(X)(X − 1)` kill every `u_x(δ_v)`; `p ≠ 0`; `ε_j(ξ_e(φ_k)) ≡ 1 mod p`;
`q_e ∈ R_J[G]` with `ξ_{e′}(q_e) = C` for `e′ = e` and `0` otherwise; `ty : J → {0, …, t′ − 1}` monotone. Suppose that
for each `e` every module of character cocycles for `ξ_e` (for `δ_v, γ, a`) has triangle cost
`({j : ty(j) = e}, C, b_e)` for `τ(j, +), τ(j, −), φ(j, +), φ(j, −)` and is detected by `s`. Then there are matrices
`B_{e,i}` and weights `w_{e,i}` over `R_J` and, for each choice `i = (i_e)`, a square matrix of tied rows (for the tied
normaliser of `(γ, a, c₁)`) whose determinant on `ξ_e` is
`c₀·det B_{e,i_e}`, `c₀ = C^{#s}·∏_v o_v(1)`, such that `Σ_i w_{e,i}·det B_{e,i} = Γ_e·∏_{ty(j) = e} X_j + ζ_e`, with
`ζ_e` in the colon ideal `(𝔫 : ∏_{ty(j) < e} X_j)` of the ideal `𝔫` spanned by the monomials not dividing `∏_j X_j`, and
`v(Γ_e(0)) ≤ b_e + (#{ty(j) = e} + #s)·v(C)`.

*Needs:* 3.1, 3.4.

[ShortProof], `New/Congruences/FirstOrder/RibetMatrices` (`New.Selmer.nonempty_characterRows`, `New.Selmer.CharacterRows`)

### 3.7 Ribet's lemma to first order over a discrete valuation ring

*Origin:* adapted from Ribet's method in Fitting-ideal form (Bellaïche and Chenevier (2009); Dasgupta, Kakde,
Silliman and Wang (2023) for congruent characters in rank two), for a representation that is a block plus several
characters along a family: here to first order in tie variables, with one element for all
determinants of combinations `Σ ω_g(u_x(g) − 1)`, and with the cocycles of the characters bounded by triangle costs.

*Method of the formal proof:* the matrices of 3.5 and 3.6 are glued: on the block points the product of their
determinants is the value of one element of `S` (3.3), the weights of 3.6 combine the choices, and the coefficients
modulo `p` pass to coefficients in `K_O/O`.

Let `O` be a discrete valuation ring, `L` an `O`-algebra, `J` a finite linear order, `u_x` (`x ∈ Y`, `Y` finite)
representations of `G` over `O`, `S` a subalgebra of the families `Y → L[X_j]` and `𝒥` an `S`-submodule. Assume:
1. on `𝓧 ⊂ Y`, `u_x` is the block sum of `ρ_x` and characters `ξ_0 = 1, ξ_1, …, ξ_{t′−1}`, and the image of `ρ_π`
   spans all matrices, for one `π ∈ 𝓧`;
2. `γ_x` acts on `ρ_x` by a scalar `y_x` with `y_x − 1` a unit and trivially on the characters;
3. `p ≠ 0`, `𝒥` is a trace ideal for `p`, `τ_k, φ_k` (`k ∈ J × {+, −}`) and `ε_j`, and `ε_j(ξ_e(φ_k)) ≡ 1 mod p`;
4. `a ∈ G` with `∏_{e′ ≠ e}(ξ_e(a) − ξ_{e′}(a))` dividing `C` for every `e`, and `ty : J → {0, …, t′ − 1}` monotone;
5. the Ribet cocycles of `ρ_π` with values in `K_O/O` that vanish at the `τ_k` and at `γ_π` have length at most `b₀`;
6. the `δ_v` (`v` in a finite set) are trivial on the characters and `o_v(X)(X − 1)` kills every `u_x(δ_v)`;
7. for each `e`, every module of character cocycles for `ξ_e` (with `δ_v, γ_π, a`) has triangle cost
   `({ty(j) = e}, C, b_e)` and is detected by a finite `s ⊂ G`.

Then (a) [gluing] let `gen_i` be finitely many generators with coordinates for the `u_x` (3.5), `γ′, a′ ∈ G`,
`c₁ ∈ O`, `μ₀ ∈ R_J` such that some `q₀ ∈ R_J[G]` has `ξ_0(q₀) = μ₀` and `ξ_e(q₀) = 0` for `e ≠ 0`, `B₀` and `M_i`
(`i` in a finite set) square matrices over `R_J[G]` whose rows are tied (3.1 (5)) for the `gen_i` and the tied
normaliser of `(γ′, a′, c₁)`, and `w_i ∈ R_J`; then some `f ∈ S` multiplies every
`det(Σ_g ω_g(u_x(g) − 1))` into `𝒥` and has value `Σ_i w_i·μ₀·det ρ_x(B₀)·∏_e det ξ_e(M_i)` at `x ∈ 𝓧`; and (b) the
determinants `det(Σ_g ω_g(u_x(g) − 1))` (`ω` finitely supported) have a common Ribet element at `π` whose coefficient
comes from some `c ∈ O` with
`v(c) ≤ b₀ + Σ_e b_e + t′·(Σ_v v(o_v(1)) + 2#s·v(C)) + (#J + 1)·v(C)`.

*Needs:* 3.1, 3.3, 3.5, 3.6.

[ShortProof], `New/Congruences/FirstOrder/RibetLemma` (`New.Selmer.exists_traceIdeal_multiplier_eq_sum_det`, `New.Selmer.exists_isCommonRibetElement_addVal_le`)

## Layer 4: Even classes and triangles of Taylor–Wiles places

Ribet's method leaves, beside the Selmer group of the main summand, the extensions of the characters among
themselves: classes of `G_E` in the Tate twists `(O/ℓ^ν)(−e)`, `0 < e < t`. Their odd parts are bounded by the odd
class bound (6.1); the even parts, whose orders are not controlled, are removed by auxiliary places. Over the totally
real field `F`, Kummer maps satisfy a reciprocity law with the even classes; Taylor–Wiles places chosen one after
another, each with a new Kummer map that the earlier places do not see, cut the even classes down in a triangle.
Throughout, `E` is a CM field in `Ω` containing a primitive `5040`-th root of unity.

### 4.1 Even classes, triangles and auxiliary twists

*Origin:* definitions and conventions.

*Method of the formal proof:* the definitions use cocycles rather than classes, with explicit vanishing conditions;
for `ℓ` odd and `e > 0` the odd classes contain exactly one cocycle of each class of their image, while the even
classes contain every coboundary (8.6).

1. For a coefficient ring `O`, a set `S` of places, `ν ≥ 0` and `e ≥ 0`, the *even classes* `Ev_e(O, S, ν)` are the
   locally constant cocycles `c : G_E → (O/ℓ^ν)(−e)` unramified outside the places above `ℓ` and `S ∪ S̄`, with
   `c(g^c) = c(g)`, that vanish on the elements of the decomposition groups above `ℓ` with `cyc = 1`. The *odd classes*
   `Sha_e(O, ν)` are the cocycles in `(O/ℓ^ν)(−e)` unramified outside `ℓ`, vanishing on the local set above `ℓ` (the
   inertia groups above `ℓ` if `e = 0`, the elements of the decomposition groups above `ℓ` with `cyc = 1` otherwise),
   and with `c(g^c) = −c(g)` if `e ≠ 0`. These are modules of cocycles, not of classes, and `Sha` is the route's
   letter: in the literature `Ш¹` is the group of the classes that are trivial at every place; 8.6 and
   IdelicReciprocityCountsAndCyclotomicClassGroups §11.3 relate both modules to groups of classes.
2. A *tame generator family* `(ν, w, τ, φ)`: places `w_j` not above `ℓ`, `τ_j` the chosen tame generator at a place
   over `w_j`, and `φ_j ∈ G_ν`.
3. A *prime triangle* `(ν, w, τ, φ, a, t′, ty, h, c′)`, for a finite linear order `J`, a monotone
   `ty : J → {0 < e < t′}`, `a ∈ G_E` and `h, c′ ≥ 0`: `(ν, w, τ, φ)` is a tame generator family; there is a finite set
   `s` of elements with `cyc = 1` and `(#J + #s + 1)·h ≤ c′` such that every cocycle in `(O/ℓ^ν)(−e)` unramified off
   `ℓ` that vanishes at `a` and on `s` is `0` (all `O`, `e`), and for each exponent `0 < e < t′` and `g ∈ s` some `j`
   with `ty(j) = e`, the same for all `O`, has `z(φ_j) = 2z(g)` for all `O` and all `z ∈ Ev_e(O, ∅, ν)`; for every
   `e < t′` (including `e = 0`), `∏_{k ≠ e, k < t′}(u^e − u^k)` divides `ℓ^h` in `ℤ_ℓ`, `u = cyc(a⁻¹)`; every `z ∈ Ev_{ty(j)}(O, {w_i}, ν)` with `z(τ_i) = 0` for `i < j` and `z(φ_i) = 0` for the `i < j`
   with `ty(i) = ty(j)` has `ℓ^h·z(τ_j) = 0`; and `4(χ(a)^e − 1)²` divides `ℓ^h` in `O` for `0 < e < t′`.
4. An *auxiliary twist* `(S, Q, ψ, c″)`: `Q` is auxiliary for `S` with no place above `ℓ`, `ψ` is anticyclotomic of
   modulus `Q` (it comes from the norm-one torus), and for some tame generators `σ_P` at places over the `P ∈ Q`,
   `Σ_P v_ℓ(ψ(σ_P) − 1) ≤ c″`. Here a character `ψ : G_E → ℚ̄_ℓ^×` is *anticyclotomic of modulus `Q`* if it comes from
   `U(1)` for the places above `ℓ` and the set `Q`, in the sense of GaloisRepresentationsOfUnitaryEigenforms §9.2: it
   is locally constant and `ψ(Art(x)) = η(x/x̄)` for a character `η` of the finite ideles trivial on `E^×` and on the
   ideles that are units at every place not above `ℓ` and `≡ 1` at the places of `Q`. A twist `ϑ` is *auxiliary of
   ramification at most `c″`* (for `ℓ`) if `(bad places, Q(ϑ), ψ_ϑ, c″)` is an auxiliary twist.

Then: (a) for a tame generator family, `χ` is trivial on `τ^±` and every power of `χ` is `≡ 1 mod ℓ^ν` on `φ^±`; (b) a
cocycle modulo `ℓ^{e′}` of a representation trivial on the elements of inertia off `S` with `cyc = 1`, unramified off
`S` and the `w_j, w̄_j`, that vanishes on `τ^±`, is unramified off `S`; (c) if `c ∈ Ev_e(O, S, ν)` and `b ∈ O/ℓ^ν` is
killed by every additive `u : O/ℓ^ν → ℤ/ℓ^ν` for which `u∘c` is a cocycle for `cyc^(−e) mod ℓ^ν`, then `b = 0`.

**In standard terms.** For `ℓ` odd, `z ↦ [z]` maps `Ev_e(O, S, ν)` onto the part fixed by `[z] ↦ [z^c]`
(`z^c(g) = z(g^c)`) of the group of the classes in `H¹(G_E, (O/ℓ^ν)(−e))` unramified outside `ℓ` and `S ∪ S̄` whose
restriction to `D_A ∩ ker cyc` vanishes at each place `A` above `ℓ`, with kernel the coboundaries (8.6). For `e > 0`
and `ℓ` odd it maps `Sha_e(O, ν)` isomorphically onto the part of that group for `S = ∅` on which `[z] ↦ [z^c]` is
`−1`, a group whose length lies between that of the corresponding part of `Ш¹` and that length plus local terms at the
places above `ℓ`; and `Sha_0(O, ν)` is `Hom(Cl(E), O/ℓ^ν)` (IdelicReciprocityCountsAndCyclotomicClassGroups §11.3
(a)–(c)).

*Needs:* 1.1; GaloisRepresentationsOfUnitaryEigenforms §9.2, IdelicReciprocityCountsAndCyclotomicClassGroups §§10.1, 10.7 (odd classes over cyclotomic fields: the module of odd classes in the Tate twist
`(O/ℓ^ν)(−e)` consists of the continuous cocycles of `G_E`, not taken modulo coboundaries, that are unramified outside
`ℓ`, vanish on the local set above `ℓ`, which is the inertia groups above `ℓ` if `e = 0` and the elements of the
decomposition groups above `ℓ` with trivial cyclotomic character otherwise, and, if `e ≠ 0`, are negated by complex
conjugation; for a CM field `E` inside the cyclotomic field of conductor `N_c` and an integer `t`, there is one nonzero
integer `X ≤ 2^(4(N_c + t + 3)^27)·h_E` such that for every prime `ℓ`, every coefficient ring `O` at `ℓ` with enough
roots of unity, every `e < t` and every `ν`, the length of the odd classes in `(O/ℓ^ν)(−e)` is at most the valuation of
`X` in `O`); GaloisRepresentationsOfUnitaryEigenforms §§9.2, 9.3 (Selmer modules: locally constant cocycles of `G_E` in a power of
a module, unramified outside a set of places and obeying given linear relations; their length with coefficients in
`K_O/O` bounds the length at every finite level; and the Galois characters that come from `U(1)`).

[ShortProof], `New/Congruences/FirstOrder/EvenClasses` (`New.Selmer.evenClasses`, `New.Selmer.IsTameGeneratorFamily`, `New.Selmer.IsPrimeTriangle`, `New.Selmer.IsAuxTwist`, `New.Selmer.IsTameGeneratorFamily.mem_selmerModule_of_tame_eq_zero`, `New.Selmer.eq_zero_of_forall_mem_Z1_of_mem_evenClasses`)

### 4.2 Kummer maps and their reciprocity law with even classes

*Origin:* adapted from Kummer duality for Tate twists of `ℤ/ℓ^ν` over a totally real field and global reciprocity
(Darmon, Diamond and Taylor (1995), Theorem 2.19, for the count; Gras and Munnier (1998)): here as a linear relation between the values of an even class at tame generators, with the values
of a Kummer map at the Frobenius elements as coefficients, and a count of Kummer maps modulo `ℓ`.

*Method of the formal proof:* a Kummer map is the restriction to `G_E` of a relation over `F` in a setting of local
conditions; the extension `cyc⁺` of `cyc` to `G_F`, trivial at `c`, gives the equivariance; the reciprocity law is the
defining property of a relation applied to the even class read over `F`; the count comes from the dimension of the
relations modulo `ℓ`, with at least four infinite places.

A Frobenius datum is *`ν`-split* if its place is not above `ℓ` and its Frobenius lies in `G_ν`. Let `x` be a finite
family of `ν`-split data and `T` a finite set of primes of `F`. Let `M_e = ℤ/ℓ^ν` with `G_F` acting by `(cyc⁺)^(−e)`. A
*Kummer map of exponent `e` off `T`* is a function `ψ : G_E → ℤ/ℓ^ν` such that `g ↦ (n ↦ nψ(g)/ℓ^ν)` is the restriction
of a relation off `T`: a locally constant homomorphism `y : G_ν → Hom(M_e, ℚ/ℤ)`, extended by `0` to `G_F`, with
`y(gug⁻¹) = cyc(g)·y(u)∘g⁻¹`, trivial on inertia at the primes outside `T`, such that `Σ_P y(φ_P)(z(γ_P)) = 0` for
every finite family of distinct primes `P ∉ T` of `F` with Frobenius elements `φ_P ∈ G_ν` and tame generators `γ_P`
and every cocycle `z` of `G_F` in `M_e` that satisfies the local conditions at the primes above `ℓ` (vanishing on the
part of the decomposition group in `ker cyc⁺`) and below `x` (vanishing on the decomposition group), vanishes at the
complex conjugations and is unramified outside these primes and the `P`. Here a *Kummer map* is a function on `G_E`
given by a relation; in the literature the Kummer map of a field `K` is the map `K^× → H¹(G_K, μ_{ℓ^ν})`,
`a ↦ [g ↦ g(α)/α]` with `α^{ℓ^ν} = a`, of ProfiniteCohomology §9.6 (The Kummer sequence and isomorphism). The dual
Selmer cocycles of the relation setting give Kummer maps (8.7).
(a) A Kummer map is locally constant; on `G_ν` it is a homomorphism negated by complex conjugation, and
`ψ(ghg⁻¹) = cyc(g)^(e+1)·ψ(h)` for `g ∈ G_E` and `h ∈ G_ν`.
(b) Let `T` contain the primes above `ℓ` or below `x`, and let `w_j` be `ν`-split data above distinct primes of `F`
outside `T`, with Frobenius elements `φ_j` and tame generators `γ_j` normalised over `F`. If `z ∈ Ev_e(O, {w_j}, ν)` vanishes at the Frobenius
elements of `x`, then `Σ_j ψ(φ_j)·2z(γ_j) = 0`; so if `ψ(φ_i) = 0` for `i ≠ j`, every `n` divisible by `2ψ(φ_j)` kills
`z(τ_j)`, `τ_j` the chosen tame generator at the datum `w_j`.
(c) If `ν > 0`, `E` has at least four infinite places, and `x` is a finite family of `ν`-split data above distinct
primes of `F`, then for some finite `T` containing the primes above `ℓ` or below `x`, the reductions modulo `ℓ` of the
Kummer maps of exponent `e` off `T` span a space of dimension greater than the number of members of `x`.

*Needs:* 4.1; IdelicReciprocityCountsAndCyclotomicClassGroups §§4.5, 4.6 (global duality for a finite Galois module in the form with relations at split primes:
a relation setting over a number field `K` is a discrete module `M` of `G_K` killed by `m` and fixed by the complex
conjugations, an open normal subgroup `U` that fixes `M` and the `m`-th roots of unity and contains no complex
conjugation, and a finite set `S` of primes outside which `M` is unramified, with a local condition at each prime, a
module of functions on a decomposition group that contains the local coboundaries at the primes of `S`; a relation off a
finite set `T` of primes is a locally constant map `y : G_K → Hom(M, ℚ/ℤ)` that is zero outside `U`, additive on `U`,
satisfies `y(gug⁻¹) = cyc(g)·y(u)∘g⁻¹` and is zero on the inertia groups at the primes outside `T`, such that `Σ_P
y(φ_P)(z(γ_P)) = 0` for every finite family of distinct primes `P ∉ T` with Frobenius elements `φ_P ∈ U` and tame
generators `γ_P` and every cocycle `z` that is allowed at the primes of `S`, vanishes at the complex conjugations and is
unramified outside `S` and the `P`; the count modulo `ℓ`, the one 4.2 uses: if `ℓ | m`, `M` is finite, `M[ℓ]` has order
`ℓ`, `K` has at least four infinite places, `κ` is a continuous character of `G_K` with values in `1 + 4ℤ_ℓ` whose
kernel lies in `U ∪ Uc⁻¹` for one element `c`, and the local condition is zero at the primes not above `ℓ` and vanishing
on `ker κ` at the primes above `ℓ`, then for some finite `T ⊇ S` the reductions modulo `ℓ` of the relations off `T` form
a group of order at least `ℓ^{k+1}`, `k` the number of primes of `S` not above `ℓ`; and the count of all relations, a
case of the formula of Greenberg and Wiles as a lower bound, which holds for totally complex `K` only: if moreover `K`
is totally complex, `m = ℓ^r` with `r ≠ 0`, some `σ ∈ G_K` has trivial `ℓ`-adic cyclotomic character, is central modulo
`U` and fixes no nonzero element of `M`, and `p ≥ 1` is prime to `m`, divisible by no prime of `S` and such that the
primes dividing `p` are unramified in the field of `U`, then for some finite `T ⊇ S` of primes not dividing `p`,
`#Z(∅)·#M^{#S + r₂} ≤ #(relations off T)·#M·∏_{v ∈ S} #A_v`, with `Z(∅)` the cocycles of the setting unramified outside
`S`, `A_v` the allowed local cocycles at `v` and `r₂` the number of infinite places); GaloisRepresentationsOfUnitaryEigenforms §§9.2, 9.3 (Selmer modules: locally constant cocycles
of `G_E` in a power of a module, unramified outside a set of places and obeying given linear relations; their length
with coefficients in `K_O/O` bounds the length at every finite level).

[ShortProof], `New/Congruences/FirstOrder/KummerMaps` (`New.Selmer.IsKummerMap`, `New.Selmer.IsKummerMap.hasKummerType`, `New.Selmer.IsKummerMap.sum_eq_zero`, `New.Selmer.IsKummerMap.nsmul_apply_tameGenerator_eq_zero`, `New.Selmer.exists_card_lt_finrank_kummerReductions`)

### 4.3 Taylor–Wiles places in a triangle, with prescribed Frobenii

*Origin:* particular to this proof: Taylor–Wiles places, the same number at every `ℓ`-power level and with Frobenius
data in a prescribed set, chosen in triangular order so that each new place sees a new Kummer map and the reciprocity
laws remove the even classes up to a bounded power of `ℓ`.

*Method of the formal proof:* `J` is the set of pairs `(e, g)` with `0 < e < t′` and `g ∈ s`, ordered lexicographically
with `e` first, and `ty(e, g) = e`. Here `s ⊂ ker cyc` is the set of IdelicReciprocityCountsAndCyclotomicClassGroups
§10.6 (b) for `g₀ = γ⁻¹`: it gives the detection clause of 4.1 (3), and when `ℓ ≤ y′²` its bound `#s ≤ y′²⁰` gives
`(#J + #s + 1)·y′h ≤ y′²²h` (trivial if `h = 0`). The Kummer maps `ψ_j` and the Frobenius data `(w_j, A_j, φ_j)` are
chosen by recursion on `j = (e, g)`. By 4.2 (c), for the `w_i` with `i < j` and `ty(i) = e`, some Kummer map `ψ_j` of
exponent `e` has its reduction modulo `ℓ` outside the span of the reductions of these `ψ_i`. So some `σ_j ∈ G_ν` has
`ψ_i(σ_j) = 0` for all `i < j` and `ψ_j(σ_j) = ∏_{k ≠ e, k < t′}(u^e − u^k)`, `u = cyc(γ)` (from this independence
and 4.2 (a)). With `δ` given by the hypothesis on `W` for `g·g^c·σ_j·(σ_j^c)⁻¹`, near `δ^{ℓ^ν}·g·g^c·σ_j·(σ_j^c)⁻¹`
every Kummer map takes twice its value at `σ_j` (4.2 (a)) and every `z ∈ Ev_e(O, ∅, ν)` twice its value at `g`. Most
Frobenii near that element form a proper filter, to which belong `W` and, for each finite set of primes, the data
whose places avoid it (GaloisRepresentationsOfUnitaryEigenforms §1.2 (b), (d)). This gives a `ν`-split datum in `W`,
above a prime of `F` not used before and outside the sets `T` of the `ψ_i` with `i ≤ j`, with `ψ_i(φ_j) = 0` for
`i < j`, `z(φ_j) = 2z(g)`, and `2ψ_j(φ_j) = 4ψ_j(σ_j)`, which divides `ℓ^{y′h}` since `4` and each `u^e − u^k` divide
`ℓ^h` and `t′ < y′`. For the condition on `z(τ_j)` in 4.1 (3): such a `z` is unramified at the `w_i` with `i < j`
(4.1 (b)), and 4.2 (b), for `ψ_j` and the `w_i` with `i ≥ j`, where `ψ_j(φ_i) = 0` for `i > j`, gives
`ℓ^{y′h}·z(τ_j) = 0`.

Let `E` have at least four infinite places and lie in the cyclotomic field of level `N′ > 0`, let `t′ ≥ 0`, `y′` with
`N′ + t′ < y′`, `γ ∈ G_E` a topological generator modulo `ker cyc`, `h ≥ 0` with `cyc(γ)^a − 1 | ℓ^h` for `0 < a < t′`,
and `ℓ ≤ y′²` or `h = 0`. Let `W` be a set of Frobenius data such that for all `ν` and `g` some `δ` with `cyc(δ) = 1`
has `W` containing most Frobenii near `δ^{ℓ^ν}g`. Then there are a finite linear order `J` and a monotone
`ty : J → {0 < e < t′}` such that for every `ν > 0` there are Taylor–Wiles places of level `ℓ^ν` indexed by `J` (Frobenius
data at places `w_j`, no two equal or conjugate, with `ℓ^ν | q_{w_j} − 1`), with data in `W`, forming a prime triangle
`(ν, w, τ, φ, γ⁻¹, t′, ty, y′h, y′²²h)`, `τ_j` the tame generators and `φ_j` the Frobenius elements.

**In standard terms.** Here *Taylor–Wiles places* record only the congruence `ℓ^ν | q_{w_j} − 1` and that no two of
the places are equal or conjugate: the places of a Taylor–Wiles datum of the literature, when of prime norm, are such
places, while the residual conditions of a datum are absent (8.8). The conditions of the prime triangle on even
classes, through their values at the `τ_j`, at the `φ_j` and at elements with `cyc = 1`, depend only on their classes,
as a coboundary of `(O/ℓ^ν)(−e)` vanishes on the inertia groups away from `ℓ`, on `ker cyc` and on `G_ν`; for `ℓ` odd
these classes are those of the part, fixed by `[z] ↦ [z^c]`, of the group of the classes unramified outside `ℓ` and
the `w_j, w̄_j` whose restriction to `D_A ∩ ker cyc` vanishes at the places `A` above `ℓ` (8.6). The triangle of 4.3
cuts this group down place by place at every level `ℓ^ν`, where the Taylor–Wiles primes of GlobalGaloisDeformations
§8.6 (Taylor–Wiles primes for enormous image) are chosen to kill a dual Selmer group.

*Needs:* 4.1, 4.2; GaloisRepresentationsOfUnitaryEigenforms §1.2 (the filter of most Frobenius data of a number field and its refinement near a
group element, which is not the trivial filter by Chebotarev's density theorem);
IdelicReciprocityCountsAndCyclotomicClassGroups §10.6 (b) (few elements detect the cocycles unramified outside `ℓ`: for
`E ⊂ ℚ(μ_{N′})` and `g₀` generating `G_E` modulo `ker cyc` there is a finite set `s ⊂ ker cyc`, with `#s ≤ y^{20}`
whenever `N′ ≤ y` and `ℓ ≤ y²`, such that for all `O`, `ν`, `e` a locally constant cocycle `G_E → (O/ℓ^ν)(−e)`
unramified outside `ℓ` is zero as soon as it vanishes at `g₀` and on `s`); ShortGRH background
(Taylor–Wiles places of level `ℓ^ν`: a family of Frobenius data at places `w_j` of prime norm with `ℓ^ν | q_{w_j} − 1`,
no two equal or conjugate; [ShortProof] `Lib/GaloisRep/TaylorWiles.lean` (`New.Patching.TaylorWilesPlaces`)).

[ShortProof], `New/Congruences/FirstOrder/TrianglePrimes` (`New.Selmer.exists_isPrimeTriangle`)

### 4.4 Even parts and the triangle cost of Tate twists

*Origin:* particular to this proof: a prime triangle gives the triangle cost (3.1 (6)) of every module of cocycles in
a Tate twist, with the bound made of a crystalline colength and the length of the odd classes.

*Method of the formal proof:* the even part `c + c∘(g ↦ g^c)` of a cocycle is an even class, and the odd part is
counted by the odd classes; the triangle condition on the even part is the defining property of the prime triangle.

(a) Let `e ≠ 0` and `c` a continuous cocycle in `(O/ℓ^ν)(−e)`, unramified outside `ℓ` and `S ∪ S̄`, vanishing on the
elements of the decomposition groups above `ℓ` with `cyc = 1`. Then `c + c∘(g ↦ g^c) ∈ Ev_e(O, S, ν)`.
(b) Let `(ν, w, τ, φ, g₀, t′, ty, h, c′)` be a prime triangle, `e < t′`, and `Z` a module of cocycles in `(O/ℓ^ν)(−e)`
unramified outside `ℓ` and the `w_j, w̄_j`, such that `(χ(g₀)^e − 1)` kills `z(g₀)` for every `z ∈ Z` unramified off
`ℓ`. If the length of `Z` modulo its members satisfying the crystalline relations above `ℓ`, plus the length of
`Sha_e(O, ν)`, is at most `b`, then `Z` has triangle cost `({ty(j) = e}, ℓ^h, b)` for `τ, τ′, φ, φ′`, with
`τ′_j = (τ_j^c)⁻¹` and `φ′_j = (φ_j^c)⁻¹`.

*Needs:* 3.1, 4.1; GaloisRepresentationsOfUnitaryEigenforms §9.2, IdelicReciprocityCountsAndCyclotomicClassGroups §§10.1, 10.7 (odd classes over cyclotomic fields: the module of odd classes in the Tate twist
`(O/ℓ^ν)(−e)` consists of the continuous cocycles of `G_E`, not taken modulo coboundaries, that are unramified outside
`ℓ`, vanish on the local set above `ℓ`, which is the inertia groups above `ℓ` if `e = 0` and the elements of the
decomposition groups above `ℓ` with trivial cyclotomic character otherwise, and, if `e ≠ 0`, are negated by complex
conjugation; for a CM field `E` inside the cyclotomic field of conductor `N_c` and an integer `t`, there is one nonzero
integer `X ≤ 2^(4(N_c + t + 3)^27)·h_E` such that for every prime `ℓ`, every coefficient ring `O` at `ℓ` with enough
roots of unity, every `e < t` and every `ν`, the length of the odd classes in `(O/ℓ^ν)(−e)` is at most the valuation of
`X` in `O`).

[ShortProof], `New/Congruences/FirstOrder/TateTwistCocycles` (`New.Selmer.add_conjGal_mem_evenClasses`, `New.Selmer.hasTriangleCost_tateTwist`)

## Layer 5: Operators at the auxiliary places

On the Hecke side the ties become operators. At each auxiliary place the norm from principal level to the base level is
deformed to first order, `Nm_j + α_j·∂_j`, where the tame generator acts as a diamond operator and Frobenius through a
normalised Hecke operator; a weak lift (a system whose normalised representation has the eigenvalue `1` everywhere)
has at a suitable Frobenius a Hecke polynomial that is a full chain of roots times an integral factor, which makes the
first-order term integral. The product of the deformed norms kills the ideal of tied traces, and its top coefficient,
applied through Ribet's element, clears the denominator of the projection to the lifts.

### 5.1 First-order deformations of the norm, and logarithms

*Origin:* particular to this proof: the algebra of products of first-order deformations of the norms of the factors
of a product of finite groups, and of logarithms on the stabiliser of a line in `GL_n` of a finite field.

*Method of the formal proof:* expansion of the product in square-free monomials; the transfer of the first entry is
computed on diagonal matrices; the logarithm is a norm weighted by a homomorphism to `ℤ/m`, and the congruences are
reductions modulo `m/(2k)`.

Let `ρ` map a product `∏_j Γ_j` of finite groups to a ring `R`, `𝒜_j` pairwise commuting subrings with `ρ(Γ_j) ⊂ 𝒜_j`,
`Nm_j = Σ_{g ∈ Γ_j} ρ(g)` and `∂_j ∈ 𝒜_j`, and write `a ≡ b` for `σ(a) = σ(b)` after a ring map `σ`.
(a) The coefficient `N_S = ∏_{j∈S} ∂_j ∏_{j∉S} Nm_j` of `∏_{j∈S} α_j` in `∏_j(Nm_j + α_j∂_j)` commutes with every
element commuting with all `𝒜_j`; `N_∅` is the sum of `ρ` over the whole group; for `j ∉ S`, `N_S = N′Nm_j` and
`N_{S∪{j}} = N′∂_j` for one `N′`.
(b) For `𝒩 = Σ_S N_S ∏_{i∈S} X_i` (variables commuting with `R`), a commutative ring `T` mapping to `R` and
`t, r′ ∈ T`, if `Nm_j t = 0` and `∂_j t ≡ Nm_j r′`, the coefficient of `∏_{i∈J} X_i` in `𝒩·G(t − X_j r′)` is `≡ 0` for
every polynomial `G` over `T`.
(c) If `Ψ ∈ R` has `Σ g⁻¹Ψg = n′`, `δ = n′²δ′` with `δ′` commuting with the group and the `N_S`, and each `g ∈ Γ_j` has `Z` with
`n′∂_j(g − 1) ≡ Nm_j Z` and `δ′·Nm·Z = 0`, then for `i ≥ #S` there is `Y` with `δ^i N_S ≡ Y·Nm`, and `Y = δ^i` for
`S = ∅`.
(d) Over a finite field, the transfer to `GL_n` of the character `g ↦ g_{11}` of the stabiliser of the first line is
the determinant.
(e) If `σ` kills every `y` with `2k′y ∈ mR` and an additive map `C′` on weights `ℤ/m → ℤ` kills every
`f(· − k′) − f`, then `σ` kills its value at the weight `λ₀ : ℤ/m → ℤ` that sends a class to its representative of
least absolute value. Let `B` be an additive map from weights to `R`, `1` the constant weight, `Ψ, L′ ∈ R`, and
`a : H → ℤ/m` a homomorphism on a subgroup `H ⊂ Γ`; the coset derivative is
`∂ = −(Σ_h ρ(h))·B(λ₀)·(Σ_h ρ(h⁻¹))` (`h` over representatives of `Γ/H`). Suppose that `R` has no `#H`-torsion,
`m = 0` after `σ`, `B(f)ρ(p) = B(f(· − a(p)))` and `ρ(p)B(1) = B(1)` for `p ∈ H`, `Σ_{p∈H} ρ(p⁻¹)Ψρ(p) = n′`, and
`L′ρ(g) = L′` for all `g` with `L′B(1) = 0`. Then each `g` has `Z` with `n′∂(g − 1) ≡ Nm·Z` and `L′Z = 0`.

*Needs:* none.

[ShortProof], `New/Congruences/FirstOrder/OnePrime` (`New.Patching.familyCoeff`, `New.Patching.exists_empty_eq_sum_and_insert_eq_mul`, `New.Patching.map_top_coeff_mul_C_sub_X_mul_C_eq_zero`, `New.Patching.exists_map_pow_mul_family_eq_mul_norm`, `New.Patching.transfer_firstEntry`, `New.Patching.map_valMinAbs_eq_zero_of_shift`, `New.Patching.exists_map_nsmul_mul_sub_one_eq_sum_mul`)

### 5.2 Chains of roots for weak lifts

*Origin:* particular to this proof: the Hecke polynomial of a weak lift at a split place is divisible by the chain
`X₀, X₀q, …, X₀q^{t_O−1}`, and at most Frobenii a congruence of characteristic polynomials makes the cofactor
integral.

*Method of the formal proof:* the eigenvalue `1` of the normalised representation at every `g` gives, through the
attached representation and the spherical chain lemma, the full chain of roots; the integrality of the cofactor
comes from the congruence at a Frobenius where the remaining factor is a unit at `1`.

Let `O` be a descent pair, `x` a system of forms on `V` of the weight of `O`, `f ∈ x` nonzero, `u = x`'s Galois
representation normalised by `χ_O`. `x` is a *weak lift* if `det(1 − u(g)) = 0` for all `g`. A polynomial `P` has the
*chain of roots* `(e, q, d, t′)` if `P(dX) = ∏_{i<t′}(X − q^i)·S(X)` with `S | e`.
(a) If `x` is a weak lift and `w ∤ ℓ` is split with norm `q`, the Hecke polynomial of `f` at `w` has the roots
`X₀q^i`, `i < t_O`, where `X₀` is the value at a uniformiser of the Hecke character of `W` (the inverse of `χ_O` at a
geometric Frobenius).
(b) If moreover the characteristic polynomials of `u` are integral, then for most Frobenii `φ` at `w`: whenever
`det(X − u(φ))` is congruent modulo the maximal ideal to `S(X)·∏_{i<t_O}(X − χ(φ)^i)` with `|S(1)| ≥ 1`, the Hecke
polynomial of `x` at `w` has the chain of roots `(e, q_w, ι⁻¹(χ_O(φ))⁻¹, t_O)` for an integral `e` with `e(1) = 1`.
(c) If a subspace `Z ⊂ F(O)` is stable under the Hecke polynomial operators at all split places off the places of `O`,
so is its orthogonal complement, and `Z ⊂ N′` as soon as every nonzero form of `Z` lying in a system lies in `N′`.
(d) If a set of operators on a space with a basis `b` of `m′` elements contains all integral combinations of `m′` of its
members and the
diagonal operators with eigenvalues `l_k` (`k < m′`), it contains a diagonal operator with eigenvalues `μ_k`,
`|ι(μ_k)| ≥ |ι(l_k(k))|`.

*Needs:* 1.1, 1.4; IntegralRepresentationsOfGeneralLinearGroups §§6.1, 6.8 (the spherical chain lemma for `GL_N` of a local field with residue field of
order `q`: let `x ≠ 0` be a spherical Hecke eigenvector of a smooth unitary representation, with Hecke polynomial `P`;
if `P(c) = 0` and `|c|²q^k = q^N`, then `c, cq, …, cq^{k−1}` are roots of `P`; and if `d ≠ 0` and `P(X/d) = ∏_{i≤k}(X − q^i)·S` with
`S` dividing `R`, that is if `P` has the chain of roots `(R, q, d⁻¹, k + 1)` in the sense of this section, then `x` is orthogonal to `((dX − q^k)·R(dX))(U)y` for the Hecke operator `U` of `diag(ϖ, 1, …, 1)` at
pro-`p` Iwahori level and every `y` of that level); ShortGRH background
(Galois representations of eigensystems in the weak sense: over a CM field with Weil data, every eigenform on the
standard definite unitary group has a representation attached to its Hecke polynomials, and at the places of `Ω` over a
place where the form is spherical every attached representation is good, has the jumps of the weight and, if the place
is split, has its geometric Frobenius elements killed by the Hecke polynomial; [ShortProof]
`Lib/GaloisRep/Main/AttachedRepresentations.lean` (`New.GaloisRep.Attached`, `New.GaloisRep.SphericalCompat`),
`Lib/GaloisRep/Main/AllRanks.lean` (`New.GaloisRep.sphericalCompat_std`)); GaloisRepresentationsOfUnitaryEigenforms §1.2 (the filter of most
Frobenius data of a number field and its refinement near a group element, which is not the trivial filter by
Chebotarev's density theorem).

[ShortProof], `New/Congruences/FirstOrder/HeckeStrings` (`New.Selmer.isRoot_hecke_chain`, `New.Selmer.eventually_exists_hasRootChain`, `New.Selmer.orthogonal_mem_invtSubmodule_heckePolyOnForms`, `New.Selmer.le_of_isotypic_mem`, `New.Selmer.exists_diagonal_mem_norm_ge`)

### 5.3 Tied traces and the dictionary at one auxiliary place

*Origin:* particular to this proof: traces of the normalised representations as elements of the Hecke algebra of the
systems at principal level at the auxiliary places, the ideal of tied traces, and the operators by which the tame
generator and Frobenius act on forms.

*Method of the formal proof:* the Hecke algebra is defined as the functions on systems that preserve the integral
forms; characteristic coefficients and the idempotent of a congruence class lie in it by the decomposition of a finite
algebra over a henselian local ring; at one place, local–global compatibility makes the tame generator act as a
diamond operator and Frobenius as a normalised `U`-operator.

Let `B` be base data on a definite space of rank `n`, `Q` Taylor–Wiles places off the base level, `x` the systems of
`B` at principal level at `Q`, and `N_x` the twist of the representation of `x` by a character `a` with integral
values, trivial at the tame generators. The *Hecke algebra* `𝕋` is the set of functions `t` on these systems such that
scaling each system by `ι⁻¹(t(x))` preserves the integral forms. Here the *Hecke algebra* is this ring of functions,
defined by integrality; in the literature the Hecke algebra is the algebra generated by the Hecke operators at the
good split places, which maps injectively into `𝕋`, with the same `ℚ̄_ℓ`-span; taken over `ℤ̄_ℓ`, its image contains
the elements of (a) and (b) (8.9). Two systems `x`, `x′` are *congruent* if, for every
`g ∈ G_E`, the characteristic polynomials of `N_x(g)` and `N_{x′}(g)` agree coefficient by coefficient modulo the
maximal ideal.
(a) For all `g` and `i`, `x ↦ [X^i]det(X − N_x(g))` lies in `𝕋`; if these are integral, then for every system `π` the
indicator function of the systems congruent to `π` lies in `𝕋`.
(b) For `P ∈ ℤ_ℓ[X]` and `h, g ∈ G_E`, `tr[P(h)g] := (x ↦ tr(P(N_x(h))N_x(g)))` lies in `𝕋`. For polynomials `H_j`, the
*tied ideal* of `𝕋[α_j : j ∈ J]` is generated by the `ℓ^ν·tr[g]` and the `tr[(γ_j − 1 − α_j(φ_j − 1)H_j(φ_j))g]`.
(c) At `w = w_j`, with `γ = γ_j` and `φ = φ_j`, let `z` be a unit of the completion of `E` at `w` whose local Artin
symbol is the class of the tame generator `γ_j`, with residue `z̄ ∈ k_w^×`, let `ϖ` be a uniformiser at `w` whose local
Artin symbol is the class of `φ_j`, let `ind : k_w^× → ℤ/ℓ^ν` be a homomorphism with `ind(z̄) = 1`, let
`⟨γ⟩ = diag(z̄, 1, …, 1)`, let `ψ` be a complex character of `ℤ/ℓ^ν`, and let `p` be a polynomial as in (b). On a form
of `x` on which `GL_n(k_w)` acts by `ψ∘ind∘det`, `tr[(γ − 1)g·p(φ)]` acts as
`(⟨γ⟩ − 1)` times `tr[g·p(φ)]`; on a form on which the stabiliser of a line acts by `ψ∘ind∘(g ↦ g_{11})`, with
`ψ(n!) ≠ 1`, `tr[(γ − 1)g·p(φ)]` acts as `p(Ũ)` times `tr[(γ − 1)g]`, `Ũ = a(φ)U` with `U` the Hecke operator of
`diag(ϖ, 1, …, 1)` for the pro-unipotent Iwahori subgroup.

*Needs:* 4.1; GaloisRepresentationsOfUnitaryEigenforms §9.1 (base data of the Taylor–Wiles method on a definite unitary group, as in the
Conventions: base data are a finite set of places, a space of forms of the weight that is kept by every operator
commuting with the translations by the stabiliser of the lattice at these places and their conjugates and on which some
open subgroup acts by a character through its components at these places and their conjugates, and an integer divisible
by the order of every stabiliser `Γ ∩ gK°g⁻¹`; for a family `L` of places, the forms of level `L` are the forms of the
base data fixed by the components, off the places of the base data and their conjugates, of the principal level at `L`;
the systems of level `L` are the isotypic spaces that contain a nonzero form of level `L`; the integral forms above `ℓ`
are the forms whose values at the points integral above `ℓ` have coordinates that `ι` sends to `ℓ`-adic integers; and
the Hecke algebra is the algebra of the functions `t` on the systems of level `L` whose operator, the multiplication of
the forms of each system `x` by `ι⁻¹(t(x))`, preserves the integral forms of level `L`); GaloisRepresentationsOfUnitaryEigenforms §9.1 (Taylor–Wiles places of level `ℓ^ν`: a family of Frobenius
data at places `w_j` of prime norm with `ℓ^ν | q_{w_j} − 1`, no two equal or conjugate);
AdelicUnitaryGroupsAndAlgebraicModularForms §3.1 (the Hecke operators `T_{w,j}` at a split place, acting through
`ι_w`); GaloisRepresentationsOfUnitaryEigenforms §8.3 (attached representations at a place of pro-`p` Iwahori level
prime to `ℓ`: let `w ≠ w̄` be a place not above `ℓ`, `A` a place of `Ω` over `w`, `ϖ` a
uniformiser whose local Artin image is the inverse of a Frobenius element at `A`, `u` a unit whose local Artin image
lies in the inertia group, and `y` a form of an isotypic space fixed by the pro-`p` Iwahori subgroup at `w`; write `F`
for the matrix of the Artin image of `ϖ` and `T` for that of the Artin image of `u` in the representation of the
isotypic space; if the stabiliser in `GL_n(𝒪_w)` of the first coordinate line modulo `w` acts on `y` through a function
`χ` of the first entry with `χ(u) ≠ 0` and `χ(u)^{n!} ≠ 1`, then the Hecke operator `U` of `diag(ϖ, 1, …, 1)` satisfies
`tr((T − 1)·M)·G(U)y = tr(G(F)·(T − 1)·M)·y` through `ι`, for every polynomial `G` and every matrix `M`; and if `y ≠ 0`,
the parahoric subgroup of a block structure acts on `y` by scalars, `d_i` is the scalar of the diagonal matrix with `u`
in slot `i` and `1` elsewhere, and slots with equal `d_i` lie in one block, then `F` and `T` commute, `T` is killed by
every polynomial that vanishes at all `ι(d_i)`, and there are characters `θ_i` of the local field, with an exponent
functional for the torus character of `θ` that is not zero on `y`, such that `∏_i (X − ι(θ_i(ϖ)·d_i^b))` kills `F·T^b`
for every `b ≥ 0`).

[ShortProof], `New/Congruences/FirstOrder/TiedTraces` (`New.Patching.BaseLevel.charpoly_coeff_mem_heckeAlgebra`, `New.Patching.BaseLevel.exists_indicator_isCongruent`, `New.Patching.BaseLevel.traceElement`, `New.Patching.BaseLevel.tiedIdeal`, `New.Patching.BaseLevel.tameTrace_smul_eq_diamond_sub_one`, `New.Patching.BaseLevel.tameTrace_smul_eq_aevalHecke`)

### 5.4 The family of operators at the auxiliary places

*Origin:* particular to this proof: the norm from the deep auxiliary level to the base level, deformed in one
parameter per place, kills the ideal of tied traces modulo `ℓ^ν/(2n!)` and factors through the norm up to a power of a
Hecke operator.

*Method of the formal proof:* at one place the first-order term `∂_j` is built from a logarithm on the residue field
(5.1 (e)) and the dictionary (5.3 (c)); the chain of roots of 5.2 makes it integral and relates it to Frobenius; the
product over the places (5.1 (a)–(c)) gives the family.

In the setting of 5.3, let `c` be the common multiple of the stabiliser orders of `B`, `Nm` the sum over
`∏_j GL_n(k_{w_j})`, and `≡` equality after a ring map `σ` on the integral endomorphisms that kills every `T` with
`ℓ^ν | 2n!T`.
(a) Let `δ ∈ 𝕋` and `t′ ≠ 0`, and suppose that at `w_j` the Hecke polynomial of every base system where `δ ≠ 0` has
the chain of roots `(H, q_{w_j}, a(φ_j)⁻¹, t′)` (5.2). Then there is an integral operator `∂` made of
translates at `w_j` such that for all `g`, `Nm_j·tr[(γ_j − 1)g] = 0` and `∂·tr[(γ_j − 1)g] ≡ Nm_j·tr[(φ_j − 1)H(φ_j)g]`,
and each `g ∈ GL_n(k_{w_j})` has an integral `Z` with `c·∂(g − 1) ≡ Nm_j Z` and `δ·Nm·Z = 0`.
(b) Let `δ = c²δ′`, `δ′ ∈ 𝕋`, with the chain condition of (a) (for polynomials `H_j`, with one `t′ ≠ 0` for all `j`)
at every `w_j` for the base systems where `δ′ ≠ 0`. Then there are integral operators `𝒩_S`, `Y_S` (`S ⊂ J`), the
`𝒩_S` commuting with `𝕋`, with `𝒩_∅ = Nm` and `Y_∅ = δ^{#J}`, such that
`Σ_S 𝒩_{Sᶜ}·G_S ≡ 0` for every `G` in the tied ideal (`G_S` its coefficient at `∏_{j∈S} α_j`), and
`δ^{#J}𝒩_S ≡ Y_S·Nm` for all `S`.

*Needs:* 5.1, 5.2, 5.3; GaloisRepresentationsOfUnitaryEigenforms §9.1 (base data of the Taylor–Wiles method on a definite unitary group, as in the
Conventions: base data are a finite set of places, a space of forms of the weight that is kept by every operator
commuting with the translations by the stabiliser of the lattice at these places and their conjugates and on which some
open subgroup acts by a character through its components at these places and their conjugates, and an integer divisible
by the order of every stabiliser `Γ ∩ gK°g⁻¹`; for a family `L` of places, the forms of level `L` are the forms of the
base data fixed by the components, off the places of the base data and their conjugates, of the principal level at `L`;
the systems of level `L` are the isotypic spaces that contain a nonzero form of level `L`; the integral forms above `ℓ`
are the forms whose values at the points integral above `ℓ` have coordinates that `ι` sends to `ℓ`-adic integers; and
the Hecke algebra is the algebra of the functions `t` on the systems of level `L` whose operator, the multiplication of
the forms of each system `x` by `ι⁻¹(t(x))`, preserves the integral forms of level `L`).

[ShortProof], `New/Congruences/FirstOrder/AuxiliaryPrimeTie` (`New.Patching.BaseLevel.exists_mul_traceElement_tameGenerator_eq_frob`, `New.Patching.BaseLevel.exists_deformed_norm_family`)

### 5.5 The top coefficient clears denominators

*Origin:* particular to this proof: applied to the projection of an integral form of base level, the top coefficient
of an element of the tied ideal, times a bounded integer, gives an integral form.

*Method of the formal proof:* the family of 5.4 applied to `(δ₀ − n₀)𝒟` in the tied ideal gives `Nm` times the top
coefficient on the projection, up to the factor `δ^{#J}` and the reduction; the norm of an integral form is integral.

In the setting of 5.4, let `ℓ^ν | q_{w_j} − 1` for all `j`; the chain condition is that of 5.4 (b), for the
polynomials `H_j` of the tied ideal and one `t′ ≠ 0`.
(a) Let `A, δ₀ ∈ 𝕋`, `n₀ ∈ ℤ_ℓ`, `𝒟 ∈ 𝕋[α]` with coefficients `𝒟_S`, `(δ₀ − n₀)𝒟` in the tied ideal, the chain condition
at every `w_j` for the base systems where `Aδ₀ ≠ 0`, and `2n!(n₀c²)^{#J+1} | ℓ^ν`. If `l` is a form of base level with
`d·l` integral for a natural number `d`, and `y` satisfies `Aδ₀l = n₀Ay`, `δ₀y = n₀y` and `𝒟_S y = 0` for `S ≠ J`, then
`d·c·A^{#J+1}𝒟_J y` is integral.
(b) Let `𝓧` be a set of systems of `B` at principal level at `Q` and `π ∈ 𝓧`. Let `δ_i` be functions on the systems,
`λ_k` (`k` in a finite set) integers of `ℚ̄_ℓ` with indices `s(k)`, `δ₀ = ∏_k(λ_k − δ_{s(k)})`, `n₀ = ∏_k λ_k`, the
characteristic polynomials of the `N_x` integral, the chain condition at every `w_j` for the base systems congruent to
`π` with `δ₀ ≠ 0`, `2n!(n₀c²)^{#J+1} | ℓ^ν`, and suppose that for a scalar `m′`, every trace ideal of the `N_x` (3.1 (4),
for `ℓ^ν`, the tame generators, the Frobenius elements and the `H_j`) has a common Ribet element for the `δ_i` at `π`
with coefficient `r′`, `v_ℓ(m′r′) ≤ B′`. Then there is a function `s` on the systems with `v_ℓ(m′s(π)) ≤ B′` such that,
for every natural number `d`, `d·c·s·y` is integral whenever `l, y` are of base level, `d·l` is integral, `y` is supported on `𝓧` and `l, y` agree at the
systems where `δ₀ ≠ 0` (`s·y` the diagonal operator).

*Needs:* 3.1, 5.4.

[ShortProof], `New/Congruences/FirstOrder/AuxiliaryPrimeTie` (`New.Patching.BaseLevel.smul_top_coeff_mem_ellIntegralForms`, `New.Patching.BaseLevel.exists_diagOp_mem_ellIntegralForms`)

## Layer 6: Ribet's element and the bound for denominators

The algebra of Layer 3, the triangles of Layer 4 and the operators of Layer 5 are assembled for the representations of
the descent pairs. The local defects above `ℓ` (SelmerBoundsForAnticyclotomicTwists §4.6) bound the cocycles at the lift; a
lattice adapted to the block decomposition gives Ribet's element with its top coefficient bounded (6.5); the
operators at the auxiliary places then clear the denominator at each base system (6.7), and a projection argument
for forms orthogonal to the false lifts gives the bound for denominators (6.9).

### 6.1 The constants of the denominator bound

*Origin:* adapted from the minus parts of class groups of cyclotomic fields (Stickelberger's theorem; for large `ℓ` a
bound of this kind follows from the main conjecture, Mazur and Wiles (1984), Greither (1992), Theorem 3.2): here an upper bound
for the lengths of the odd classes at every prime and every finite level by the valuations of one integer of explicit
size, the same for all primes; with the definitions of the constants of the denominator bound.

*Method of the formal proof:* (a) is the background bound for odd classes over cyclotomic fields: for `0 < e < t` a
nonzero Stickelberger bound of size at most `2^((N_c + e + 3)^6)` gives an integer that kills the module, a power of
their product bounds the length for small and for large `ℓ`, and the class number serves for `e = 0`; `o_D` is the
integer so obtained for `N_c` and the `t` of the data. The other constants are explicit.

(a) *The odd class bound.* The integer comes before the prime: there is a positive integer `o_D`, depending on the
data `D` only, with `o_D ≤ 2^(4(N_c + t + 3)^27)·h_E` (`N_c = q₁·d`, the order of the cyclotomic field `ℚ(ζ_{q₁d})`
that contains `E` by OneSidedPrimeSumBoundsAndAdmissibleData §2.3 (a); `h_E` the class number of `E`), such that for every prime `ℓ`, for all large coefficient rings `O` at `ℓ`, all `e < t` and
all `ν ≥ 0`, the length over `O` of the odd classes `Sha_e(O, ν)` (for `e = 0`: of the everywhere unramified
homomorphisms) is at most the valuation of `o_D` in `O`, that is, its normalised length is at most `v_ℓ(o_D)`. Fix
such an `o_D` once for the data; it does not depend on `ℓ`, on `ι` or on `O`.

(b) *The constants at a prime `ℓ`.* Put
- `loc_ℓ = 4f·d_ℓ`, with `d_ℓ` the local loss of SelmerBoundsForAnticyclotomicTwists §4.1 (the local loss bound, there
  the defect bound `B_ℓ`: `10⁶(m/k)(b·v_ℓ(M) + v_ℓ((2b)!·Π^{h_Δ³}))`, `Π` the product of the positive integers `i` with
  `b − 30h_Δ³ < i ≤ b + 30h_Δ³`);
- `e_ℓ = t·v_ℓ(o_D) + 8ft·v_ℓ(n_GL) + 2v_ℓ(n_GL) + ((4t + 1)h_Δ²² + h_Δ)·v_ℓ(n_GL)`;
- `β_ℓ = loc_ℓ + (1 + 2t)·e′_ℓ + e_ℓ + v_ℓ(n_GL)`, the *clearing bound*;
- for a descent pair `O`, `ram, sel ≥ 0`: `β(O, ram, sel) = sel + 2t_O·ram + r_O·loc_ℓ + e_ℓ`.

*Needs:* 1.5, 4.1; SelmerBoundsForAnticyclotomicTwists §4.1 (the local loss bound `B_ℓ`);
OneSidedPrimeSumBoundsAndAdmissibleData §2.3 (a) (`E` lies in `ℚ(ζ_{q₁d})`, for `N_c`); GaloisRepresentationsOfUnitaryEigenforms §9.2, IdelicReciprocityCountsAndCyclotomicClassGroups §§10.1, 10.7 (odd
classes over cyclotomic fields: the module of odd classes in the Tate twist `(O/ℓ^ν)(−e)` consists of the continuous
cocycles of `G_E`, not taken modulo coboundaries, that are unramified outside `ℓ`, vanish on the local set above `ℓ`,
which is the inertia groups above `ℓ` if `e = 0` and the elements of the decomposition groups above `ℓ` with trivial
cyclotomic character otherwise, and, if `e ≠ 0`, are negated by complex conjugation; for a CM field `E` inside the
cyclotomic field of conductor `N_c` and an integer `t`, there is one nonzero integer `X ≤ 2^(4(N_c + t + 3)^27)·h_E`
such that for every prime `ℓ`, every coefficient ring `O` at `ℓ` with enough roots of unity, every `e < t` and every
`ν`, the length of the odd classes in `(O/ℓ^ν)(−e)` is at most the valuation of `X` in `O`).

[ShortProof], `New/Congruences/FirstOrder/TraceRelations` (`New.Selmer.oddClassBound`, `New.Selmer.oddClassBound_le`, `New.Selmer.localDefectBound`, `New.Selmer.denominatorError`, `New.Selmer.clearingBound`, `New.Selmer.eventually_length_shaOdd_le`); `New/Congruences/FirstOrder/DenominatorBound` (`New.Selmer.liftValuationBound`); `Lib/Cyclotomic/OddSha` (`New.exists_length_shaOdd_le`)

### 6.2 Block-diagonal lattices and the local defects of Ribet's cocycles

*Origin:* particular to this proof: a representation with the trace of a twisted main summand plus `t′` Tate twists has a
block-diagonal lattice, and the crystalline colength of Ribet's cocycles above `ℓ` is bounded by the sum of the local
defects of the summands, which add up to at most `r′·loc_ℓ`.

*Method of the formal proof:* nondegeneracy of the trace form makes the representation the semisimple sum with the
traces given, and the spanning lattice of the summand fixes the block; at each place above `ℓ` the local lattices lie in
one class of the local theory, and local duality bounds the colength by the defect of the Tate dual.

(a) Let `R′` of rank `n` have nondegenerate trace form on the span of its image and
`tr R′(g) = ψ(g)tr R(g) + Σ_{e<t′} χ(g)^e`, with `R` of rank `r′`, and let `R₀` be a lattice of `R` over `O` and `ψ′` a
model of `ψ` such that `ψ′R₀` spans `M_{r′}(O)`. Then `R′` has a lattice over `O` that is block diagonal with summands
`ψ′R₀` and `O(−e)`, `e < t′`; and for a finite family of such representations with lattices, there are lattices of all
of them that are block diagonal at the members with this trace.
(b) Let `u_x` (finitely many) and `ρ` be lattices whose restrictions to each place `v` above `ℓ` lie in one class of
local lattices of SelmerBoundsForAnticyclotomicTwists §3.1 (classes of local lattices). Then the *crystalline
colength* of `ρ` modulo `ℓ^{M′}` (for the `u_x`), the length of the module of Ribet cocycles of `ρ` (3.1 (2)) with
values in `O/ℓ^{M′}` modulo its submodule of those that satisfy the crystalline relations of `ρ` above `ℓ` (1.1), is at
most the sum over `v` of the dual defects of `ρ` at `v`; the *dual defect of `ρ` at `v`* is the dual defect
(SelmerBoundsForAnticyclotomicTwists §3.1), for the class, of the Tate dual of the restriction of `ρ` to `v`.
(c) Let `V` with `c` be a lift setting for `ϑ`, `R` a main summand of rank `r′ = r_V` with string length `t′` (so
`n_V = r_V + t′`), and `ρ_x`
representations of type `(V, t′, J′, c̃_i(X − 1)^{t′}, S)`. For all large `O`, if `u_x` are lattices of the `ρ_x` and `u_π`
is block diagonal with summands `T` and `O(−e)`, `T` agreeing above `ℓ` with a lattice of `R`, then at each place above
`ℓ` some class of local lattices contains all `u_x` and the summands of `u_π`, and the normalised dual defects of the
`t′ + 1` summands at all places above `ℓ` add up to at most `r′·loc_ℓ`.

*Needs:* 1.1, 1.3, 1.4, 3.1, 6.1; SelmerBoundsForAnticyclotomicTwists §3.1 (classes of local lattices and dual defects),
§4.8 (the class of a lattice read at a place above `ℓ`), §4.7 (the colength of the crystalline relations, by the dual
defect), §4.6 (the bound for the dual defect of each summand at a place above `ℓ`).

[ShortProof], `New/Congruences/FirstOrder/TraceRelations` (`New.Selmer.exists_blockDiagonal_lattice`, `New.Selmer.exists_blockDiagonal_lattices`, `New.Selmer.crystallineColength_le_sum_dualDefect`, `New.Selmer.eventually_exists_inClass_sum_dualDefect_le`)

### 6.3 Tame relations at the places above `M` and at the twist places

*Origin:* particular to this proof: at the places above `M` and of the modulus of an auxiliary twist, inertia satisfies
polynomial relations whose values at `1` have bounded total valuation.

*Method of the formal proof:* above `M` the inertia spectra of 2.4 (a) give the polynomial with valuation controlled by
`v_ℓ(n_GL)`; at the twist places the quadratic relation of 2.5 gives `X − ψ(σ)`.

Let `V` with `c` be a lift setting for `ϑ`, `(bad places, Q, ψ, ram)` an auxiliary twist, `u_x` representations of type
`(V, t′, J, c̃_i(X − 1)^{t′}, S)` with `(u_x(g) − ψ(g))(u_x(g) − 1) = 0` on `I_Q`, and `u′_x`, `ψ′` models over `O`. Then
there are finitely many places `q_v` prime to `ℓ`, covering up to conjugation the places above `M` not above `ℓ` and the
places of `Q`, with tame generators `δ_v`, and polynomials `o_k` (`k` running over `δ^±`) with
`o_k(u′_x(δ^±_k))(u′_x(δ^±_k) − 1) = 0` for all `x`, such that the normalised `Σ_k v(o_k(1)) ≤ 2ram + 8f·v_ℓ(n_GL)`.

*Needs:* 2.4, 2.5, 4.1.

[ShortProof], `New/Congruences/FirstOrder/TraceRelations` (`New.Selmer.exists_tame_relations`)

### 6.4 The cocycles of the main summand at the lift

*Origin:* particular to this proof: with divisible coefficients, the Ribet cocycles of the twisted main summand at the
lift, killed at the tame generators of the auxiliary places, are counted by the local loss and its Selmer group.

*Method of the formal proof:* killing the tame generators removes the ramification at the auxiliary places (4.1 (b));
what remains is the Selmer module up to the crystalline colength, bounded by the local defects (6.2 (b)).

Let `(ν, w, τ, φ)` be a tame generator family, `T` a lattice of rank `r′` and `u_x` (finitely many) lattices over `O`
whose restrictions above `ℓ`, with the summands `T`, `O(−e)` (`e < t′`), lie in classes of local lattices with
normalised dual defects (6.2 (b)) of the summands adding up to at most `r′·loc_ℓ`; let the `u_x` be continuous and unramified outside `ℓ`, `M`, `Q ∪ Q̄` and the `w_j, w̄_j`,
`T` unramified outside `ℓ`, `M`, `Q ∪ Q̄`, and the normalised `sel(T, Q, γ) ≤ sel < ∞`. Then there are `b₀` and a loss
`λ_T` with `b₀ = λ_T + sel(T, Q, γ)`, the Ribet cocycles of `T` in `K_O/O` vanishing on `τ^±` and at `γ` of length at most
`b₀`, and the normalised `λ_T` plus the normalised crystalline colengths modulo `ℓ^ν` (6.2 (b), for the `u_x`) of the
`O(−e)`, `e < t′`, at most `r′·loc_ℓ`.

*Needs:* 1.5, 4.1, 6.1, 6.2.

[ShortProof], `New/Congruences/FirstOrder/RibetElement` (`New.Selmer.exists_length_le_loss_add_crystallineSelmerLength`)

### 6.5 Ribet's element for conjugate self-dual representations

*Origin:* adapted from Bellaïche and Chenevier (2009) and Urban (2001): the congruence ideal bounded by Selmer lengths
through lattices in a family; here as an element of a polynomial algebra in tie variables at the places of a prime
triangle, for a twisted main summand plus `t′` Tate twists, whose top coefficient is bounded by the Selmer length with
divisible coefficients, the ramification of the twist, the local defects and an error term made of the class number,
the odd classes and the order of the chosen groups, without the orders of the even classes.

*Method of the formal proof:* the coefficient ring is enlarged until the representations, the twist and the triangle
are defined over it; block-diagonal lattices (6.2 (a)) put the family in the form of 3.7; the cocycles of the block are
bounded by 6.4, those of the characters by the triangle cost of 4.4 with the odd classes, and the relations at the old
places by 6.3; Ribet's lemma to first order (3.7) gives the element.

Let `V` with `c` be a lift setting for `ϑ`, `t′ = t_V`, `r′ = r_V`, `(bad places, Q, ψ, ram)` an auxiliary twist, and
`h ≤ v_ℓ(n_GL)`. Let `(ν, w, τ, φ, g₀, t′, ty, h_Δh, h_Δ²²h)` be a prime triangle. Let `u_x` (`x ∈ Y`, finite) be
representations of type `(V, t′, J′, c̃_i(X − 1)^{t′}, Q ∪ Q̄ ∪ {w_j, w̄_j})` with `(u_x(g) − ψ(g))(u_x(g) − 1) = 0` on
`I_Q`. For `x ∈ 𝓧 ⊂ Y` let `u_x` have lift trace `(ψ, R_x, t′)` with `R_x` a main summand with string length `t′`
that has a twisted lattice for `(ψ, γ_x, ζ_x)` (1.5 (3)), for some `γ_x, ζ_x`. Let `S`, `𝒥` be a trace ideal for `ℓ^ν`, the `τ_j`, the `φ_j` and
polynomials `H_j` with `H_j(1) = 1`. At `π ∈ 𝓧` let `R_π` have divisible Selmer length at most `sel < ∞` for
`(ψ, Q, γ_π, ζ_π)`. Then the families `x ↦ det(1 − u_x(g))` have a common Ribet element at `π` whose coefficient `d` of
`∏ X_j` satisfies `v_ℓ(d) + 2v_ℓ(n_GL) ≤ sel + 2t′·ram + r′·loc_ℓ + e_ℓ`.

**In standard terms.** The `u_x` are continuous and semisimple with `u_x^c ≅ u_x^∨ ⊗ χ^{t′−1}` (8.1 (a)). `R_π` is a
main summand and `ψ` is anticyclotomic of modulus `Q`, so by 8.4 (c), (d) the hypothesis on `sel` says exactly that
for all large `O` some twisted lattice `(u, ψ′)` for `(ψ, R_π, γ_π, ζ_π)` has a Bloch–Kato Selmer group with
coefficients `K_O/O`, relaxed at the places above `M` and of `Q ∪ Q̄` not above `ℓ`, of normalised length at most
`sel`. In the proof, the Ribet cocycles of the block are, modulo coboundaries, classes of extensions over the algebra
spanned by the family (8.5), and those of the characters are controlled through the even classes, which for `ℓ` odd
map onto the part fixed by `[z] ↦ [z^c]` of a group of classes, with kernel the coboundaries (8.6), and through the
odd classes (IdelicReciprocityCountsAndCyclotomicClassGroups §11.3). 6.5 is an analogue, for the coefficient of a
common Ribet element, of the bound of a congruence ideal by the length of a Selmer group (Bellaïche and Chenevier
(2009); Urban (2001)); no comparison of that coefficient with a congruence ideal or a reducibility ideal is stated.

*Needs:* 1.3, 1.4, 1.5, 3.7, 4.1, 4.4, 6.1, 6.2, 6.3, 6.4.

[ShortProof], `New/Congruences/FirstOrder/RibetElement` (`New.Selmer.ribet_columns`); `New/Congruences/FirstOrder/TateTwistCocycles` (`New.Selmer.hasTriangleCost_tateTwist`)

### 6.6 The separating element and the auxiliary places of the Taylor–Wiles method

*Origin:* particular to this proof: an element separating the powers of the cyclotomic character up to a power of `ℓ`
bounded by `v_ℓ(n_GL)`, and Taylor–Wiles places in a triangle at which every weak lift congruent to a given lift has a
Hecke polynomial with a chain of roots and an integral cofactor independent of the system.

*Method of the formal proof:* for `ℓ > h_Δ²` a generator modulo `ℓ` separates the powers; for small `ℓ` the powers
`p_i^d − 1` dividing `n_GL` give the bound; 4.3 is applied with the set of Frobenius data on which 5.2 (b) holds and
the twisted main summand is a unit at `1`.

(a) There are `h ≤ v_ℓ(n_GL)`, with `h = 0` unless `ℓ ≤ h_Δ²`, and a topological generator `γ` of `G_E` modulo `ker cyc`
such that `cyc(γ)^a − 1 | ℓ^h` in `ℤ_ℓ` for `0 < a < t`; if `ℓ > h_Δ²`, `cyc(γ)^a − 1` is a unit.
(b) Let `V` with `c` be a lift setting for a twist `ϑ` that is auxiliary of ramification at most `ram` (4.1 (4)), `B`
base data on the definite space of rank `n_V`, of the weight of `V`, with `n_GL` as common multiple of the stabiliser
orders, whose systems of base level have normalised representations with integral characteristic polynomials, `x₀` a
system whose normalised representation has lift trace `(ψ_ϑ, R, t_V)` for a main summand `R` with string length `t_V`,
and `γ, h` as in (a). Then there are a finite linear order `J` and a monotone `ty : J → {0 < e < t_V}` such that for every
`ν > 0` some places of norm `≡ 1 mod ℓ^ν`, indexed by `J`, form a prime triangle for `γ⁻¹` with bounds `h_Δh` and
`h_Δ²²h`, avoid the bad places and are off the base level, and at which, for every weak lift `x` of base level
congruent to `x₀` (5.3, for the normalised representations), the Hecke polynomial at `w_j` has the chain of roots
`(e_j, q_{w_j}, ι⁻¹(χ_V(φ_j))⁻¹, t_V)` with `e_j` integral, `e_j(1) = 1`, independent of `x`.

*Needs:* 2.2, 4.1, 4.3, 5.2, 5.3; GaloisRepresentationsOfUnitaryEigenforms §9.1 (base data of the Taylor–Wiles method on a definite unitary group, as
in the Conventions: base data are a finite set of places, a space of forms of the weight that is kept by every operator
commuting with the translations by the stabiliser of the lattice at these places and their conjugates and on which some
open subgroup acts by a character through its components at these places and their conjugates, and an integer divisible
by the order of every stabiliser `Γ ∩ gK°g⁻¹`; for a family `L` of places, the forms of level `L` are the forms of the
base data fixed by the components, off the places of the base data and their conjugates, of the principal level at `L`;
the systems of level `L` are the isotypic spaces that contain a nonzero form of level `L`; the integral forms above `ℓ`
are the forms whose values at the points integral above `ℓ` have coordinates that `ι` sends to `ℓ`-adic integers; and
the Hecke algebra is the algebra of the functions `t` on the systems of level `L` whose operator, the multiplication of
the forms of each system `x` by `ι⁻¹(t(x))`, preserves the integral forms of level `L`).

[ShortProof], `New/Congruences/FirstOrder/DenominatorBound` (`New.Selmer.exists_cyclotomicChar_pow_sub_one_dvd`, `New.Selmer.exists_isUnit_cyclotomicChar_pow_sub_one`, `New.Selmer.exists_eventually_hasRootChain_mostFrobeniiAt`, `New.Selmer.exists_taylorWilesPlaces_hasRootChain`)

### 6.7 The operator at one base system

*Origin:* particular to this proof: at a base system that lifts a main summand with short Selmer group, an operator
diagonal in the systems, with eigenvalue of bounded valuation there, takes forms of base level that agree with an
integral form off the non-weak-lift systems to integral forms.

*Method of the formal proof:* 6.6 gives the places; 6.5 gives a common Ribet element for every trace ideal of the
normalised representations; 5.5 (b) turns it into the operator.

(a) Let `V` with `c` be a lift setting for a twist `ϑ` that is auxiliary of ramification at most `ram` (4.1 (4)), the
places of a prime triangle `(ν, w, τ, φ, g₀, t_V, ty, h_Δh, h_Δ²²h)` with `h ≤ v_ℓ(n_GL)`, and `N_x` (`x` in a finite
set `Y` of systems) normalised representations of type
`(V, t_V, J, c̃_i(X − 1)^{t_V}, Q(ϑ) ∪ Q(ϑ)̄ ∪ {w_j, w̄_j})` with the quadratic relation on `I_{Q(ϑ)}`. Let `𝓧` be a set
of systems each of which *lifts a main summand with a twisted lattice*: its normalised representation has lift trace
`(ψ_ϑ, R_x, t_V)` for a main summand `R_x` with string length `t_V` that has a twisted lattice for `(ψ_ϑ, γ_x, ζ_x)`,
for some `γ_x, ζ_x`; and let `x₀ ∈ Y` lie in `𝓧`, with `R_{x₀}` of divisible Selmer length at most `sel < ∞` for
`(ψ_ϑ, Q(ϑ), γ_{x₀}, ζ_{x₀})`, the same `γ_{x₀}, ζ_{x₀}`. Let `𝒥` be a trace ideal for the `N_x`, `ℓ^ν`, the `τ_j`,
the `φ_j` and polynomials `H_j` with `H_j(1) = 1`. Then the families `x ↦ det(1 − N_x(g))` have a common Ribet element
at `x₀` whose top coefficient `d` has `v_ℓ(n_GL²·d) ≤ β(V, ram, sel)`.
(b) Let `B` be base data on the definite space of rank `n_V`, of the weight of `V`, with `n_GL` as common multiple of
the stabiliser orders, whose systems at every level made of places outside the bad places have normalised
representations of type `(V, t_V, J, c̃_i(X − 1)^{t_V}, Q(ϑ) ∪ Q(ϑ)̄ ∪ u ∪ ū)` (`u` the places of the level) with the
quadratic relation on `I_{Q(ϑ)}`. Let `𝓧` be as in (a), and `x₀ ∈ 𝓧` a system of `B` of base level, with divisible
Selmer length at most `sel < ∞` as in (a). Then at some auxiliary level there is a function `s` on the systems with
`v_ℓ(n_GL²·s(x₀)) ≤ β(V, ram, sel)` such that `n_GL²·s·y` is integral whenever `l` and `y` are of base level, `n_GL·l`
is integral, `y` is supported on `𝓧`, and `l` and `y` have the same components at every system other than the base
systems that are not weak lifts.

*Needs:* 5.5, 6.1, 6.5, 6.6.

[ShortProof], `New/Congruences/FirstOrder/DenominatorBound` (`New.Selmer.exists_isCommonRibetElement_ellVal_le`, `New.Selmer.exists_ellVal_le_and_diagOp_mem_ellIntegralForms`)

### 6.8 Lift generators and projections orthogonal to the false lifts

*Origin:* particular to this proof: for `y` orthogonal to the false lifts and `Z` a space of lifts, each type
projection of `y − pr_Z y` lies in the sum of the systems that are not weak lifts.

*Method of the formal proof:* the space of lifts and its complement are Hecke stable (5.2 (c)); in a system that is a
weak lift and not in the space of lifts, the false lifts fill the complement, so the component of a form orthogonal to
them vanishes there.

Let `O` be a descent pair, `E′` an element of the group algebra of `∏_i GL_{r_O}(k_{w_i})` and `Z ⊂ F(O)`. A *lift
generator* of `Z` for `(ϑ, sel)` is a form of `Z` in the range of a type projection `e_c` with `(O, c)` a lift setting for
`ϑ` and `range e_c ⊂ range E′`, that lifts a system `z` having a main summand `R` for `(V′, z)` (1.3 (4)), for a
descent pair `V′` of the same ranks as `O` with `μ_O = μ_{V′}·ϑ`, such that, for some `γ ∈ G_E` and some integer `ζ` of
`ℚ̄_ℓ`, `R` has divisible Selmer length at most `sel` for `(ψ_ϑ, Q(ϑ), γ, ζ)` (`sel ∈ [0, ∞]`). The *false lifts* (for
`E′` and `Z^⊥`) and
"orthogonal to the false lifts" are those of NormsOfThetaLiftsAndExchangeIdentities §1.3: forms in `Z^⊥` and
the range of `E′` killed by the Hecke polynomial at the root expected of a lift, at some split place off the level.
(a) Let `ϑ` be auxiliary of ramification at most `ram` (4.1 (4)), `(O, c)` a lift setting for `ϑ`, `Z` stable under
the Hecke polynomial operators and under `e_c` with `range e_c ⊂ range E′`, `M′ ⊂ F(O)` a subspace, and `y` orthogonal
to the false lifts. If every nonzero form of
`range e_c` in a system and outside `M′` belongs to a weak lift, then `e_c(y − pr_Z y) ∈ M′`.
(b) The span of the lift generators of `Z` is stable under the Hecke polynomial operators and under every `e_c` of a
lift setting.

*Needs:* 1.3, 1.4, 1.5, 2.6, 4.1, 5.2; NormsOfThetaLiftsAndExchangeIdentities §1.3 (false lifts);
ThetaLiftChainsAndTheSeesawIdentity §2.16 (descent pairs and lifted Hecke polynomials).

[ShortProof], `New/Congruences/FirstOrder/DenominatorBound` (`New.Selmer.IsLiftGenerator`, `New.Selmer.typeProjection_sub_starProjection_mem_of_isOrthogonalToFalseLifts`, `New.Selmer.span_isLiftGenerator_mem_invtSubmodule`)

### 6.9 The bound for denominators

*Origin:* particular to this proof: the denominator of the projection to a space spanned by lifts, for a twist with
short Selmer groups, is cleared by an operator whose determinant has `ℓ`-adic norm at least `ℓ^(−dim Z·r_O·β_ℓ)`, on the
integral forms orthogonal to the false lifts; the bound is made of local losses, the twist allowance, the class number,
the odd classes and the order of the chosen groups.

*Method of the formal proof:* each lift generator gives, through the base data of 2.6 and the operator of 6.7, a linear
map with every lift generator as eigenvector and an eigenvalue of bounded valuation at it (projections of forms
orthogonal to the false lifts are integral, by 6.8); 5.2 (d) combines them into one operator diagonal in the lift
generators; multiplying by `n_GL` and taking the determinant gives the clearing bound.

Let `O` be a descent pair, `E′` and `Z ⊂ F(O)` as in 6.8.
(a) Let `ϑ` have ramification at most `ram` (`(bad places, Q(ϑ), ψ_ϑ, ram)` an auxiliary twist), `sel < ∞`, and `Z` be
spanned by lift generators for `(ϑ, sel)`. Then some operator `Λ` on `Z` preserves the Hecke eigenspaces at the split
places off the level (for every split `w` with `w`, `w̄` off the places of `O`, every `ξ, a ∈ ℂ` and every `z ∈ Z`: if
the Hecke polynomial operator at `ξ` multiplies `z` by `a`, it multiplies `Λz` by `a`), has every eigenvalue `μ` with `v_ℓ(ι(μ)) ≤ β(O, ram, sel)`, and takes `pr_Z y` to an integral form
for every `y` integral at `ι` and orthogonal to the false lifts.
(b) If `ϑ` has ramification at most `e′_ℓ` and `Z` is spanned by lift generators for `(ϑ, e′_ℓ)`, then some operator `Λ` on
`Z` has `|ι(det Λ)| ≥ exp(−dim Z·r_O·β_ℓ·log ℓ)`, takes `pr_Z y` to a form integral at `ι` for every `y` integral at
`ι` and orthogonal to the false lifts, and `|ι⟨y′, Λ pr_Z y⟩| ≤ 1` for every `y′` integral at all places above `ℓ`. That
is, the projection to `Z` has denominator at most `β_ℓ log ℓ` in the sense of NormsOfThetaLiftsAndExchangeIdentities
§1.4.

**In standard terms.** Let `y` be a nonzero lift generator for `(ϑ, sel)`, an eigenform for `O` lifting a system `z`
with a main summand `R` for `(V′, z)`, `μ_O = μ_{V′}·ϑ`. As `ϑ` has ramification at most `ram`, `ψ_ϑ` is
anticyclotomic of modulus `Q(ϑ)` (4.1 (4)), so by 8.4 (c), (d) the condition on `R` says that for all large `O` some
twisted lattice of `ψ_ϑR` has a Bloch–Kato Selmer group with coefficients `K_O/O`, relaxed at the places above `M` and
of `Q(ϑ) ∪ Q(ϑ)̄` not above `ℓ`, of normalised length at most `sel`; and by 8.3 (a), for an automorphic representation
`Π_y` of the definite unitary group in which `y` has a nonzero component,
`(R ⊗ ψ_ϑ) ⊕ ⊕_{0 ≤ e < t_O} χ^e ≅ r_{ℓ,ι}(Π_y) ⊗ χ_O`. In these terms 6.9 bounds the denominators of the projection
to a space spanned by lifts through relaxed Bloch–Kato Selmer groups of the complements of the characters `χ^e` in the
normalised Galois representations of the lifts, together with the local losses, the twist allowance and the error
term.

*Needs:* 2.6, 5.2, 6.1, 6.7, 6.8; NormsOfThetaLiftsAndExchangeIdentities §1.4 (the denominator predicate), §1.3 (false
lifts).

[ShortProof], `New/Congruences/FirstOrder/DenominatorBound` (`New.Selmer.exists_operator_ellVal_le_liftValuationBound`, `New.Selmer.exists_operator_det_clearingBound`, `New.Selmer.denominatorLe_clearingBound`)

## Layer 7: The choice of twists

For each prime and each identification `ι`, the twisting theorem (SelmerBoundsForAnticyclotomicTwists §5.4) gives an
`m`-fold twist whose powers make the Selmer groups of finitely many main summands short; with 6.9 these bound the
denominators of the projections to the lifts and to the lines of the main pairs; and the bounds, summed over the
primes, fit the budget.

### 7.1 The budget of the clearing bounds

*Origin:* particular to this proof: summed over any finite set of primes with the weights `log ℓ`, the clearing bounds
and the valuations of the class number of `U(1)` at the chosen level are at most `B_den`.

*Method of the formal proof:* the weighted sum of the valuations of an integer is at most its logarithm; the local
loss gives the main term `4·10⁶e¹⁸⁰·f(m/k)·b·log b`, and the other terms are negligible, at most a fixed power of `x`;
the scale inequalities of the data compare the total with `B_den`.

Negligible families with an exponent are those of DeterminantsOfThetaLiftChains §1.3.
(a) For every finite set `T` of primes and integers `1 ≤ a′ ≤ b′`, `Σ_{ℓ∈T} v_ℓ(a′) log ℓ ≤ log b′`.
(b) `Σ_{ℓ∈T} loc_ℓ log ℓ ≤ 4·10⁶·e¹⁸⁰·f·(m/k)·b·log b`.
(c) The families `ℓ ↦ v_ℓ(o_D)`, `ℓ ↦ e′_ℓ`, `ℓ ↦ e_ℓ` and `ℓ ↦ v_ℓ(h_{U(1)})` are negligible with exponents `2000`,
`999`, `4000` and `30`. For the first this uses that `o_D` is one integer for all primes (6.1 (a)), so that (a)
applies with `a′ = o_D` and `b′ = 2^(4(N_c + t + 3)^27)·h_E`, and `log b′ ≤ x^{2000}` by the sizes of the data.
(d) `Σ_{ℓ∈T}(β_ℓ log ℓ + v_ℓ(h_{U(1)}) log ℓ) ≤ B_den`, where `h_{U(1)}` is the number of classes of `U(1)` at the chosen
level.

*Needs:* 6.1; DeterminantsOfThetaLiftChains §1.3 (numbers negligible with an exponent);
OneSidedPrimeSumBoundsAndAdmissibleData §3.3 (the sizes of the data: the scale inequalities, the bound
for the class number of `E`), §2.3 (a) (a cyclotomic field containing `E`, for the conductor `N_c`);
CompositeThetaLiftsAndShortForms §5.2 (a) (the bound for the number of classes of `U(1)` at a level).

[ShortProof], `New/Congruences/FitTwistsExist` (`New.Selmer.sum_padicValNat_mul_log_le`, `New.Selmer.sum_localDefectBound_mul_log_le`, `New.Selmer.isNegligible_padicValNat_oddClassBound`, `New.Selmer.isNegligible_denominatorError`, `New.Selmer.isNegligible_twistError`, `New.Selmer.isNegligible_padicValNat_card_stdClasses`, `New.Selmer.sum_clearingBound_add_padicValNat_le`)

### 7.2 Main summands of the lifts and denominators for the powers of a twist

*Origin:* particular to this proof: the space of lifts is spanned by lift generators whose systems do not depend on
the twist, and the main pairs have rank-one main summands; so a twist that shortens the Selmer groups of finitely many
main summands bounds the denominators for the lifts and for the lines of the main pairs.

*Method of the formal proof:* the main summands come from 2.8 (d), and for a main pair from 2.8 (c) applied to the
trivial representation, which is a representation of a type with the single jump `0` by (a). The main summand that
2.8 (c) gives is not the trivial representation but the one whose traces 2.8 (b) reads off, the twist by the avatar
`α_O`; the jump `0`, lowered as in 2.8 (c), is the jump `z − 1 − ε(σ)c_p(v)` of 2.7 (c), which satisfies the
main-summand weight conditions for `(1, 2z − 1)`. 6.9 (b) gives the denominators. For (b), the spanning by lifts of
eigenforms is that of the chain of lifts, and the systems occur on `W_m` by equality of multiplicities. (e) is the
central action of `U(1)` on the forms on the larger space, applied to the lift data of a main pair.

(a) The trivial rank-one representation is a representation of type `(O, 1, {0}, X − 1, ∅)` for every descent pair `O`
with `W` of rank one; for every main pair `p` for `j` there is a rank-one main summand for the lift of the untwisted
character of `p` and the system with every Hecke eigenvalue equal to `1`.
(b) Let `ϑ` be a twist and `1 ≤ j ≤ m`. By DeterminantsOfThetaLiftChains §4.4 (d), `Z_j(ϑ)` is spanned by the lifts
`y` of good Hecke eigenforms on `W_j` that lie in the range of `e_c` for a good tuple `c` of labels. For each of these:
`(O_j(ϑ), c)` is a lift setting for `ϑ` (2.2 (a)), `range e_c ⊂ range e₀`, and `y` lifts a system that occurs in a
nonzero good form on `W_m`.
(c) Let `ϑ` be auxiliary of ramification at most `e′_ℓ` (4.1 (4)). If every system of good forms on `W_m` has
a main summand `R` for `(O_j(1), ·)` with `R` of divisible Selmer length at most `e′_ℓ` for `(ψ_ϑ, Q(ϑ), γ, ζ)` (some
`γ, ζ`), then the projection to `Z_j(ϑ)` has denominator at most `β_ℓ log ℓ` for `e₀`. If `p` is a main pair for `j` and
its rank-one main summand has divisible Selmer length at most `e′_ℓ`, the projection to the line of the lifted form of
the lift of the character of `p` twisted by `ϑ` has denominator at most `β_ℓ log ℓ` for the idempotent of the labels
`X − 1`.
(d) A denominator bound `β` for `Z_j(ϑ)` and `e₀` gives, for every `β′ ≥ β`, an operator clearing the projection in the
sense of DeterminantsOfThetaLiftChains §1.3 (b) (regular families of twists).
(e) *From the denominator of a line to the pairing of test forms.* Let `p = (ν, z)` be a main pair for `j`, `ϑ` a
twist, `φ` the lifted form of the lift of `νϑ` from `U(1)` to the definite space of rank `2z` (2.2 (b)), and suppose
that the projection to the line `ℂφ` has denominator at most `β` at `ι` for the idempotent of the labels `X − 1`, in
the sense of 6.9 (b) with `Z = ℂφ`. Then NormsOfThetaLiftsAndExchangeIdentities §6.3 (b), applied to the lift data of
the main pair, whose classes of `U(1)` at the chosen level have trivial stabilisers
(ThetaLiftChainsAndTheSeesawIdentity §2.10), gives the second clause of the denominators of
DeterminantsOfThetaLiftChains §1.3 (b) for `ϑ` and `j` with the bound `β + v_ℓ(h_{U(1)})·log ℓ`, where `h_{U(1)}` is
the number of classes of `U(1)` at the chosen level.

*Needs:* 1.3, 1.5, 2.2, 2.7, 2.8, 4.1, 6.9; ThetaLiftChainsAndTheSeesawIdentity §2.18 (the descent pairs of the lifts
`W_j → V_j`), §2.7 (good forms), §2.16 (lifted Hecke polynomials), §2.10 (trivial stabilisers at levels inside the
chosen level); SecondMomentsOfPoincareSeries §2.3 (equality of multiplicities of eigensystems in the good forms);
DeterminantsOfThetaLiftChains §2.1 (the lifts `W_j → V_j` and the Hecke polynomials of a lifted eigenform), §1.1 (main
pairs), §1.3 (regular families of twists), §4.4 (d) (the space of lifts is spanned by the lifts of good eigenforms in
the range of the idempotent of a good tuple); NormsOfThetaLiftsAndExchangeIdentities §§1.3, 1.4, 2.1, 2.2, 6.3 (from
§1.3 test forms and false lifts; from §1.4 the denominator predicate; from §§2.1, 2.2 the lift of a character of
`U(1)`, its lifted form and its descent; from §6.3 (b) the bound for the pairing of test forms used in (e)).

[ShortProof], `New/Congruences/FitTwistsExist` (`New.Selmer.isRepOfType_one`, `New.Selmer.exists_isMainSummand_mainPair`, `New.Selmer.range_goodLift_le_span_hasLiftHeckePolynomial`, `New.Selmer.denominatorLe_range_goodLift`, `New.Selmer.denominatorLe_span_trivialLift`, `New.Selmer.DenominatorLe.clearsProjection`); for (e), `New/OneLift/HeckeValues/CentralAction` (`New.Selmer.DenominatorLe.norm_card_mul_inner_starProjection_le`, `New.Selmer.DenominatorLe.norm_inner_starProjection_le`, `New.LValueData.isOrthogonalToFalseLifts_sum_normalizedCentralOp_inv`)

### 7.3 All data have regular families of `m`-fold twists

*Origin:* particular to this proof: the twists of the lower bound, one for each prime `ℓ` and each `ι : ℂ ≃ ℚ̄_ℓ`, whose
first `m` powers have few congruences; for them the denominators of the projections to the lifts and the inverse
ratios of `L`-values of the ramified pairs sum over all primes to totals that the heights afford, without any
hypothesis on the groups of even classes.

*Method of the formal proof:* the eigensystems of the good forms on `W_m` are finitely many, so finitely many main
summands occur (2.8 (d), 7.2 (a)); the twisting theorem gives one `m`-fold twist for all of them; 7.2 (c) bounds the
denominators of each power, for the space of lifts and for the line of each main pair; 7.2 (d) turns the first into
the clearing operator and 7.2 (e) the second into the bound for the pairing of test forms, which costs
`v_ℓ(h_{U(1)})·log ℓ`; the sums over the primes are 7.1.

(a) For every prime `ℓ` and `ι : ℂ ≃ ℚ̄_ℓ` there is an `m`-fold twist `τ` with modulus of norm prime to `ℓ` such that, for
`1 ≤ j ≤ m`, every ramified pair `p` and `s = ±1`, `|ι(ratio_p(τ^j, s))⁻¹| ≤ ℓ^{e′_ℓ}`, and the denominators for `τ^j` and
`j` (both clauses: the clearing operator for the lifts, by 7.2 (c), (d), and the pairing of test forms for the main
pairs, by 7.2 (c), (e); DeterminantsOfThetaLiftChains §1.3 (b) (regular families of twists)) are at most
`β_ℓ log ℓ + v_ℓ(h_{U(1)}) log ℓ`.
(b) For all admissible data `D` there is a family `θ_ι` of `m`-fold twists, one for each prime `ℓ` and each
`ι : ℂ ≃ ℚ̄_ℓ`, that is regular in the sense of DeterminantsOfThetaLiftChains §1.3 (regular families of twists): the modulus of
`θ_ι` is prime to `ℓ`; for every ramified pair, `1 ≤ j ≤ m` and `s = ±1`, the family `ι ↦ ratio_p(θ_ι^j, s)⁻¹` has height at
most `x₁`; and for each `j` there are `γ_ℓ` with `Σ_{ℓ∈T} γ_ℓ ≤ B_den` for every finite set `T` of primes such that the
denominators for `θ_ι^j` and `j` are at most `γ_ℓ` at every `ι` over `ℓ`.

*Needs:* 2.8, 7.1, 7.2; SelmerBoundsForAnticyclotomicTwists §5.4 (the twisting theorem for finitely many main summands);
DeterminantsOfThetaLiftChains §1.3 (regular families of twists), §1.1 (ramified pairs and ratios of `L`-values);
OneSidedPrimeSumBoundsAndAdmissibleData §1.2 (heights of families over the pairs `ι`), §3.2 (admissible data and the
scale `x₁`), §3.4 (`m`-fold twists).

[ShortProof], `New/Congruences/FitTwistsExist` (`New.Selmer.exists_mFoldTwist_hasDenominatorsLe`, `New.exists_isRegularFamily`)

## Layer 8: Comparison with the standard theory

The route states its Galois-theoretic notions in forms suited to its proofs: conjugate self-duality imposed on traces,
tame exponents read through a Kummer character, main summands defined through the traces of lifts, Selmer lengths of
modules of cocycles cut out by crystalline relations, Ribet cocycles, even and odd classes as cocycles with vanishing
conditions, Kummer maps defined by relations, Taylor–Wiles places without a residual condition, and a Hecke algebra of
functions on eigensystems. The standard theory is the reference. This layer states, for each of these notions, its
identification with the standard one or the implication that holds (8.1–8.9). This layer, with the comparisons made in
the Conventions and in the paragraphs beginning **In standard terms.**, rests on comparisons that other roadmaps of
the family state and that are not restated here: those of semisimplicity, of attached representations, of the local
conditions and of Selmer modules of cocycles (GaloisRepresentationsOfUnitaryEigenforms §§10.1, 10.2, 10.3, 10.4,
10.7), of crystalline relations with the Bloch–Kato conditions (SelmerBoundsForAnticyclotomicTwists §6.1), of
crystalline and potentially crystalline lattices with Fontaine's notions (CrystallineRepresentationsAndKisinModules
§7.2), and of odd classes and relations with class groups, Selmer groups of classes and dual Selmer groups
(IdelicReciprocityCountsAndCyclotomicClassGroups §§11.1, 11.3). The route does not use this layer.

### 8.1 Conjugate self-duality on traces

*Origin:* comparison of 1.2 (1) with the conjugate self-duality `R^c ≅ R^∨ ⊗ cyc^{1−n}` of the Galois representations
of automorphic representations of unitary groups (Chenevier and Harris (2013)) and with polarised representations; not
part of the formal proof.

*Proof route:* (a) If `R` is conjugate self-dual with twist `t′`, it is semisimple
(GaloisRepresentationsOfUnitaryEigenforms §10.1 (a)), and so are `R^c`, which is `R` composed with the automorphism
`g ↦ g^c` of `G_E` (§2.1 (a)), `R^∨`, the span of whose image is the transpose of the span of the image of `R`, on
which `(X, Y) ↦ tr(XY)` is the same form, and `R^∨ ⊗ χ^{t*}` (§2.1 (d)). The relation of 1.2 (1) reads
`tr R^c(g) = χ(g)^{t*}·tr R(g⁻¹) = tr(R^∨ ⊗ χ^{t*})(g)`, so `R^c` and `R^∨ ⊗ χ^{t*}` are conjugate (§2.1 (b)).
Conversely, a continuous semisimple `R` has a non-degenerate trace form on the span of its image (§10.1 (b)), and
isomorphic representations have the same traces. (b) For a perfect pairing with
`⟨R(g)v₁, R(g^c)v₂⟩ = χ(g)^{t*}⟨v₁, v₂⟩` (`g ∈ G_E`), the bijection `v₂ ↦ ⟨·, v₂⟩` carries `R^c` to `R^∨ ⊗ χ^{t*}`;
then (a) applies. (c) is 2.1 (b) with (a), and GaloisRepresentationsOfUnitaryEigenforms §10.4 (a), (b) for `Π_f` and
the attached representations. For the Check: if the image of a non-split extension were commutative, the matrices
`[[1, z(g)], [0, χ(g)]]` commuting for all `g` would give `z(g)(χ(h) − 1) = z(h)(χ(g) − 1)`, so `z = z₀(χ − 1)` for
one constant `z₀`, `χ` being non-trivial, and the extension would split; so the span of the image is the algebra of
upper triangular matrices, in which the matrix unit at the upper right corner is orthogonal to every element for the
trace form.

Let `R : G_E → GL_n(ℚ̄_ℓ)` be a homomorphism and `t′ ≥ 0`, and put `t* = t′ − 1` if `t′ ≥ 1` and `t* = 0` if `t′ = 0`,
the exponent of 1.2 (1). Write `R^c(g) = R(g^c)` and `R^∨(g) = ᵗR(g)^{−1}` (the contragredient).
(a) `R` is conjugate self-dual with twist `t′` (1.2 (1)) exactly when `R` is continuous and semisimple (a direct sum
of irreducible subrepresentations) and `R^c ≅ R^∨ ⊗ χ^{t*}`. For `t′ ≥ 1` the last condition is
`R^c ≅ R^∨ ⊗ cyc^{1−t′}`, the cyclotomic character having Hodge–Tate weight `−1` (Conventions).
(b) If `R` carries a polarisation in the sense of ArithmeticGaloisRepresentations §7.4 (Polarised representations,
`𝒢_n` and oddness), for the subgroup `G_E` of index two of `G_F` and the fixed complex conjugation `c`, with a
multiplier whose restriction to `G_E` is `χ^{t*}`, then `R^c ≅ R^∨ ⊗ χ^{t*}`; so a continuous semisimple `R` with such
a polarisation is conjugate self-dual with twist `t′`. Conjugate self-duality in the sense of 1.2 (1) records only the
isomorphism class of `R^c`: neither a pairing that realises it nor the sign of such a pairing.
(c) Let `f` be an eigenform of rank `n ≥ 1` on the standard definite unitary group, with system `H` of Hecke
polynomials, and `Π_f` an automorphic representation of that group in which `f` has a nonzero component. Every `R`
attached to `H` is semisimple with `R^c ≅ R^∨ ⊗ cyc^{1−n}`; these `R` are the conjugates of the Galois representation
`r_{ℓ,ι}(Π_f)` of GaloisRepresentationsOfUnitaryEigenforms §10.4 (b), so
`r_{ℓ,ι}(Π_f)^c ≅ r_{ℓ,ι}(Π_f)^∨ ⊗ cyc^{1−n}`.

Check: a continuous extension `R` of `χ` by the trivial character that does not split has the traces of `1 ⊕ χ`, so it
satisfies the trace relation of 1.2 (1) for `t′ = 2` (1.2, Check), but it is not conjugate self-dual with twist `2`:
the span of its image is the algebra of upper triangular matrices, on which the trace form is degenerate, and `R` is
not semisimple.

*Needs:* 1.2, 2.1; GaloisRepresentationsOfUnitaryEigenforms §2.1 (Semisimple representations: conjugacy, continuity,
twists and cancellation), (a), (b), (d), §10.1 (Semisimplicity and the non-degenerate trace form), (a), (b), §10.4
(The representation attached to an eigenform is the one attached to its base change to `GL_n`), (a), (b);
ArithmeticGaloisRepresentations §7.4 (Polarised representations, `𝒢_n` and oddness).

### 8.2 Tame exponents and fundamental characters

*Origin:* comparison of the tame exponent of 1.2 (3) with the fundamental characters of tame inertia
(FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.1.26 (Tame inertia and its fundamental characters)); not part of the
formal proof.

*Proof route:* (a) For `s, s′ ∈ I_A`, `ss′(z) = s(Kum_f(s′)·z) = Kum_f(s′)·Kum_f(s)·z`, the roots of unity of order
prime to the residue characteristic being fixed by inertia (IdelicReciprocityCountsAndCyclotomicClassGroups §1.4 (b)).
Let `emb_A` be an embedding of `Ω` in `ℚ̄_{p_w}` inducing `A` and `j : D_A → Gal(ℚ̄_{p_w}/E_w)` the isomorphism with
`j(g)(emb_A(x)) = emb_A(g(x))` (§1.3 (a), (b)); `I_A` and the inertia group of `E_w` consist of the elements acting
trivially on the residue field, which `emb_A` identifies, so `j` carries the one onto the other. A uniformiser of `E`
at `w` is one of `E_w` and of its maximal unramified extension, and `emb_A(Kum_f(s)) = j(s)(emb_A(z))/emb_A(z)` is the
value at `j(s)` of the character `θ_{Q−1}` of §R07.1.26; that section gives its independence of the uniformiser and of
the root, identifies reduction with an isomorphism `μ_{Q−1} ≅ 𝔽_Q^×`, and defines the fundamental characters of level
`f·[k_w : 𝔽_{p_w}]` as the composites of `θ_{Q−1}` with the embeddings of `𝔽_Q` in `k̄_w`. (b) A ring map `φ` as in
1.2 (3) kills the maximal ideal of the integers of `Ω` at `A`, so it factors through `k_A`, as an embedding of `k_A`
in `k̄_w` over `k_w`; two such embeddings differ by an automorphism of `k̄_w` over `k_w`, which acts on `𝔽_Q` as
`x ↦ x^{q^{k₁}}` for some `0 ≤ k₁ < f`, and each such `k₁` occurs. So the values `T_w(φ(Kum_f(s)))` are the
`exp(2πi/(Q − 1))^{q^{k₁}a₀}`, `T_w` and reduction being injective on `μ_{Q−1}`, and `s` has tame exponent `a` exactly
when `exp(2πi/(Q − 1))^a` is one of them. (c) The roots of `c`, with multiplicity, are permuted by `x ↦ x^q`, `c`
having coefficients in `k_w`, and `T_w(x)^{q^{k₁}a} = T_w(x^{q^{k₁}})^a`; for `x ∈ 𝔽_Q^×`, `T_w(x)^a` depends only on
`a` modulo `Q − 1`. The roots of a product of polynomials of degree at most `r_O` over `k_w` lie in extensions of
`k_w` of degree at most `r_O`, hence in `𝔽_Q` for `Q = q^{r_O!}`.

Let `w` be a chosen place, with residue field `k_w` of order `q` and characteristic `p_w`, `T_w` the character of 1.2
(3), `A` a place of `Ω` over `w`, `k_A` the residue field of the integers of `Ω` at `A` (an algebraic closure of
`k_w`), `f ≥ 1` and `Q = q^f`. For `s ∈ I_A` let `Kum_f(s) = s(z)/z`, for a uniformiser `π ∈ E` at `w` and `z ∈ Ω`
with `z^{Q−1} = π`, and let `red_A(Kum_f(s)) ∈ 𝔽_Q^× ⊆ k_A^×` be its reduction at `A`.
(a) `Kum_f : I_A → μ_{Q−1}(Ω)` is a homomorphism that does not depend on `π` or `z`; read through an embedding of `Ω`
in `ℚ̄_{p_w}` inducing `A`, it is the character `θ_{Q−1}` of FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.1.26 for
`K = E_w`. For every embedding `φ̄ : k_A → k̄_w` over `k_w`, `φ̄ ∘ red_A ∘ Kum_f` is the fundamental character of
level `f·[k_w : 𝔽_{p_w}]` of that section for the embedding `φ̄|_{𝔽_Q}`; these are the `f` fundamental characters of
that level whose embedding is over `k_w`.
(b) Fix one such `φ̄₀` and `a₀ ∈ ℕ` with `T_w(φ̄₀(red_A(Kum_f(s)))) = exp(2πi/(Q − 1))^{a₀}`. Then `s` has tame
exponent `a ∈ ℕ` at level `f` (1.2 (3)) exactly when `a ≡ q^{k₁}·a₀` modulo `Q − 1` for some `0 ≤ k₁ < f`. So the tame
exponents of `s` are the discrete logarithms, with respect to `exp(2πi/(Q − 1))` and through `T_w`, of the values at
`s` of the `f` fundamental characters of (a), those of level `f·[k_w : 𝔽_{p_w}]` whose embedding is over `k_w`; a tame
exponent determines these values up to the action of the Frobenius of `k_w`.
(c) If `c` is a polynomial over `k_w` whose roots are nonzero and lie in `𝔽_Q`, the polynomial
`∏_x (X − ι(T_w(x)^a))`, over the roots `x` of `c` with multiplicity, is the same for all tame exponents `a` of `s` at
level `f`. In particular, when the roots of `c_i` are nonzero and lie in `𝔽_Q` for `Q = q^{r_O!}`, as for a product of
polynomials of degree at most `r_O` over `k_{w_i}` that do not vanish at `0`, the condition of 1.2 (3) at `w_i` asks,
for each `s ∈ I_A`, that one polynomial, determined by `red_A(Kum_{r_O!}(s))`, kill `R(s)`.

*Needs:* 1.2; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.1.26 (Tame inertia and its fundamental characters);
IdelicReciprocityCountsAndCyclotomicClassGroups §1.3 (Decomposition groups as absolute Galois groups of completions),
(a), (b), §1.4 (Frobenius, inertia, roots of unity and tame inertia at a place of `Ω`), (b).

### 8.3 Main summands and the Galois representations of the lifted forms

*Origin:* comparison of the main summands of 1.3 (4), defined through the traces of the normalised representations of
the lifted eigenforms, with the Galois representations of the automorphic representations of the definite unitary
group in which these eigenforms have nonzero components (GaloisRepresentationsOfUnitaryEigenforms §10.4); not part of
the formal proof.

*Proof route:* (a) By GaloisRepresentationsOfUnitaryEigenforms §10.4 (b), `r_{ℓ,ι}(Π_y)` is attached to the Hecke
polynomials of `y`, so 1.3 (4) applies to it: `r_{ℓ,ι}(Π_y) ⊗ χ_{V′}` has the trace `ψ_ϑ·tr R + Σ_{0 ≤ e < t_O} χ^e`,
which is the trace of `(R ⊗ ψ_ϑ) ⊕ ⊕_{0 ≤ e < t_O} χ^e`. Both are semisimple: `r_{ℓ,ι}(Π_y)` and its twist (§2.1 (d));
`R`, which is conjugate self-dual (1.3 (2), 1.2 (1)), its twist, and the sum of these with characters (§10.1).
Semisimple representations with equal traces are conjugate (§2.1 (b)). (b) For two main summands `R`, `R′`, (a) gives
`ψ_ϑ·tr R = ψ_ϑ·tr R′`; `ψ_ϑ` takes invertible values, so `tr R = tr R′` and `R ≅ R′` (§2.1 (b)).

Let `O` be a descent pair, `z` a system of Hecke eigenvalues and `R` a main summand for `(O, z)` (1.3 (4)). Let `ϑ` be
a tame character, `V′` a descent pair with `r_{V′} = r_O`, `n_{V′} = n_O` and `μ_{V′} = μ_O·ϑ`, `y` an eigenform for
`V′` lifting `z`, and `Π_y` an automorphic representation of the unitary group of the standard definite hermitian
space of rank `n_O` in which `y` has a nonzero component (one exists, GaloisRepresentationsOfUnitaryEigenforms §10.4
(a)), with its continuous semisimple Galois representation `r_{ℓ,ι}(Π_y)` (§10.4 (b)).
(a) `(R ⊗ ψ_ϑ) ⊕ ⊕_{0 ≤ e < t_O} χ^e ≅ r_{ℓ,ι}(Π_y) ⊗ χ_{V′}`: up to the twist by `ψ_ϑ`, `R` is the complement of one
copy of each `χ^e`, `0 ≤ e < t_O`, in the normalised Galois representation of `Π_y`.
(b) If such a `y` exists, any two main summands for `(O, z)` are isomorphic.

1.3 (4) ties a main summand only to the lifts of `z` to the definite spaces of rank `n_O`; no Galois representation
attached to forms on the unitary group of `W` enters its definition.

*Needs:* 1.2, 1.3; GaloisRepresentationsOfUnitaryEigenforms §2.1 (Semisimple representations: conjugacy, continuity,
twists and cancellation), (b), (d), §10.1 (Semisimplicity and the non-degenerate trace form), §10.4 (The
representation attached to an eigenform is the one attached to its base change to `GL_n`), (a), (b).

### 8.4 Selmer lengths with divisible coefficients and Bloch–Kato Selmer groups

*Origin:* comparison of the modules of 1.5, cut out by the crystalline relations above `ℓ` and by the vanishing at
`γ`, with Bloch–Kato Selmer groups relaxed at the places above `M` and of `Q ∪ Q̄`; not part of the formal proof.

*Proof route:* (a) `Sel_μ(ρ, Q, γ)` is the module `Sel(ρ, S_Q, L; O/ℓ^μ)` of SelmerBoundsForAnticyclotomicTwists §1.1,
and the module of 1.5 (2) with values in `(K_O/O)ⁿ` is `Sel(ρ, S_Q, L; K_O/O)`, for `L` the relation `z(γ) = 0`
together with all the crystalline relations of `ρ`: those of 1.1 are those of SelmerBoundsForAnticyclotomicTwists
§4.1, and continuous and locally constant maps into a discrete module are the same. `S_Q` is finite and contains the
places above `ℓ`, so SelmerBoundsForAnticyclotomicTwists §6.1 (b) applies; a lattice is potentially crystalline at a
decomposition group exactly when the representation it spans over `ℚ̄_ℓ` is (CrystallineRepresentationsAndKisinModules
§7.2 (c), (f), read at the decomposition group through its (d)). (b) An injective map does not decrease lengths, and a
bijective one keeps them. (c) For a twisted lattice `(u, ψ′)`, `ψ′u` is conjugate over `ℚ̄_ℓ` to `ψR`, so it is
trivial on the same inertia groups and potentially crystalline at the same places; its reductions are locally
constant, `u` and `ψ′` being continuous (2.2 (e)); and `ψ′u(γ) = ζ·1` with `ζ − 1` a unit. So (b) applies to `ρ = ψ′u`
over each large `O`, with the same normalisation of lengths on both sides. (d) A main summand is good, so unramified,
at the places not above `M` or `ℓ`, and of finite type, so potentially crystalline, at the places above `ℓ` (1.3 (2),
1.2 (2), 1.1); a character as in 4.1 (4), with no place of `Q` above `ℓ`, is a character for `Q` in the sense of
SelmerBoundsForAnticyclotomicTwists (Conventions, characters for a modulus), so it is unramified outside `Q ∪ Q̄` and
trivial on the decomposition groups above `ℓ`. Hence `ψR` is trivial on the inertia groups outside `S_Q` and agrees
with `R` on the decomposition groups above `ℓ`.

Let `O` be a coefficient ring, `ρ : G_E → GL_n(O)` a lattice whose reductions modulo every power of `ℓ` are locally
constant, `Q` a finite set of finite places, `S_Q` the set of the places above `ℓ`, above `M` and in `Q ∪ Q̄`, and
suppose that `ρ` is trivial on the inertia groups at the places of `Ω` over the places outside `S_Q`. Let `γ ∈ G_E`
with `ρ(γ) = ζ·1`, `ζ ∈ O`, `ζ − 1` a unit. For `B = O/ℓ^μ` (`μ ≥ 0`) or `B = K_O/O`, let `H¹_{f,S_Q}(E, ρ ⊗ B)` be
the Bloch–Kato Selmer group of `ρ` with coefficients `B` relaxed at the places of `S_Q` not above `ℓ`
(SelmerBoundsForAnticyclotomicTwists §6.1: the classes in `H¹(G_E, Bⁿ)` unramified outside `S_Q` whose restriction to
the decomposition group of each place above `ℓ` lies in the Bloch–Kato condition).
(a) `z ↦ [z]` maps `Sel_μ(ρ, Q, γ)` (for `B = O/ℓ^μ`), and the module of 1.5 (2) with values in `(K_O/O)ⁿ` (for
`B = K_O/O`), injectively to `H¹(G_E, Bⁿ)`, with image containing `H¹_{f,S_Q}(E, ρ ⊗ B)`. If the restrictions of `ρ`
to the decomposition groups above `ℓ` are potentially crystalline, the image is `H¹_{f,S_Q}(E, ρ ⊗ B)`.
(b) Hence the length of `H¹_{f,S_Q}(E, ρ ⊗ K_O/O)` is at most `sel(ρ, Q, γ)`, and that of `H¹_{f,S_Q}(E, ρ ⊗ O/ℓ^μ)`
at most that of `Sel_μ(ρ, Q, γ)`, with equality in both when the restrictions of `ρ` to the decomposition groups above
`ℓ` are potentially crystalline.
(c) Let `ψ` be a continuous character and `R` a continuous representation with `ψR` trivial on the inertia groups at
the places outside `S_Q`, and `γ, ζ` as in 1.5 (3). If `R` has divisible Selmer length at most `s` for `(ψ, Q, γ, ζ)`
(1.5 (4)), then for all large `O` some twisted lattice `(u, ψ′)` for `(ψ, R, γ, ζ)` over `O` has
`H¹_{f,S_Q}(E, ψ′u ⊗ K_O/O)` of normalised length at most `s`. If `ψR` is potentially crystalline at the places of `Ω`
above `ℓ`, the converse holds: `R` has divisible Selmer length at most `s` exactly when, for all large `O`, some
twisted lattice has relaxed Bloch–Kato Selmer group of normalised length at most `s`.
(d) If `R` is a main summand (1.3 (2)) and `ψ` is anticyclotomic of modulus `Q` (4.1 (4)), no place of `Q` lying above
`ℓ`, then `ψR` satisfies the hypotheses of (c) and of its converse.

Above `ℓ` the modules of 1.5 record the Bloch–Kato condition only through the crystalline relations, which cut it out
exactly for lattices that are potentially crystalline there.

*Needs:* 1.1, 1.2, 1.3, 1.5, 2.2, 4.1; SelmerBoundsForAnticyclotomicTwists §6.1 (Selmer groups of cocycles and
Bloch–Kato Selmer groups), (b), with §1.1 (Selmer data, tied primes and tied Selmer groups: the modules
`Sel(ρ, S, L; B)`), §4.1 (Main summand weights, the crystalline loss and the defect bound: the crystalline relations)
and its Conventions (characters for a modulus); CrystallineRepresentationsAndKisinModules §7.2 (Crystalline
representations), (c), (d), (f).

### 8.5 Ribet cocycles, cohomology classes and extensions

*Origin:* comparison of the Ribet cocycles of 3.1 (2) with cohomology classes and with extensions of modules over the
algebra spanned by the family `(u_x)`; not part of the formal proof.

*Proof route:* (a) Every element of `I` is `Σ_g θ_g(g − 1)` for a finitely supported `θ`, and
`u_x(Σ_g θ_g(g − 1)) = Σ_g θ_g(u_x(g) − 1)`, so the condition of 3.1 (2) says that `c̃` vanishes on `I ∩ 𝔨`. The map
`c̃` is `O[G]`-linear, as `c̃(h(g − 1)) = c(hg) − c(h) = ρ(h)c(g)`, and an `O[G]`-linear `φ` on `I` gives the cocycle
`g ↦ φ(g − 1)`. The family of the `u_x` maps `I/(I ∩ 𝔨)` isomorphically onto the `O`-span of the families
`(u_x(g) − 1)_x`. If `u_x(g) = 1` for all `x`, then `g − 1 ∈ I ∩ 𝔨`. (b) For a coboundary `c(g) = (ρ(g) − 1)y₀`,
`c̃(a) = ρ(a)y₀`, which vanishes on `𝔨`. An extension `0 → B^d → ℰ → O → 0` of `O[G]`-modules splits over `O`; for a
lift `1̃ ∈ ℰ` of `1`, `g·1̃ = 1̃ + c(g)` defines a cocycle whose class is that of the extension, and every class
arises in this way. An element `a ∈ 𝔨` acts on `ℰ = B^d ⊕ O·1̃` by `v₁ + λ1̃ ↦ ρ(a)v₁ + λ(aug(a)1̃ + c̃(a − aug(a)))`;
as `aug(a) = 0` and `ρ(a) = 0`, `𝔨` kills `ℰ` exactly when `c̃` vanishes on `𝔨`, that is when `c` is a Ribet cocycle.
An extension of `O[G]`-modules killed by `𝔨` is an extension of `𝒜`-modules, and an `O[G]`-linear map between
`𝒜`-modules is `𝒜`-linear, which gives the identification with `Ext¹_𝒜` and its injectivity. If `u_{x₀}` is conjugate
to a block sum with blocks `ρ` and the trivial character, an element killed by `u_{x₀}` is killed by `ρ` and by `aug`.
(c) Let `𝔐 ⊆ ∏_x M_σ(O)` be the `O`-span of the families `(u_x(g) − 1)_x`, finitely generated as `Y` is finite. By
(a), `c(g) = c̃((u_x(g) − 1)_x)` for an `O`-linear map `c̃` on `𝔐`; its image is a finitely generated submodule of
`B^d`, killed by some `ϖ^{μ₁}` (for `B = O/a`, with `ϖ^{μ₁}` generating `a`), so `c̃` vanishes on `ϖ^{μ₁}𝔐`. By the
elementary divisor theorem over the discrete valuation ring `O`, `𝔐 ∩ ϖ^{μ₂}·∏_x M_σ(O) ⊆ ϖ^{μ₁}𝔐` for some `μ₂`; the
reductions of the `u_x` modulo `ϖ^{μ₂}` are locally constant, so `c` is constant on the cosets of an open subgroup.
The vanishing on inertia is the last statement of (a).

Let `G` be a group, `O` a commutative ring, `u_x : G → GL_σ(O)` (`x ∈ Y`) and `ρ : G → GL_d(O)` homomorphisms, and `B`
an `O`-module, `G` acting on `B^d` through `ρ`. Extend the `u_x` and `ρ` to `O`-algebra maps on the group ring `O[G]`,
and let `aug : O[G] → O` be the augmentation (`g ↦ 1`), `I = ker(aug)`, `𝔨` the two-sided ideal of the elements killed
by every `u_x`, and `𝒜 = O[G]/𝔨`, the `O`-algebra spanned by the families `(u_x(g))_x` in `∏_x M_σ(O)`. For a cocycle
`c : G → B^d` let `c̃ : I → B^d` be the `O`-linear map with `c̃(g − 1) = c(g)`.
(a) `c ↦ c̃` is a bijection from the cocycles onto `Hom_{O[G]}(I, B^d)`, under which the Ribet cocycles of `ρ` with
values in `B` (3.1 (2)) are the maps that vanish on `I ∩ 𝔨`; so the module of Ribet cocycles is
`Hom_{O[G]}(I/(I ∩ 𝔨), B^d)`, and `I/(I ∩ 𝔨)` is the `O`-span of the families `(u_x(g) − 1)_x`. A Ribet cocycle
vanishes at every `g` with `u_x(g) = 1` for all `x`.
(b) Suppose that `𝔨 ⊆ I` and `ρ(𝔨) = 0`, as when some `u_x` is conjugate over `O` to a block sum in which `ρ` and the
trivial character occur (for instance `u_π` in 3.7). Then every coboundary is a Ribet cocycle, and `c ↦ [c]` maps the
Ribet cocycles onto the subgroup of `H¹(G, B^d)` of the classes of the extensions `0 → B^d → ℰ → O → 0` of
`O[G]`-modules (`O` with the trivial action) that `𝔨` kills, with kernel the coboundaries. That subgroup is the image
of `Ext¹_𝒜(O, B^d)`, which maps injectively to `Ext¹_{O[G]}(O, B^d) = H¹(G, B^d)`.
(c) Let `G = G_E`, `O` a coefficient ring with uniformiser `ϖ`, `Y` finite, the reductions of the `u_x` modulo every
power of `ϖ` locally constant, and `B = O/a` with `a ≠ 0` or `B = K_O/O`. Then every Ribet cocycle is locally
constant, and it vanishes on the inertia group of every place of `Ω` at which all the `u_x` are trivial on inertia.
Under the hypothesis of (b), the Ribet cocycles modulo coboundaries form a submodule of the continuous cohomology
`H¹(G_E, B^d)`, of classes unramified at those places.

This section compares the Ribet cocycles; it states no comparison of the common Ribet elements of 3.1 (7) with a
congruence ideal or a reducibility ideal.

*Needs:* 3.1.

### 8.6 Even classes and Selmer groups of classes

*Origin:* comparison of the even classes of 4.1 (1) with groups of classes in Galois cohomology and their parts under
complex conjugation; for the odd classes the comparison is IdelicReciprocityCountsAndCyclotomicClassGroups §11.3; not
part of the formal proof.

*Proof route:* The cyclotomic character is trivial on the inertia groups at the places of `Ω` not above `ℓ`
(IdelicReciprocityCountsAndCyclotomicClassGroups §1.4 (b)) and on the groups `D_A ∩ ker cyc`, so these groups act
trivially on `(O/ℓ^ν)(−e)`: the restriction of a cocycle to them is a homomorphism that depends only on its class, and
the coboundaries `g ↦ (χ(g)^e − 1)y₀` vanish on them. The coboundaries are also fixed by `z ↦ z^c`, as
`cyc(g^c) = cyc(g)`. So the coboundaries lie in `Ev_e(O, S, ν)`, the conditions defining it other than `z^c = z` are
conditions on classes, and `[z^c] = [z]` for its members; `y₀ ↦ (g ↦ (χ(g)^e − 1)y₀)` has kernel the invariants of
`G_E`. For (b), let `z` represent a class of `H¹_{(ℓ),S}(E, (O/ℓ^ν)(−e))^+`; as `2` is invertible in `O/ℓ^ν`,
`(z + z^c)/2` represents the same class and is fixed by `z ↦ z^c`. The map `g ↦ g^c` carries `I_A` onto `I_{cA}` and
`D_A ∩ ker cyc` onto `D_{cA} ∩ ker cyc`, `cA` lying above the conjugate place, and the set of the places above `ℓ` and
the set of the places outside `S ∪ S̄` are stable under conjugation; so `z^c`, hence `(z + z^c)/2`, satisfies the
vanishing conditions of `z`, and `(z + z^c)/2 ∈ Ev_e(O, S, ν)`. The decomposition into the two parts uses again that
`2` is invertible. For (c), `c` acts on a cocycle by `z ↦ (g ↦ χ(c)^e·z(cgc)) = (−1)^e·z^c`. For the Check, `cyc(G_E)`
is open in `ℤ_ℓ^×`, so it contains `1 + ℓ^{k₀}ℤ_ℓ` for some `k₀ ≥ 1`, and `(1 + ℓ^{k₀})^e − 1` is nonzero, of finite
valuation; for larger `ν` some element of `(O/ℓ^ν)(−e)` is not fixed by `G_E`.

Let `O` be a coefficient ring, `ν, e ≥ 0` and `S` a set of finite places. For a cocycle `z : G_E → (O/ℓ^ν)(−e)` let
`z^c(g) = z(g^c)`; `[z] ↦ [z^c]` is an involution of `H¹(G_E, (O/ℓ^ν)(−e))`
(IdelicReciprocityCountsAndCyclotomicClassGroups §11.3). Let `H¹_{(ℓ),S}(E, (O/ℓ^ν)(−e))` be the group of the classes
whose restriction to `I_A` is zero for every place `A` of `Ω` not above `ℓ` and above no place of `S ∪ S̄`, and whose
restriction to `D_A ∩ ker cyc` is zero for every `A` above `ℓ`; for `S = ∅` it is the group `H¹_{(ℓ)}(E, (O/ℓ^ν)(−e))`
of §11.3 (b). Write `+` and `−` for the parts on which `[z] ↦ [z^c]` acts by `1` and by `−1`.
(a) `Ev_e(O, S, ν)` contains the coboundaries, and `z ↦ [z]` maps it into `H¹_{(ℓ),S}(E, (O/ℓ^ν)(−e))^+`, with kernel
the coboundaries, a module isomorphic to the quotient of `(O/ℓ^ν)(−e)` by its invariants under `G_E`.
(b) If `ℓ` is odd, the map of (a) is onto. So the length of `Ev_e(O, S, ν)` is that of `H¹_{(ℓ),S}(E, (O/ℓ^ν)(−e))^+`
plus that of the coboundaries, and `H¹_{(ℓ),S}(E, (O/ℓ^ν)(−e))` is the direct sum of its `+` and `−` parts.
(c) The fixed complex conjugation `c`, acting on `G_E` by conjugation and on `(O/ℓ^ν)(−e)` by `χ(c)^e = (−1)^e`, acts
on `H¹(G_E, (O/ℓ^ν)(−e))` by `[z] ↦ (−1)^e[z^c]`, so the `+` part is the part on which `c` acts by `(−1)^e`. For
`e > 0` and `ℓ` odd the odd classes `Sha_e(O, ν)` map isomorphically onto `H¹_{(ℓ)}(E, (O/ℓ^ν)(−e))^−` (§11.3 (b)):
for `S = ∅`, the even classes modulo coboundaries and the odd classes are the two parts of one group of classes.

Check: for `e ≠ 0` and all large `ν`, `χ^e` is not `≡ 1` modulo `ℓ^ν` on `G_E`, so `G_E` does not fix every element of
`(O/ℓ^ν)(−e)` and `Ev_e(O, S, ν)` contains nonzero coboundaries: `z ↦ [z]` is not injective on the even classes, while
for `ℓ` odd it is injective on the odd classes (§11.3 (b)).

Above `ℓ` the condition is the vanishing on `D_A ∩ ker cyc`, which for classes means being inflated from
`Gal(E_v(μ_{ℓ^∞})/E_v)` at the place `v` below `A` (§11.3 (b)), not the vanishing of the local class.

*Needs:* 4.1; IdelicReciprocityCountsAndCyclotomicClassGroups §1.4 (Frobenius, inertia, roots of unity and tame
inertia at a place of `Ω`), (b), §11.3 (Odd classes, class groups and Selmer groups of classes), (b).

### 8.7 Kummer maps and dual Selmer cocycles

*Origin:* comparison of the Kummer maps of 4.2, defined by relations, with the dual Selmer group of the relation
setting over `F` and its cocycles (IdelicReciprocityCountsAndCyclotomicClassGroups §11.1); not part of the formal
proof.

*Proof route:* The data of 4.2 form a relation setting over `F` (IdelicReciprocityCountsAndCyclotomicClassGroups
§4.5), as the method of 4.2 uses: `M_e` is killed by `ℓ^ν` and fixed by the complex conjugations, since `cyc⁺` is
`cyc` times the quadratic character of `E/F` and both take the value `−1` at every complex conjugation of `G_F`, `E`
being a CM field; `G_ν` is open and normal in `G_F`, its fixed field `E(μ_{ℓ^ν})` being Galois over `F`, it fixes
`M_e` and the `ℓ^ν`-th roots of unity, and it contains no complex conjugation, as it lies in `G_E`; `M_e` is
unramified outside the primes above `ℓ`, `cyc` being unramified there and `E/F` being unramified at the finite places
(`E = F(√−1) = F(√−3)`, as `E` contains a primitive `5040`-th root of unity); and the local conditions contain the
local coboundaries, which vanish on `ker cyc⁺` above `ℓ`, and on the decomposition group below a datum of `x`,
generated by inertia, which fixes `M_e`, and by a Frobenius element in `G_ν` (the place of the datum has prime norm,
so it is split over `F`, `E/F` being unramified at the finite places as `E` contains a primitive `5040`-th root of
unity). The relations off `T` of 4.2 are then those of §4.5, and §11.1 (b) gives (a), since the relation `y_𝔴` of
§11.1 (b), equal to `𝔴` on `G_ν` and to `0` outside `G_ν`, restricted to `G_E` is `g ↦ (n ↦ nψ_𝔴(g)/ℓ^ν)`. For (b),
`G_F/G_ν` is abelian, `E(μ_{ℓ^ν})` being the compositum of the abelian extensions `E` and `F(μ_{ℓ^ν})` of `F`, so
`[c, g] ∈ G_ν` for every `g ∈ G_F`; and `c` acts on `M_e^*` by `−1` (trivially on `M_e`, by inversion on `μ_{ℓ^ν}`),
which fixes no nonzero element when `ℓ` is odd. So §11.1 (c) applies with `σ = c`; the coboundaries vanish on `G_ν`,
which acts trivially on `M_e^*`, so the map factors through the dual Selmer group.

Let `ν`, `e`, `x`, `M_e` and the relation setting over `F` be as in 4.2: it is the relation setting of
IdelicReciprocityCountsAndCyclotomicClassGroups §4.5 over the number field `F`, for the module `M_e` and the modulus
`ℓ^ν`, with the open normal subgroup `G_ν`, the primes above `ℓ` or below `x` as its finite set of primes, and the
local conditions of 4.2. Let `M_e^* = Hom(M_e, μ_{ℓ^ν})`, read as `Hom(M_e, ℚ/ℤ)` as in §11.1, and
`Z¹_{L^⊥}(F, M_e^*)` the group of the dual Selmer cocycles of §11.1: the continuous cocycles `G_F → M_e^*` whose class
lies in the dual Selmer group `H¹_{L^⊥}(F, M_e^*)`. For a dual Selmer cocycle `𝔴` let `ψ_𝔴 : G_E → ℤ/ℓ^ν` be
`g ↦ ℓ^ν·𝔴(g)(1)` on `G_ν` and `0` on `G_E ∖ G_ν`.
(a) For every finite set `T` of primes of `F` containing the primes above `ℓ` or below `x`, `𝔴 ↦ ψ_𝔴` is an additive
map from `Z¹_{L^⊥}(F, M_e^*)` to the Kummer maps of exponent `e` off `T`, whose kernel consists of the dual Selmer
cocycles that vanish on `G_ν`.
(b) If `ℓ` is odd, that kernel is the group of coboundaries `G_F → M_e^*`, and `𝔴 ↦ ψ_𝔴` induces an injective
homomorphism from the dual Selmer group `H¹_{L^⊥}(F, M_e^*)` to the group of Kummer maps of exponent `e` off `T`.

A Kummer map records a relation only through its values on `G_E`, and no statement here says that every Kummer map is
some `ψ_𝔴`.

*Needs:* 4.2; IdelicReciprocityCountsAndCyclotomicClassGroups §4.5 (Relations at split primes and the Greenberg–Wiles
inequality), §11.1 (Relations, the dual Selmer group and the Greenberg–Wiles formula), (b), (c).

### 8.8 Taylor–Wiles places and Taylor–Wiles data

*Origin:* comparison of the Taylor–Wiles places of 4.3 (GaloisRepresentationsOfUnitaryEigenforms §9.1) with the
Taylor–Wiles data of the literature (PotentialAutomorphyInfrastructurePartII §4.1 (Taylor–Wiles data with a residual
eigenspace)); not part of the formal proof.

*Proof route:* The places of `Q` are distinct places of `F` that split in `E`, and `Q̃` has one place of `E` above
each, so no two places of `Q̃` are equal or conjugate. A place `ṽ` above a split `v` has the residue field of `v`, so
`q_ṽ = Nv ≡ 1` modulo `ℓ^ν`. An arithmetic Frobenius element exists at every place of `Ω` above `ṽ`
(IdelicReciprocityCountsAndCyclotomicClassGroups §1.3 (c)), and its inverse is a geometric one.
GaloisRepresentationsOfUnitaryEigenforms §9.1 notes the same passage from data to places.

Let `(Q, Q̃, {ψ̄_ṽ})` be a Taylor–Wiles datum of level `ν` for a polarized global deformation problem, in the sense of
PotentialAutomorphyInfrastructurePartII §4.1 for the CM field `E` with maximal totally real subfield `F` and `l = ℓ`.
(a) If every place of `Q̃` has prime norm, then for every choice, at each `ṽ ∈ Q̃`, of a place `A_ṽ` of `Ω` above `ṽ`
and a geometric Frobenius element `s_ṽ` at `A_ṽ`, the Frobenius data `(ṽ, A_ṽ, s_ṽ)`, indexed by `Q`, are Taylor–Wiles
places of level `ℓ^ν` (4.3).
(b) Taylor–Wiles places record only `ℓ^ν | q_{w_j} − 1` and that no two of the places are equal or conjugate. They
involve no residual representation: nothing in their definition asks a residual representation to be unramified at
`w_j` and to have there a Frobenius eigenvalue on whose generalised eigenspace Frobenius acts semisimply, or the
places to avoid a given finite set; nor are they chosen to kill a dual Selmer group, as the Taylor–Wiles primes of
GlobalGaloisDeformations §8.6 (Taylor–Wiles primes for enormous image) are. The route asks conditions on Frobenius
case by case: the prime triangle of 4.1 (3) in 4.3, and the chains of roots of 5.2 (b) in 6.6 (b).

*Needs:* 4.3; GaloisRepresentationsOfUnitaryEigenforms §9.1 (Taylor–Wiles places, the integral Hecke algebra and
Higman operators); IdelicReciprocityCountsAndCyclotomicClassGroups §1.3 (Decomposition groups as absolute Galois
groups of completions), (c); PotentialAutomorphyInfrastructurePartII §4.1 (Taylor–Wiles data with a residual
eigenspace); GlobalGaloisDeformations §8.6 (Taylor–Wiles primes for enormous image).

### 8.9 The Hecke algebra of base data and the algebra generated by Hecke operators

*Origin:* comparison of the Hecke algebra of 5.3 (GaloisRepresentationsOfUnitaryEigenforms §9.1), a ring of functions
on systems defined by integrality, with the algebra generated by the Hecke operators at the good split places, the
Hecke algebra of the literature (for forms with coefficients in a lattice, PotentialAutomorphyInfrastructurePartII
§3.3 (Hecke algebras of definite unitary groups)); not part of the formal proof.

*Proof route:* The forms of level `u` make up a finite-dimensional space, an open subgroup acting on them by a
character (AdelicUnitaryGroupsAndAlgebraicModularForms §6.3 (b)). That space is fixed by the elements of `K₀` with
component `1` at the places of `S_B`, at the places of `u` and at their conjugates, and it is stable under the
`T_{w,i}` at the split places `w` with `w, w̄` outside these places, which commute with the translations at the other
places and keep the vectors fixed by `ι_w(GL_n(𝒪_w))`; so it is spanned by forms that are eigenvectors of all these
operators (§6.3 (d)), each of which lies in a system (GaloisRepresentationsOfUnitaryEigenforms §7.4 (b)), and distinct
systems are independent (§7.4 (a)). Hence it is the direct sum of its intersections with the finitely many systems of
level `u`, through which 5.3 scales the systems; each intersection is spanned by finitely many forms, each an
eigenform with the eigenvalues of its system at all but finitely many places, so all but finitely many split places
are off the level. At a split `w` off the level, `T_{w,i}` acts on the forms of level `u` of `x` by `t_{x,w,i}`, and
`T_{w,n}` is the right translation by the central element `ι_w(ϖ_w·1)`, which is invertible; operators built from
right translations by elements whose components at the places above `ℓ` are `1` preserve the points integral above
`ℓ`, hence preserve `F_{B,u}^int`, and so do the scalars of `ℤ̄_ℓ`. So every element of `𝕋^{std}_u` acts on the forms
of level `u` of each system by a scalar, and the scaling of the systems by the `ι`-images of these scalars is that
element, which preserves `F_{B,u}^int`; this is (a): the scalars are well defined because every system of level `u`
contains a nonzero form of level `u`, and the map is injective because an element of `𝕋^{std}_u` is the scaling of the
systems by its scalars. (b) A system is determined by its eigenvalues at all but finitely many places, so two distinct
systems have eigenvalues that differ at infinitely many split places, among them a place off the level. For `x ∈ Y_u`,
the product over `x′ ≠ x` of `(𝔣_{x′} − 𝔣_{x′}(x′))/(𝔣_{x′}(x) − 𝔣_{x′}(x′))`, with `𝔣_{x′}` an eigenvalue function
separating `x` and `x′`, is the indicator function of `x`; these indicators lie in the `ℚ̄_ℓ`-span of the image and
form a basis of the functions. A basis of the functions inside the image of `𝕋^{std}_u(ℤ̄_ℓ)` spans over `ℤ̄_ℓ` an
open subgroup, `ℤ̄_ℓ` being open in `ℚ̄_ℓ`; a subgroup that contains an open subgroup is open, and an open subgroup is
closed. (c) By GaloisRepresentationsOfUnitaryEigenforms §1.6 (a), for each of the finitely many `x`, `ι` of the
coefficient of `X^i` in the Hecke polynomial of `x` at `w` tends to `[X^i]det(X − R_x(g))` along most Frobenii at `g`,
a proper filter (§1.2 (d)) along which the place `w` is off the level (§1.2 (b)); that coefficient is
`(−1)^{n−i}q_w^{(n−i)(n−i−1)/2}t_{x,w,n−i}` (Conventions), an integer times an eigenvalue. As the image of
`𝕋^{std}_Q(ℤ̄_ℓ)` is closed, the limit lies in it; the twist by `a` multiplies it by `a(g)^{n−i} ∈ ℤ̄_ℓ`; and
`tr[P(h)g]` is a `ℤ_ℓ`-combination of the traces of the `N_x(h^kg)`, which are coefficients up to sign. For the
indicator of the systems congruent to `π`, choose for each `x′` not congruent to `π` a coefficient function `C_{x′}`
(of some `det(X − N_x(g))`) with `C_{x′}(x′) − C_{x′}(π)` a unit, and let `𝔡_π = ∏_{x′}(C_{x′}(x′) − C_{x′})`: it
vanishes at each such `x′` and takes unit values at the systems congruent to `π`, and
`1 − ∏_{x″}(1 − 𝔡_π(x″)^{−1}𝔡_π)`, over the systems `x″` congruent to `π`, is the indicator; it is built from
coefficient functions by sums, products and multiplication by elements of `ℤ̄_ℓ`.

Let `B` be base data on the definite space of rank `n`, `u` a finite family of finite places, `F_{B,u}` the forms of
`B` of level `u`, `F_{B,u}^int` those integral above `ℓ`, `Y_u` the set of the systems of `B` at level `u`, and `𝕋_u`
the algebra of the functions `t : Y_u → ℚ̄_ℓ` such that scaling the forms of level `u` of each system `x` by
`ι⁻¹(t(x))` preserves `F_{B,u}^int` (for `u = Q` this is the `𝕋` of 5.3; GaloisRepresentationsOfUnitaryEigenforms §9.1
(a)). A split place `w` is *off the level `u`* if `w, w̄ ∉ S_B`, `w` is not above `ℓ`, and for every `x ∈ Y_u` the
forms of `x` of level `u` are spherical at `w` with the eigenvalues `t_{x,w,i}` of `x` under the `T_{w,i}`. For a
coefficient ring `O`, and for the integers `ℤ̄_ℓ` of `ℚ̄_ℓ`, both acting on forms through `ι⁻¹`, let `𝕋^{std}_u(O)`
and `𝕋^{std}_u(ℤ̄_ℓ)` be the `O`-subalgebra and the `ℤ̄_ℓ`-subalgebra of the endomorphisms of `F_{B,u}` generated by
the `T_{w,i}` (`0 ≤ i ≤ n`) and `T_{w,n}^{−1}` at the split places `w` off the level `u`: the Hecke algebras of the
literature for these forms. Statements (a) and (b) hold for both, written `𝕋^{std}_u`.
(a) Each element of `𝕋^{std}_u` preserves `F_{B,u}^int` and acts on the forms of level `u` of each `x ∈ Y_u` by a
scalar `ev_T(x)`; `T ↦ (x ↦ ι(ev_T(x)))` is an injective algebra homomorphism from `𝕋^{std}_u` to `𝕋_u`, whose image
is the algebra of functions generated by the `x ↦ ι(t_{x,w,i})` and `x ↦ ι(t_{x,w,n})^{−1}`, and whose inverse on the
image is the scaling of the systems of 5.3. So the standard algebra maps into `𝕋_u`: a function in its image lies in
`𝕋_u`, and no statement here says that every element of `𝕋_u` lies in the image.
(b) The functions `x ↦ ι(t_{x,w,i})`, `w` off the level, separate the points of `Y_u`. Hence the `ℚ̄_ℓ`-span of the
image of `𝕋^{std}_u` is the algebra of all functions `Y_u → ℚ̄_ℓ`, which is also the `ℚ̄_ℓ`-span of `𝕋_u`: the two
algebras have the same span over the field `ℚ̄_ℓ`. The image of `𝕋^{std}_u(ℤ̄_ℓ)` is open and closed in that algebra
of functions.
(c) In the setting of 5.3 (`u = Q`, `N_x` the twist of the representation `R_x` of `x` by `a`), the functions that 5.3
(a) and (b) place in `𝕋` lie in the image of `𝕋^{std}_Q(ℤ̄_ℓ)`: the coefficients `x ↦ [X^i]det(X − N_x(g))`, the
traces `tr[P(h)g]`, and, when those coefficients are integral, the indicator function of the systems congruent to a
system `π`.

`𝕋_u` is defined by integrality alone: it consists of all the functions whose scaling preserves the integral forms,
and its definition does not refer to Hecke operators.

*Needs:* 5.3; GaloisRepresentationsOfUnitaryEigenforms §1.2 (The filter of most Frobenii), (b), (d), §1.6
(Characteristic polynomials of attached representations, and rank one), (a), §7.4 (Isotypic spaces and their Galois
representations), (a), (b), §9.1 (Taylor–Wiles places, the integral Hecke algebra and Higman operators), (a);
AdelicUnitaryGroupsAndAlgebraicModularForms §3.1 (Hermitian spaces with an adelic frame and their unitary groups: the
Hecke operators `T_{w,j}` at a split place, acting through `ι_w`), §6.3 (Finiteness and Hecke eigenforms), (b), (d).

## Downstream consumers

- DeterminantsOfThetaLiftChains §6.2 uses the regular families of `m`-fold twists (7.3) in the proof of Theorem C.
- SelmerBoundsForAnticyclotomicTwists §4.8 uses the local conditions of 1.1; its §§5.1 and 5.4 use main summands
  (1.3) and Selmer lengths with divisible coefficients, twisted lattices and the twist allowance (1.5).
- NormsOfThetaLiftsAndExchangeIdentities cites the lift settings of the main pairs (2.2) and the use of its §6.3 (b)
  in 7.2 (e).

## Scope and ownership

### Owned here

- Conjugate self-dual representations of a level and of a type, main summands, lift settings and type projections,
  twisted lattices and Selmer lengths with divisible coefficients (Layer 1).
- The representations of the forms of the descent pairs: self-duality, twisting, inertia at the places above `M` and
  at the twist places, base data of a type, and main summands of the good eigensystems (Layer 2).
- Ribet's method to first order in tie variables, as algebra over a discrete valuation ring (Layer 3).
- Even classes, Kummer maps and their reciprocity law, and Taylor–Wiles places in a triangle (Layer 4).
- The operators at the auxiliary places and the clearing of denominators by a top coefficient (Layer 5).
- Ribet's element, the constants of the denominator bound and the bound for denominators (Layer 6).
- The existence of regular families of `m`-fold twists (Layer 7).
- The comparison of the notions of the route with the standard ones: conjugate self-duality, tame exponents, main
  summands, Selmer lengths with divisible coefficients, Ribet cocycles, even classes, Kummer maps, Taylor–Wiles places
  and the Hecke algebra of base data (Layer 8).

### Not owned here

- The data, their sizes, twists and heights: OneSidedPrimeSumBoundsAndAdmissibleData.
- Descent pairs, labels, good forms, lifted Hecke polynomials: ThetaLiftChainsAndTheSeesawIdentity.
- Main pairs, ratios, the definition of regular families and of negligible numbers, the spanning of the lifts by
  lifts of eigenforms: DeterminantsOfThetaLiftChains §§1.1, 1.3, 4.4.
- False lifts, test forms, the denominator of a projection, the lift of a character of `U(1)` and the central action:
  NormsOfThetaLiftsAndExchangeIdentities §§1.3, 1.4, 2.1, 2.2, 6.3.
- Main summand weights, the local loss above `ℓ`, classes of local lattices and dual defects, and the twisting
  theorem: SelmerBoundsForAnticyclotomicTwists.
- The determinant lemma for one block: LengthBoundsInPadicFamilies §1.8b. Amitsur's formula:
  IntegralHeckeAndGaloisDeterminants §0.5. The characters and idempotents of labels: FiniteReductiveGroups §5.7.
- The results named `ShortGRH background` on the *Needs:* lines: Galois representations of eigensystems in the weak
  sense and their local behaviour, avatars, Selmer modules, base data and places of the Taylor–Wiles method, odd
  classes over cyclotomic fields, global duality with relations, and the spherical chain lemma. Each entry names the
  form used and where `[ShortProof]` proves it.
- The comparisons with the standard theory of attached representations, of the local conditions and of Selmer modules
  of cocycles (GaloisRepresentationsOfUnitaryEigenforms Layer 10), of crystalline relations with the Bloch–Kato
  conditions (SelmerBoundsForAnticyclotomicTwists Layer 6), of crystalline lattices with Fontaine's notions
  (CrystallineRepresentationsAndKisinModules Layer 7), and of odd classes and relations with class groups, Selmer
  groups of classes and dual Selmer groups (IdelicReciprocityCountsAndCyclotomicClassGroups Layer 11).

## Exact supplier contracts

### From SelmerBoundsForAnticyclotomicTwists

§3.1 (lattices over a local Galois group, Hodge–Tate jumps, crystalline cocycles, classes of local lattices and dual
defects); §4.1 (main
summand weights, the crystalline relations, the defect bound `B_ℓ`); §4.6 (the bound for the dual defect of each
summand at a place above `ℓ`); §4.7 (the colength of the crystalline relations); §4.8 (the class of a lattice read
at a place above `ℓ`); §5.4 (the twisting theorem for finitely many main summands). For Layer 8 and the paragraphs
that cite it: §1.1 (the modules `Sel(ρ, S, L; B)`); §6.1 (Selmer groups of cocycles and Bloch–Kato Selmer groups), (a)
and (b); the Conventions (characters for a modulus).

### From DeterminantsOfThetaLiftChains

§1.1 (main pairs, ramified pairs, ratios); §1.3 (regular families of twists, negligible numbers); §2.1 (the lift of a
descent pair); §4.4 (d) (the lifts are spanned by lifts of good eigenforms).

### From NormsOfThetaLiftsAndExchangeIdentities

§1.3 (false lifts and test forms); §1.4 (the denominator of a projection); §§2.1, 2.2, 2.5 (the lift of a character of
`U(1)`); §6.3 (b) (from the denominator of a line to the pairing of test forms).

### From other roadmaps

ThetaLiftChainsAndTheSeesawIdentity §§2.4, 2.5, 2.6, 2.7, 2.10, 2.16, 2.18 (from §2.4 the target parameter of the
table of symbols); OneSidedPrimeSumBoundsAndAdmissibleData §§1.2, 2.1, 2.2, 2.3, 3.2, 3.3, 3.4, 4.1 (from §§2.1, 2.2
and 4.1 the parameters, the field with its infinite places and the unit of the errors, as notation);
DivisibilityOfThetaDerivatives §1.4 (c) (the splitting character `υ`), §1.5 (the chosen places and the residue
characters `ω`); SecondMomentsOfPoincareSeries §2.3; CompositeThetaLiftsAndShortForms §5.2 (a);
LengthBoundsInPadicFamilies §1.8b; IntegralHeckeAndGaloisDeterminants §0.5; FiniteReductiveGroups §5.7.

For Layer 8 and the paragraphs that cite it: GaloisRepresentationsOfUnitaryEigenforms §§1.2, 1.3, 1.6, 2.1, 7.4, 9.1,
10.1, 10.2, 10.3, 10.4, 10.7; IdelicReciprocityCountsAndCyclotomicClassGroups §§1.3, 1.4, 4.5, 11.1, 11.3;
CrystallineRepresentationsAndKisinModules §7.2; AdelicUnitaryGroupsAndAlgebraicModularForms §§3.1, 6.3;
ArithmeticGaloisRepresentations §7.4 (Polarised representations, `𝒢_n` and oddness);
FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.1.26 (Tame inertia and its fundamental characters);
PotentialAutomorphyInfrastructurePartII §3.3 (Hecke algebras of definite unitary groups), §4.1 (Taylor–Wiles data with
a residual eigenspace); GlobalGaloisDeformations §8.6 (Taylor–Wiles primes for enormous image); ProfiniteCohomology
§9.6 (The Kummer sequence and isomorphism).

### From Tau Ceti

`Submodule.minorsIdeal` (`TauCeti/RingTheory/FittingIdeal/Basic.lean`), the ideal generated by the `p × p` minors of a
submodule of a module, and `TauCeti.fittingIdeal_eq_minorsIdeal_ker` (same file), which computes the Fitting ideals
of a module from the kernel of a surjection from a free module of finite rank; both are used in 3.1 (1) only, to
identify `Fitt(N)`.

## References

- `[ShortProof]`: the folder `grh` of <https://github.com/lsernau/grh-lean> at commit
  `72fead102f663d5c7a407964a13dc0cf9d977207`; this roadmap covers `src/New/Congruences/GaloisRepresentations`,
  `src/New/Congruences/FirstOrder` and `src/New/Congruences/FitTwistsExist.lean`.
- J. Bellaïche, G. Chenevier, *Families of Galois representations and Selmer groups*, Astérisque 324 (2009).
- G. Chenevier, M. Harris, *Construction of automorphic Galois representations, II*, Camb. J. Math. 1 (2013).
- H. Darmon, F. Diamond, R. Taylor, *Fermat's Last Theorem*, in Current Developments in Mathematics 1995.
- S. Dasgupta, M. Kakde, J. Silliman, J. Wang, *The residually indistinguishable case of Ribet's method for `GL₂`*
  (2023).
- G. Gras, A. Munnier, *Extensions cycliques `T`-totalement ramifiées*, Publ. Math. Besançon (1998).
- C. Greither, *Class groups of abelian fields, and the main conjecture*, Ann. Inst. Fourier 42 (1992); Theorem 3.2 is cited in 6.1.
- B. Mazur, A. Wiles, *Class fields of abelian extensions of `ℚ`*, Invent. Math. 76 (1984).
- A. Mínguez, *Correspondance de Howe explicite: paires duales de type II*, Ann. Sci. Éc. Norm. Supér. 41 (2008).
- S. W. Shin, *Galois representations arising from some compact Shimura varieties*, Ann. of Math. 173 (2011).
- R. Taylor, A. Wiles, *Ring-theoretic properties of certain Hecke algebras*, Ann. of Math. 141 (1995).
- E. Urban, *Selmer groups and the Eisenstein–Klingen ideal*, Duke Math. J. 106 (2001).
