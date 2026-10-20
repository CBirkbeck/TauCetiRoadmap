# Roadmap: perfect powers in primitive arithmetic progressions

**Summary.** Build a general library of signed progression factorizations, Frey specializations, quadratic characters and effective analytic estimates on Mathlib’s arithmetic and elliptic carriers. Use a common modular spine and two analytic endgames to bound prime exponents by exp(10^k) above an effective absolute length threshold, then prove fixed-length finiteness for all exponents by the signed diagonal-curve adapter. The central equation is

`prod_{0 <= i < k} (n + i*d) = y^ell`, with `gcd(n,d) = 1`.

The main theorem supplies an effectively computable absolute integer `k_0 >= 5`
such that a solution with positive length `k >= k_0` and prime exponent `ell`
has `yd=0` or `ell <= exp(10^k)`. The integers `n,d,y` may have either
sign. For each fixed sufficiently large `k`, this bound combines with
fixed-exponent rational-point finiteness to give finitely many nontrivial solutions
with arbitrary exponent at least two. In particular it gives finiteness in the
positive domain of the classical progression problem.

The development follows Bennett–Siksek [BS20], Theorem 2, printed p. 357. It
retains two proofs after a common modular spine. The original proof combines
smooth-conductor character estimates, a thin-prime sieve and quantitative Roth.
Granville's addendum constructs a single small conductor outside an exceptional
set and uses an explicit formula. Having both routes makes their different
analytic requirements visible. The finiteness application uses Darmon–Granville
[DG95], Corollary 2.1 and its proof, printed pp. 520–521.

The exponent in the bound is `10^k`. The assertion concerns each fixed large
length. An effective threshold for the prime-exponent theorem does not give an
effective enumeration of Faltings points. The stronger Erdős assertion of
nonexistence for all sufficiently large lengths belongs to the statement Layer 7; it supplies no premise to the proofs in Layers 0–6.

Suggested home: `TauCeti/NumberTheory/ProgressionPowers/`. Use individual files
for the arithmetic, the two Frey specializations, the character family and the two
analytic endgames. The README specifies the mathematics. `Suggested.lean`
suggests names and signatures and is not an exhaustive replacement for it.

## Scope and ownership

This roadmap owns the progression arithmetic, the two Frey specializations, their
local and modular adapters, the Legendre case analysis, simultaneous character
selection, both analytic endgames and the signed diagonal-curve finiteness application.
It also owns the general quantitative and modular interfaces stated in Layers 1–6;
these are proved for the full classes of curves, characters and finite subsets
specified there, independently of the progression application.

EllipticCurves Layers 2–4 and its worked Frey–Hellegouarch example own torsion,
descent, finite-field Hasse theory, local minimality and reduction, and the generic
Frey equation. The first family here differs by its progression normalization;
the second differs by its equal-sum quadratic identity. ModularForms Layers 2–4, 8
and 10 own Hecke operators, newforms, coefficient fields and dimension formulas.
ClassicalArithmeticCompletion §§1.51 and 4.41 own squareclass characters and the
quartic descent. ImaginaryQuadraticClassNumber H3.1 owns CM integrality and the
complex uniformization comparison. AlgebraicCurves Layers 7 and 12E own Hurwitz and the function-field/scheme genus
comparison. Those general constructions are supplied by name, not specified again.
LocalFieldsRamification Layers 3–4 own the lower and upper ramification
filtrations, inertia, wild inertia and their finite-quotient comparisons.

Mathlib owns integer gcd, factorization, valuations, finite products, the native
Weierstrass invariants, Dirichlet characters and continued L-functions, qualitative
Roth, and the Stirling sequence. Tau Ceti owns the projective point-count trace.
The specialized invariant identities here retain the progression hypotheses; there
is no second generic invariant or point-count API. Layer 0 proves the effective divisor-subpower bound on Mathlib's divisor carrier.

## Conventions

Write `t_i=n+id`, with `0 <= i<k`. Integer gcd is nonnegative:
`Int.gcd n d = Nat.gcd n.natAbs d.natAbs`. The primitive nontrivial solution
predicate `S(n,d,k,y,ell)` includes positive length, a prime exponent,
coprimality, the product equation and `yd != 0`. Write `H` for `S`
together with `k >= 10^8` and `ell>exp(10^k)`, and `H^+` for `H`
together with `k >= 2 * 10^{10}`. These are explicit conjunctions, not
opaque hypotheses containing a desired conclusion.

For positive odd `ell`, the signed factorization is
`t_i=A_i z_i^ell`, where `A_i>0` retains **all** powers of primes below
`k`, and every prime of `|z_i|` is at least `k`. Thus the prime equal to
`k`, when it is prime, belongs to the large side. These `A_i` are distinct
from the finite signed, powerfree coefficient classes used in Layer 6.

An elliptic curve is Mathlib's [`WeierstrassCurve`](https://leanprover-community.github.io/mathlib4_docs/Mathlib/AlgebraicGeometry/EllipticCurve/Weierstrass.html#WeierstrassCurve) with its `IsElliptic`
condition; points and variable changes use its existing types. For
`Y^2=X(X-a)(X+c)`, `a+b+c=0`, the native discriminant and invariant are
`16(abc)^2` and `16(a^2-bc)`. After progression normalization the first
quantity is `64t_i^2t_j^2t_h^2/g^6`. A minimal discriminant at 2 requires a
separate local calculation. The second family has equation
`Y^2=X(X^2+2kappa dX+kappa A)` and discriminant
`-64kappa^3 A^2B`.

Keep three invariants distinct: the original elliptic conductor `M`, the
deletion level `M_0`, and the prime-to-`ell` residual Artin conductor
`N(rho_bar)`. Their comparison is a theorem in Layer 1. The symbol `M_a`
means the first-family deletion level. By contrast `N_a` is the actual
conductor of the chosen primitive quadratic character. Its odd part means
`N_a/2^{v_2(N_a)}`, not a largest squarefree divisor. The selected family
satisfies `N_a>1`, its odd part is nontrivial and squarefree, and
`N_a <= 8N_a^{odd}`. `Nat.maxPrimeFac` has its library values at 0 and
1; all prime-factor inequalities here apply to conductors greater than 1.

Character sums include the integer interval `k/2<m <= k`, represented by
`floor(k/2)<m <= k`. The von Mangoldt weight includes prime
powers. A prime-only sum is identified separately before estimating the
prime-power tail. Lower bounds use absolute values. Negating a character's
values does not generally produce a multiplicative character. Logarithms,
square roots and fractional powers are real; their domain and positive
threshold hypotheses are retained in every analytic application.

Use the native meromorphic `DirichletCharacter.LFunction` for complex zeros.
The principal pole at 1 is excluded from zero witnesses. The naive
`LSeries` is totalized outside convergence and cannot define an exceptional
zero set. The bounded-height strip in Layer 5 carries its height `T` explicitly.

Mathlib supplies integer gcd, natural factorization, integer prime valuations,
finite products, Weierstrass coefficients and invariants, Dirichlet characters
and their conductors, von Mangoldt, largest prime factors, and the Stirling
sequence. Tau Ceti supplies `WeierstrassCurve.frobeniusTrace`; it is the full
projective point-count defect, and its elliptic specialization is used for good
reductions. The declaration references at each target below identify the
existing inputs; none of these carriers is reconstructed.

## Exact supplier contracts

### From Mathlib

Use `Int.gcd_def`, `Int.gcd_greatest` and
`Int.dvd_of_dvd_mul_left_of_gcd_one` in `Mathlib/Data/Int/GCD.lean` for
nonnegative gcds and cancellation. Use `Nat.factorization` in
`Mathlib/Data/Nat/Factorization/Defs.lean` and `padicValInt`, `padicValInt.mul`
in `Mathlib/NumberTheory/Padics/PadicVal/Basic.lean` for nonzero term valuations.
The valuation at a zero argument is never used to deduce exponent divisibility.

Use `WeierstrassCurve`, `WeierstrassCurve.Δ`, `WeierstrassCurve.c₄` and
`WeierstrassCurve.j` in `Mathlib/AlgebraicGeometry/EllipticCurve/Weierstrass.lean`,
and `WeierstrassCurve.Affine.Equation` in
`Mathlib/AlgebraicGeometry/EllipticCurve/Affine/Basic.lean`. Ellipticity is
`IsElliptic`, with nonzero discriminant, rather than a separate curve carrier.

Use `DirichletCharacter.conductor`, `DirichletCharacter.IsPrimitive` and
`MulChar.IsQuadratic` from
`Mathlib/NumberTheory/MulChar/Basic.lean`; the first two are in
`Mathlib/NumberTheory/DirichletCharacter/Basic.lean`; use
`DirichletCharacter.LFunction` from
`Mathlib/NumberTheory/LSeries/DirichletContinuation.lean` with positive modulus.
Use `ArithmeticFunction.vonMangoldt` from
`Mathlib/NumberTheory/ArithmeticFunction/VonMangoldt.lean` and
`Nat.maxPrimeFac` from `Mathlib/Data/Nat/MaxPrimeFac.lean`.

Use `roth_3ap_theorem_nat` from
`Mathlib/Combinatorics/Additive/Corner/Roth.lean` for the qualitative finite-set
conclusion. Layer 4 proves the stronger numerical cutoff. Use
`Stirling.stirlingSeq`, `Stirling.log_stirlingSeq_sdiff_le` and
`Stirling.tendsto_stirlingSeq_sqrt_pi` from
`Mathlib/Analysis/SpecialFunctions/Stirling.lean` for the factorial adapter.

### From Tau Ceti

Use `WeierstrassCurve.frobeniusTrace` and
`WeierstrassCurve.frobeniusTrace_eq_card_point` in
`TauCeti/AlgebraicGeometry/EllipticCurve/PointCount.lean`: on an elliptic model
over a finite field of size q, the trace is q+1 minus the number of all projective
points. The identity point is included.

Use `TauCeti.Multiquadratic.fundamentalDiscriminantChar`,
`TauCeti.Multiquadratic.fundamentalDiscriminantChar_isQuadratic`,
`TauCeti.Multiquadratic.isPrimitive_fundamentalDiscriminantChar` and
`TauCeti.Multiquadratic.fundamentalDiscriminantChar_natCast_eq_legendreSym` in
`TauCeti/NumberTheory/Multiquadratic/FundamentalDiscriminant/Character.lean`.
For a fundamental discriminant D the carrier has level |D| and integer values;
ClassicalArithmeticCompletion §1.51 supplies the rational-squareclass and
real/complex scalar comparisons used here.

### From TauCetiRoadmap.EllipticCurves

Consume Layer 2's actual torsion Galois action and its functoriality, Layer 3's
Hasse bound and supersingular criteria (with p≥5 for the trace-zero criterion),
and Layer 4's integral-model minimality and good/multiplicative reduction.
The Artin-conductor identification is a Layer 1 theorem here. At an odd prime,
a unit discriminant gives good reduction; a unit c₄ and positive discriminant
valuation give minimal multiplicative reduction. Consume the worked
Frey–Hellegouarch example's `freyCurve A B` over any commutative ring, with
coefficients (0,B−A,0,−AB,0). Layer 1 specializes this curve at (a,c).

### From TauCetiRoadmap.ModularForms

Consume Layers 2–4's Hecke operators and normalized weight-two newforms,
and Layer 8's coefficient number field, Hecke eigenvalues and coefficient-field embeddings. Consume Layer 10's
trivial-nebentypus dimension formulas. The newspace dimension used in the Kraus
threshold is not the full Γ₁ dimension.

### From TauCetiRoadmap.LocalFieldsRamification

Consume Layer 3's lower and upper ramification filtrations and the Herbrand
quotient theorem, and Layer 4's inertia, wild inertia and finite-level
restriction comparisons. The pinned lower filtration is
`TauCeti.LocalFieldsRamification.lowerRamificationGroup` in
`TauCeti/NumberTheory/LocalField/RamificationGroup.lean`, with
`lowerRamificationGroup_zero`, `lowerRamificationGroup_antitone` and
`lowerRamificationGroup_eq_bot_of_largestLowerJump_lt`. Its finite Galois
local-field hypotheses and normalized integer valuation are retained in
the Swan-conductor construction of Layer 1.

### From TauCetiRoadmap.ClassicalArithmeticCompletion

Consume §1.51 `squareclassCharacter` of a nonzero rational number: its primitive
conductor, squarefree odd support, 2-part in {1,4,8}, support at odd valuations,
and characterization of odd part 1 by the four classes ±1, ±2. Consume §4.41's
quartic descent: positive primitive T,V,U satisfying T⁴+V⁴=2U² have T=V=U=1.
The primitive, positive and nonzero hypotheses are kept in the Case-II application.

### From TauCetiRoadmap.ImaginaryQuadraticClassNumber

Consume H3.1's complex elliptic uniformization/endomorphism comparison and
algebraic integrality of CM j-values. For a rational j-value, algebraic
integrality implies j∈ℤ. This is used only after proving CM of that same curve.

### From TauCetiRoadmap.AlgebraicCurves

Consume AlgebraicCurves Layer 7's Riemann–Hurwitz formula with the degree,
separability, tame different and constant-field hypotheses, and
AlgebraicCurves Layer 12E's comparison of the smooth projective curve,
its function field, H¹ and genus. The diagonal cover, its smoothness,
geometric connectedness, branch data and rational-point lifting are Layer 6
constructions here.

## How to read the build

Layer 0 constructs signed factors, finite index sets and explicit prime estimates. Layer 1 establishes the
general modular comparison contracts before specializing both Frey families.
Layer 2 builds the Legendre interfaces and the simultaneous character family.
Layer 3 supplies effective analytic inputs and the two original-route criteria;
Layer 4 supplies quantitative Roth, sieve densities and that route's assembly.
Layer 5 builds the bounded-height zero estimates and a single Granville witness.
Layer 6 combines either route with the signed geometric adapter for fixed-length
finiteness. Layer 7 records explicit conjectural predicates; it supplies no
premise to Layers 0–6. Each simultaneous choice satisfies all its properties
at once. Local declaration names below belong to
`TauCetiRoadmap.ErdosProgressionPowers`; README targets include constructions
whose carriers are not represented in `Suggested.lean`.

## Layer 0: Primitive solutions and signed factors

Define primitive nontrivial solutions with n,d,y in ℤ, positive length k and prime exponent ell, using the exact product over 0≤i<k and positive integer gcd. Prove the gcd-of-two-terms and large-prime valuation contracts. Construct the unique positive small-prime factors A_i with signed large-prime factors y_i for odd ell. Define strict arithmetic-progression triples and equal-sum quadruples. Define divisibility index sets and their one-residue-class cardinal bounds, including the +1 boundary.

### 0.1 Primitive progression solutions

Define `term n d i` as n+i*d and `primitive_solution` as the predicate S below; `H` and `Hplus` are its two explicit large-exponent specializations. The notation `Triple` means ℕ×ℕ×ℕ and `Quadruple` means ℕ×ℕ×ℕ×ℕ, without implicit order constraints. Prove `term_gcd`, `large_prime_valuations` and `residue_class_count` in the respective subsections below.

For n,d,y in ℤ and k,ell in ℕ, S(n,d,k,y,ell) means k>0, ell prime, gcd(n,d)=1, product over i in range(k) of n+i*d equals y^ell, and y*d is nonzero. H adds k≥10^8 and ell>exp(10^k); Hplus adds k≥2*10^10. All real casts and exponentials are explicit.

Prove `primitive_solution_iff` (characterisation): S is equivalent to precisely the five conjuncts in its definition. `primitive_solution_term_ne_zero` (relation): S and i<k imply n+i*d is nonzero. `primitive_solution_prime` (projection): S implies ell is prime and ell≥2.

**Checks.**

- `primitive_solution_square` (computation): S(1,24,3,35,2) holds: 1*25*49=35^2.
- `primitive_solution_signed` (computation): S(-3,2,4,3,2) holds; its four factors are -3,-1,1,3.
- `primitive_solution_zero_length` (degenerate): S(n,d,0,y,ell) never holds.
- `primitive_solution_nonprimitive` (non-example): S(4,2,1,2,2) does not hold despite its product equation.

Use the native positive integer gcd and finite product. Nonzero product implies every indexed term is nonzero. H and Hplus are explicit conjunctions, not new opaque assumptions.

*Needs:* Mathlib `Int.gcd_def`.

([BS20], Sections 1 and 3, equation (2), pp. 356, 360.)

### 0.2 Gcd of progression terms

If gcd(n,d)=1 and 0≤i<j, then gcd(n+i*d,n+j*d) divides j-i, with gcd nonnegative and the right side a natural integer.

Subtract the two terms. Any common divisor divides (j-i)*d. The term is coprime to d by a Bezout combination with n; cancel d using the native gcd cancellation theorem.

*Needs:* Layer 0 — primitive progression solutions; Mathlib `Int.gcd_greatest`; Mathlib `Int.dvd_of_dvd_mul_left_of_gcd_one`.

([BS20], Lemma 3.1(i), p. 360.)

### 0.3 Large-prime valuation divisibility

Assume S. For prime q≥k and i<k, ell divides padicValInt(q,n+i*d). The valuation is on the absolute value of a nonzero integer.

The gcd bound prevents q dividing two distinct terms because their difference of indices is less than q. Apply valuation additivity to the nonzero product and the ell-th power. Only the chosen term contributes.

*Needs:* Layer 0 — gcd of progression terms; Mathlib `padicValInt`; Mathlib `padicValInt.mul`.

([BS20], Lemma 3.1(ii), p. 360.)

### 0.4 Signed small-prime factorization

For positive odd ell and nonzero terms n+i*d, i<k, whose valuations at every prime q≥k are divisible by ell, choose the unique family (A_i,z_i) with A_i>0, z_i a nonzero signed integer, n+i*d=A_i*z_i^ell, every prime of A_i <k and every prime of |z_i| ≥k. S with odd ell supplies these hypotheses. All powers of small primes remain in A_i; it need not be ell-powerfree.

Prove `signed_factors_eq` (projection): For i<k, n+i*d=A_i*z_i^ell. `signed_factors_support` (characterisation): A_i>0 and z_i≠0; p|A_i implies p<k, and p||z_i| implies k≤p, for every prime p. `signed_factors_unique` (extensionality): Any family with these equality, sign and support conditions agrees componentwise with the chosen family. `signed_factors_sign` (relation): The sign of z_i is the sign of n+i*d.

**Checks.**

- `signed_factors_negative` (computation): For S(-8,1,1,-2,3), the single factor is (1,-2).
- `signed_factors_boundary` (computation): For S(8,19,2,6,3), the factors are (1,2),(1,3); the prime p=k=2 belongs to the large side.
- `signed_factors_small_power` (non-example): For n=64,d=0,k=3,ell=3 the valuation construction gives (64,1) at each index; 64 retains its full small-prime exponent and is not cube-free. This tests the construction, not S, since d=0.
- `signed_factors_mixed_sign` (computation): For S(-8,7,2,2,3), the factors are (1,-2),(1,-1).

Split the factorization of |n+i*d| at the strict bound k. Divide each large-prime exponent by ell using large-prime valuation divisibility. Since ell is odd, restore the sign in z_i. Unique factorization and injectivity of odd powers give uniqueness.

*Needs:* Layer 0 — large-prime valuation divisibility; Mathlib `Nat.factorization`; Mathlib `Nat.prod_factorization_pow_eq_self`.

([BS20], Equation (6), p. 360.)

### 0.5 Three-term progression triples

Define `ap_triples k` as A(k) below.

A(k) is the finite set of natural triples (i,j,h) with i,j,h<k, i<j and i+h=2*j. Thus i<j<h and the spacing is positive; there is no truncated subtraction in its definition.

Prove `ap_triples_mem` (characterisation): Membership is equivalent to i,j,h<k, i<j and i+h=2*j. `ap_triples_spacing` (relation): A member has i<j<h and j-i=h-j>0. `ap_triples_mono` (functoriality): k≤K implies A(k) is a subset of A(K).

**Checks.**

- `ap_triples_empty` (degenerate): A(0)=A(1)=A(2)=empty.
- `ap_triples_three` (computation): A(3) consists exactly of (0,1,2).
- `ap_triples_five` (computation): A(5) has exactly four elements.
- `ap_triples_no_constant` (non-example): No triple (i,i,i) belongs to A(k).

Filter the finite product of three copies of range(k) by the two displayed conditions. Membership and strict h>j follow by natural-number arithmetic.

*Needs:* Mathlib finite-set and arithmetic operations.

([BS20], Section 3.1, equations (7)-(8), p. 361.)

### 0.6 Equal-sum progression quadruples

Define `equal_sum_quadruples k` as I(k) below and `kappa` as the signed integer j₁j₂−i₁i₂.

I(k) consists of (j1,i1,i2,j2) in range(k)^4 with j1<i1≤i2<j2 and i1+i2=j1+j2. Equality i1=i2 is permitted.

Prove `equal_sum_quadruples_mem` (characterisation): Membership is equivalent to the four bounds, ordering and equal-sum equation. `equal_sum_quadruples_kappa` (relation): For a member, the integer kappa is negative and 0<|kappa|<k^2. `equal_sum_quadruples_mono` (functoriality): The quadruple sets are monotone in k.

**Checks.**

- `equal_sum_quadruples_empty` (degenerate): I(2) is empty.
- `equal_sum_quadruples_three` (computation): I(3) consists exactly of (0,1,1,2), with kappa=-1.
- `equal_sum_quadruples_repeated` (non-example): The middle indices in (0,1,1,2) must not be required to be distinct.

Filter the fourfold finite product. The positive gap makes kappa=j1*j2-i1*i2 a negative integer, of absolute value less than k^2.

*Needs:* Mathlib finite-set and arithmetic operations.

([BS20], Section 3.2, equations (11)-(13), p. 362.)

### 0.7 Divisibility index sets

Define `divisibility_indices n d k r` as I_r below.

For n,d in ℤ and k,r in ℕ, I_r is the set of i<k such that the integer r divides n+i*d. The definition is total, including r=0; counting statements require r>0.

Prove `divisibility_indices_mem` (characterisation): i belongs to I_r iff i<k and (r:Z)|(n+i*d). `divisibility_indices_one` (simp): I_1 equals range(k). `divisibility_indices_prime_d` (relation): If gcd(n,d)=1, p is prime and p|d, then I_p is empty.

**Checks.**

- `divisibility_indices_sample` (computation): For n=1,d=2,k=6,r=3, I_r={1,4}.
- `divisibility_indices_empty` (degenerate): For k=0 the set is empty, for every r.
- `divisibility_indices_boundary` (non-example): For n=1,d=1,k=3,r=4, the set is empty; index k=3 is not included.

Filter range(k) by integer divisibility, rather than by a rational or real quotient. The range excludes k.

*Needs:* Mathlib finite-set and arithmetic operations.

([BS20], §9 before Proposition 9.1, p. 381; Proof of Proposition 12.3, pp.387–388.)

### 0.8 One-residue-class count

If gcd(n,d)=1 and r>0, then I_r is empty when gcd(r,d)>1. Otherwise I_r is a single residue class modulo r and |I_r|≤k/r+1 as a real inequality; for prime p with p not dividing d, ||I_p|-k/p|<1.

A common prime of r,d cannot divide n. In the coprime case invert d modulo r and count one class in range(k); keep the rounding error even for r>k.

*Needs:* Layer 0 — divisibility index sets; Layer 0 — gcd of progression terms.

([BS20], §9 before Proposition 9.1, p. 381; Proof of Proposition 12.3, pp.387–388.)

### 0.9 Explicit prime arithmetic

Prove `explicitPrimeEstimates` with the numerical domains used below:
θ(x)<1.000081x for every real x>0, the errors
|θ(x;8,a)−x/4|≤0.002811x/4 for a=3,5 and x≥10¹⁰, and effective
π(x), reciprocal-prime and ∑(log p)/p bounds with explicit endpoints. In particular, for x≥59 use x/log x·(1+1/(2 log x))<π(x)<x/log x·(1+3/(2 log x)); for x≥286 use |∑_(p≤x)1/p−log log x−B₁|<1/(2(log x)²), with B₁ the prime reciprocal constant.
Prove `primePowerTail` strong enough to preserve the strict margin
0.000045875k between the four-character projection and 0.1239k.
Prove `explicitTotientRatio` in the range used for the progression Kraus
index bound. Include an effective π(k)=o(k) cutoff. The definitions of θ
and ψ use primes and prime powers respectively. (BS20, equation (10),
p. 362; §6, equations (19)–(21), pp. 369–370; §9, pp. 382–384;
§5, proof of Lemma 5.1, p. 365.)

Prove `eventualDivisorSubpower`: for every real ε>0 there is an effective
N such that every integer n≥N has at most n^ε positive divisors. The bound is
for all sufficiently large n after ε is fixed, including nonsquarefree n.
(BS20, §8, proof of Proposition 8.2, p. 378; §12, Proposition 12.3,
pp. 387–388.)

**Checks.**

- θ(2)=log 2 whereas ψ(4)=log 2+log 3+log 2; prime powers occur only in the second function.
- At x=1 the prime sums vanish, so the large-range real logarithmic estimates are not applied there.
- For n=p^a the divisor count is a+1, not 2; squarefree-only divisor formulas do not supply the subpower bound.

*Needs:* Mathlib finite prime sums, continued L-functions for the prime estimates in residue classes, and natural factorization for the divisor bound.

### Examples

The primitive square product is 1·25·49=35². The signed product (−3)(−1)(1)(3)=9 tests integer signs. At k=2 the prime 2 belongs to the large-prime side of the signed factorization.

### Dependencies

Mathlib integer gcd, factorization, prime valuations and finite sets.

## Layer 1: Frey families and residual comparisons

Normalize the three progression terms to coprime a+b+c=0 and specialize the supplier Frey-Hellegouarch model, without constructing a second generic curve. Build the application-specific equal-sum second model, its discriminant and odd-prime local tests. Prove the reduced-level divisibility, odd squarefreeness and exponential bounds for both families. Prove that primes k/2<p≤k divide d under k≥10^8 and ell>exp(10^k); the two-term case needs its own c4-unit test. Establish the coefficient-prime Serre-weight/conductor bridge, compare to an actual full-two-torsion curve at the reduced level using Kraus, and prove good reduction and equality of integer traces throughout the half interval, including forced trace zero at primes 3 modulo4.

### 1.1 General modular comparison interfaces

Construct `weightTwoNewformGaloisRepresentation` for every normalized cuspidal
weight-two newform f of positive level N and trivial nebentypus, every rational
prime ell and every prime λ above ell in its coefficient number field K.
It is a continuous two-dimensional K_λ-representation of the absolute Galois
group of ℚ, unramified outside N*ell, with arithmetic-Frobenius polynomial
`T^2 - c_p*T + p` at every prime p not dividing N*ell. Prove
`newformGalois_frobenius`, `newformGalois_determinant` (the ell-adic cyclotomic
character) and `newformGalois_residual_latticeIndependent`: invariant integral
lattices exist, and their semisimplified residual representations are
isomorphic. Prove `weightTwoCoefficientBound`: at every embedding K→ℂ and
prime p not dividing N, |c_p|≤2√p. Prove `ellipticCurveModularity` for every
elliptic curve E/ℚ: a normalized weight-two newform of level its arithmetic
conductor and trivial nebentypus has c_p equal to the integer trace of E at
every good prime p. These general representation and modularity interfaces
precede the residual level-lowering statement. (BS20, §2, Theorem 3 and its
modularity discussion, pp. 358–359; Lemma 2.2, p. 359.)

**Checks.**

- For an elliptic eigenform with c_p=0, the Frobenius polynomial is `T^2 + p`; a negative constant term would contradict the cyclotomic determinant.
- At coefficient prime ell the unramified Frobenius clause is not asserted, even when ell does not divide N.
- Changing an invariant lattice preserves the semisimplified residual representation; equality of chosen matrices is not required.

Construct `artinConductor` for the torsion and Tate-module representations of
elliptic curves over number fields, using inertia invariants and the Swan
ramification filtration at primes of residue characteristic different from the
coefficient prime. Construct the prime-to-coefficient residual conductor by the
same invariant, not by deleting an arbitrary list of primes. Prove
`artinConductor_isomorphic`, `artinConductor_good` and
`artinConductor_multiplicative`. For the rational Tate module, identify the
good and multiplicative exponents, respectively 0 and 1, with the algorithmic
exponents from EllipticCurves Layer 4. For E[ell] at a multiplicative prime
of residue characteristic different from ell, prove
`residualConductor_multiplicative`: the exponent is 0 if ell divides the
minimal discriminant valuation, and 1 otherwise. Over ℚ prove the elliptic
wild bounds f₂≤8 and f₃≤5; odd semistable exponents are 0 or 1.
(BS20, §2, equation (3), pp. 358–359;
§3.2, Lemmas 3.4–3.5, pp. 362–363.)

**Checks.**

- An unramified representation has exponent 0; a nonzero freely assigned conductor would fail isomorphism invariance.
- Split and nonsplit multiplicative reduction both give rational-Tate-module conductor exponent 1; the sign of the local trace does not change it.
- A split Tate curve at a residue prime different from ell with parameter valuation ell has elliptic conductor exponent 1 and residual exponent 0; identifying these conductors would delete no primes.
- The prime-to-ell residual conductor has no ell factor; it need not equal the original elliptic conductor.

Prove `weightTwoLevelLowering` for every elliptic curve E/ℚ and odd prime ell
with E[ell] irreducible: define the deletion level M₀ as M divided by the
product of primes q exactly dividing M for which ell divides the minimal
 discriminant valuation. Produce a normalized weight-two cuspidal newform f
at level M₀, a prime λ above ell in its coefficient field, and an isomorphism
of residual representations. Prove `levelLowering_goodTrace` at p∤ell M M₀
and `levelLowering_removedTrace` at p∤ell M₀ with p exactly dividing M:
the latter congruence is p+1≡±cₚ modulo λ. Prove the coefficient-prime
weight-two bridge for ell≥5 in the good and finite-flat multiplicative cases;
it identifies the deletion level with the prime-to-ell residual Artin conductor
only under these local hypotheses. (BS20, §2, Theorem 3 and Lemma 2.1,
p. 359; Theorem 4, p. 360, with the progression adapter in §5, Lemma 5.1,
p. 365.)

Prove `removedPrimeBound`: if p≠ell is deleted from a multiplicative curve's
level as above, then ell≤(sqrt(p)+1)^((M₀+1)/6). Establish the intermediate
norm divisibility ell | Norm(p+1∓cₚ), Deligne's bound at every embedding,
and Martin's trivial-character newspace inequality g₀⁺(M₀)≤(M₀+1)/12.
(BS20, Lemma 2.2 and equation (4), p. 359.)

For positive N define `gammaZeroIndex` by μ(N)=N∏_(q|N)(1+1/q),
`krausF` by (μ(N)/6+1)^(2g₀⁺(N)), `krausG` by
(μ(lcm(N,4))/6+1)² and `krausH` as their maximum. Prove
`gammaZeroIndex_prime`, `krausH_ge_f`, `krausH_ge_g` and compatibility
with ModularForms Layer 10's actual index and newspace dimension.
Prove `krausRealization`: if E/ℚ has full rational two-torsion,
irreducible E[ell], Serre weight 2, prime-to-ell residual conductor N and
ell>krausH(N), an actual elliptic curve F/ℚ has full rational two-torsion,
conductor N and the same residual representation. Also prove
`fullTwoTorsion_irreducible` at prime ell≥7 and
`rationalTwoTorsion_irreducible` at prime ell≥11 as consequences of the
rational-isogeny classification, retaining its hypotheses.
(BS20, §2, equation (5) and Theorem 4, p. 360; Lemma 3.3 proof,
p. 362; Lemma 3.5 proof, p. 363.)

**Checks.**

- μ(1)=1 and μ(4)=6; an empty prime product is 1.
- N=1 with g₀⁺(1)=0 gives krausF(1)=1, krausG(1)=4 and krausH(1)=4; replacing the maximum by the first term loses the dyadic constraint.
- N=11 with g₀⁺(11)=1 gives μ(11)=12, μ(44)=72 and krausH(11)=169; replacing the newspace by a Γ₁ space changes this value.

*Needs:* EllipticCurves Layers 2–4; ModularForms Layers 2–4, 8 and 10; LocalFieldsRamification Layers 3–4; Layer 0's explicit prime estimates only for the later progression level bounds.

### 1.2 Progression Frey specialization

Define `tripleG` as g, `normalized` as (a,b,c), and `first_curve` as E below.

For integer n,d and a triple (i,j,h), put t_r=n+r*d, g=gcd(t_i,gcd(2*t_j,t_h)), a=t_i/g, b=-2*t_j/g, c=t_h/g. The specialization E has coefficients a1=a3=a6=0, a2=c-a, a4=-a*c, equivalently Y^2=X(X-a)(X+c). Under S and membership in A(k), g>0 and a,b,c are nonzero pairwise coprime with a+b+c=0. This is an application adapter to the supplier Frey model, not a second generic Frey carrier.

Prove `first_curve_coefficients` (data): The native five coefficients are 0,c-a,0,-a*c,0, with a,c the normalized terms. `first_curve_normalization` (relation): Under S and a member of A(k), g>0; g*a=t_i, g*b=-2*t_j, g*c=t_h; a+b+c=0 and every pair is coprime. `first_curve_frey_compatibility` (compatibility): The specialization equals the supplier Frey model on the normalized coefficients, under the stated normalization hypotheses.

**Checks.**

- `first_curve_unit_gcd` (computation): n=1,d=1,(i,j,h)=(0,1,2) gives g=1, (a,b,c)=(1,-4,3), a2=2,a4=-3.
- `first_curve_even_gcd` (computation): n=2,d=1,(0,1,2) gives g=2, (a,b,c)=(1,-3,2), a2=1,a4=-2.
- `first_curve_signed` (computation): n=-3,d=2,(0,1,2) gives (a,b,c)=(-3,2,1), a2=4,a4=3.

The helpers use integer division before casting to ℚ; under S, g>0 and the exact divisibility identities justify every displayed division by g. Normalize by the positive gcd. Use i+h=2*j and the gcd-of-terms contract. Specialize the supplier model to these coefficients and compare its native Weierstrass coefficients. Compare the progression model to the EllipticCurves worked Frey–Hellegouarch example coefficient by coefficient.

*Needs:* Layer 0 — three-term progression triples; Layer 0 — gcd of progression terms; EllipticCurves, worked Frey–Hellegouarch example; Mathlib `WeierstrassCurve`; Mathlib `Int.gcd_def`.

([BS20], Section 3.1, equations (7)-(8), p. 361; Section 3.1, display before equation (7), p. 361.)

### 1.3 First-family invariants and odd local properties

Prove `first_local_invariants` for the native invariant equalities and the separate minimality and semistability targets below.

For S and a triple in A(k), the native invariant identities are Delta(E)=16(abc)^2=64*t_i^2*t_j^2*t_h^2/g^6 and c4(E)=16(a^2-b*c), without an oddness restriction on ell. If ell is odd, prove `first_oddLocalProperties`: E is minimal and semistable at each odd prime, and ell divides v_p(Delta(E)) for every prime p≥k. The displayed Delta is for this equation, not an arbitrary minimal change at 2.

Compute the native Weierstrass discriminant and c4 by polynomial algebra. Pairwise coprimality forces c4 a unit whenever an odd prime divides Delta; use the supplier minimal/multiplicative criterion. At p≥k the gcd is a unit and the large-prime valuations are multiples of ell.

*Needs:* Layer 1 — progression frey specialization; Layer 0 — large-prime valuation divisibility; EllipticCurves Layer 4; Mathlib `WeierstrassCurve.Δ`; Mathlib `WeierstrassCurve.c₄`.

([BS20], Lemma 3.2 discriminant display, p. 361; native normalization; Lemma 3.2, p. 361; Lemma 3.2 last conclusion, p.361.)

### 1.4 Progression generalized Fermat identities

Prove `linear_fermat_identities` with the hypotheses and conclusions below.

For any integers i1<i2<i3, (i3-i2)t_i1+(i1-i3)t_i2+(i2-i1)t_i3=0. Under signed factorization substitute t_i=A_i*z_i^ell. For a triple in A(k) this is A_i*z_i^ell-2*A_j*z_j^ell+A_h*z_h^ell=0.

Expand t_i=n+i*d, cancel n and d terms, then substitute the signed factor equalities. No generalized-Fermat theorem is assumed.

*Needs:* Layer 0 — signed small-prime factorization; Layer 0 — three-term progression triples.

([BS20], Section 3.1, display before equation (7), p. 361; §3.1 opening, p. 361.)

### 1.5 Equal-sum second Frey family

Define `secondA`, `secondB` and `second_curve` by A, B and the displayed native model below.

For q=(j1,i1,i2,j2) define A=t_j1*t_j2, B=t_i1*t_i2 and the integer kappa=j1*j2-i1*i2. The native Weierstrass model has coefficients 0,2*kappa*d,0,kappa*A,0. For q in I(k), A-B=kappa*d^2, kappa<0 and |kappa|<k^2. Signed factor substitution gives A_j1*A_j2*(z_j1*z_j2)^ell-A_i1*A_i2*(z_i1*z_i2)^ell=kappa*d^2.

Prove `second_curve_coefficients` (data): The coefficients are 0,2*kappa*d,0,kappa*A,0. `second_curve_difference` (relation): Membership in I(k) implies A-B=kappa*d^2 and kappa<0. `second_curve_equation` (compatibility): Its native affine equation is Y^2=X*(X^2+2*kappa*d*X+kappa*A).

**Checks.**

- `second_curve_three` (computation): n=d=1,q=(0,1,1,2) gives kappa=-1,A=3,B=4,a2=-2,a4=-3.
- `second_curve_signed` (computation): n=-3,d=2,q=(0,1,1,2) gives kappa=-1,A=-3,B=1,a2=-4,a4=3.
- `second_curve_not_first` (non-example): At n=d=1,q=(0,1,1,2) the second a2 is -2, while the first model on (0,1,2) has a2=2.

Use the equal-sum cancellation to obtain the quadratic identity. This second curve is source-specific and is not a generic replacement elliptic-curve carrier. Its invariants are obtained by the native coefficient formulas.

*Needs:* Layer 0 — equal-sum progression quadruples; Layer 0 — signed small-prime factorization; Mathlib `WeierstrassCurve`.

([BS20], Section 3.2, equations (11)-(13), p. 362; Equation (11), p. 362.)

### 1.6 Second-family invariants and local tests

Prove `second_local_invariants` for the two invariant identities below and the separate local reduction targets under their stated prime conditions.

For all integers n,d and q in I(k), the native invariant identities are Delta(E_q)=-64*kappa^3*A^2*B and c4(E_q)=16*kappa*(4*kappa*d^2-3*A). Under S with odd ell prove `second_largePrimeLocalProperties`: at prime p≥k with p not dividing kappa the model is minimal and semistable and ell divides v_p(Delta). Prove `second_halfIntervalLocalProperties` in the separate Lemma 4.1 branch q=(i,i+1,i+p-1,i+p) with k/2<p≤k, p≥5, p not dividing d and both endpoint terms divisible by p, one has p|A, p not dividing B*kappa*d, ell|v_p(A), c4 a p-unit and positive Delta valuation divisible by ell; thus reduction is minimal multiplicative there.

Compute invariants using A-B=kappa*d^2. For p≥k use gcd and large valuations. For the half-interval two-term branch use unique or paired term valuations from the product equation and p-unit d, gaps p-1,1; prove the c4 unit directly. Do not invoke the p≥k statement at p<k.

*Needs:* Layer 1 — equal-sum second frey family; Layer 0 — gcd of progression terms; Layer 0 — large-prime valuation divisibility; EllipticCurves Layer 4.

([BS20], Lemma 3.4, p. 362; Lemma 3.4 last conclusion, p.362; §4 second case, p.364.)

### 1.7 First-family reduced-level bounds

Prove `first_reduced_level` with the hypotheses and conclusions below.

For S, ell≥7 and a in A(k), the irreducible residual representation of E_a occurs in a weight-two newform at the deletion level M_a. M_a divides 2^8*A_i*A_j*A_h, its odd part is squarefree, M_a divides 2^7*product over primes q≤k of q, and M_a≤2^7*exp(1.000081*k). No identification with the prime-to-ell residual conductor is implicit.

Import the uniform full-two-torsion irreducibility cutoff and modular level lowering. Delete odd multiplicative primes whose Delta valuation is divisible by ell. Odd local exponents are zero or one; use the exact wild bound at 2. Apply the supplier explicit Chebyshev upper bound at x=k.

*Needs:* Layer 1 — first-family invariants and odd local properties; Layer 0 — signed small-prime factorization; Layer 1, rational-isogeny classification consequences; Layer 1, modular level lowering; Layer 1, Artin-conductor interface; Layer 0, explicit prime estimates.

([BS20], Lemma 3.3, equation (9), and proof, pp. 361-362; Lemma 3.3 and proof, pp. 361-362; Proof of Lemma 3.3, p.362.)

### 1.8 Second-family reduced-level bounds

Prove `second_reduced_level` with the hypotheses and conclusions below.

For S, ell≥11 and q in I(k), E_q has irreducible residual representation realized by a weight-two newform at deletion level M_q, with M_q dividing 2^7*3^5*kappa^2*product over primes r≤k of r^2 and M_q≤2^7*3^5*k^4*exp(2.000162*k).

Use the rational-two-torsion irreducibility cutoff. Apply level lowering with the second local tests. Keep wild factors at 2 and3 and the kappa^2 exceptional factor; use |kappa|<k^2 and Chebyshev bound.

*Needs:* Layer 1 — second-family invariants and local tests; Layer 1, rational-isogeny classification consequences; Layer 1, modular level lowering; Layer 1, Artin-conductor interface; Layer 0, explicit prime estimates.

([BS20], Lemma 3.5 and proof, p. 363; Proof of Lemma 3.5, p.363.)

### 1.9 Half-interval primes divide the difference

Prove `half_primes_divide_d` under the hypothesis H below.

Under H every prime p in (k/2,k] divides d.

Suppose p does not divide d. One or two terms are divisible by p. Choose a first-family triple containing the unique term, or the source equal-sum quadruple for two terms. Prove minimal multiplicative reduction and deleted p; p differs from ell. Apply the exact removed-prime norm bound to M_a or M_q. The exponential level bounds contradict ell>exp(10^k), using the numerical range k≥10^8.

*Needs:* Layer 1 — first-family reduced-level bounds; Layer 1 — second-family reduced-level bounds; Layer 1 — second-family invariants and local tests; Layer 1, removed-prime norm bound — removed prime bound.

([BS20], Lemma 4.1, p. 364.)

### 1.10 Serre-weight and residual-conductor bridge

Prove `coefficient_prime_bridge` with the hypotheses and conclusions below.

Under H and a in A(k), E_a[ell] is irreducible of Serre weight 2, its prime-to-ell Artin conductor equals the deletion level M_a, and ell does not divide M_a.

The level bound places ell above all level primes. At ell, use the good or finite-flat multiplicative case of coefficient-prime weight-two lowering, justified by the large-prime discriminant divisibility. Match every local conductor exponent with the deletion level. This is a real theorem, not an equality assigned by definition.

*Needs:* Layer 1 — first-family reduced-level bounds; Layer 0 — large-prime valuation divisibility; Layer 1, coefficient-prime bridge; Layer 1, Artin-conductor interface.

([BS20], §2, Theorem 4, p. 360; §3.1, Lemmas 3.2–3.3, pp. 361–362; §5, Lemma 5.1, p. 365. The weight and conductor comparison is the adapter between these results.)

### 1.11 Kraus threshold for progression levels

Prove `kraus_progression_threshold` with the hypotheses and conclusions below.

Under H and a in A(k), mu(M_a) and mu(lcm(M_a,4)) are at most 2^8*log(k)*exp(1.000081*k), and the exact Kraus threshold H_K(M_a) is less than exp(10^k). Here mu is the Gamma0 index and the dimension in H_K is the trivial-character newspace dimension.

Use the primorial divisibility and the explicit totient ratio bound. Combine the resulting mu bounds with the supplier Martin newspace inequality and exact Kraus F,G,H definitions; compare their logarithms to 10^k. Do not use the full Gamma1 dimension.

*Needs:* Layer 1 — first-family reduced-level bounds; Layer 1, Kraus threshold functions — kraus f; Layer 1, Kraus threshold functions — kraus g; Layer 1, Kraus threshold functions — kraus h; Layer 0, explicit totient and divisor bounds.

([BS20], Proof of Lemma 5.1, p. 365 (Tenenbaum Theorem 9 and following remark).)

### 1.12 Actual comparison elliptic curve

Prove `comparison_curve` with the hypotheses and conclusions below.

Under H, for every a in A(k) there exists an actual elliptic curve F_a/Q with full rational two-torsion, conductor exactly M_a and residual representation at the same prime ell isomorphic to that of E_a. All subsequent choices use one such F_a for each triple.

Apply the Kraus realization theorem with the coefficient-prime bridge, irreducibility and the strict threshold just proved. Fix a choice only after proving existence. A free natural-number field called conductor is not an admissible substitute for the native invariant.

*Needs:* Layer 1 — serre-weight and residual-conductor bridge; Layer 1 — kraus threshold for progression levels; Layer 1, Kraus realization.

([BS20], Lemma 5.1, p. 365.)

### 1.13 Good reduction and forced trace zero

Prove `good_trace_comparison` with the hypotheses and conclusions below.

Under H, a in A(k), and prime k/2<p≤k, both E_a and its chosen F_a have good reduction at p and their integer Frobenius traces agree. If p is 3 modulo 4, that common trace is zero and F_a has supersingular reduction. Trace zero implies the supersingular criterion here because p≥5; the geometric definition is not replaced by trace zero in all characteristics.

p|d and gcd(n,d)=1 imply every term is a p-unit, hence good reduction for the first model. The level bound gives good reduction of F_a. Residual congruence together with the Hasse bounds and ell>4*sqrt(p) makes the integer traces equal. Reducing the first model with d=0 modulo p gives a twist of Y^2=X(X-1)(X+1), whose trace vanishes for p≡3 mod 4.

*Needs:* Layer 1 — actual comparison elliptic curve; Layer 1 — half-interval primes divide the difference; Layer 1 — first-family invariants and odd local properties; EllipticCurves Layer 3; Layer 1, modular level lowering; Tau Ceti `WeierstrassCurve.frobeniusTrace`.

([BS20], Lemma 5.2, first conclusion, pp. 365-366; Lemma 5.2, second conclusion, pp. 365-366.)

### Examples

At n=d=1 the first model has coefficients (0,2,0,−3,0), while the equal-sum model has (0,−2,0,−3,0). At n=2,d=1 the positive gcd is 2, giving normalized coefficients (1,−3,2).

### Dependencies

Layer 0; EllipticCurves Layers 2–4 and its worked Frey example; ModularForms Layers 2–4, 8 and 10; LocalFieldsRamification Layers 3–4. Explicit numerical level bounds additionally use the general prime estimates of Layer 0; their proof is independent of the Frey application.

## Layer 2: Legendre cases and the simultaneous character family

Partition the six Legendre parameters by -Q^2 union2Q^2. Prove the application-specific nonsquare test at primes 3 mod 8, positive normalization lambda=2t^2 and 1-lambda=2v^2 in CaseII, and the tv square test at primes 5 mod 8 using the order-four witness from this layer. Exclude complex multiplication of the progression Frey curve. Under k≥2*10^10 construct one fixed family of primitive quadratic characters of conductors N_a with squarefree nontrivial odd part dividing M_a and absolute von-Mangoldt half-interval sum greater than 0.1239k. Both cases must give all conclusions for the same character; positivity of the signed sum is not assumed.

### 2.1 Native Legendre and residual-image interfaces

For a field K of characteristic different from 2 and λ∈K with λ≠0,1,
construct the native Legendre equation y²=x(x−1)(x−λ) and its scaled twists.
Prove `legendre_rootOrderings`, `legendre_parameter_nonzero` and
`legendre_parameter_ne_one`: every elliptic curve with full K-rational
two-torsion is a scaled Legendre model and the six labelled root orderings give
λ, 1−λ, 1/λ, 1/(1−λ), λ/(λ−1), (λ−1)/λ. Labels are retained when values
coincide. At good odd primes over ℚ prove `legendre_good_units`: both λ
and 1−λ are local units, and use ClassicalArithmeticCompletion §1.51 for the
odd support of their squareclass characters. Interpret EllipticCurves' native
descent/halving criterion in these split cubic coordinates. Prove
`legendre_square_twoPrimary`: a square parameter over a finite field of odd
characteristic gives the required subgroup of order 8. Prove
`minusOne_twoPrimary` at primes p≡5 mod 8 for y²=x(x−1)(x+1), with the
exact assertion that its point count is divisible by 8 but not by 16.
(BS20, §6, Lemmas 6.2–6.6, pp. 367–372.)

**Checks.**

- λ=2 has repeated values among its six transformations but still six labels; replacing labelled orderings by a six-element set fails.
- λ=0 and λ=1 have zero discriminant and are excluded from every elliptic and halving assertion.
- Over 𝔽₅, λ=−1 gives eight projective points, whereas over 𝔽₃ the symmetric model gives four; congruence and characteristic hypotheses matter.

For every field of characteristic different from 2, nonzero t,v with
2t²+2v²=1 and an element i with i²=−1, prove
`caseTwo_orderFourWitness`: on y²=x(x−2)(x−2λ), λ=2t², the point
(2λ+4itv,8itv(t+iv)) doubles to (2λ,0). Prove its native descent-coordinate
identities and the resulting two-primary obstruction when tv is a nonsquare
at p≡5 mod 8. Prove `symmetricCubic_traceZero` for every odd prime
p≡3 mod 4 and every nonzero quadratic twist of x(x−1)(x+1), and the
model-specific twist/trace comparisons at good primes. (BS20, Lemmas 6.4–6.6,
pp. 368–372, especially the Case-II point calculation on pp. 371–372.)

**Checks.**

- t=v=1/2 and λ=1/2 give the point (1+i,−1+i) on y²=x(x−2)(x−1); both sides equal −2i.
- Its double is (1,0), not the identity; the point has exact order four in characteristic zero.
- At p=3 the symmetric curve has trace 0; its trace and the geometric supersingular criterion are compared only within their stated characteristic ranges.

Prove `rationalIsogeny_surjective`: every non-CM elliptic curve over ℚ
admitting a nontrivial rational cyclic isogeny has surjective mod-ell image
for every prime ell>37. Prove `cm_halfParameter_image`: for the CM λ=1/2
model the same residual image lies in the normalizer of its CM Cartan and
is proper at ell>37; specify the CM field, its torsion action and the
conjugacy comparison under residual isomorphism. Integrality of CM j is
consumed from ImaginaryQuadraticClassNumber H3.1. These statements concern
actual torsion representations. (BS20, §6, final Case-II argument and
the rational-isogeny surjectivity result cited there, p. 373, and its cited Lemos theorem.)

*Needs:* EllipticCurves Layers 2–5 and its descent map; Layer 1 modular comparison; ClassicalArithmeticCompletion §1.51; ImaginaryQuadraticClassNumber H3.1.

### 2.2 Legendre case partition

Define `inCaseSquareclasses u` as (∃t∈ℚ,u=−t²) or (∃t∈ℚ,u=2t²), including zero. Define `case_partition` by the two finite sets below.

Given k and finite parameter sets L_a of rational numbers for a in A(k), form CaseI={a: some lambda in L_a is neither minus a rational square nor twice a rational square} and CaseII=A(k) minus CaseI. In the application L_a is the six-parameter set of the same chosen F_a, constructed by the native Legendre interfaces of this layer. Both cases are disjoint and exhaust A(k).

Prove `case_partition_mem` (characterisation): Membership in CaseI is equivalent to membership in A(k) and the stated existential nonsquare condition; membership in CaseII is equivalent to membership in A(k) and every parameter being in -Q^2 union2Q^2. `case_partition_union` (relation): The union of the two components is A(k) and they are disjoint. `case_partition_reindex` (functoriality): Pointwise equal finite parameter sets give equal partitions.

**Checks.**

- `case_partition_three` (computation): k=3 and L_a={3} put the unique triple in CaseI, not CaseII.
- `case_partition_minus_one` (computation): k=3 and L_a={-1} put the unique triple in CaseII.
- `case_partition_empty` (degenerate): k=0 gives two empty sets for every parameter assignment.

Filter A(k) by the explicit rational-square predicate and take the relative complement. Use the native Legendre interfaces of this layer, retaining all six labelled root orderings.

*Needs:* Layer 0 — three-term progression triples; Layer 1 — actual comparison elliptic curve; Layer 2, native Legendre interfaces.

([BS20], §6, p. 367.)

### 2.3 Case-I nonsquare and absolute projection

Prove `case_one_projection` with the hypotheses and conclusions below.

Under H, every associated Legendre parameter lambda is a nonsquare modulo every prime k/2<p≤k with p = 3 mod 8. Under Hplus, a CaseI parameter lies outside all four squareclasses ±Q^2,±2Q^2. The primitive characters of lambda,-lambda,2lambda,-2lambda have mod8 projection mu1-mu2-mu3+mu4=4*(lambda/p) at p = 3 mod 8 and zero otherwise, away from support. One of the four therefore has absolute prime-weighted sum at least (1-3*0.002811)*k/8 and nontrivial odd conductor. The absolute values are printed in equation (21) and Proposition 6.1, equation (16).

Use trace zero, the supplier Legendre order-four test and the congruence #F_p=p+1 to rule out a square lambda. The mod8 classes rule out the other excluded squareclasses. Apply the explicit theta(x;8,3) error bound at k and k/2. The triangle inequality bounds the maximum absolute sum by a quarter of the absolute signed combination.

*Needs:* Layer 2 — legendre case partition; Layer 1 — good reduction and forced trace zero; ClassicalArithmeticCompletion §1.51 — quadratic character of a squareclass; Layer 0, explicit prime estimates; Layer 2, native Legendre interfaces.

([BS20], Lemma 6.4, p. 368; §6, Case I, equations (19)–(21), p. 369; Equation (21), p.369.)

### 2.4 Case-II positive normalization and square test

Prove `case_two_normalization` with the hypotheses and conclusions below.

Under H and CaseII one can choose lambda=2*t^2 and 1-lambda=2*v^2 with positive rational t,v, so 2*t^2+2*v^2=1. For each prime k/2<p≤k with p = 5 mod 8, t and v are p-units and the Legendre symbol of t*v is +1.

Use the six-parameter transformations to place lambda in(0,1) and both lambda,1-lambda in2Q^2. At p = 5 mod 8 compare the first-family reduction to a twist of the CM model with lambda=-1. If tv were nonsquare, the order-four witness and native halving criterion give a subgroup isomorphic to ℤ/2ℤ×ℤ/8ℤ. Its order 16 contradicts the exact 2-part 8 of the comparison point count.

*Needs:* Layer 2 — legendre case partition; Layer 1 — good reduction and forced trace zero; Layer 2, native Legendre interfaces.

([BS20], Lemma 6.6, pp. 371-372; §6 before (22), p. 370.)

### 2.5 CM exclusion for progression Frey curves

Prove `frey_non_cm` with the hypotheses and conclusions below.

Under H, the native elliptic curve E_a is not CM, for every a in A(k). Its j-invariant is 2^8*(a^2-b*c)^3/(a*b*c)^2. Integral j and pairwise coprimality would force each of a,b,c to be a signed power of 2; the relation a+b+c=0 forces two to be equal. The resulting index equations imply d=0 or d divides3, contrary to H and the half-prime-divisibility theorem.

Import algebraic integrality of CM j-values and deduce integer j for rational j. At an odd divisor of abc the numerator is a unit, contradicting integrality. Classify the elementary signed powers-of-two relation and use gcd(n,d)=1 and index bounds. The contradiction uses at least one prime in the half interval, supplied by the explicit prime estimate.

*Needs:* Layer 1 — first-family invariants and odd local properties; Layer 1 — half-interval primes divide the difference; ImaginaryQuadraticClassNumber H3.1; Layer 0, explicit prime estimates; Mathlib `WeierstrassCurve.j`.

([BS20], §6 final Case-II proof, p. 373.)

### 2.6 Case-II conductor exclusion and projection

Prove `case_two_projection` with the hypotheses and conclusions below.

Under Hplus and CaseII choose a character from the four squareclasses omega*t*v, omega in{±1,±2}. One has absolute prime-weighted sum at least (1-3*0.002811)*k/8; its odd conductor divides M_a and is not 1. If odd conductor were1, tv is a square or twice a square; parity excludes the latter, quartic descent forces lambda=1/2, and the CM residual image versus non-CM surjectivity at ell>37 contradicts the residual comparison.

Project to primes 5 mod 8 using the previous square test and the explicit theta(x;8,5) estimate. Use Legendre parameter valuation and conductor support. Clear denominators primitively in2t^2+2v^2=1. Apply the exact T^4+V^4=2U^2 descent theorem, not FLT4. Import the CM normalizer image and the rational-isogeny surjectivity theorem, then use the same residual comparison.

*Needs:* Layer 2 — case-ii positive normalization and square test; Layer 2 — cm exclusion for progression frey curves; Layer 1 — actual comparison elliptic curve; ClassicalArithmeticCompletion §1.51 — quadratic character of a squareclass; ClassicalArithmeticCompletion §4.41; Layer 2, residual-image comparison; Layer 0, explicit prime estimates; Layer 2, native Legendre interfaces.

([BS20], §6 Case II, pp. 372–373; §6 Case II first paragraph, p.372.)

### 2.7 Simultaneous quadratic character family

Prove `character_family` with the hypotheses and conclusions below.

Under Hplus choose for every a in A(k) one pair (N_a,chi_a), with N_a>1 and chi_a a native primitive real quadratic character modulo its conductor N_a. The same choice simultaneously has: |sum over integers k/2<m≤k of chi_a(m)*Lambda(m)|>0.1239*k; N_a^odd squarefree, N_a^odd dividing M_a and A_i*A_j*A_h, N_a^odd≠1; and N_a≤8*N_a^odd. N_a is the actual native character conductor, not a freely assigned modulus.

Prove `character_family_primitive` (compatibility): For every a, chi_a.IsPrimitive and chi_a.conductor=N_a; it is quadratic and real. `character_family_mass` (relation): The absolute half-interval von-Mangoldt sum is strictly greater than 0.1239*k. `character_family_support` (relation): N_a^odd is squarefree, divides both M_a and A_i*A_j*A_h, and N_a≤8*N_a^odd. `character_family_nonprincipal` (characterisation): N_a^odd≠1, hence N_a>1 and chi_a is not the principal character.

**Checks.**

- `character_family_one` (compatibility): Under Hplus, at every triple chi_a(1)=1.
- `character_family_zero` (non-example): Under Hplus, chi_a(0)=0 and N_a>1; the principal modulus1 character cannot be selected.
- `character_family_same_witness` (characterisation): Under Hplus, each selected pair satisfies both the large absolute sum and the odd-support bound; selecting different pairs for the two properties does not meet the contract.

Use the exhaustive partition and the respective four-character constructions. The primitive squareclass character gives the exact conductor and dyadic bound. Convert prime sums to von-Mangoldt sums by the effective prime-power tail; the strict numerical margin is0.000045875*k. Fix one finite family only after all its simultaneous conclusions hold.

*Needs:* Layer 2 — case-i nonsquare and absolute projection; Layer 2 — case-ii conductor exclusion and projection; Layer 1 — first-family reduced-level bounds; ClassicalArithmeticCompletion §1.51 — quadratic character of a squareclass; ClassicalArithmeticCompletion §1.51 — odd part of a quadratic conductor is squarefree; ClassicalArithmeticCompletion §1.51 — two adic conductor bound; Layer 0, explicit prime estimates; Mathlib `DirichletCharacter.conductor`; Mathlib `DirichletCharacter.IsPrimitive`; Mathlib `ArithmeticFunction.vonMangoldt`.

([BS20], Proposition 6.1 and its two-case construction, pp. 366-373; Proposition 6.1, p. 367; Proposition 6.1, p. 367; Case II exclusion, pp. 372–373.)

### Examples

The parameter −1 lies in Case II. At λ=1/2 the twist-by-2 witness is (1+i,−1+i); its equation has both sides −2i and its double is (1,0).

### Dependencies

Layers 0–1; ClassicalArithmeticCompletion §§1.51 and 4.41; ImaginaryQuadraticClassNumber H3.1. The numerical projections use Layer 0 prime estimates independently of the later character criteria.

## Layer 3: The original analytic contradiction criteria

Prove the progression-specific harmonic-family criterion of Proposition 7.2 for pairwise distinct largest conductor primes, P(N_a)<(log k)^(1-c1) and reciprocal mass at least 0.166, retaining effective dependence on 0<c1<1 and decay exponent min(c1,1/2). Prove the distinct-character criterion of Proposition 8.1 for more than 17 log k characters, P(N_a)≤k^(7/16) and N_a<k^c2 with c2>10. Import the generic character PNT, exceptional-zero repulsion, checked small-conductor zero exclusion, pairwise smooth-modulus cancellation and Bombieri-Selberg inequality. Apply the exact diagonal/off-diagonal bounds and the margin 1/68<0.1239^2.

### 3.1 General effective analytic inputs

Define `weightedHalf k value` as ∑_(floor(k/2)<m≤k) value(m)Λ(m). Prove `weightedHalfAdd`, `weightedHalfZero` and its compatibility with the prime sum plus the prime-power tail.

**Checks.**

- At k=0 the interval is empty and the sum is 0.
- At k=2 with value identically 1, the result is log 2; the upper endpoint is included.
- At k=1 with value identically 1, the result is 0 since Λ(1)=0; treating 1 as a prime gives a wrong weight.

Fix an effective absolute c* with 0<c*<log 2 small enough for the exceptional-zero
repulsion theorem below. For a primitive nonprincipal real quadratic character
χ of conductor N>1, an exceptional zero means a real β in
(1−c*/log N,1) with χ.LFunction(β)=0. Prove uniqueness of this zero.
Prove `effectiveCharacterPNT`: for X≥2 the sum ∑_(m≤X)χ(m)Λ(m)
is −X^β/β when the exceptional zero exists, plus an error of absolute value at
most C X exp(−c log X/(sqrt(log X)+log N))(log N)^4, with effective
absolute c,C>0; without an exceptional zero the exceptional term is zero.
Prove `exceptionalZeroRepulsion`: ordering distinct exceptional characters by
conductor gives Nⱼ>N₁^(2^(j−1)). Prove `smallConductorZeroExclusion`:
no primitive nonprincipal real quadratic character with 1<N<400000 has a
zero in this same exceptional interval. Choose c* once so all these assertions
hold; it is not changed with the progression. These are unconditional zero
statements, with no GRH premise. (BS20, §7, equations (23)–(26) and
proof of Proposition 7.2, pp. 374–376.)

Prove `finiteGramBound` over any real or complex inner-product
space and every finite vector family: for vectors y_a and x, ∑_a |⟨x,y_a⟩|²≤‖x‖²·max_a∑_b|⟨y_a,y_b⟩|,
with the empty family giving 0 and a nonempty family for the displayed maximum.
Equivalently, for every nonnegative real C bounding every Gram row sum, the left
side is at most C‖x‖², including an empty family. Separate its diagonal and
off-diagonal terms. Prove `smoothCharacterCorrelation`:
for fixed c₂>0 there are effective c₃>0 and K such that for k≥K,
distinct primitive quadratic characters with positive conductors N₁,N₂<k^c₂ and
largest prime factors at most k^(7/16) satisfy
|∑_(k/2<m≤k)χ₁(m mod N₁)χ₂(m mod N₂)|≤k^(1−c₃). Build the general smooth-modulus
Graham–Ringrose cancellation input, the coprime-character product and exclusion
identities, bounded CRT blocks and finite differencing before this specialization.
The ambient product modulus and primitive product conductor remain distinct;
principal components are retained. CRT and differencing alone do not prove the
cancellation theorem. (BS20, Proposition 8.2 and its proof, pp. 376–379;
equations (32)–(35), pp. 379–380.)

**Checks.**

- Two orthogonal unit vectors give Gram row sum 1 and Bessel's inequality; two equal unit vectors give row sum 2, so omitting off-diagonal terms is false.
- The principal character has a main term of order k and is excluded from a nonprincipal PNT error estimate.
- Equal characters have diagonal correlation of order k and are excluded from the strict off-diagonal power saving.

*Needs:* Mathlib continued L-functions, finite inner-product spaces and prime arithmetic; Layer 0's divisor-subpower bound; Layer 2 only for the progression-specific criteria that follow.

### 3.2 Harmonic smooth-conductor criterion

Prove `harmonic_criterion` with the hypotheses and conclusions below.

For each fixed 0<c1<1 there is an effectively computable k1(c1) such that under Hplus, any finite D subset A(k) with pairwise distinct P(N_a), P(N_a)<(log k)^(1-c1) and sum over D of 1/P(N_a)≥0.166 forces k≤k1(c1). Here P is the native largest prime factor and all selected characters are nonprincipal.

For a nonexceptional character use log N<1.07*(log k)^(1-c1) and the supplier effective PNT: the error is O(k*exp(-c*(log k)^min(c1,1/2))*(log k)^4), contradicting the fixed lower bound for effective large k. If all characters are exceptional, order their conductors; repulsion gives N_j>N_1^(2^(j-1)). The reciprocal mass is<2.13/log N_1, so N_1≤373743<400000. Use the checked unconditional small-conductor zero-exclusion theorem, not an assumed GRH statement.

*Needs:* Layer 2 — simultaneous quadratic character family; Layer 0, explicit prime estimates; Layer 3, effective zeros and repulsion; Mathlib `Nat.maxPrimeFac`.

([BS20], Proposition 7.2, pp. 374-375; §7 proof, p.375; decay exponent for general c1; §7 proof, pp.375–376.)

### 3.3 Many smooth characters criterion

Prove `many_character_criterion` with the hypotheses and conclusions below.

For each c2>10 there is an effective k2(c2) such that under Hplus any B subset A(k) with |B|>17*log k, pairwise distinct selected characters, P(N_a)≤k^(7/16) and N_a<k^c2 forces k≤k2(c2). Quantitative proof: the mean squared absolute weighted sum is at most (k*log k/2+O(k))*((k+1)/(34*log k)+k^(1-c3))=(1/68+o(1))*k^2, where c3(c2)>0 is effective.

Apply the Layer 3 finite Gram inequality to x_m=Lambda(m), y_a,m=chi_a(m) on the integer half interval. The diagonal is at most(k+1)/2, the input norm is k log k/2+O(k), and the generic smooth-modulus cancellation bound controls off-diagonal pairs by k^(1-c3). Its proof must use the product ambient modulus separately from the primitive conductor and eventual divisor subpower bounds. Compare1/68<0.1239^2; no fourth power of0.1239 enters.

*Needs:* Layer 2 — simultaneous quadratic character family; Layer 3, finite Gram inequality — bombieri diagonal offdiagonal; Layer 3, smooth-character correlation; Layer 0, explicit prime estimates; Layer 0, explicit totient and divisor bounds — eventual divisor subpower bound.

([BS20], Proposition 8.1, p. 376; Equations (32)–(35), pp. 379–380.)

### Examples

The lower coefficient is 0.1239²=0.01535121, greater than 1/68. A repeated character is a diagonal term, not an off-diagonal pair.

### Dependencies

Mathlib analytic and finite-dimensional carriers; Layer 2 for the two progression criteria. General prime and character estimates have no progression input.

## Layer 4: Thin-prime sieves and the original proof assembly

Define survivors avoiding a prime set S of reciprocal mass below 0.17 and the two open-left sieving intervals. Bound the losses, perform maximal-valuation deletion so the surviving A-product divides(k-1)!, and prove the smooth factorial bound and density of A_i≤k^139. At the certified threshold k≥exp(exp(10^7)), use the Layer 4 quantitative Roth bound to choose one triple simultaneously avoiding S, with P(N_a)≤k^(7/16), no conductor prime in((log k)^(1-10^-4),10^4log k], and N_a<k^418. The substitution 132 log(2)*10^5<10^7 certifies the Roth cutoff; the smaller 10^6 cutoff does not follow from this substitution. Build the maximal distinct-largest-prime family, prove its reciprocal-mass dichotomy and dispatch the small endpoint with c1=1/20000. This is one complete original-route reduction to an effective bound on k. The generic survivor API controls odd primes; reciprocal mass<0.17 excludes2. Include the explicit Stirling upper adapter to the native sequence and its telescoping bound.

### 4.1 Quantitative three-term progressions

Prove `quantitativeThreeAP`: for 0<δ<1, a subset J of range(k) with
|J|≥δk and k≥exp(exp(132 log(2)/δ)) contains i<j<h with i+h=2j,
all in J. The proof supplies this displayed bound rather than an unspecified
qualitative threshold. (BS20, §9, Theorem 8 and its application in the proof
of Proposition 9.1, pp. 381–384.)

**Checks.**

- At density 10⁻⁵ the required log-log cutoff is 132 log(2)·10⁵, strictly between 10⁶ and 10⁷.
- A singleton has no strict three-term progression; the large-length hypothesis cannot be omitted.
- A constant triple does not satisfy the conclusion, even when its sole index lies in J.

*Needs:* Mathlib `roth_3ap_theorem_nat` for the qualitative vocabulary; the quantitative theorem of the cited source for the explicit improvement.

### 4.2 Thin-prime sieve survivors

Define `Tpr`, `Upr` and `thin_prime_survivors` by the two prime intervals and the set J below.

For n,d,k and a finite set S of primes≤k define T_pr={p prime:k^(7/16)<p≤k}, U_pr={p prime:(log k)^(1-10^-4)<p≤10^4*log k}, and J=range(k) minus the union of divisibility index sets I_p for p in S union T_pr union U_pr. Both lower endpoints are open; no integer ceiling replaces the prime predicates.

Prove `thin_prime_survivors_mem` (characterisation): i is in J iff i<k and none of the three forbidden prime sets divides n+i*d. `thin_prime_survivors_antitone` (functoriality): Increasing S can only shrink J. `thin_prime_survivors_conductor` (relation): Under Hplus, a triple in J has conductor N_a avoiding every odd prime in S union U_pr and P(N_a)≤k^(7/16). If S has reciprocal mass<0.17, it cannot contain2, so the full avoidance conclusion follows. Under Hplus all primes of U_pr are odd.

**Checks.**

- `thin_prime_survivors_zero` (degenerate): For k=0 the survivor set is empty.
- `thin_prime_survivors_union` (characterisation): Deleting S,T_pr,U_pr in any order gives the same finite set.
- `thin_prime_survivors_open_left` (non-example): A prime exactly at a lower endpoint is not in that interval prime set; it is deleted only if it occurs in another forbidden set.

Form finite prime sets with explicit real bounds, then take their divisibility-index union and relative complement. The construction is total; density and conductor consequences require Hplus and the certified numerical range. Only odd primes in the forbidden sets are excluded from N_a by the coefficient-support theorem. Its dyadic factor is bounded by8; 2≤k^(7/16) under Hplus. For the later thinSet application, 2 in S would force reciprocal mass≥1/2, contradicting<0.17.

*Needs:* Layer 0 — divisibility index sets; Layer 2 — simultaneous quadratic character family.

([BS20], §9 proof, p. 382.)

### 4.3 Maximal-valuation deletion

Define `removedIndex p coeff J` as the least maximal-valuation index for nonempty J, with value 0 for empty J. Define `valuation_deletion` as J₁ below.

For gcd(n,d)=1, nonzero terms i<k, positive coefficients A_i dividing |n+i*d| supported on primes<k, and J subset range(k), delete for every prime p<k dividing some A_i with i in J an index having maximal v_p(A_i). Break ties by the least index. The resulting J1 is a subset of J, loses at most the number of primes below k, and product over J1 of A_i divides(k-1)!. Signed factors satisfy the coefficient hypotheses.

Prove `valuation_deletion_subset` (projection): J1 is a subset of J and its cardinal is at least |J| minus the number of primes below k. `valuation_deletion_factorial` (relation): Under the coefficient and primitive-term hypotheses, the product over J1 of A_i divides(k-1)!. `valuation_deletion_tie` (characterisation): For each supported prime the removed maximizer is the least among equal-valuation indices.

**Checks.**

- `valuation_deletion_empty` (degenerate): An empty J remains empty.
- `valuation_deletion_units` (computation): If every A_i=1, then J1=J and its product is1.
- `valuation_deletion_sample` (computation): n=d=1,k=5,J=range(5),A=(1,2,3,4,1) gives J1={0,1,4} and product2 dividing24.
- `valuation_deletion_least_tie` (non-example): n=d=1,k=4,J=range(4),A=(1,2,1,2) removes index1 rather than3 for the prime2.

For each prime in the finite support union take the least maximizer of the native valuation. If j is its deleted index, each remaining valuation is bounded by v_p(|i-j|), by the term-gcd bound and maximality. The product of nonzero index differences divides j!*(k-1-j)!, which divides(k-1)!. Combine prime valuations.

*Needs:* Layer 0 — gcd of progression terms; Layer 0 — signed small-prime factorization; Mathlib `padicValNat_def`; Mathlib `Nat.factorization`.

([BS20], Proof of Proposition 9.1, p. 384.)

### 4.4 Explicit Stirling upper bound

Prove `stirling_upper_adapter` with the displayed real factorial inequality.

For every natural m≥1, (m!:R)≤sqrt(2*pi*m)*(m/exp(1))^m*exp(1/(12*m)). This is the numerical adapter quoted in the source, derived from the pinned Stirling sequence rather than a second asymptotic theory.

For integers M>m≥1, sum the pinned inequality log(stirlingSeq j)-log(stirlingSeq(j+1))≤1/(12*j*(j+1)) over m≤j<M. Both sides telescope, giving log(stirlingSeq m)-log(stirlingSeq M)≤1/(12*m)-1/(12*M). Use the pinned limit stirlingSeq M -> sqrt(pi)>0 and continuity of log to pass to M -> infinity. Exponentiating gives stirlingSeq m≤sqrt(pi)*exp(1/(12*m)). Unfold the existing stirlingSeq and multiply by its positive denominator sqrt(2*m)*(m/exp1)^m. Combine positive square roots to obtain the displayed bound.

*Needs:* Mathlib `Stirling.stirlingSeq`; Mathlib `Stirling.log_stirlingSeq_sdiff_le`; Mathlib `Stirling.tendsto_stirlingSeq_sqrt_pi`.

([BS20], Proof of Proposition9.1, printed p.384, first displayed factorial bound and reference[43].)

### 4.5 Sieve losses and coefficient density

Prove `survivor_density` with the hypotheses and conclusions below.

Under Hplus, k≥exp(exp(10^7)) and sum over S of 1/p<0.17, the losses from T_pr,U_pr,S are at most k*log(16/7), k*log(1/(1-10^-4))+5*k*log10/loglogk+10^4*logk, and strictly less than 0.17*k+1.1*k/logk. Thus |J|>0.0032*k. Deletion gives |J1|>0.00319*k. Its smooth coefficient product is less than k^(0.44*k), and J2={i in J1:A_i≤k^139} has |J2|>10^-5*k.

Sum the one-residue-class bound over primes, keeping endpoints and the +1 loss. Import explicit reciprocal-prime and prime-count estimates. Apply maximal-valuation deletion. The large-prime part of(k-1)! has log at least(9/16)*k*logk-5*k; combine the local explicit Stirling upper adapter. Markov counting with log A_i>139*logk bounds the complement of J2. The numerical range is strengthened to the certified Roth threshold. For the 0.44 bound one may instead use the weaker native (k-1)!≤k^k: subtracting the large-prime contribution gives log(product A_i)≤(7/16)*k*logk+5*k<0.44*k*logk in the certified range. The sharper Stirling adapter remains a separately covered source item.

*Needs:* Layer 4 — thin-prime sieve survivors; Layer 4 — maximal-valuation deletion; Layer 0 — one-residue-class count; Layer 0, explicit prime estimates; Layer 4 — explicit stirling upper bound; Mathlib `Nat.factorial_le_pow`.

([BS20], §9 proof, pp. 382–383; §9 proof, pp. 383–384; §9 proof, p. 384; §9 end of proof, p. 384; §9 p.384, reference [43].)

### 4.6 Simultaneous thin-conductor witness

Define `certifiedThreshold k` by k≥exp(exp(10⁷)), and `thinSet k S` by S consisting of primes at most k and reciprocal mass less than 0.17. The constructor below uses these exact predicates.

Under Hplus and k≥exp(exp(10^7)), for every finite S of primes≤k with reciprocal mass<0.17 choose one a in A(k) such that no p in S divides N_a, P(N_a)≤k^(7/16), no prime in((logk)^(1-10^-4),10^4logk] divides N_a, and N_a<k^418. All four conclusions hold for this same triple. Use the 10^7 cutoff, which follows from the quantitative Roth substitution in the integration requirements below.

Prove `thin_conductor_witness_mem` (projection): The selected triple belongs to A(k) and all its indices belong to J2. `thin_conductor_witness_avoid` (relation): Its conductor has no prime in S or in U_pr. `thin_conductor_witness_size` (relation): Its largest prime factor is≤k^(7/16) and its conductor is<k^418.

**Checks.**

- `thin_conductor_witness_empty_s` (degenerate): For S empty the two nonvacuous size bounds and U_pr avoidance still hold under the stated large-k hypotheses.
- `thin_conductor_witness_same` (characterisation): One triple satisfies the conjunction of all four properties; four independently chosen witnesses are insufficient.
- `thin_conductor_witness_certified_threshold` (non-example): The quantitative Roth exponent needed at density10^-5 exceeds10^6 and is less than10^7; the constructor requires the certified latter threshold.

Apply the Layer 4 quantitative Roth statement to J2 with density10^-5. Its loglog threshold is132*log2*10^5<10^7, not<10^6. Choose one three-term progression in J2. The odd-support and dyadic conductor bound yield N≤2^8*k^417<k^418, and membership in J enforces all avoidance properties. The reciprocal-mass hypothesis excludes2 from S, and the lower endpoint of U_pr exceeds2 in this range; therefore the odd-prime survivor API supplies full conductor avoidance here.

*Needs:* Layer 4 — sieve losses and coefficient density; Layer 0 — three-term progression triples; Layer 2 — simultaneous quadratic character family; Layer 4, quantitative three-term progression theorem; Mathlib `Real.log_two_gt_d9`; Mathlib `Real.log_two_lt_d9`.

([BS20], Proposition 9.1, pp. 381-384; §9 end of proof, p. 384; Proposition 9.1(I), p. 382; Proposition 9.1(II), p. 382; Proposition 9.1(III), p. 382; Proposition 9.1(IV), p. 382; Proposition 9.1, pp.381–384; Roth-threshold substitution.)

### 4.7 Maximal largest-prime family

Under Hplus at the certified threshold, choose a nonempty inclusion-maximal finite B subset A(k) whose P(N_a) are pairwise distinct, all P(N_a)≤k^(7/16), N_a<k^418, and N_a avoids U_pr. Maximality is by inclusion, not by conductor size or cardinal alone.

Prove `maximal_conductor_family_admissible` (projection): B is nonempty, lies in A(k), has distinct P(N_a), and satisfies all three conductor restrictions. `maximal_conductor_family_maximal` (characterisation): Every admissible superset of B equals B. `maximal_conductor_family_mass` (relation): If |B|≤17logk, its reciprocal-largest-prime mass is at least0.17.

**Checks.**

- `maximal_conductor_family_nonempty` (non-example): Under the constructor hypotheses B cannot be empty.
- `maximal_conductor_family_no_duplicate` (characterisation): Two distinct members never have the same largest conductor prime, even if their conductors differ.
- `maximal_conductor_family_extension` (characterisation): An outside triple satisfying all size and gap restrictions must repeat one of B’s largest primes.

The witness for S empty makes the family nonempty. Select an inclusion-maximal member of the finite family of admissible subsets of A(k). For |B|≤17logk a reciprocal mass<0.17 would permit a new witness with S={P(N_a):a in B}, contradicting maximality.

*Needs:* Layer 4 — simultaneous thin-conductor witness.

([BS20], §10, pp. 384–385; endpoint correction.)

### 4.8 Original analytic endgame

Prove `original_route_bound` with the effective threshold specified below.

There is an effective absolute K_original such that Hplus implies k≤K_original. For the maximal B, if |B|>17logk apply the many-character criterion with c2=418; otherwise D={a in B:P(N_a)≤(logk)^(1-10^-4)} has reciprocal mass≥0.1683>0.166. Its smoothness is strictly less than(logk)^(1-1/20000), so the harmonic criterion applies.

Distinct largest prime factors imply distinct primitive characters. In the small-cardinality branch, U_pr avoidance places every complementary largest prime above10^4logk, giving complementary mass≤0.0017. Use c1=1/20000 to handle the closed endpoint, instead of substituting the strict criterion at c1=10^-4. Take the maximum of the certified threshold and both effective contradiction thresholds.

*Needs:* Layer 4 — maximal largest-prime family; Layer 3 — harmonic smooth-conductor criterion; Layer 3 — many smooth characters criterion.

([BS20], §10 proof of Theorem 2, p. 385; strict endpoint comparison.)

### Examples

For A=(1,2,3,4,1), k=5, the retained indices are {0,1,4} and their product is 2. For A=(1,2,1,2) the least maximal 2-valuation occurs at index 1.

### Dependencies

Layers 0, 2 and 3; Mathlib qualitative Roth and Stirling sequence.

## Layer 5: Granville exceptional moduli and a single witness

For a bounded-height Landau-Page constant c>0 define T=exp(c log k/(3log log k)) and the moduli 1≤q≤k^4 having a primitive L-function zero with |Im rho|≤T and Re rho>1-3log log k/log k. Prove the polylogarithmic cardinal bound, minimum modulus≥log k and at-most-one modulus below T. Apply the half-interval explicit formula to primitive nonprincipal characters outside this set. Define the exceptional divisibility indices with r|q and r≥q^(1/3)/2 and prove their sparse cardinal bound with all k/r+1 losses retained. Combine maximal-valuation deletion with disjoint triples to choose one triple that both avoids these indices and satisfies 8A_iA_jA_h≤k^4. Odd-conductor divisibility and the bound N≤8Nodd force that same conductor outside the exceptional set. The resulting contradiction gives an independent effective bound on k without Roth or short-sum cancellation. Both analytic zero predicates exclude the principal-character pole at1.

### 5.1 Bounded-height analytic inputs

Prove `boundedPage_exists`: some c>0 satisfies the native `boundedPage`
predicate, with primitive characters, positive moduli q≤T, T≥2,
|Im ρ|≤T and Re ρ≥1−c/log T, excluding the principal pole.
Prove the real exceptional-zero upper bound needed to force q≥log k,
and the log-free density estimate
∑_(q≤Q)∑_(χ primitive mod q) N(σ,T,χ)≪_ε
(Q^(5+ε)T^(3+ε))^(1−σ), for 1/2≤σ≤1 and Q,T≥2,
ε>0 and effective constants. Prove `truncatedHalfIntervalFormula` for
primitive nonprincipal characters by subtracting the two explicit formulas at
one common height T. Bound local zero counts, parity and trivial-zero terms,
endpoint and horizontal errors, and the zero contribution uniformly near ρ=0
using the integral of x^(ρ−1) over [k/2,k]. (BS20, §12, Proposition 12.1
and proof, pp. 386–387; Proposition 12.2 and proof, p. 387.)

**Checks.**

- A principal character at 1 has a pole and is never a zero witness.
- A zero above height T does not violate the bounded-height conclusion; replacing T by Q changes the theorem.
- The integral at ρ=0 is log 2, while the separate expression 1/|ρ| is singular; this pins the uniform zero-term bound.

*Needs:* Mathlib `DirichletCharacter.LFunction`; Layer 3's effective real-character estimates and its zero conventions. The definition and API below use these general inputs at Q=k⁴ and the stated zero height.

### 5.2 Bounded-height exceptional moduli

Define `zeroHeight k c` as T below, `zeroWithin` as the primitive regular-zero witness, `hasZeroWithin` by existential quantification over that character and zero, and `exceptional_moduli` as Q(k,c). Define `pageException c T q` using a primitive regular zero with |Im ρ|≤T and Re ρ≥1−c/log T; `boundedPage c` is uniqueness of q among such moduli q≤T for every T≥2. Their APIs include membership, finite bounds, height projection and invariance under equality of the character and zero, all with the same positive-modulus instance.

The finite-set and zero predicates are total on natural k and real c, using the native total real logarithm and division. Their analytic applications require k≥3 and c>0. For k≥3 and fixed c>0 from the bounded-height Landau-Page theorem put T=exp(c*logk/(3*loglogk)). Q(k,c) consists of integers1≤q≤k^4 for which some native primitive complex Dirichlet character modulo q has a zero rho of its meromorphic LFunction at a regular point (rho≠1 or chi is nonprincipal) with |Im rho|≤T and Re rho>1-3*loglogk/logk. The modulus is positive; LSeries, which is zero outside convergence, is not used.

Prove `exceptional_moduli_mem` (characterisation): Membership is equivalent to the displayed positive-modulus bounds and the bounded-height zero witness. A zero witness satisfies rho≠1 or chi≠1, excluding the principal pole. `exceptional_moduli_finite` (structure): The set is finite, contained in{1,..,k^4}. `exceptional_moduli_height` (projection): Every witness zero obeys the same T used in the zero-density estimates.

**Checks.**

- `exceptional_moduli_zero` (non-example): 0 never belongs to Q(k,c), regardless of zero witnesses.
- `exceptional_moduli_upper` (characterisation): q>k^4 never belongs.
- `exceptional_moduli_high_zero` (non-example): A zero with |Im rho|>T alone cannot witness membership.
- `exceptional_moduli_principal_pole` (non-example): For every positive modulus, the pair chi=1,rho=1 never satisfies the zero-witness predicate, regardless of the totalized LFunction value.

Take a subset of range(k^4+1) using the exact quantified character and complex-zero predicate. Use the native primitive-character and meromorphic continuation vocabulary. The analytic height restriction is essential. Explicitly exclude the principal-character pole at rho=1. Mathlib totalizes the function there; an assigned value is not a meromorphic zero. The same guard belongs in the bounded-height Landau-Page input predicate.

*Needs:* Mathlib `DirichletCharacter.LFunction`; Mathlib `DirichletCharacter.IsPrimitive`.

([BS20], Section 12, equations (40)-(41), p. 386.)

### 5.3 Exceptional-modulus bounds

Prove `exceptional_moduli_bounds` with a positive constant c satisfying `boundedPage c`; both hypotheses occur explicitly in its signature.

For the fixed positive Landau-Page constant c, there are effective K,C such that k≥K gives |Q(k,c)|≤C*(logk)^61, every q in Q(k,c) is≥logk, and at most one q in Q(k,c) is<T. These conclusions are proved simultaneously from zero density and bounded-height zero-free input.

Apply the supplier log-free density estimate at Q=k^4 and the exact T, with all character/modulus multiplicities. For small q apply bounded-height zero exclusion and the Landau-Page uniqueness strip. Constants depend only on the fixed analytic input, not on n,d.

*Needs:* Layer 5 — bounded-height exceptional moduli and bounded-height analytic inputs; Layer 3, effective zeros and repulsion.

([BS20], Proposition 12.1 first conclusion, p.386; Proposition 12.1 second conclusion, pp.386–387; Proposition 12.1 third conclusion, pp.386–387.)

### 5.4 Nonexceptional half-interval character estimate

Prove `nonexceptional_half_sum` for every c>0 as below; its constants may depend on c.

For sufficiently large k, every native primitive nonprincipal character of conductor q≤k^4 outside Q(k,c) has absolute von-Mangoldt half-interval sum≤C*k/logk, uniformly with effective C. The principal character is excluded.

Subtract the supplier truncated explicit formulas at k and k/2 with the same height T. Bound(k^rho-(k/2)^rho)/rho as an integral, by C*k^Re(rho)*min(1,1/|rho|); a naked sum1/|rho| is not uniform near zero. Use local zero counts for the weighted zero sum and the nonexceptional real-part bound. Track parity constants, trivial zeros and horizontal truncation errors. T, not Q=k^4, belongs in the truncation denominator.

*Needs:* Layer 5 — bounded-height exceptional moduli and bounded-height analytic inputs; Layer 3, effective zeros and repulsion.

([BS20], Proposition 12.2, p.387; nonprincipal hypothesis and uniform zero-sum estimate.)

### 5.5 Exceptional divisibility indices

Define `exceptional_indices` as Bad below for an arbitrary finite modulus set.

For integers n,d, positive k and any finite set Q of positive moduli, Bad is the set of i<k for which some q in Q has a positive divisor r with r≥q^(1/3)/2 and r dividing n+i*d. In the application Q=Q(k,c). The real cube-root threshold and the +1 count for r>k are retained.

Prove `exceptional_indices_mem` (characterisation): Membership is precisely the positive-divisor witness with i<k. `exceptional_indices_empty_moduli` (simp): An empty exceptional-modulus set gives an empty bad-index set. `exceptional_indices_mono` (functoriality): Increasing the exceptional-modulus set can only increase the bad-index set.

**Checks.**

- `exceptional_indices_empty` (degenerate): An empty modulus set gives no bad indices.
- `exceptional_indices_large_divisor` (non-example): With modulus set{1000},n=1000,d=1,k=3, index0 is bad via r=1000>k; truncating r at k loses it.
- `exceptional_indices_sample` (computation): With modulus set{8},n=d=1,k=4, every index is bad, since r=1 is an admissible divisor at the exact threshold8^(1/3)/2=1.

Filter range(k) by the finite exceptional-modulus/divisor witness. Do not restrict the divisors to r≤k.

*Needs:* Layer 5 — bounded-height exceptional moduli; Layer 0 — divisibility index sets.

([BS20], Proposition 12.3, pp.387–388.)

### 5.6 Exceptional indices are sparse

Prove `exceptional_indices_sparse` for c>0 with `boundedPage c` and the coprime nonzero n,d below.

For all sufficiently large k and coprime nonzero n,d, |Bad|≤C*k/(logk)^(1/4), with effective C uniform in n,d.

For each q sum k/r+1 over its divisors r≥q^(1/3)/2, using the residue count. Split off the at-most-one q<T, where q≥logk and eventual divisor subpower estimates suffice. For remaining q≥T use T decay against the polylogarithmic cardinal bound. The total +1 error is O(k^(1/3)*(logk)^61) after using q≤k^4 and a sufficiently small divisor exponent; it is negligible relative to k/(logk)^(1/4).

*Needs:* Layer 5 — exceptional divisibility indices; Layer 5 — exceptional-modulus bounds; Layer 0 — one-residue-class count; Layer 0, explicit totient and divisor bounds — eventual divisor subpower bound.

([BS20], Proposition 12.3, pp.387–388.)

### 5.7 Single Granville conductor witness

Under Hplus and sufficiently large effective k choose one triple a=(i,j,h) in A(k) whose three indices avoid Bad and with N_a≤8*A_i*A_j*A_h≤k^4. Both properties hold for the same triple.

Prove `addendum_witness_mem` (projection): The chosen triple belongs to A(k), with positive spacing1. `addendum_witness_avoid` (relation): Each of its three indices is outside Bad. `addendum_witness_size` (relation): Its conductor and coefficient product satisfy N_a≤8*A_i*A_j*A_h≤k^4.

**Checks.**

- `addendum_witness_same` (characterisation): One chosen triple satisfies both avoidance and size; two separate existential witnesses are insufficient.
- `addendum_witness_disjoint` (compatibility): The chosen triple is one of the disjoint consecutive blocks used in the factorial product estimate.
- `addendum_witness_scale` (computation): At k=64,8*k^(7/2)=k^4; the final size implication holds for every k≥64.

Delete one maximal-valuation index per small prime, then delete Bad. Use the original disjoint consecutive blocks(0,1,2),(3,4,5),..; at most one block is lost per deleted index. Effectively more than2k/7 blocks survive. Their combined A-product divides(k-1)!≤k^k. One block has coefficient product≤k^(7/2); k≥64 implies8*k^(7/2)≤k^4. Choose that block, which already avoids Bad. The effective prime-count estimate from Layer 0 explicit prime estimates bounds the number of maximal-valuation deletions by pi(k)=o(k); combine it with the uniform Bad bound before counting disjoint blocks.

*Needs:* Layer 4 — maximal-valuation deletion; Layer 5 — exceptional indices are sparse; Layer 2 — simultaneous quadratic character family; Layer 0 — three-term progression triples; Mathlib `Nat.factorial_le_pow`; Layer 0, explicit prime estimates.

([BS20], §12 final paragraph, p.388; simultaneous witness.)

### 5.8 Exceptional-conductor detection

Prove `conductor_detection` with the hypotheses and conclusions below.

For the single witness above, N_a is not in Q(k,c). Indeed N_a^odd divides A_i*A_j*A_h and N_a≤8*N_a^odd, so the product of the three gcd(N_a,A_r) is≥N_a/8. One gcd is≥N_a^(1/3)/2, and as a positive divisor of N_a and the indexed term it would make that same index bad if N_a were exceptional.

Use squarefreeness of Nodd to distribute its prime factors among the three gcds. Apply the product lower bound and the real cube-root threshold. Since A_r divides |t_r|, the selected gcd is exactly a permitted Bad witness. Contradict the avoidance API of the same chosen triple.

*Needs:* Layer 5 — single granville conductor witness; Layer 2 — simultaneous quadratic character family; Layer 5 — exceptional divisibility indices.

([BS20], §12 final paragraph, p.388; odd-conductor divisibility.)

### 5.9 Granville analytic endgame

Prove `granville_route_bound` with an effective absolute threshold.

There is an effectively computable absolute K_Granville such that Hplus implies k≤K_Granville. This route uses no quantitative Roth theorem or short smooth-modulus cancellation bound.

Choose the single addendum witness. Detection puts its conductor outside Q, its size is≤k^4 and its odd part is nontrivial, so the selected character is nonprincipal. The uniform O(k/logk) bound contradicts its strict absolute lower bound>0.1239*k for effective large k.

*Needs:* Layer 5 — single granville conductor witness; Layer 5 — exceptional-conductor detection; Layer 5 — nonexceptional half-interval character estimate; Layer 2 — simultaneous quadratic character family.

([BS20], §12 end, p.388.)

### Examples

The modulus 8 has cube-root threshold 1, so every term of (1,2,3,4) has a permissible divisor. A divisor 1000 of modulus 1000 still witnesses a bad index when k=3.

### Dependencies

Layers 0 and 2–4, using Layer 4 only for maximal-valuation deletion; the original-route Roth and smooth-correlation endgame is not an input.

## Layer 6: Effective exponent bound and fixed-length finiteness

Prove the main theorem: an effectively computable absolute k0 exists such that every primitive integer progression product of length k≥k0 with prime exponent ell has y*d=0 or ell≤exp(10^k). Either proof route supplies such a threshold. For each fixed k≥k0, increased to at least5, import Faltings and construct the Darmon-Granville fixed-exponent adapter. Reduce composite exponents to prime divisors and exclude power variables0,1,-1 in nontrivial sufficiently long progressions. Deduce finiteness of positive integer(n,d,y,ell) tuples for each fixed k and all ell≥2, not one finite set over all lengths and not an effective enumeration of points. Correct equation(2.2) of Darmon–Granville to coefficients j-1 and j-2 with its1-based term indexing.

### 6.1 Rational points on curves of genus at least two

Prove `faltingsFiniteness` for every smooth projective geometrically connected
curve of genus at least two over a number field: its rational-point set is
finite. Retain the number field and the same scheme-theoretic genus and
point carrier throughout; no effective height bound is asserted.
(DG95, Introduction, p. 513, statement of Faltings' theorem; §2.1,
Corollary 2.1 and proof, pp. 520–521.)

*Needs:* AlgebraicCurves Layers 7 and 12E's curve and genus comparisons. This theorem supplies the fixed-exponent adapter, independently of the effective analytic thresholds.

### 6.2 Effective prime-exponent bound

Prove `effective_prime_bound` with the quantified threshold, integer domain and prime exponent below.

There exists an effectively computable absolute integer k0≥5 such that for every positive integer k≥k0, integers n,d,y with gcd(n,d)=1, and prime ell satisfying product over i<k of(n+i*d)=y^ell, either y*d=0 or ell≤exp(10^k). The same logical statement has both an original-route and a Granville-route effective threshold; an unqualified classical existential by itself is not an effectivity proof.

Suppose y*d≠0 and ell>exp(10^k). Taking k0 above10^8 and2*10^10 gives Hplus. Either analytic endgame contradicts sufficiently large k. Fix the maximum of the explicit or effectively controlled input thresholds. Keep a ledger of effective dependencies; none uses ineffective Siegel constants or a rational-point height bound.

*Needs:* Layer 4 — original analytic endgame; Layer 5 — granville analytic endgame; Layer 0 — primitive progression solutions.

([BS20], Theorem 2, p. 357.)

### 6.3 Fixed-exponent progression finiteness

Prove `fixed_exponent_finiteness` for each fixed natural exponent ell≥2 and length k≥5.

For every fixed k≥5 and integer ell≥2, the set of coprime integer(n,d,y) with y*d≠0 and product over i<k of(n+i*d)=y^ell is finite. For positive n,d,y this is Darmon–Granville Corollary 2.1; the signed extension needs the same finite sign patterns rather than an unsupported appeal to positivity.

Choose finite small-prime ell-powerfree coefficient classes, including signs. Eliminate n,d to get a diagonal complete intersection in P^(k-1); its projection to the ternary curve has degree ell^(k-3) and the displayed Riemann-Hurwitz computation gives2g-2=k*ell^(k-1)*(1-2/k-1/ell)>0. Prove smoothness, geometric connectedness and ramification of this diagonal intersection; apply the supplied genus comparison and the Faltings theorem of this layer. Each rational projective point has only finitely many primitive integral lifts, then only finitely many y. Repeat over finitely many sign patterns. The source version is the author-hosted scan listed in the references. With the source indexing t_i=a+i*d for1≤i≤k, use lambda_j*z_j^ell=(j-1)*lambda_2*z_2^ell-(j-2)*lambda_1*z_1^ell for3≤j≤k. The printed (2.2) coefficients j and j-1 shift the term by d; this local misprint does not change the distinct-branch or genus argument.

*Needs:* Layer 0 — gcd of progression terms; Layer 6, Faltings theorem; AlgebraicCurves Layers 7 and 12E.

([DG95], §2.1, Corollary 2.1 and its full proof, pp.520–521; [BS20], §1, p.357, discussion of Darmon–Granville Corollary 2.1.)

### 6.4 Composite exponent reduction

Prove `composite_exponent_reduction`, retaining the prime-divisor hypothesis p|ell.

If ell≥2 and p is a prime divisor of ell, set Y=y^(ell/p); then y^ell=Y^p and the same progression has prime exponent p. For a nontrivial progression of length k≥5, |y|>1: otherwise every nonzero factor is±1, impossible for five distinct terms with d≠0. For each fixed integer Y with |Y|>1 there are finitely many pairs(y,r), r≥1, with y^r=Y.

Use exact division p*(ell/p)=ell and power associativity. If |y|=1 the absolute product is1 and all absolute factors are1. Bound r by any nonzero prime valuation of |Y| and bound y by |Y|. No exponent bound for composite ell is asserted directly.

*Needs:* Layer 0 — primitive progression solutions; Mathlib `Nat.factorization`.

([BS20], §1 finiteness consequence of Theorem 2, p.357.)

### 6.5 Fixed-length all-exponent finiteness

Prove `fixed_length_finiteness` for positive tuples and for all nontrivial signed tuples, with k fixed.

For each fixed k≥k0, there are finitely many positive integer tuples(n,d,y,ell) with ell≥2, gcd(n,d)=1 and product over i<k of(n+i*d)=y^ell. Also the nontrivial signed tuples with y*d≠0 form a finite set by the signed fixed-exponent adapter. This is not finiteness as k varies and not an effective point-enumeration theorem.

The effective prime theorem bounds the possible prime divisors p of ell for this fixed k. The fixed-exponent theorem yields finitely many triples(n,d,Y) for every such p. The composite reduction and |Y|>1 give finitely many roots/exponent multipliers above every triple; take the finite union.

*Needs:* Layer 6 — effective prime-exponent bound; Layer 6 — fixed-exponent progression finiteness; Layer 6 — composite exponent reduction.

([BS20], Abstract and §1 after Theorem 2, p. 357.)

### Examples

At k=5,ell=2 the diagonal genus equation gives 2g−2=8, hence genus 5. At k=4,ell=2 it gives genus 1; the lower length bound is necessary for this proof.

### Dependencies

Either Layer 4 or Layer 5 for the exponent bound; Layer 0, AlgebraicCurves Layers 7 and 12E for the signed diagonal curves.

## Layer 7: Conjectural and announced predicates

Prove the positive consecutive-product theorem in this layer. State the stronger Erdős eventual-nonexistence conjecture with positivity and the gcd condition, without proving it or using it as an assumption. Register the Section 11 smooth-multiplier equation product(n+id)=b*y^ell with nonzero b supported on primes≤tau*k for fixed tau<1/2, marking the announced extension as lacking a separate quantified proof. Specify the two assertions and test their domains; neither is a shortcut in either unconditional proof route.

### 7.1 Positive consecutive products

Prove `consecutiveProduct_not_perfectPower`: for positive n, k≥2 and ell≥2,
∏_(0≤i<k)(n+i) is not an ell-th power of a positive integer.
(BS20, §1, Theorem 1, p. 355, citing Erdős–Selfridge.)

**Checks.**

- k=1,n=4 is a square, so the length hypothesis is necessary.
- k=2,n=1 gives 2, not a perfect power.
- The signed progression (−3,−1,1,3) has square product 9 and is excluded by positivity and common difference 1.

*Needs:* Mathlib natural factorization and finite combinatorics; this target is independent of the primitive-progression analytic proof.

### 7.2 Erdős nonexistence assertion

Define `erdos_threshold K` as ErdosThreshold(K) below.

For integer K≥0 let ErdosThreshold(K) assert that for every k≥K, k≥2, positive integers n,d,y and ell≥2 with gcd(n,d)=1, the progression product is not y^ell. The Erdős conjecture is the assertion that some K satisfies this explicit predicate. It is recorded, not proved or used as an assumption.

Prove `erdos_threshold_iff` (characterisation): The predicate is equivalent to the displayed positive-domain universal nonexistence statement. `erdos_threshold_mono` (functoriality): K≤L and ErdosThreshold(K) imply ErdosThreshold(L). `erdos_threshold_nonexistence` (projection): For every k≥K with k≥2, ErdosThreshold(K) implies the exact primitive positive-domain product inequality for every n,d,y>0 and integer ell≥2.

**Checks.**

- `erdos_threshold_zero` (non-example): ErdosThreshold(0) is false because n=1,d=24,k=3,y=35,ell=2 is a primitive positive solution.
- `erdos_threshold_three` (non-example): The same solution shows ErdosThreshold(3) is false.
- `erdos_threshold_positive_domain` (characterisation): The signed solution(-3,2,4,3,2) is excluded by positivity and is not itself a counterexample to ErdosThreshold(4).

State the positive-domain quantifiers and exact primitive product equation. Keep integer exponent ell≥2, not just prime ell. The definition is an explicit predicate; it has no admitted proposition body.

*Needs:* Layer 0 — primitive progression solutions; Layer 7, consecutive-product theorem.

([BS20], §1, Conjecture, p. 356.)

### 7.3 Smooth-multiplier progression equation

Define `smooth_multiplier` as SmoothMultiplierSolution below.

For real tau, n,d,y,b in ℤ and k,ell in ℕ, SmoothMultiplierSolution means 0<k, ell prime, gcd(n,d)=1, y*d≠0, b≠0, product over i<k of(n+i*d)=b*y^ell, and every prime divisor of |b| is≤tau*k. The discussion concerns fixed 0≤tau<1/2. Its extension is an announcement without a separate quantified proof, not an unconditional theorem of this roadmap.

Prove `smooth_multiplier_iff` (characterisation): The predicate has exactly the displayed domain, equation and support conditions. `smooth_multiplier_one` (compatibility): For tau≥0 and b=1 it is equivalent to S(n,d,k,y,ell). `smooth_multiplier_tau_mono` (functoriality): For tau≤sigma, a solution for tau is a solution for sigma.

**Checks.**

- `smooth_multiplier_zero` (non-example): b=0 never gives a SmoothMultiplierSolution.
- `smooth_multiplier_unit` (computation): tau=0,n=1,d=24,k=3,y=35,ell=2,b=1 gives a solution.
- `smooth_multiplier_half_boundary` (non-example): n=d=y=1,k=2,ell=2,b=2 satisfies the equation, but cannot satisfy the support bound for tau<1/2.

Use the explicit equation and native prime-divisor predicate. The zero multiplier is excluded so its prime support cannot make the support condition vacuous. The fixed tau<1/2 restriction does not cover all multipliers supported below k.

*Needs:* Layer 0 — primitive progression solutions; Mathlib `Nat.maxPrimeFac`.

([BS20], §11, pp. 385–386.)

### Examples

The positive solution (n,d,k,y,ell)=(1,24,3,35,2) rules out thresholds 0 and 3. The signed square example has n<0 and does not test the positive-domain conjecture.

### Dependencies

Layer 0 and native finite products; no target in this layer is a premise to Layers 1–6.

## Downstream consumers

The signed factorization, local progression bounds, Legendre trace comparisons and simultaneous character methods supply other perfect-power and generalized Fermat problems. Both effective analytic routes export their absolute thresholds; the genus adapter exports fixed-length finiteness with the primitive-lift contract.

## Worked examples and integration requirements

The generic character PNT used in Layer 3 must retain its effective error and
exceptional-zero alternative. The error for a nonexceptional smooth conductor has
exponent `min(c_1,1/2)`. Conductors of exceptional characters grow by the
repulsion law `N_j>N_1^{2^{j-1}}`. An explicit small-conductor zero-exclusion theorem supplies the remaining finite range. This zero-exclusion theorem is
unconditional finite verification of its specified region, not an assumption of
GRH. The prime estimates and zero-density results in the supplier contracts
carry constants and valid ranges; an asymptotic theorem with an unspecified
ineffective constant cannot discharge these requirements.

The short-character estimate separates an ambient product modulus from the
conductor of the induced primitive product character. The Gram inequality is
applied to squared absolute sums. With the hypotheses of the many-character
criterion, its main coefficient is `1/68`, while the character-family lower
coefficient is `0.1239^2`. The strict inequality between them must survive
all quantified error terms. Eventual divisor-subpower bounds are applied only
after fixing their positive exponent.

For the original route use the certified range
`k >= exp(exp(10^7))`. The required Roth substitution is
`132log 2 * 10^5<10^7`; it does not give a cutoff `10^6`.
The smoothness condition in the harmonic criterion is strict. The maximal-family
branch supplies a closed bound with exponent `1-10^{-4}`, so apply the
criterion with `c_1=1/20000`. These constants and the strictness of every
endpoint are part of the specification.

In the Granville route, keep both the real-part condition and bounded height in
the exceptional-zero predicate. Subtract explicit formulas at `k` and
`k/2` at the same height `T`. A zero near zero is controlled by the
integral form of `(k^rho-(k/2)^rho)/rho`; bounding a bare sum of
`1/|rho|` would lose uniformity. The principal pole at 1 is not a zero.
The divisibility-index count includes a rounding term `+1`, even when a
divisor exceeds the length. This term is summed before being shown negligible.
The simultaneous witness is selected from the surviving disjoint blocks, not
by choosing unrelated triples for its smallness and its avoidance property.

The signed fixed-exponent application in Layer 6 includes the complete geometric
adapter. For each of the finitely many nonzero signed coefficient patterns,
prove smoothness and geometric connectedness of the diagonal complete
intersection, construct its projection with the stated degree, compute genus
by Hurwitz, and compare that genus to the scheme-theoretic invariant entering
Faltings. The sign of a coefficient does not change the Jacobian-rank argument
over an algebraic closure in characteristic zero. Primitive integral
representatives of a rational projective point are unique up to sign; translating
back through the fixed coefficient pattern gives finitely many primitive
`(n,d,y)`. The source's positive-domain corollary by itself does not supply
this signed adapter.

For indexing `t_i=a+id`, `1 <= i <= k`, elimination uses
`lambda_j z_j^ell=(j-1)lambda_2z_2^ell -(j-2)lambda_1z_1^ell; (3 <= j <= k).`
This gives the correct index `j` in [DG95], equation (2.2). With zero-based
progression indices the same identity is transported after replacing `a`
by `n-d`. Its distinct branch values, the covering degree
`ell^{k-3}`, and
`2g-2=kell^{k-1}(1-2/k-1/ell)>0` are the genus requirements.

Finally, prove effectivity alongside the prime-exponent theorem. Record an
explicit finite bound for every prime-counting, PNT,
zero-density, correlation and Roth cutoff used by each route. Take the maximum
of the finitely many thresholds which its proof needs. No ineffective Siegel
constant or rational-point height bound can enter the prime-exponent threshold.
The existential Lean statement of `k_0` expresses its logical conclusion;
computability is an additional mathematical obligation in the theorem above.

## References

- **[BS20]** Michael A. Bennett and Samir Siksek, *A conjecture of Erdős, supersingular primes and short character sums*, Annals of Mathematics 191 (2020), no. 2, 355–392, DOI [10.4007/annals.2020.191.2.2](https://doi.org/10.4007/annals.2020.191.2.2). [Publisher text](https://annals.math.princeton.edu/wp-content/uploads/annals-v191-n2-p02-s.pdf). Section 12 contains Andrew Granville’s addendum, pp. 386–388. All page references above are printed pages in this published version.
- **[DG95]** Henri Darmon and Andrew Granville, *On the equations z^m = F(x,y) and Ax^p + By^q = Cz^r*, Bulletin of the London Mathematical Society 27 (1995), 513–543. [Author-hosted scan](https://www.math.mcgill.ca/darmon/pub/Articles/Research/12.Granville/pub12.pdf). The fixed-exponent application uses Corollary 2.1 and its proof, pp. 520–521, including the index normalization stated above.

The general modular and analytic inputs above retain the hypotheses and numerical ranges of the cited source sections and their references.
