import Mathlib
import TauCeti.AlgebraicGeometry.EllipticCurve.PointCount

/-!
# ErdosProgressionPowers: representative target signatures

The roadmap is README.md. This file records statements suggested against the pinned
APIs and is not exhaustive.
-/

noncomputable section
open scoped BigOperators InnerProductSpace
namespace TauCetiRoadmap.ErdosProgressionPowers

/-! ## Layer 0: Primitive solutions and signed factors -/

/-- Three natural indices, with no ordering imposed on the carrier. -/
abbrev Triple := ℕ × ℕ × ℕ

/-- Four natural indices, allowing equal middle entries. -/
abbrev Quadruple := ℕ × ℕ × ℕ × ℕ

/-- The zero-based progression term: term_zero gives n at zero, and term_succ adds d. -/
def term (n d : ℤ) (i : ℕ) : ℤ := n + (i : ℤ) * d

/-- A positive-length primitive progression solution with prime exponent and nonzero y*d. -/
def primitive_solution (n d : ℤ) (k : ℕ) (y : ℤ) (ell : ℕ) : Prop :=
  0 < k ∧ ell.Prime ∧ Int.gcd n d = 1 ∧
    (∏ i ∈ Finset.range k, term n d i) = y ^ ell ∧ y * d ≠ 0

/-- A primitive solution of length at least 10^8 with exponent above exp(10^k). -/
def H (n d : ℤ) (k : ℕ) (y : ℤ) (ell : ℕ) : Prop :=
  primitive_solution n d k y ell ∧ 10 ^ 8 ≤ k ∧ (ell : ℝ) > Real.exp (10 ^ k : ℝ)

/-- The large-exponent hypothesis with length at least 2*10^10.
Hplus_implies_H forgets the stronger length bound; Hplus_length retains it. -/
def Hplus (n d : ℤ) (k : ℕ) (y : ℤ) (ell : ℕ) : Prop :=
  H n d k y ell ∧ 2 * 10 ^ 10 ≤ k

/-- Strict three-term arithmetic progressions in range(k). -/
def ap_triples (k : ℕ) : Finset Triple := by
  classical
  exact ((Finset.range k).product ((Finset.range k).product (Finset.range k))).filter
    (fun a => a.1 < a.2.1 ∧ a.1 + a.2.2 = 2 * a.2.1)

/-- Ordered equal-sum quadruples in range(k), with repeated middle indices permitted. -/
def equal_sum_quadruples (k : ℕ) : Finset Quadruple := by
  classical
  exact ((Finset.range k).product ((Finset.range k).product
    ((Finset.range k).product (Finset.range k)))).filter
    (fun a => a.1 < a.2.1 ∧ a.2.1 ≤ a.2.2.1 ∧ a.2.2.1 < a.2.2.2 ∧
      a.2.1 + a.2.2.1 = a.1 + a.2.2.2)

/-- The signed difference of endpoint and middle index products. -/
def kappa (a : Quadruple) : ℤ := (a.1 : ℤ)*a.2.2.2 - (a.2.1 : ℤ)*a.2.2.1

/-- Indices below k whose terms are divisible by the integer modulus r, including r=0. -/
def divisibility_indices (n d : ℤ) (k r : ℕ) : Finset ℕ := by
  classical
  exact (Finset.range k).filter (fun i => (r : ℤ) ∣ term n d i)

/-- In a primitive progression the gcd of distinct terms divides their index difference. -/
theorem term_gcd (n d : ℤ) (i j : ℕ) (hc : Int.gcd n d = 1) (hij : i < j) :
    Int.gcd (term n d i) (term n d j) ∣ j - i := by sorry

/-- Every prime at least k has term valuation divisible by the prime exponent. -/
theorem large_prime_valuations {n d : ℤ} {k : ℕ} {y : ℤ} {ell q i : ℕ}
    (hS : primitive_solution n d k y ell) (hq : q.Prime) (hqk : k ≤ q) (hi : i < k) :
    ell ∣ padicValInt q (term n d i) := by sorry

/-- Positive small-prime coefficients and signed large-prime factors of each nonzero term. -/
def SignedFactorization (n d : ℤ) (k ell : ℕ) (A : Fin k → ℕ) (z : Fin k → ℤ) : Prop :=
  ∀ i, 0 < A i ∧ z i ≠ 0 ∧ term n d i = (A i : ℤ) * z i ^ ell ∧
    (∀ p : ℕ, p.Prime → p ∣ A i → p < k) ∧
    (∀ p : ℕ, p.Prime → p ∣ (z i).natAbs → k ≤ p)

/-- Odd powers give unique signed factors when every large-prime valuation is divisible by ell. -/
theorem signed_factorization_exists_unique (n d : ℤ) (k ell : ℕ)
    (he : 0 < ell) (ho : Odd ell) (hn : ∀ i < k, term n d i ≠ 0)
    (hv : ∀ q : ℕ, q.Prime → k ≤ q → ∀ i < k, ell ∣ padicValInt q (term n d i)) :
    ∃! f : (Fin k → ℕ) × (Fin k → ℤ), SignedFactorization n d k ell f.1 f.2 := by sorry

/-- Divisible terms occupy at most one residue class, with the rounding term retained. -/
theorem residue_class_count (n d : ℤ) (k r : ℕ) (h : Int.gcd n d = 1) (hr : 0 < r) :
    (1 < Int.gcd (r : ℤ) d → divisibility_indices n d k r = ∅) ∧
    (Int.gcd (r : ℤ) d = 1 → ∃ u : ZMod r, ∀ i < k,
      (r : ℤ) ∣ term n d i ↔ (i : ZMod r) = u) ∧
    ((divisibility_indices n d k r).card : ℝ) ≤ (k : ℝ)/r+1 ∧
    ∀ p : ℕ, p.Prime → ¬ (p : ℤ) ∣ d →
      |((divisibility_indices n d k p).card : ℝ)-(k : ℝ)/p| < 1 := by sorry

/-- Positive and signed solutions test the product and gcd conventions. -/
example : primitive_solution 1 24 3 35 2 ∧ primitive_solution (-3) 2 4 3 2 ∧ ¬ (0 < (-3 : ℤ)) := by
  norm_num [primitive_solution, term, Finset.prod_range_succ]

/-- Zero length and a nonprimitive product are excluded. -/
example (n d y : ℤ) (ell : ℕ) :
    ¬ primitive_solution n d 0 y ell ∧ ¬ primitive_solution 4 2 1 2 2 := by
  norm_num [primitive_solution]

/-- Zero-based term indices and the two nested large-exponent hypotheses retain their bounds. -/
example (n d y : ℤ) (k ell : ℕ) :
    term 2 3 0 = 2 ∧ term 2 3 1 = 5 ∧ term (-3) 2 2 = 1 ∧
    (Hplus n d k y ell → H n d k y ell) ∧
    (H n d k y ell → 10^8 ≤ k) ∧
    (Hplus n d k y ell → 2*10^10 ≤ k) := by
  simp only [term]
  norm_num
  exact ⟨And.left, fun h => h.2.1, And.right⟩

/-- Lengths below three fail both large-length predicates independently of the equation. -/
example (n d y : ℤ) (ell k : ℕ) (hk : k ≤ 2) :
    ¬ H n d k y ell ∧ ¬ Hplus n d k y ell := by
  constructor
  · intro h; have := h.2.1; omega
  · intro h; have := h.2; omega

/-- Negative and mixed-sign cube factors retain the sign in the large-prime factor. -/
example : SignedFactorization (-8) 1 1 3 (fun _ => 1) (fun _ => -2) ∧
    SignedFactorization (-8) 7 2 3 (fun _ => 1) ![-2,-1] := by
  constructor
  · intro i
    fin_cases i
    refine ⟨by norm_num, by norm_num, by norm_num [term], ?_, ?_⟩
    · intro p hp hd
      exact (hp.ne_one (Nat.dvd_one.mp hd)).elim
    · intro p hp _
      exact Nat.le_trans (by decide : 1 ≤ 2) hp.two_le
  · intro i
    fin_cases i <;> refine ⟨by norm_num, by norm_num, by norm_num [term], ?_, ?_⟩
    all_goals intro p hp hd
    all_goals first | exact hp.two_le | exact (hp.ne_one (Nat.dvd_one.mp hd)).elim

/-- The prime equal to k is large, while all powers of a small prime remain in A. -/
example : SignedFactorization 8 19 2 3 (fun _ => 1) ![2,3] ∧
    SignedFactorization 64 0 3 3 (fun _ => 64) (fun _ => 1) ∧
    ¬ SignedFactorization 64 0 3 3 (fun _ => 1) (fun _ => 4) := by
  constructor
  · intro i
    fin_cases i <;> refine ⟨by norm_num, by norm_num, by norm_num [term], ?_, ?_⟩
    all_goals intro p hp hd
    all_goals first | exact hp.two_le | exact (hp.ne_one (Nat.dvd_one.mp hd)).elim
  · constructor
    · intro i
      refine ⟨by norm_num, by norm_num, by simp [term], ?_, ?_⟩
      · intro p hp hd
        have h : p ∣ 2 := hp.dvd_of_dvd_pow (show p ∣ 2^6 from hd)
        have : p = 2 := (Nat.dvd_prime (by decide : Nat.Prime 2)).mp h |>.resolve_left hp.ne_one
        omega
      · intro p hp hd
        exact (hp.ne_one (Nat.dvd_one.mp hd)).elim
    · intro h
      have hh := (h 0).2.2.2.2 2 (by decide) (by norm_num)
      norm_num at hh

/-- The three smallest lengths have no strict triple; length three has one. -/
example : ap_triples 0 = ∅ ∧ ap_triples 1 = ∅ ∧ ap_triples 2 = ∅ ∧
    ap_triples 3 = {(0,1,2)} := by decide

/-- Length five has four triples, and constant triples are always excluded. -/
example (k i : ℕ) : (ap_triples 5).card = 4 ∧ (i,i,i) ∉ ap_triples k := by
  constructor
  · decide
  · simp [ap_triples]

/-- The shortest equal-sum quadruple repeats its middle entry and has negative kappa. -/
example : equal_sum_quadruples 2 = ∅ ∧ equal_sum_quadruples 3 = {(0,1,1,2)} ∧
    (0,1,1,2) ∈ equal_sum_quadruples 3 ∧ kappa (0,1,1,2) = -1 ∧ (0,1,1,3) ∉ equal_sum_quadruples 4 ∧
    kappa (0,1,2,3) = -2 ∧ kappa (1,2,2,3) = -1 := by decide

/-- Divisibility indices count the expected residue class and exclude index k. -/
example : divisibility_indices 1 2 6 3 = {1,4} ∧ divisibility_indices 1 1 3 4 = ∅ := by
  decide

/-- An empty index range has no divisible terms even at zero modulus. -/
example (n d : ℤ) (r : ℕ) : divisibility_indices n d 0 r = ∅ := by
  simp [divisibility_indices]


/-! ## Layer 1: Frey families and residual comparisons -/

/-- The Gamma-zero index formula on the natural prime-factor carrier.
At a prime p, gammaZeroIndex_prime gives p+1. -/
def gammaZeroIndex (N : ℕ) : ℚ := N * ∏ q ∈ N.primeFactors, (1 + 1/(q : ℚ))

/-- Empty support and dyadic support distinguish the index from the prime product alone. -/
example : gammaZeroIndex 0 = 0 ∧ gammaZeroIndex 1 = 1 ∧ gammaZeroIndex 4 = 6 := by
  have h4 : (4 : ℕ).primeFactors = {2} := by
    (convert Nat.primeFactors_pow_succ 2 1 using 1; norm_num)
  norm_num [gammaZeroIndex, h4]

/-- Prime and mixed support give the indices entering the level-eleven Kraus threshold. -/
example : gammaZeroIndex 11 = 12 ∧ gammaZeroIndex 44 = 72 := by
  have h11 : (11 : ℕ).primeFactors = {11} := (by decide : Nat.Prime 11).primeFactors
  have h4 : (4 : ℕ).primeFactors = {2} := by
    (convert Nat.primeFactors_pow_succ 2 1 using 1; norm_num)
  have h44 : (44 : ℕ).primeFactors = {2,11} := by
    rw [show 44 = 4*11 from rfl, Nat.primeFactors_mul (by norm_num) (by norm_num), h4, h11]
    decide
  norm_num [gammaZeroIndex, h11, h44]

/-- The nonnegative common divisor of the endpoint terms and twice the middle term. -/
def tripleG (n d : ℤ) (a : Triple) : ℕ :=
  Int.gcd (term n d a.1) (Int.gcd (2*term n d a.2.1) (term n d a.2.2))

/-- The signed progression coefficients divided by their nonnegative common gcd. -/
def normalized (n d : ℤ) (a : Triple) : ℤ × ℤ × ℤ :=
  let g : ℤ := tripleG n d a
  (term n d a.1/g, -2*term n d a.2.1/g, term n d a.2.2/g)

/-- The progression specialization of the Frey model on its normalized coefficients. -/
def first_curve (n d : ℤ) (a : Triple) : WeierstrassCurve ℚ :=
  let c := normalized n d a
  ⟨0, (c.2.2 : ℚ)-c.1, 0, -(c.1 : ℚ)*c.2.2, 0⟩

/-- The product of the two endpoint terms of an equal-sum quadruple. -/
def secondA (n d : ℤ) (a : Quadruple) : ℤ := term n d a.1*term n d a.2.2.2

/-- The product of the two middle terms of an equal-sum quadruple. -/
def secondB (n d : ℤ) (a : Quadruple) : ℤ := term n d a.2.1*term n d a.2.2.1

/-- The second progression Frey specialization, with coefficient 2*kappa*d. -/
def second_curve (n d : ℤ) (a : Quadruple) : WeierstrassCurve ℚ :=
  ⟨0, 2*(kappa a : ℚ)*d, 0, (kappa a : ℚ)*secondA n d a, 0⟩

/-- A strict triple in a primitive solution gives nonzero coprime normalized coefficients summing to zero. -/
theorem first_curve_normalization {n d : ℤ} {k : ℕ} {y : ℤ} {ell : ℕ} {a : Triple}
    (hS : primitive_solution n d k y ell) (ha : a ∈ ap_triples k) :
    0 < tripleG n d a ∧
    (tripleG n d a : ℤ)*(normalized n d a).1=term n d a.1 ∧
    (tripleG n d a : ℤ)*(normalized n d a).2.1= -2*term n d a.2.1 ∧
    (tripleG n d a : ℤ)*(normalized n d a).2.2=term n d a.2.2 ∧
    (normalized n d a).1 + (normalized n d a).2.1 + (normalized n d a).2.2 = 0 ∧
    Int.gcd (normalized n d a).1 (normalized n d a).2.1 = 1 ∧
    Int.gcd (normalized n d a).1 (normalized n d a).2.2 = 1 ∧
    Int.gcd (normalized n d a).2.1 (normalized n d a).2.2 = 1 := by sorry

/-- The native discriminant and c4 of the first progression model, before dyadic minimization. -/
theorem first_local_invariants {n d : ℤ} {k : ℕ} {y : ℤ} {ell : ℕ} {a : Triple}
    (hS : primitive_solution n d k y ell) (ha : a ∈ ap_triples k) :
    let c := normalized n d a
    (first_curve n d a).Δ = 16*((c.1 : ℚ)*c.2.1*c.2.2)^2 ∧
      (first_curve n d a).c₄ = 16*((c.1 : ℚ)^2-(c.2.1 : ℚ)*c.2.2) := by sorry

/-- The native discriminant and c4 of the equal-sum model, using its quadratic difference identity. -/
theorem second_local_invariants (n d : ℤ) (k : ℕ) (a : Quadruple)
    (ha : a ∈ equal_sum_quadruples k) :
    (second_curve n d a).Δ = -64*(kappa a : ℚ)^3*(secondA n d a : ℚ)^2*secondB n d a ∧
    (second_curve n d a).c₄ = 16*(kappa a : ℚ)*(4*(kappa a : ℚ)*(d : ℚ)^2-3*secondA n d a) := by sorry

/-- Every prime in the upper half of the length divides the common difference under H. -/
theorem half_primes_divide_d {n d : ℤ} {k : ℕ} {y : ℤ} {ell p : ℕ}
    (hH : H n d k y ell) (hp : p.Prime) (hl : k < 2*p) (hu : p ≤ k) : (p : ℤ) ∣ d := by sorry

/-- Odd and even gcds give the specified first-family coefficients. -/
example :
    (tripleG 1 1 (0,1,2) = 1 ∧ normalized 1 1 (0,1,2) = (1,-4,3) ∧
      (first_curve 1 1 (0,1,2)).a₂ = 2 ∧ (first_curve 1 1 (0,1,2)).a₄ = -3) ∧
    (tripleG 2 1 (0,1,2) = 2 ∧ normalized 2 1 (0,1,2) = (1,-3,2) ∧
      (first_curve 2 1 (0,1,2)).a₂ = 1 ∧ (first_curve 2 1 (0,1,2)).a₄ = -2) := by
  norm_num [first_curve, normalized, tripleG, term, Int.gcd_def]

/-- Signed normalization retains the signs of both endpoint coefficients. -/
example : normalized (-3) 2 (0,1,2) = (-3,2,1) ∧
    (first_curve (-3) 2 (0,1,2)).a₂ = 4 ∧ (first_curve (-3) 2 (0,1,2)).a₄ = 3 := by
  norm_num [first_curve, normalized, tripleG, term, Int.gcd_def]

/-- The equal-sum family has a different middle coefficient from the first family. -/
example : secondA 1 1 (0,1,1,2) = 3 ∧
    secondB 1 1 (0,1,1,2) = 4 ∧ (second_curve 1 1 (0,1,1,2)).a₂ = -2 ∧
    (second_curve 1 1 (0,1,1,2)).a₄ = -3 ∧
    (second_curve 1 1 (0,1,1,2)).a₂ ≠ (first_curve 1 1 (0,1,2)).a₂ := by
  norm_num [second_curve, secondA, secondB, kappa, first_curve, normalized, tripleG,
    term, Int.gcd_def]

/-- Signed terms test the second-family coefficient sign. -/
example : secondA (-3) 2 (0,1,1,2) = -3 ∧ secondB (-3) 2 (0,1,1,2) = 1 ∧
    (second_curve (-3) 2 (0,1,1,2)).a₂ = -4 ∧
    (second_curve (-3) 2 (0,1,1,2)).a₄ = 3 := by
  norm_num [second_curve, secondA, secondB, kappa, term]


/-! ## Layer 2: Legendre cases and the simultaneous character family -/

/-- The union of the negative-square and twice-square rational classes, including zero. -/
def inCaseSquareclasses (u : ℚ) : Prop := (∃ t : ℚ, u = -t^2) ∨ ∃ t : ℚ, u = 2*t^2

/-- Partition strict triples by whether their assigned parameter set meets the complementary squareclasses. -/
def case_partition (k : ℕ) (parameters : Triple → Finset ℚ) : Finset Triple × Finset Triple := by
  classical
  let first := (ap_triples k).filter (fun a => ∃ u ∈ parameters a, ¬ inCaseSquareclasses u)
  exact (first, ap_triples k \ first)

/-- The twist by two with roots 0, 2 and 2*lambda: twistedLegendre_equation
is y^2=x*(x-2)*(x-2*lambda), and twistedLegendre_discriminant is
1024*lambda^2*(1-lambda)^2. Over a field of characteristic different from two,
twistedLegendre_isElliptic_iff excludes exactly lambda=0,1. -/
def twistedLegendre {R : Type*} [CommRing R] (lambda : R) : WeierstrassCurve R :=
  ⟨0, -2*(1+lambda), 0, 4*lambda, 0⟩

/-- The Case-II point at t=v=1/2 lies on the twisted equation, with both sides equal to -2i. -/
example : (twistedLegendre (1/2 : ℂ)).toAffine.Equation (1+Complex.I) (-1+Complex.I) ∧
    (-1+Complex.I)^2 = -2*Complex.I := by
  constructor
  · rw [WeierstrassCurve.Affine.equation_iff]
    (norm_num [twistedLegendre, pow_succ, Complex.I_sq]; ring_nf; simp [Complex.I_sq]; ring)
  · ring_nf
    (simp [Complex.I_sq]; ring)

/-- The two degenerate parameters have zero discriminant, while one half is nonsingular. -/
example : (twistedLegendre (0 : ℂ)).Δ = 0 ∧ (twistedLegendre (1 : ℂ)).Δ = 0 ∧
    (twistedLegendre (1/2 : ℂ)).Δ ≠ 0 := by
  norm_num [twistedLegendre, WeierstrassCurve.Δ, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆, WeierstrassCurve.b₈]

/-- At five the symmetric cubic and its nonsquare twist have counts eight and four. -/
theorem case_two_counts_five :
    letI : Fact (Nat.Prime 5) := ⟨by decide⟩
    (⟨0, 0, 0, -1, 0⟩ : WeierstrassCurve (ZMod 5)).pointCount = 8 ∧
      (twistedLegendre (-1 : ZMod 5)).pointCount = 4 := by sorry

/-- The two rational-parameter cases are disjoint and exhaust the strict triples. -/
theorem case_partition_union (k : ℕ) (parameters : Triple → Finset ℚ) :
    (case_partition k parameters).1 ∪ (case_partition k parameters).2 = ap_triples k ∧
      Disjoint (case_partition k parameters).1 (case_partition k parameters).2 := by sorry

/-- The negative unit parameter lies in Case II, and empty ranges give empty cases. -/
example (parameters : Triple → Finset ℚ) :
    case_partition 3 (fun _ => {-1}) = (∅,{(0,1,2)}) ∧
    case_partition 0 parameters = (∅,∅) ∧
    inCaseSquareclasses 2 ∧ case_partition 3 (fun _ => {2}) = (∅,{(0,1,2)}) ∧
    inCaseSquareclasses 0 := by
  have hm : inCaseSquareclasses (-1) := Or.inl ⟨1, by norm_num⟩
  have ha : ap_triples 3 = {(0,1,2)} := by decide
  have hz : ap_triples 0 = ∅ := by decide
  have h2 : inCaseSquareclasses 2 := Or.inr ⟨1, by norm_num⟩
  have h0 : inCaseSquareclasses 0 := Or.inl ⟨0, by norm_num⟩
  simp [case_partition, ha, hm, hz, h2, h0]

/-- Three is outside the two squareclasses and therefore gives Case I. -/
example : case_partition 3 (fun _ => {3}) = ({(0,1,2)},∅) := by
  have hn : ¬ inCaseSquareclasses 3 := by
    rintro (⟨t, ht⟩ | ⟨t, ht⟩)
    · nlinarith [sq_nonneg t]
    · have hs : IsSquare (3/2 : ℚ) := ⟨t, by nlinarith [ht]⟩
      norm_num at hs
  have ha : ap_triples 3 = {(0,1,2)} := by decide
  simp [case_partition, ha, hn]

/-- The same primitive quadratic character has nontrivial odd support and large half-interval mass. -/
theorem character_family {n d : ℤ} {k : ℕ} {y : ℤ} {ell : ℕ}
    (hH : Hplus n d k y ell) (A : Fin k → ℕ) (z : Fin k → ℤ)
    (hf : SignedFactorization n d k ell A z) (a : Triple) (ha : a ∈ ap_triples k) :
    ∃ N : ℕ, ∃ _ : NeZero N, ∃ χ : DirichletCharacter ℝ N,
      χ.IsPrimitive ∧ χ.IsQuadratic ∧ 1 < N ∧ ordCompl[2] N ≠ 1 ∧
      Squarefree (ordCompl[2] N) ∧ N ≤ 8 * ordCompl[2] N ∧
      ordCompl[2] N ∣ ∏ i ∈ Finset.univ.filter
        (fun i : Fin k => i.val = a.1 ∨ i.val = a.2.1 ∨ i.val = a.2.2), A i ∧
      (1239 / 10000 : ℝ) * k <
        |∑ m ∈ Finset.Ioc (k/2) k, χ (m : ZMod N) * ArithmeticFunction.vonMangoldt m| := by
  sorry

/-! ## Layer 3: The original analytic contradiction criteria -/

/-- The von-Mangoldt-weighted sum over floor(k/2) < m <= k. -/
def weightedHalf (k : ℕ) (value : ℕ → ℝ) : ℝ :=
  ∑ m ∈ Finset.Ioc (k/2) k, value m * ArithmeticFunction.vonMangoldt m

/-- Primitive quadratic conductors, including dyadic conductors, have a quantitatively large prime factor. -/
theorem quadraticConductor_maxPrime_lower (N : ℕ) [NeZero N]
    (χ : DirichletCharacter ℝ N) (hN : 1 < N) (hp : χ.IsPrimitive) (hq : χ.IsQuadratic) :
    (94/100 : ℝ) * Real.log N < (Nat.maxPrimeFac N : ℝ) := by sorry

/-- The general smooth-modulus product-character estimate, with the squarefree primitive factor distinguished. -/
theorem smoothModulusCharacterSum (r : ℕ) (hr : 1 ≤ r) (q : Fin r → ℕ)
    (hq : ∀ i, 0 < q i) (χ : ∀ i, DirichletCharacter ℂ (q i))
    (hsq : Squarefree (q ⟨0, hr⟩)) (hfirst : 1 < q ⟨0, hr⟩)
    (hprim : (χ ⟨0, hr⟩).IsPrimitive)
    (hcop : Nat.Coprime (q ⟨0, hr⟩) (∏ i ∈ Finset.univ.erase ⟨0, hr⟩, q i))
    (M : ℤ) (R : ℝ)
    (hR : max (((Finset.univ.erase ⟨0, hr⟩).sup q : ℕ) : ℝ)
      ((q ⟨0, hr⟩ : ℝ)^(1/4 : ℝ)) * (q ⟨0, hr⟩ : ℝ)^(5/4 : ℝ) ≤ R) :
    ‖∑ m ∈ Finset.Ioc M ⌊(M : ℝ)+R⌋, ∏ i : Fin r, χ i (m : ZMod (q i))‖ ≤
      4*R*((((q ⟨0, hr⟩).divisors.card : ℝ)^(r^2))/(q ⟨0, hr⟩ : ℝ))^(1/(2 : ℝ)^r) := by sorry

/-- Smooth primitive quadratic characters at possibly different conductors have uniform off-diagonal cancellation. -/
theorem smoothCharacterCorrelation (c₂ : ℝ) (hc : 0 < c₂) :
    ∃ c₃ : ℝ, 0 < c₃ ∧ ∃ K : ℕ, ∀ k ≥ K, ∀ N₁ N₂ : ℕ,
      ∀ h₁ : NeZero N₁, ∀ h₂ : NeZero N₂,
      ∀ χ₁ : DirichletCharacter ℝ N₁, ∀ χ₂ : DirichletCharacter ℝ N₂,
      χ₁.IsPrimitive → χ₂.IsPrimitive → χ₁.IsQuadratic → χ₂.IsQuadratic →
      (N₁ : ℝ) ≤ (k : ℝ)^c₂ → (N₂ : ℝ) ≤ (k : ℝ)^c₂ →
      (Nat.maxPrimeFac N₁ : ℝ) ≤ (k : ℝ)^(7/16 : ℝ) →
      (Nat.maxPrimeFac N₂ : ℝ) ≤ (k : ℝ)^(7/16 : ℝ) →
      (fun m : ℤ => χ₁ (m : ZMod N₁)) ≠ (fun m : ℤ => χ₂ (m : ZMod N₂)) →
      |∑ m ∈ Finset.Ioc (k/2) k, χ₁ (m : ZMod N₁) * χ₂ (m : ZMod N₂)| ≤
        (k : ℝ)^(1-c₃) := by sorry

/-- A nonnegative bound on every absolute Gram row sum bounds the squared correlations. -/
theorem finiteGramBound {𝕜 E ι : Type*} [RCLike 𝕜] [NormedAddCommGroup E]
    [InnerProductSpace 𝕜 E] [Fintype ι] (x : E) (y : ι → E) (C : ℝ)
    (hC : 0 ≤ C) (hy : ∀ a, ∑ b, ‖⟪y a, y b⟫_𝕜‖ ≤ C) :
    ∑ a, ‖⟪x, y a⟫_𝕜‖^2 ≤ C * ‖x‖^2 := by sorry

/-- Empty half intervals and the upper endpoint at two pin the weight convention. -/
example : weightedHalf 0 (fun _ => 1) = 0 ∧ weightedHalf 1 (fun _ => 1) = 0 ∧
    weightedHalf 2 (fun _ => 1) = Real.log 2 := by
  norm_num [weightedHalf, Finset.sum_Ioc_succ_top,
    ArithmeticFunction.vonMangoldt_apply_prime (by decide : Nat.Prime 2)]


/-- The half-interval weight includes prime powers and agrees with the supplied Chebyshev conventions. -/
example : weightedHalf 4 (fun _ => 1) = Real.log 3 + Real.log 2 ∧
    Chebyshev.theta 2 = Real.log 2 ∧
    Chebyshev.psi 4 = Real.log 2 + Real.log 3 + Real.log 2 ∧
    Chebyshev.theta 1 = 0 ∧ Chebyshev.psi 1 = 0 := by
  have h4 : ArithmeticFunction.vonMangoldt 4 = Real.log 2 := by
    rw [show 4 = 2^2 from rfl, ArithmeticFunction.vonMangoldt_apply_pow (by norm_num)]
    exact ArithmeticFunction.vonMangoldt_apply_prime (by decide)
  have h02 : Finset.Ioc 0 2 = ({1,2} : Finset ℕ) := by decide
  have h04 : Finset.Ioc 0 4 = ({1,2,3,4} : Finset ℕ) := by decide
  have h24 : Finset.Ioc 2 4 = ({3,4} : Finset ℕ) := by decide
  (norm_num [weightedHalf, Chebyshev.theta, Chebyshev.psi, Finset.sum_Ioc_succ_top,
    Finset.filter_insert, Finset.filter_singleton,
    h02, h04, h24, h4, ArithmeticFunction.vonMangoldt_apply_prime (by decide : Nat.Prime 2),
    ArithmeticFunction.vonMangoldt_apply_prime (by decide : Nat.Prime 3)]; ring)

/-! ## Layer 4: Thin-prime sieves and the original proof assembly -/

/-- The density ten-to-the-minus-five Roth substitution lies strictly between the two numerical cutoffs. -/
theorem roth_cutoff_substitution : (10 : ℝ)^6 < 132 * Real.log 2 * 10^5 ∧
    132 * Real.log 2 * 10^5 < (10 : ℝ)^7 := by
  constructor <;> nlinarith [Real.log_two_gt_d9, Real.log_two_lt_d9]

/-- The explicit density cutoff guarantees a strict three-term progression in the subset. -/
theorem quantitativeThreeAP (delta : ℝ) (hd : 0 < delta) (hdu : delta < 1)
    (k : ℕ) (hk : Real.exp (Real.exp (132 * Real.log 2 / delta)) ≤ (k : ℝ))
    (J : Finset ℕ) (hJ : J ⊆ Finset.range k) (hcard : delta * k ≤ J.card) :
    ∃ a ∈ ap_triples k, a.1 ∈ J ∧ a.2.1 ∈ J ∧ a.2.2 ∈ J := by sorry

/-- Prime divisors in the open-left interval (k^(7/16), k]. -/
def Tpr (k : ℕ) : Finset ℕ := by
  classical
  exact (Finset.range (k+1)).filter (fun p => p.Prime ∧ (k : ℝ)^(7/16 : ℝ) < p)

/-- Prime divisors in the open-left logarithmic interval used by the thin-prime sieve. -/
def Upr (k : ℕ) : Finset ℕ := by
  classical
  exact (Finset.range (⌈(10^4 : ℝ)*Real.log k⌉₊+1)).filter
    (fun p => p.Prime ∧ Real.log k^(1-(1/10000 : ℝ)) < p ∧ (p : ℝ) ≤ (10^4 : ℝ)*Real.log k)

/-- Indices whose terms avoid the three specified prime sets. -/
def thin_prime_survivors (n d : ℤ) (k : ℕ) (s : Finset ℕ) : Finset ℕ :=
  Finset.range k \ (s ∪ Tpr k ∪ Upr k).biUnion (divisibility_indices n d k)

/-- The least index attaining the maximal p-valuation on a nonempty finite set; zero on the empty set. -/
def removedIndex (p : ℕ) (coeff : ℕ → ℕ) (J : Finset ℕ) : ℕ := by
  classical
  let s := J.filter (fun i => padicValNat p (coeff i) = J.sup (fun j => padicValNat p (coeff j)))
  exact if h : s.Nonempty then s.min' h else 0

/-- The finite subset left after excluding one least maximal-valuation index for each supported prime below k. -/
def valuation_deletion (k : ℕ) (coeff : ℕ → ℕ) (J : Finset ℕ) : Finset ℕ := by
  classical
  exact J \ ((J.biUnion (fun i => (coeff i).primeFactors)).filter (fun p => p < k)).image
    (fun p => removedIndex p coeff J)

/-- Removing one maximal valuation per supported prime leaves a product dividing the factorial. -/
theorem valuation_deletion_factorial (n d : ℤ) (k : ℕ)
    (A : ℕ → ℕ) (J : Finset ℕ)
    (hcop : Int.gcd n d = 1) (hJ : J ⊆ Finset.range k)
    (hn : ∀ i ∈ J, term n d i ≠ 0)
    (hA : ∀ i ∈ J, 0 < A i ∧ (A i : ℤ) ∣ term n d i)
    (hs : ∀ i ∈ J, ∀ p : ℕ, p.Prime → p ∣ A i → p < k) :
    (∏ i ∈ valuation_deletion k A J, A i) ∣ (k - 1).factorial := by
  sorry

/-- Primes at most k with reciprocal mass below 0.17.
The empty set satisfies thinSet_empty; thinSet_subset restricts to a subset,
and thinSet_two_not_mem excludes two by its reciprocal mass one half. -/
def thinSet (k : ℕ) (s : Finset ℕ) : Prop :=
  (∀ p ∈ s, p.Prime ∧ p ≤ k) ∧ (∑ p ∈ s, 1/(p : ℝ)) < (17/100 : ℝ)

/-- The explicit factorial upper bound obtained by telescoping the native Stirling-sequence estimate. -/
theorem stirling_upper_adapter (m : ℕ) (hm : 1 ≤ m) :
    (m.factorial : ℝ) ≤ Real.sqrt (2 * Real.pi * m) *
      ((m : ℝ) / Real.exp 1)^m * Real.exp (1 / (12 * (m : ℝ))) := by sorry

/-- The original smooth-character and quantitative Roth route bounds the length under Hplus. -/
theorem original_route_bound : ∃ K : ℕ, ∀ (n d : ℤ) (k : ℕ) (y : ℤ) (ell : ℕ),
    Hplus n d k y ell → k ≤ K := by sorry

/-- The actual smoothness prime sets at lengths one and two test primality and the real bound. -/
example : Tpr 1 = ∅ ∧ Tpr 2 = {2} := by
  have h : (2 : ℝ)^(7/16 : ℝ) < 2 := Real.rpow_lt_self_of_one_lt (by norm_num) (by norm_num)
  constructor
  · norm_num [Tpr, Finset.range_add_one, Finset.filter_insert, Finset.filter_singleton]
  · change (Finset.range 3).filter (fun p : ℕ => p.Prime ∧ (2 : ℝ)^(7/16 : ℝ) < (p : ℝ)) = {2}
    rw [show Finset.range 3 = {0,1,2} by decide]
    norm_num [Finset.filter_insert, Finset.filter_singleton, h]

/-- The lower bound at sixteen lies strictly between three and five. -/
example : Tpr 16 = {5,7,11,13} := by
  have hpow : ((16 : ℝ)^(7/16 : ℝ))^16 = (16 : ℝ)^7 := by
    rw [← Real.rpow_mul_natCast (by norm_num)]
    norm_num
  have hlo : 3 < (16 : ℝ)^(7/16 : ℝ) := by
    by_contra h
    have hh := pow_le_pow_left₀ (Real.rpow_nonneg (by norm_num) _) (le_of_not_gt h) 16
    norm_num [hpow] at hh
  have hhi : (16 : ℝ)^(7/16 : ℝ) < 5 := by
    by_contra h
    have hh := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 5) (le_of_not_gt h) 16
    norm_num [hpow] at hh
  have hr : Finset.range 17 = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16} := by decide
  ext p
  simp only [Tpr, hr, Finset.mem_filter, Finset.mem_insert, Finset.mem_singleton]
  constructor
  · rintro ⟨hp, hprime, hgt⟩
    rcases hp with rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl <;>
      norm_num at hprime <;> norm_num <;> linarith
  · intro hp
    rcases hp with rfl|rfl|rfl|rfl <;> norm_num <;> linarith

/-- The logarithmic prime set is empty at zero and one, and contains two at length two. -/
example : Upr 0 = ∅ ∧ Upr 1 = ∅ ∧ 2 ∈ Upr 2 := by
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hu : Real.log 2 < 1 := lt_trans Real.log_two_lt_d9 (by norm_num)
  have hp : Real.log 2 ^ (1-(1/10000 : ℝ)) < 1 :=
    Real.rpow_lt_one hl.le hu (by norm_num)
  have hb : (2 : ℝ) ≤ 10^4 * Real.log 2 := by linarith [Real.log_two_gt_d9]
  have hn : 2 < ⌈(10^4 : ℝ) * Real.log 2⌉₊ + 1 := by
    have := Nat.le_ceil ((10^4 : ℝ) * Real.log 2)
    have : (2 : ℝ) ≤ (⌈(10^4 : ℝ) * Real.log 2⌉₊ : ℝ) := hb.trans this
    exact Nat.lt_succ_of_le (by exact_mod_cast this)
  refine ⟨?_, ?_, ?_⟩
  · norm_num [Upr]
  · norm_num [Upr]
  · simp only [Upr, Finset.mem_filter, Finset.mem_range]
    exact ⟨hn, by decide, by linarith [hp], hb⟩

/-- Thin sets distinguish reciprocal mass, primality and the bound on their members. -/
example : thinSet 9 ∅ ∧ thinSet 9 {7} ∧ ¬ thinSet 9 {2} ∧
    ¬ thinSet 9 {9} ∧ ¬ thinSet 6 {7} := by
  norm_num [thinSet]

/-- An empty range has no survivor, whereas length one with no forbidden primes retains its index. -/
example (n d : ℤ) (s : Finset ℕ) : thin_prime_survivors n d 0 s = ∅ ∧
    thin_prime_survivors 1 1 1 ∅ = {0} := by
  constructor
  · simp [thin_prime_survivors]
  · norm_num [thin_prime_survivors, Tpr, Upr, Finset.range_add_one,
      Finset.filter_insert, Finset.filter_singleton]

/-- Permuting the forbidden sets does not change the survivor set. -/
example (n d : ℤ) (k : ℕ) (s : Finset ℕ) : thin_prime_survivors n d k s =
    Finset.range k \ (Upr k ∪ Tpr k ∪ s).biUnion (divisibility_indices n d k) := by
  simp [thin_prime_survivors, Finset.union_comm]

/-- Empty deletion sets and unit coefficients retain their mathematical boundary values. -/
example (k : ℕ) (coeff : ℕ → ℕ) (J : Finset ℕ) :
    valuation_deletion k coeff ∅ = ∅ ∧ valuation_deletion k (fun _ => 1) J = J := by
  constructor
  · simp [valuation_deletion]
  · ext i
    simp [valuation_deletion]


/-- Sample valuation maxima and least-index ties distinguish the deletion rule. -/
example :
    valuation_deletion 5 (fun i => ([1,2,3,4,1] : List ℕ).getD i 1) (Finset.range 5) = {0,1,4} ∧
    removedIndex 2 (fun i => ([1,2,1,2] : List ℕ).getD i 1) (Finset.range 4) = 1 := by
  have h5 : Finset.range 5 = {0,1,2,3,4} := by decide
  have h4 : Finset.range 4 = {0,1,2,3} := by decide
  have v22 : padicValNat 2 2 = 1 := by
    norm_num [padicValNat, Nat.maxPowDvdDiv, Nat.maxPowDvdDiv.go]
  have v23 : padicValNat 2 3 = 0 := by
    norm_num [padicValNat, Nat.maxPowDvdDiv, Nat.maxPowDvdDiv.go]
  have v24 : padicValNat 2 4 = 2 := by
    norm_num [padicValNat, Nat.maxPowDvdDiv, Nat.maxPowDvdDiv.go]
  have v32 : padicValNat 3 2 = 0 := by
    norm_num [padicValNat, Nat.maxPowDvdDiv, Nat.maxPowDvdDiv.go]
  have v33 : padicValNat 3 3 = 1 := by
    norm_num [padicValNat, Nat.maxPowDvdDiv, Nat.maxPowDvdDiv.go]
  have v34 : padicValNat 3 4 = 0 := by
    norm_num [padicValNat, Nat.maxPowDvdDiv, Nat.maxPowDvdDiv.go]
  have f4 : (4 : ℕ).primeFactors = {2} := by
    convert Nat.primeFactors_pow_succ 2 1 using 1; norm_num
  norm_num [valuation_deletion, h5, h4, removedIndex, Finset.sup_insert,
    Finset.filter_insert, Finset.filter_singleton, Finset.image_singleton,
    Finset.min'_eq_inf', Finset.inf'_insert, f4, v22, v23, v24, v32, v33, v34]
  decide

/-- Empty sets and singleton or tied constant valuations pin the least-maximizer convention. -/
example (p : ℕ) (coeff : ℕ → ℕ) : removedIndex p coeff ∅ = 0 ∧
    removedIndex p (fun _ => 0) {3} = 3 ∧ removedIndex p (fun _ => 1) {2,5} = 2 := by
  simp [removedIndex, Finset.sup_insert, Finset.min'_eq_inf', Finset.inf'_insert]

/-! ## Layer 5: Granville exceptional moduli and a single witness -/

/-- The exceptional-zero height exp(c*log(k)/(3*log(log(k)))).
zeroHeight_pos follows from positivity of exp; zeroHeight_zero and zeroHeight_one
give value one at lengths zero and one with the total logarithm convention. -/
def zeroHeight (k : ℕ) (c : ℝ) : ℝ := Real.exp (c*Real.log k/(3*Real.log (Real.log k)))

/-- A primitive continued L-function zero in the specified strip and height, excluding the principal pole. -/
def zeroWithin {q : ℕ} [NeZero q] (k : ℕ) (c : ℝ)
    (χ : DirichletCharacter ℂ q) (ρ : ℂ) : Prop :=
  χ.IsPrimitive ∧ (ρ ≠ 1 ∨ χ ≠ 1) ∧ χ.LFunction ρ = 0 ∧ |ρ.im| ≤ zeroHeight k c ∧
    1-3*Real.log (Real.log k)/Real.log k < ρ.re

/-- A positive modulus admitting a primitive character with a zero in the bounded-height region. -/
def hasZeroWithin (k : ℕ) (c : ℝ) (q : ℕ) : Prop :=
  ∃ hq : NeZero q, ∃ χ : DirichletCharacter ℂ q, ∃ ρ : ℂ, @zeroWithin q hq k c χ ρ

/-- Positive moduli at most k^4 admitting a bounded-height zero of a primitive continued L-function. -/
def exceptional_moduli (k : ℕ) (c : ℝ) : Finset ℕ := by
  classical
  exact (Finset.range (k^4+1)).filter (fun q => 0 < q ∧ hasZeroWithin k c q)

/-- A primitive regular L-function zero in the closed bounded-height Landau-Page strip. -/
def pageZero {q : ℕ} [NeZero q] (c T : ℝ) (χ : DirichletCharacter ℂ q) (ρ : ℂ) : Prop :=
  χ.IsPrimitive ∧ (ρ ≠ 1 ∨ χ ≠ 1) ∧ χ.LFunction ρ = 0 ∧
    |ρ.im| ≤ T ∧ 1-c/Real.log T ≤ ρ.re

/-- A positive modulus admitting a zero in the Landau-Page region. -/
def pageException (c T : ℝ) (q : ℕ) : Prop :=
  ∃ hq : NeZero q, ∃ χ : DirichletCharacter ℂ q, ∃ ρ : ℂ, @pageZero q hq c T χ ρ

/-- Every exceptional pair is real and simple, and the pair is unique across all moduli at most T. -/
def boundedPage (c : ℝ) : Prop :=
  ∀ T : ℝ, 2 ≤ T →
    (∀ q : ℕ, ∀ hq : NeZero q, (q : ℝ) ≤ T →
      ∀ χ : DirichletCharacter ℂ q, ∀ ρ : ℂ, @pageZero q hq c T χ ρ →
        (∀ a : ZMod q, (χ a).im = 0) ∧ ρ.im = 0 ∧
          deriv (@DirichletCharacter.LFunction q hq χ) ρ ≠ 0) ∧
    (∀ q r : ℕ, ∀ hq : NeZero q, ∀ hr : NeZero r, (q : ℝ) ≤ T → (r : ℝ) ≤ T →
      ∀ χ : DirichletCharacter ℂ q, ∀ ψ : DirichletCharacter ℂ r, ∀ ρ σ : ℂ,
      @pageZero q hq c T χ ρ → @pageZero r hr c T ψ σ →
        q = r ∧ (∀ m : ℤ, χ (m : ZMod q) = ψ (m : ZMod r)) ∧ ρ = σ)

/-- Positive real zeros of quadratic characters at regular points satisfy the explicit effective upper bound. -/
theorem realExceptionalZero_upper (q : ℕ) [NeZero q] (hq : 3 ≤ q)
    (χ : DirichletCharacter ℂ q) (hχ : χ.IsQuadratic) (β : ℝ) (hβ : 0 < β)
    (hregular : (β : ℂ) ≠ 1 ∨ χ ≠ 1)
    (hz : χ.LFunction (β : ℂ) = 0) :
    β ≤ 1 - 40 / (Real.sqrt q * (Real.log q)^2) := by sorry

/-- A positive bounded-height Landau-Page constant exists for the continued L-functions. -/
theorem boundedPage_exists : ∃ c : ℝ, 0 < c ∧ boundedPage c := by sorry

/-- Smaller c narrows the exceptional strip at every admissible height. -/
example (c c' : ℝ) (hc : c' ≤ c) (hp : boundedPage c) : boundedPage c' := by
  intro T hT
  have hl : 0 < Real.log T := Real.log_pos (by linarith)
  have inc {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q} {ρ : ℂ}
      (h : pageZero c' T χ ρ) : pageZero c T χ ρ := by
    refine ⟨h.1, h.2.1, h.2.2.1, h.2.2.2.1, ?_⟩
    have := div_le_div_of_nonneg_right hc hl.le
    linarith [h.2.2.2.2]
  exact ⟨fun q hq hqt χ ρ h => (hp T hT).1 q hq hqt χ ρ (@inc q hq χ ρ h),
    fun q r hq hr hqt hrt χ ψ ρ σ hχ hψ =>
      (hp T hT).2 q r hq hr hqt hrt χ ψ ρ σ (@inc q hq χ ρ hχ) (@inc r hr ψ σ hψ)⟩

/-- The full Page hypothesis forces reality and simplicity, and identifies pairs across levels. -/
example (c T : ℝ) (hp : boundedPage c) (hT : 2 ≤ T) (q r : ℕ)
    [hq : NeZero q] [hr : NeZero r] (hqt : (q : ℝ) ≤ T) (hrt : (r : ℝ) ≤ T)
    (χ : DirichletCharacter ℂ q) (ψ : DirichletCharacter ℂ r) (ρ σ : ℂ)
    (hz : pageZero c T χ ρ) (hw : pageZero c T ψ σ) :
    ((∀ a : ZMod q, (χ a).im = 0) ∧ ρ.im = 0 ∧ deriv χ.LFunction ρ ≠ 0) ∧
    (q = r ∧ (∀ m : ℤ, χ (m : ZMod q) = ψ (m : ZMod r)) ∧ ρ = σ) := by
  exact ⟨(hp T hT).1 q hq hqt χ ρ hz, (hp T hT).2 q r hq hr hqt hrt χ ψ ρ σ hz hw⟩

/-- Zero moduli and negative height bounds are excluded independently of the L-function data. -/
example (c T : ℝ) : ¬ pageException c T 0 ∧
    (T < 0 → ∀ q, ¬ pageException c T q) := by
  constructor
  · rintro ⟨hq, _⟩
    exact hq.out rfl
  · intro hT q
    rintro ⟨hq, χ, ρ, hz⟩
    have hh := hz.2.2.2.1
    exact (not_le_of_gt hT) ((abs_nonneg ρ.im).trans hh)

/-- The Page witness excludes both the principal pole and an above-height candidate. -/
example {q : ℕ} [NeZero q] (c T : ℝ) (χ : DirichletCharacter ℂ q) (ρ : ℂ)
    (hh : T < |ρ.im|) :
    ¬ pageZero c T (1 : DirichletCharacter ℂ q) 1 ∧ ¬ pageZero c T χ ρ := by
  constructor
  · simp [pageZero]
  · intro h
    exact (not_le_of_gt hh) h.2.2.2.1

/-- A negative-even trivial zero satisfies the region predicate at height two and a wide strip. -/
example : pageZero (4 * Real.log 2) 2 (1 : DirichletCharacter ℂ 1) (-2) ∧
    pageException (4 * Real.log 2) 2 1 := by
  have hz : pageZero (4 * Real.log 2) 2 (1 : DirichletCharacter ℂ 1) (-2) := by
    refine ⟨DirichletCharacter.isPrimitive_one_level_one, by norm_num, ?_, by norm_num, ?_⟩
    · have he : DirichletCharacter.Even (1 : DirichletCharacter ℂ 1) := by
        change (1 : DirichletCharacter ℂ 1) (-1) = 1
        rw [show (-1 : ZMod 1) = 1 from Subsingleton.elim _ _]
        exact map_one _
      simpa using he.LFunction_neg_two_mul_nat_add_one 0
    · have hlog : Real.log 2 ≠ 0 := ne_of_gt (Real.log_pos (by norm_num))
      norm_num [hlog]
  exact ⟨hz, ⟨inferInstance, 1, -2, hz⟩⟩

/-- Zero and unit lengths, zero c and positivity pin the total height convention. -/
example (k : ℕ) (c : ℝ) : zeroHeight 0 c = 1 ∧ zeroHeight 1 c = 1 ∧
    zeroHeight k 0 = 1 ∧ 0 < zeroHeight k c := by
  simp [zeroHeight, Real.exp_pos]

/-- Indices with a term divisible by a divisor r of a specified positive modulus q, with r >= q^(1/3)/2. -/
def exceptional_indices (n d : ℤ) (k : ℕ) (moduli : Finset ℕ) : Finset ℕ := by
  classical
  exact (Finset.range k).filter (fun i => ∃ q ∈ moduli, 0 < q ∧ ∃ r : ℕ,
    0 < r ∧ r ∣ q ∧ (q : ℝ)^(1/3 : ℝ)/2 ≤ r ∧ (r : ℤ) ∣ term n d i)

/-- The even quadratic character modulo five has a zero at zero inside the length-sixteen region. -/
theorem exceptional_moduli_five :
    ∃ χ : DirichletCharacter ℂ 5, χ.IsQuadratic ∧ χ.Even ∧
      zeroWithin 16 0 χ 0 ∧ hasZeroWithin 16 0 5 ∧ 5 ∈ exceptional_moduli 16 0 := by sorry

/-- No zero modulus or zero length admits a primitive zero in the exceptional region. -/
example (k q : ℕ) (c : ℝ) : ¬ hasZeroWithin k c 0 ∧ ¬ hasZeroWithin 0 c q := by
  constructor
  · rintro ⟨hq, _⟩
    exact hq.out rfl
  · rintro ⟨hq, χ, ρ, hz⟩
    let : NeZero q := hq
    have hre : 1 < ρ.re := by simpa [zeroWithin] using hz.2.2.2.2
    exact (χ.LFunction_ne_zero_of_one_le_re hz.2.1.symm hre.le) hz.2.2.1

/-- Increasing c enlarges the permitted height once k is at least three. -/
example (k q : ℕ) (c c' : ℝ) (hk : 3 ≤ k) (hc : c ≤ c') :
    hasZeroWithin k c q → hasZeroWithin k c' q := by
  rintro ⟨hq, χ, ρ, hz⟩
  let : NeZero q := hq
  have hk3 : (3 : ℝ) ≤ k := by exact_mod_cast hk
  have h3 : 1 < Real.log (3 : ℝ) :=
    (Real.lt_log_iff_exp_lt (by norm_num)).mpr Real.exp_one_lt_three
  have hl : 1 < Real.log (k : ℝ) :=
    h3.trans_le (Real.log_le_log (by norm_num) hk3)
  have hll : 0 < Real.log (Real.log (k : ℝ)) := Real.log_pos hl
  have hmul := mul_le_mul_of_nonneg_right hc (le_of_lt (lt_trans (by norm_num) hl))
  have hdiv := div_le_div_of_nonneg_right hmul (by positivity : 0 ≤ 3 * Real.log (Real.log (k : ℝ)))
  refine ⟨hq, χ, ρ, hz.1, hz.2.1, hz.2.2.1, ?_, hz.2.2.2.2⟩
  exact hz.2.2.2.1.trans (Real.exp_le_exp.mpr hdiv)

/-- The exceptional moduli are polylogarithmically numerous, large, and unique below the zero height. -/
theorem exceptional_moduli_bounds (c : ℝ) (hc : 0 < c) (hp : boundedPage c) :
    ∃ K : ℕ, ∃ C : ℝ, 0 < C ∧ ∀ k ≥ K,
      ((exceptional_moduli k c).card : ℝ) ≤ C*Real.log k^61 ∧
      (∀ q ∈ exceptional_moduli k c, Real.log k ≤ (q : ℝ)) ∧
      ((exceptional_moduli k c).filter (fun q : ℕ => (q : ℝ) < zeroHeight k c)).card ≤ 1 := by sorry

/-- A primitive nonprincipal character outside the exceptional set has half-interval sum O(k/log(k)). -/
theorem nonexceptional_half_sum (c : ℝ) (hc : 0 < c) :
    ∃ K : ℕ, ∃ C : ℝ, 0 < C ∧ ∀ k ≥ K, ∀ q : ℕ, ∀ hq : NeZero q,
      ∀ χ : DirichletCharacter ℂ q, χ.IsPrimitive → χ ≠ 1 → q ≤ k^4 →
      q ∉ exceptional_moduli k c →
      ‖∑ m ∈ Finset.Ioc (k/2) k, χ (m : ZMod q)*(ArithmeticFunction.vonMangoldt m : ℂ)‖ ≤
        C*(k : ℝ)/Real.log k := by sorry

/-- For primitive nonzero progressions the exceptional divisibility indices have density O(log(k)^(-1/4)). -/
theorem exceptional_indices_sparse (c : ℝ) (hc : 0 < c) (hp : boundedPage c) :
    ∃ K : ℕ, ∃ C : ℝ, 0 < C ∧ ∀ k ≥ K, ∀ n d : ℤ,
      n ≠ 0 → d ≠ 0 → Int.gcd n d = 1 →
      ((exceptional_indices n d k (exceptional_moduli k c)).card : ℝ) ≤
        C*(k : ℝ)/(Real.log k)^(1/4 : ℝ) := by sorry

/-- The single-conductor exceptional-zero route bounds the length under Hplus. -/
theorem granville_route_bound : ∃ K : ℕ, ∀ (n d : ℤ) (k : ℕ) (y : ℤ) (ell : ℕ),
    Hplus n d k y ell → k ≤ K := by sorry

/-- Zero moduli and moduli above k^4 cannot be exceptional. -/
example (k q : ℕ) (c : ℝ) (h : k^4 < q) :
    0 ∉ exceptional_moduli k c ∧ q ∉ exceptional_moduli k c := by
  simp only [exceptional_moduli, Finset.mem_filter, Finset.mem_range, not_and]
  constructor
  · simp
  · intro hq
    omega

/-- Height, pole and real-part restrictions reject independent invalid zero candidates. -/
example {k q : ℕ} {c : ℝ} [NeZero q] (χ : DirichletCharacter ℂ q) (ρ : ℂ)
    (h : zeroHeight k c < |ρ.im|) :
    ¬ zeroWithin k c χ ρ ∧ ¬ zeroWithin k c (1 : DirichletCharacter ℂ q) 1 ∧
    ¬ zeroWithin 0 c χ 0 := by
  refine ⟨?_, ?_, ?_⟩
  · intro hz
    exact (not_le_of_gt h) hz.2.2.2.1
  · simp [zeroWithin]
  · norm_num [zeroWithin]

/-- Empty modulus sets yield empty bad-index sets. -/
example (n d : ℤ) (k : ℕ) : exceptional_indices n d k ∅ = ∅ := by
  simp [exceptional_indices]

/-- Large divisors remain valid witnesses; the cube-root endpoint at modulus eight is included. -/
example : 0 ∈ exceptional_indices 1000 1 3 {1000} ∧
    exceptional_indices 1 1 4 {8} = Finset.range 4 := by
  constructor
  · simp only [exceptional_indices, Finset.mem_filter, Finset.mem_range,
      Finset.mem_singleton, exists_eq_left]
    refine ⟨by norm_num, by norm_num, 1000, by norm_num, dvd_refl _, ?_, by norm_num [term]⟩
    have hh : (1000 : ℝ)^(1/3 : ℝ) ≤ (1000 : ℝ)^(1 : ℝ) := by
      exact Real.rpow_le_rpow_of_exponent_le (by norm_num) (by norm_num)
    norm_num at hh
    linarith
  · have h8 : (8 : ℝ)^(1/3 : ℝ) = 2 := by
      rw [show (8 : ℝ) = 2^3 by norm_num, ← Real.rpow_natCast_mul (by norm_num)]
      norm_num
    ext i
    simp only [exceptional_indices, Finset.mem_filter, Finset.mem_range,
      Finset.mem_singleton, exists_eq_left]
    constructor
    · exact And.left
    · intro hi
      exact ⟨hi, by norm_num, 1, by norm_num, by norm_num, by norm_num [h8], by simp [term]⟩

/-- The real scale needed for a single Granville witness holds from sixty-four, with equality there. -/
theorem granville_scale (x : ℝ) (hx : 64 ≤ x) :
    8 * x^(7/2 : ℝ) ≤ x^4 ∧ 8 * (64 : ℝ)^(7/2 : ℝ) = (64 : ℝ)^4 := by sorry

/-! ## Layer 6: Effective exponent bound and fixed-length finiteness -/

/-- Above an absolute threshold, a nontrivial primitive progression has prime exponent at most exp(10^k). -/
theorem effective_prime_bound : ∃ k0 : ℕ, 5 ≤ k0 ∧
    ∀ (k : ℕ) (n d y : ℤ) (ell : ℕ), k0 ≤ k → 0 < k → Int.gcd n d = 1 → ell.Prime →
      (∏ i ∈ Finset.range k, term n d i) = y^ell →
      y*d=0 ∨ (ell : ℝ) ≤ Real.exp (10^k : ℝ) := by sorry

/-- Fixed-exponent signed progression finiteness throughout the hyperbolic diagonal-curve range. -/
theorem fixed_exponent_finiteness (k ell : ℕ) (hk : 3 ≤ k) (he : 2 ≤ ell)
    (hh : 2*ell+k < k*ell) :
    {t : ℤ × ℤ × ℤ | Int.gcd t.1 t.2.1 = 1 ∧ t.2.2*t.2.1 ≠ 0 ∧
      (∏ i ∈ Finset.range k, term t.1 t.2.1 i) = t.2.2^ell}.Finite := by sorry

/-- Euler's positive four-term progression product cannot be a square. -/
theorem four_term_product_not_square (n d y : ℤ) (hn : 0 < n) (hd : 0 < d)
    (hcop : Int.gcd n d = 1) :
    (∏ i ∈ Finset.range 4, term n d i) ≠ y^2 := by sorry

/-- Euler's positive three-term progression product cannot be a cube. -/
theorem three_term_product_not_cube (n d y : ℤ) (hn : 0 < n) (hd : 0 < d)
    (hcop : Int.gcd n d = 1) :
    (∏ i ∈ Finset.range 3, term n d i) ≠ y^3 := by sorry

/-- Positive fixed-exponent finiteness includes the two elliptic arithmetic boundary cases. -/
theorem positive_fixed_exponent_finiteness (k ell : ℕ) (hk : 3 ≤ k) (he : 2 ≤ ell)
    (hh : 6 ≤ k+ell) :
    {t : ℤ × ℤ × ℤ | 0 < t.1 ∧ 0 < t.2.1 ∧ 0 < t.2.2 ∧
      Int.gcd t.1 t.2.1 = 1 ∧
      (∏ i ∈ Finset.range k, term t.1 t.2.1 i) = t.2.2^ell}.Finite := by sorry

/-- Boundary products retain the shared prime two, and zero difference admits a cube. -/
example : (∏ i ∈ Finset.range 4, term 1 1 i) = 24 ∧
    (∏ i ∈ Finset.range 3, term 1 1 i) = 6 ∧
    (∏ i ∈ Finset.range 3, term 2 1 i) = 24 ∧
    (∏ i ∈ Finset.range 3, term 1 0 i) = (1 : ℤ)^3 := by
  norm_num [term, Finset.prod_range_succ]

/-- Every exponent at least two is in the hyperbolic range at lengths at least five. -/
theorem fixed_exponent_finiteness_length_ge_five (k ell : ℕ) (hk : 5 ≤ k) (he : 2 ≤ ell) :
    {t : ℤ × ℤ × ℤ | Int.gcd t.1 t.2.1 = 1 ∧ t.2.2*t.2.1 ≠ 0 ∧
      (∏ i ∈ Finset.range k, term t.1 t.2.1 i) = t.2.2^ell}.Finite := by sorry

/-- Exact division by any divisor of the exponent preserves the integer power. -/
theorem pow_eq_pow_div_prime (y : ℤ) (ell p : ℕ) (hpe : p ∣ ell) :
    y^ell = (y^(ell/p))^p := by sorry

/-- Three distinct nonzero progression terms already exclude power variables of absolute value one. -/
theorem primitive_solution_natAbs_y_gt_one (y n d : ℤ) (k ell : ℕ)
    (hk : 3 ≤ k) (he : 2 ≤ ell) (hne : y*d ≠ 0)
    (hprod : (∏ i ∈ Finset.range k, term n d i) = y^ell) : 1 < y.natAbs := by sorry

/-- A fixed integer of absolute value greater than one has finitely many root/exponent pairs. -/
theorem finite_root_exponent_pairs (Y : ℤ) (hY : 1 < Y.natAbs) :
    {t : ℤ × ℕ | 0 < t.2 ∧ t.1^t.2 = Y}.Finite := by sorry

/-- For each sufficiently large fixed length there are finitely many primitive nontrivial solutions with arbitrary exponent at least two. -/
theorem fixed_length_finiteness : ∃ k0 : ℕ, 5 ≤ k0 ∧ ∀ k ≥ k0,
    ({t : ℤ × ℤ × ℤ × ℕ | 0 < t.1 ∧ 0 < t.2.1 ∧ 0 < t.2.2.1 ∧ 2 ≤ t.2.2.2 ∧
      Int.gcd t.1 t.2.1 = 1 ∧ (∏ i ∈ Finset.range k, term t.1 t.2.1 i) = t.2.2.1^t.2.2.2}.Finite) ∧
    {t : ℤ × ℤ × ℤ × ℕ | t.2.2.1*t.2.1 ≠ 0 ∧ 2 ≤ t.2.2.2 ∧ Int.gcd t.1 t.2.1 = 1 ∧
      (∏ i ∈ Finset.range k, term t.1 t.2.1 i) = t.2.2.1^t.2.2.2}.Finite := by sorry



/-! ## Layer 7: Conjectural and announced predicates -/

/-- A product of at least two consecutive positive integers is not a nontrivial perfect power. -/
theorem consecutiveProduct_not_perfectPower (n k y ell : ℕ)
    (hn : 0 < n) (hk : 2 ≤ k) (hy : 0 < y) (he : 2 ≤ ell) :
    (∏ i ∈ Finset.range k, (n + i)) ≠ y^ell := by sorry

/-- The positive-domain eventual-nonexistence predicate, without asserting the conjecture. -/
def erdos_threshold (K : ℕ) : Prop := ∀ (k : ℕ) (n d y : ℤ) (ell : ℕ),
  K ≤ k → 2 ≤ k → 0 < n → 0 < d → 0 < y → 2 ≤ ell → Int.gcd n d = 1 →
    (∏ i ∈ Finset.range k, term n d i) ≠ y^ell

/-- A primitive prime-exponent progression equation with nonzero multiplier supported on primes at most tau*k. -/
def smooth_multiplier (tau : ℝ) (n d : ℤ) (k : ℕ) (y : ℤ) (ell : ℕ) (b : ℤ) : Prop :=
  0 < k ∧ ell.Prime ∧ Int.gcd n d = 1 ∧ y*d ≠ 0 ∧ b ≠ 0 ∧
    (∏ i ∈ Finset.range k, term n d i) = b*y^ell ∧
    ∀ p : ℕ, p.Prime → p ∣ b.natAbs → (p : ℝ) ≤ tau*k

/-- The known primitive square progression excludes thresholds zero and three. -/
example : ¬ erdos_threshold 0 ∧ ¬ erdos_threshold 3 := by
  have hp : (∏ i ∈ Finset.range 3, term 1 24 i) = (35 : ℤ)^2 := by
    norm_num [term, Finset.prod_range_succ]
  constructor <;> intro h
  · exact h 3 1 24 35 2 (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num) hp
  · exact h 3 1 24 35 2 (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num) hp

/-- Zero multipliers fail; the unit multiplier recovers the sample primitive solution. -/
example (tau : ℝ) (n d : ℤ) (k : ℕ) (y : ℤ) (ell : ℕ) :
    ¬ smooth_multiplier tau n d k y ell 0 ∧ smooth_multiplier 0 1 24 3 35 2 1 := by
  norm_num [smooth_multiplier, term, Finset.prod_range_succ]
  intro p hp hpeq
  exact (hp.ne_one hpeq).elim

/-- A nonunit multiplier is allowed exactly at and above its closed prime-support endpoint. -/
example (tau : ℝ) : smooth_multiplier tau 1 1 2 1 2 2 ↔ 1 ≤ tau := by
  norm_num [smooth_multiplier, term, Finset.prod_range_succ]
  constructor
  · intro h
    have hh := h 2 (by norm_num) (by norm_num)
    norm_num at hh
    linarith
  · intro h p hp hdiv
    have hp2 : p = 2 := (Nat.dvd_prime (by decide : Nat.Prime 2)).mp hdiv |>.resolve_left hp.ne_one
    subst p
    norm_num
    linarith



end TauCetiRoadmap.ErdosProgressionPowers
