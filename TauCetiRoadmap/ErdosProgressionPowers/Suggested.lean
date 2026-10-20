import Mathlib

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

/-- The term at zero-based index i in an integer arithmetic progression. -/
def term (n d : ℤ) (i : ℕ) : ℤ := n + (i : ℤ) * d

/-- A positive-length primitive progression solution with prime exponent and nonzero y*d. -/
def primitive_solution (n d : ℤ) (k : ℕ) (y : ℤ) (ell : ℕ) : Prop :=
  0 < k ∧ ell.Prime ∧ Int.gcd n d = 1 ∧
    (∏ i ∈ Finset.range k, term n d i) = y ^ ell ∧ y * d ≠ 0

/-- A primitive solution of length at least 10^8 with exponent above exp(10^k). -/
def H (n d : ℤ) (k : ℕ) (y : ℤ) (ell : ℕ) : Prop :=
  primitive_solution n d k y ell ∧ 10 ^ 8 ≤ k ∧ (ell : ℝ) > Real.exp (10 ^ k : ℝ)

/-- The large-exponent hypothesis with length at least 2*10^10. -/
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

/-- Divisible terms occupy at most one residue class, with the rounding term retained. -/
theorem residue_class_count (n d : ℤ) (k r : ℕ) (h : Int.gcd n d = 1) (hr : 0 < r) :
    (1 < Int.gcd (r : ℤ) d → divisibility_indices n d k r = ∅) ∧
    (Int.gcd (r : ℤ) d = 1 → ∃ u : ZMod r, ∀ i < k,
      (r : ℤ) ∣ term n d i ↔ (i : ZMod r) = u) ∧
    ((divisibility_indices n d k r).card : ℝ) ≤ (k : ℝ)/r+1 ∧
    ∀ p : ℕ, p.Prime → ¬ (p : ℤ) ∣ d →
      |((divisibility_indices n d k p).card : ℝ)-(k : ℝ)/p| < 1 := by sorry

/-- Positive and signed solutions test the product and gcd conventions. -/
example : primitive_solution 1 24 3 35 2 ∧ primitive_solution (-3) 2 4 3 2 := by
  norm_num [primitive_solution, term, Finset.prod_range_succ]

/-- Zero length and a nonprimitive product are excluded. -/
example (n d y : ℤ) (ell : ℕ) :
    ¬ primitive_solution n d 0 y ell ∧ ¬ primitive_solution 4 2 1 2 2 := by
  norm_num [primitive_solution]

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
    (0,1,1,2) ∈ equal_sum_quadruples 3 ∧ kappa (0,1,1,2) = -1 := by decide

/-- Divisibility indices count the expected residue class and exclude index k. -/
example : divisibility_indices 1 2 6 3 = {1,4} ∧ divisibility_indices 1 1 3 4 = ∅ := by
  decide

/-- An empty index range has no divisible terms even at zero modulus. -/
example (n d : ℤ) (r : ℕ) : divisibility_indices n d 0 r = ∅ := by
  simp [divisibility_indices]


/-! ## Layer 1: Frey families and residual comparisons -/

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
example : kappa (0,1,1,2) = -1 ∧ secondA 1 1 (0,1,1,2) = 3 ∧
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

/-- The two rational-parameter cases are disjoint and exhaust the strict triples. -/
theorem case_partition_union (k : ℕ) (parameters : Triple → Finset ℚ) :
    (case_partition k parameters).1 ∪ (case_partition k parameters).2 = ap_triples k ∧
      Disjoint (case_partition k parameters).1 (case_partition k parameters).2 := by sorry

/-- The negative unit parameter lies in Case II, and empty ranges give empty cases. -/
example (parameters : Triple → Finset ℚ) :
    case_partition 3 (fun _ => {-1}) = (∅,{(0,1,2)}) ∧
    case_partition 0 parameters = (∅,∅) := by
  have hm : inCaseSquareclasses (-1) := Or.inl ⟨1, by norm_num⟩
  have ha : ap_triples 3 = {(0,1,2)} := by decide
  have hz : ap_triples 0 = ∅ := by decide
  simp [case_partition, ha, hm, hz]

/-- Three is outside the two squareclasses and therefore gives Case I. -/
example : case_partition 3 (fun _ => {3}) = ({(0,1,2)},∅) := by
  have hn : ¬ inCaseSquareclasses 3 := by
    rintro (⟨t, ht⟩ | ⟨t, ht⟩)
    · nlinarith [sq_nonneg t]
    · have hs : IsSquare (3/2 : ℚ) := ⟨t, by nlinarith [ht]⟩
      norm_num at hs
  have ha : ap_triples 3 = {(0,1,2)} := by decide
  simp [case_partition, ha, hn]

/-! ## Layer 3: The original analytic contradiction criteria -/

/-- The von-Mangoldt-weighted sum over floor(k/2) < m <= k. -/
def weightedHalf (k : ℕ) (value : ℕ → ℝ) : ℝ :=
  ∑ m ∈ Finset.Ioc (k/2) k, value m * ArithmeticFunction.vonMangoldt m

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


/-! ## Layer 4: Thin-prime sieves and the original proof assembly -/

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

/-- The real lower bound exp(exp(10^7)) certifying the quantitative Roth substitution. -/
def certifiedThreshold (k : ℕ) : Prop := (k : ℝ) ≥ Real.exp (Real.exp (10^7))

/-- A finite set of primes at most k with reciprocal mass strictly below 0.17. -/
def thinSet (k : ℕ) (s : Finset ℕ) : Prop :=
  (∀ p ∈ s, p.Prime ∧ p ≤ k) ∧ (∑ p ∈ s, 1/(p : ℝ)) < (17/100 : ℝ)

/-- The explicit factorial upper bound obtained by telescoping the native Stirling-sequence estimate. -/
theorem stirling_upper_adapter (m : ℕ) (hm : 1 ≤ m) :
    (m.factorial : ℝ) ≤ Real.sqrt (2 * Real.pi * m) *
      ((m : ℝ) / Real.exp 1)^m * Real.exp (1 / (12 * (m : ℝ))) := by sorry

/-- The original smooth-character and quantitative Roth route bounds the length under Hplus. -/
theorem original_route_bound : ∃ K : ℕ, ∀ (n d : ℤ) (k : ℕ) (y : ℤ) (ell : ℕ),
    Hplus n d k y ell → k ≤ K := by sorry

/-- The sieve is empty at zero length, and the lower smoothness endpoint is open. -/
example (n d : ℤ) (s : Finset ℕ) (k p : ℕ)
    (h : (p : ℝ) = (k : ℝ)^(7/16 : ℝ)) :
    thin_prime_survivors n d 0 s = ∅ ∧ p ∉ Tpr k := by
  simp [thin_prime_survivors, Tpr, h]

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

/-! ## Layer 5: Granville exceptional moduli and a single witness -/

/-- The bounded height exp(c*log(k)/(3*log(log(k)))) in the exceptional-zero definition. -/
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

/-- The bounded-height Landau-Page zero region for an actual primitive character. -/
def pageException (c T : ℝ) (q : ℕ) : Prop :=
  ∃ hq : NeZero q, ∃ χ : DirichletCharacter ℂ q, ∃ ρ : ℂ,
    χ.IsPrimitive ∧ (ρ ≠ 1 ∨ χ ≠ 1) ∧ @DirichletCharacter.LFunction q hq χ ρ = 0 ∧
      |ρ.im| ≤ T ∧ 1-c/Real.log T ≤ ρ.re

/-- Uniqueness of a modulus with a zero in the Landau-Page strip, uniformly in height T >= 2. -/
def boundedPage (c : ℝ) : Prop :=
  ∀ T : ℝ, 2 ≤ T → ∀ q r : ℕ, (q : ℝ) ≤ T → (r : ℝ) ≤ T →
    pageException c T q → pageException c T r → q=r

/-- A positive bounded-height Landau-Page constant exists for the continued L-functions. -/
theorem boundedPage_exists : ∃ c : ℝ, 0 < c ∧ boundedPage c := by sorry

/-- Indices with a term divisible by a divisor r of a specified positive modulus q, with r >= q^(1/3)/2. -/
def exceptional_indices (n d : ℤ) (k : ℕ) (moduli : Finset ℕ) : Finset ℕ := by
  classical
  exact (Finset.range k).filter (fun i => ∃ q ∈ moduli, 0 < q ∧ ∃ r : ℕ,
    0 < r ∧ r ∣ q ∧ (q : ℝ)^(1/3 : ℝ)/2 ≤ r ∧ (r : ℤ) ∣ term n d i)

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

/-- A high zero and the principal pole are excluded before any analytic estimate. -/
example {k q : ℕ} {c : ℝ} [NeZero q] (χ : DirichletCharacter ℂ q) (ρ : ℂ)
    (h : zeroHeight k c < |ρ.im|) :
    ¬ zeroWithin k c χ ρ ∧ ¬ zeroWithin k c (1 : DirichletCharacter ℂ q) 1 := by
  constructor
  · intro hz
    exact (not_le_of_gt h) hz.2.2.2.1
  · simp [zeroWithin]

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

/-! ## Layer 6: Effective exponent bound and fixed-length finiteness -/

/-- Above an absolute threshold, a nontrivial primitive progression has prime exponent at most exp(10^k). -/
theorem effective_prime_bound : ∃ k0 : ℕ, 5 ≤ k0 ∧
    ∀ (k : ℕ) (n d y : ℤ) (ell : ℕ), k0 ≤ k → 0 < k → Int.gcd n d = 1 → ell.Prime →
      (∏ i ∈ Finset.range k, term n d i) = y^ell →
      y*d=0 ∨ (ell : ℝ) ≤ Real.exp (10^k : ℝ) := by sorry

/-- At each fixed length at least five and exponent at least two there are finitely many nontrivial primitive signed solutions. -/
theorem fixed_exponent_finiteness (k ell : ℕ) (hk : 5 ≤ k) (he : 2 ≤ ell) :
    {t : ℤ × ℤ × ℤ | Int.gcd t.1 t.2.1 = 1 ∧ t.2.2*t.2.1 ≠ 0 ∧
      (∏ i ∈ Finset.range k, term t.1 t.2.1 i) = t.2.2^ell}.Finite := by sorry

/-- Reduction to prime exponents and finiteness of the root/exponent pairs over an integer of absolute value greater than one. -/
theorem composite_exponent_reduction (y : ℤ) (ell p : ℕ) (he : 2 ≤ ell)
    (hp : p.Prime) (hpe : p ∣ ell) :
    y^ell = (y^(ell/p))^p ∧
    (∀ (k : ℕ) (n d : ℤ), 5 ≤ k → y*d ≠ 0 →
      (∏ i ∈ Finset.range k, term n d i)=y^ell → 1 < y.natAbs) ∧
    ∀ Y : ℤ, 1 < Y.natAbs → {t : ℤ × ℕ | 0 < t.2 ∧ t.1^t.2=Y}.Finite := by sorry

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

/-- A signed solution is excluded from the conjecture's positive domain. -/
example : primitive_solution (-3) 2 4 3 2 ∧ ¬ (0 < (-3 : ℤ)) := by
  norm_num [primitive_solution, term, Finset.prod_range_succ]

/-- Zero multipliers fail; the unit multiplier recovers the sample primitive solution. -/
example (tau : ℝ) (n d : ℤ) (k : ℕ) (y : ℤ) (ell : ℕ) :
    ¬ smooth_multiplier tau n d k y ell 0 ∧ smooth_multiplier 0 1 24 3 35 2 1 := by
  norm_num [smooth_multiplier, term, Finset.prod_range_succ]
  intro p hp hpeq
  exact (hp.ne_one hpeq).elim

/-- The prime two at k=2 lies above the support threshold when tau < 1/2. -/
example (tau : ℝ) (h : tau < 1/2) : ¬ smooth_multiplier tau 1 1 2 1 2 2 := by
  intro hs
  have hh := hs.2.2.2.2.2.2 2 (by norm_num) (by norm_num)
  norm_num at hh
  linarith


end TauCetiRoadmap.ErdosProgressionPowers
