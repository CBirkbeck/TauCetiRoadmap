import Mathlib

/-!
# QSeriesPartitionsAndMockModularForms: representative target signatures

The roadmap is README.md. This file records statements suggested against the pinned APIs
and is not exhaustive.
-/

namespace TauCetiRoadmap.QSeriesPartitionsAndMockModularForms

open scoped BigOperators

noncomputable section

/-! ## Layer 1: finite, integer-indexed and formal q-products -/

local notation3 "P[" a ", " q ", " n "]" =>
  (∏ j ∈ Finset.range n, (1 - a * q ^ j))

/-- Inverting a unit parameter and unit base gives the triangular q-power. -/
theorem qPochhammer_invert_base {K : Type*} [CommRing K] (a q : Kˣ) (n : ℕ) :
    P[(a : K), (q : K), n] =
      (-(a : K)) ^ n * (q : K) ^ (n * (n - 1) / 2) *
        P[((a⁻¹ : Kˣ) : K), ((q⁻¹ : Kˣ) : K), n] := by
  sorry

/-- Coefficient d of the positive formal tail uses the first d+1 positive factors. -/
def formalQPochhammerTail {K : Type*} [CommRing K] (a : K) : PowerSeries K :=
  PowerSeries.mk fun d => PowerSeries.coeff d
    (∏ j ∈ Finset.range (d + 1),
      (1 - PowerSeries.C a * (PowerSeries.X : PowerSeries K) ^ (j + 1)))

/-- The full formal product includes its constant factor 1-a, as expressed by `formalQPochhammer_eq_factor_tail`. Its coefficients stabilize in finite prefixes (`formalQPochhammer_coeff_stable`), and coefficient ring homomorphisms preserve the product (`formalQPochhammer_map`); see README §1.4. -/
def formalQPochhammer {K : Type*} [CommRing K] (a : K) : PowerSeries K :=
  PowerSeries.C (1 - a) * formalQPochhammerTail a

/-- Every positive formal tail has constant coefficient one and is a unit. -/
theorem formalQPochhammer_tail_unit {K : Type*} [CommRing K] (a : K) :
    PowerSeries.constantCoeff (formalQPochhammerTail a) = 1 ∧
      IsUnit (formalQPochhammerTail a) := by
  sorry

/-- The coefficients through degree two retain the index-zero factor. -/
theorem formalFirstCoefficients {K : Type*} [CommRing K] (a : K) :
    PowerSeries.coeff 0 (formalQPochhammer a) = 1 - a ∧
    PowerSeries.coeff 1 (formalQPochhammer a) = -a * (1 - a) ∧
    PowerSeries.coeff 2 (formalQPochhammer a) = -a * (1 - a) := by
  norm_num [formalQPochhammer, formalQPochhammerTail, Finset.prod_range_succ,
    PowerSeries.coeff_mul, PowerSeries.coeff_C_mul, PowerSeries.coeff_one,
    PowerSeries.coeff_X_pow, Finset.Nat.sum_antidiagonal_eq_sum_range_succ_mk,
    Finset.sum_range_succ]
  simp [PowerSeries.coeff_X]
  ring

/-- Reduction modulo two changes the signs but preserves the positive-tail coefficients. -/
theorem formalModTwo :
    PowerSeries.coeff 0 (formalQPochhammerTail (1 : ZMod 2)) = 1 ∧
    PowerSeries.coeff 1 (formalQPochhammerTail (1 : ZMod 2)) = 1 ∧
    PowerSeries.coeff 2 (formalQPochhammerTail (1 : ZMod 2)) = 1 := by
  have htail {K : Type} [CommRing K] (a : K) :
      PowerSeries.coeff 0 (formalQPochhammerTail a) = 1 ∧
      PowerSeries.coeff 1 (formalQPochhammerTail a) = -a ∧
      PowerSeries.coeff 2 (formalQPochhammerTail a) = -a := by
    norm_num [formalQPochhammerTail, Finset.prod_range_succ,
      PowerSeries.coeff_mul, PowerSeries.coeff_C_mul, PowerSeries.coeff_one,
      PowerSeries.coeff_X_pow, Finset.Nat.sum_antidiagonal_eq_sum_range_succ_mk,
      Finset.sum_range_succ]
    simp [PowerSeries.coeff_X]
  obtain ⟨h0, h1, h2⟩ := htail (1 : ZMod 2)
  have hneg : (-1 : ZMod 2) = 1 := by decide
  exact ⟨h0, h1.trans hneg, h2.trans hneg⟩

/-- With parameter zero every factor of the positive tail is one. -/
example {K : Type*} [CommRing K] : formalQPochhammerTail (0 : K) = 1 ∧
    PowerSeries.coeff 0 (formalQPochhammerTail (1 : ZMod 2)) = 1 ∧
    PowerSeries.coeff 1 (formalQPochhammerTail (1 : ZMod 2)) = 1 ∧
    PowerSeries.coeff 2 (formalQPochhammerTail (1 : ZMod 2)) = 1 := by
  constructor
  · ext d
    simp [formalQPochhammerTail]
  · exact formalModTwo

/-- The full product at parameter one vanishes, rather than becoming a unit. -/
example {K : Type*} [CommRing K] (a : K) : formalQPochhammer (1 : K) = 0 ∧
    PowerSeries.coeff 0 (formalQPochhammer a) = 1 - a ∧
    PowerSeries.coeff 1 (formalQPochhammer a) = -a * (1 - a) ∧
    PowerSeries.coeff 2 (formalQPochhammer a) = -a * (1 - a) := by
  constructor
  · simp [formalQPochhammer]
  · exact formalFirstCoefficients a

/-- The stabilized formal positive tail is the limit of the positive finite products. -/
theorem formalQPochhammerTail_coeff_stable {K : Type*} [CommRing K]
    (a : K) (d N : ℕ) (h : d ≤ N) :
    PowerSeries.coeff d (∏ j ∈ Finset.range N,
      (1 - PowerSeries.C a * (PowerSeries.X : PowerSeries K) ^ (j + 1))) =
      PowerSeries.coeff d (formalQPochhammerTail a) := by
  sorry

/-- On the open unit disc finite products tend to the analytic product. -/
theorem qPochhammerFin_tendsto_pointwise (a q : ℂ) (hq : ‖q‖ < 1) :
    Filter.Tendsto (fun n => P[a, q, n]) Filter.atTop
      (nhds (∏' j : ℕ, (1 - a * q ^ j))) := by
  sorry

/-- The finite-prefix adapter converges locally uniformly in both parameters on the disc. -/
theorem qPochhammerFin_tendsto :
    TendstoLocallyUniformlyOn
      (fun n : ℕ => fun p : ℂ × ℂ => P[p.1, p.2, n])
      (fun p : ℂ × ℂ => ∏' j : ℕ, (1 - p.1 * p.2 ^ j))
      Filter.atTop {p : ℂ × ℂ | ‖p.2‖ < 1} := by
  sorry

/-! ## Layer 2: basic hypergeometric series on their actual domains -/

/-- A Bailey pair includes the unit domain; normalization at index zero is separate. On that domain, the finite sum constructs beta (`baileyPair_ofAlpha`) and makes it unique for fixed alpha (`baileyPair_ext`). Pairs form a module (`baileyPair_zero_add_smul`), and ring homomorphisms transport them (`baileyPair_map`); see README §2.6. -/
noncomputable def baileyPair {K : Type*} [CommRing K]
    (a q : K) (α β : ℕ → K) : Prop :=
  (∀ n, IsUnit (P[q, q, n]) ∧ IsUnit (P[(a * q), q, n])) ∧
  ∀ n, β n = ∑ r ∈ Finset.range (n + 1),
    α r * Ring.inverse (P[q, q, (n - r)] * P[(a * q), q, (n + r)])

/-- The first Bailey relation distinguishes the denominator index n+r from n-r. -/
theorem baileyFirstRelation {K : Type*} [CommRing K]
    (a q : K) (α β : ℕ → K) (h : baileyPair a q α β) :
    β 1 = α 0 * Ring.inverse ((1 - q) * (1 - a * q)) +
      α 1 * Ring.inverse ((1 - a * q) * (1 - a * q ^ 2)) := by
  simpa [Finset.sum_range_succ, Finset.prod_range_succ,
    pow_succ, mul_assoc] using h.2 1

/-- The zero pair is admitted on the same unit domain as every other pair. -/
example {K : Type*} [CommRing K] (a q : K)
    (h : ∀ n, IsUnit (P[q, q, n]) ∧
      IsUnit (P[(a * q), q, n])) :
    baileyPair a q (fun _ => 0) (fun _ => 0) := by
  constructor
  · exact h
  · intro n
    simp

/-- At a=q=0 the normalized delta sequence transforms to the constant sequence one. -/
example {K : Type*} [CommRing K] :
    baileyPair (0 : K) 0 (fun n => if n = 0 then 1 else 0) (fun _ => 1) ∧
    ¬ baileyPair (1 : ℚ) (1 / 2) (fun n => if n = 1 then 1 else 0)
      (fun n => if n = 1 then 1 else 0) := by
  constructor
  · constructor
    · intro n
      simp
    · intro n
      simp [Ring.inverse_one]
  · intro h
    have h1 := baileyFirstRelation _ _ _ _ h
    norm_num [Ring.inverse_eq_inv] at h1

/-- The finite Bailey transformation preserves pairs over every commutative ring on the
original unit domain and the additional transformed-denominator unit domain; Andrews (2.4)-(2.6). -/
theorem baileyLemma_transform {K : Type*} [CommRing K]
    (a q : K) (α β : ℕ → K) (h : baileyPair a q α β) (ρ₁ ρ₂ : Kˣ)
    (hden : ∀ n : ℕ,
      IsUnit (P[(a * q * ((ρ₁⁻¹ : Kˣ) : K)), q, n]) ∧
      IsUnit (P[(a * q * ((ρ₂⁻¹ : Kˣ) : K)), q, n])) :
    let t := a * q * (((ρ₁ * ρ₂)⁻¹ : Kˣ) : K)
    let D := fun n => P[(a * q * ((ρ₁⁻¹ : Kˣ) : K)), q, n] *
      P[(a * q * ((ρ₂⁻¹ : Kˣ) : K)), q, n]
    baileyPair a q
      (fun n => P[(ρ₁ : K), q, n] * P[(ρ₂ : K), q, n] *
        t ^ n * α n * Ring.inverse (D n))
      (fun n => ∑ j ∈ Finset.range (n + 1),
        P[(ρ₁ : K), q, j] * P[(ρ₂ : K), q, j] *
          P[t, q, (n - j)] * t ^ j * β j *
          Ring.inverse (P[q, q, (n - j)] * D n)) := by
  sorry

/-- The q-binomial theorem on the open bidisc, in the normalization of Gasper (1.2.8). The scalar-specialization target `qBinomial_formal` uses the integral coefficient model supplied by HabiroCyclotomicCompletions §1.1 and the unit denominators of README §2.4. -/
theorem qBinomial (a q z : ℂ) (hq : ‖q‖ < 1) (hz : ‖z‖ < 1) :
    HasSum (fun n : ℕ => P[a, q, n] * z ^ n / P[q, q, n])
      ((∏' j : ℕ, (1 - a * z * q ^ j)) / (∏' j : ℕ, (1 - z * q ^ j))) ∧
    Summable (fun n : ℕ => ‖P[a, q, n] * z ^ n / P[q, q, n]‖) := by
  sorry

/-- Base inversion gives the large-base binomial theorem on its actual radius domain. -/
theorem qBinomial_largeBase (a q z : ℂ) (hq : 1 < ‖q‖) (hz : ‖a * z / q‖ < 1) :
    HasSum (fun n : ℕ => P[a, q, n] * z ^ n / P[q, q, n])
      ((∏' j : ℕ, (1 - z / q * (q⁻¹) ^ j)) /
        (∏' j : ℕ, (1 - a * z / q * (q⁻¹) ^ j))) ∧
    Summable (fun n : ℕ => ‖P[a, q, n] * z ^ n / P[q, q, n]‖) := by
  sorry

/-- Euler's inverse series is a disc identity; the quadratically weighted series is entire in z. -/
theorem euler_qExponential (q z : ℂ) (hq : ‖q‖ < 1) :
    (‖z‖ < 1 →
      HasSum (fun n : ℕ => z ^ n / P[q, q, n])
        ((∏' j : ℕ, (1 - z * q ^ j))⁻¹) ∧
      Summable (fun n : ℕ => ‖z ^ n / P[q, q, n]‖)) ∧
    HasSum (fun n : ℕ => q ^ (n * (n - 1) / 2) * z ^ n / P[q, q, n])
      (∏' j : ℕ, (1 + z * q ^ j)) ∧
    Summable (fun n : ℕ => ‖q ^ (n * (n - 1) / 2) * z ^ n / P[q, q, n]‖) := by
  sorry

/-- The bilateral quotient coefficient avoids division by b, including at b=0. The two branches give `ramanujanOnePsiOneTerm_nonneg` and `ramanujanOnePsiOneTerm_neg`; on the nonzero-base, nonzero-argument, pole-free domain, `ramanujanOnePsiOneTerm_recurrence` relates successive terms after clearing denominators (README §2.5). -/
def ramanujanOnePsiOneTerm (a b q z : ℂ) (j : ℤ) : ℂ :=
  if 0 ≤ j then
    P[a, q, j.toNat] / P[b, q, j.toNat] * z ^ j
  else
    (∏ r ∈ Finset.range (-j).toNat, (b - q ^ (r + 1)) / (a - q ^ (r + 1))) * z ^ j

/-- The zero and minus-one terms fix the index and reciprocal-factor convention. -/
example (a b q z : ℂ) :
    ramanujanOnePsiOneTerm a b q z 0 = 1 ∧
    ramanujanOnePsiOneTerm a b q z (-1) = (b - q) / (a - q) * z⁻¹ := by
  norm_num [ramanujanOnePsiOneTerm, Finset.prod_range_succ]

/-- The b=0 tail can be nonzero, whereas b=q stops the negative tail. -/
example : ramanujanOnePsiOneTerm 2 0 (1 / 2) (1 / 2) (-1) = -2 / 3 ∧
    ramanujanOnePsiOneTerm 2 (1 / 2) (1 / 2) (1 / 2) (-1) = 0 := by
  norm_num [ramanujanOnePsiOneTerm, Finset.prod_range_succ]

/-- Ramanujan's 1-psi-1 sum on its pole-free annulus; Gasper (2.1.9). -/
theorem ramanujanOnePsiOne_hasSum (a b q z : ℂ)
    (hq : ‖q‖ < 1) (hq0 : q ≠ 0) (ha : a ≠ 0)
    (hinner : ‖b / a‖ < ‖z‖) (houter : ‖z‖ < 1)
    (hpos : ∀ r : ℕ, 1 - b * q ^ r ≠ 0)
    (hneg : ∀ r : ℕ, a - q ^ (r + 1) ≠ 0) :
    let P : ℂ → ℂ := fun c => ∏' r : ℕ, (1 - c * q ^ r)
    HasSum (ramanujanOnePsiOneTerm a b q z)
      (P q * P (b / a) * P (a * z) * P (q / (a * z)) /
        (P b * P (q / a) * P z * P (b / (a * z)))) ∧
    Summable (fun j : ℤ => ‖ramanujanOnePsiOneTerm a b q z j‖) := by
  sorry

/-! ## Layer 3: polynomial identities and partition-series adapters -/

/-- The ordinary partition adapter has the native finite partition count as coefficient. -/
theorem partitionSeries_coeff {K : Type*} [CommSemiring K] (n : ℕ) :
    PowerSeries.coeff n (Nat.Partition.genFun (fun _ _ => (1 : K))) =
      (Fintype.card (Nat.Partition n) : K) := by
  simp [Nat.Partition.coeff_genFun]

/-- Increasingly sorted parts have pairwise gaps at least two, including multiplicities. The adjacent-gap characterization `isGapTwo_iff_adjacent` implies absence of repeated parts, `isGapTwo_nodup` (README §3.3). -/
def IsGapTwo {n : ℕ} (p : Nat.Partition n) : Prop :=
  (p.parts.sort (· ≤ ·)).Pairwise (fun a b => a + 2 ≤ b)

/-- Every part belongs to one of the two residues 1 and 4 modulo five. The equivalence `isPlusMinusOneMod5_iff_restricted` identifies this condition with the native restricted-partition predicate (README §3.3). -/
def IsPlusMinusOneMod5 {n : ℕ} (p : Nat.Partition n) : Prop :=
  ∀ i ∈ p.parts, i % 5 = 1 ∨ i % 5 = 4

/-- Singleton and two-part gap partitions both satisfy the first counting condition. -/
example : IsGapTwo (Nat.Partition.ofSums 4 {4} (by decide)) ∧
    IsGapTwo (Nat.Partition.ofSums 4 {3, 1} (by decide)) := by
  simp only [IsGapTwo, Nat.Partition.ofSums_parts]
  norm_num [Multiset.filter_cons, Multiset.filter_singleton, Multiset.sort_cons,
    Multiset.pair_comm (3 : ℕ) 1]

/-- Repeated parts fail the gap condition even when the underlying set is a singleton. -/
example : ¬ IsGapTwo (Nat.Partition.ofSums 4 {2, 2} (by decide)) := by
  simp only [IsGapTwo, Nat.Partition.ofSums_parts]
  norm_num [Multiset.filter_cons, Multiset.filter_singleton, Multiset.sort_cons,
    Multiset.pair_comm (3 : ℕ) 1]

/-- A singleton four has allowed residue, whereas the gap partition 3+1 does not. -/
example : IsPlusMinusOneMod5 (Nat.Partition.ofSums 4 {4} (by decide)) ∧
    ¬ IsPlusMinusOneMod5 (Nat.Partition.ofSums 4 {3, 1} (by decide)) := by
  unfold IsPlusMinusOneMod5
  decide

/-- Repeating the forbidden residue two still fails the first residue condition. -/
example : ¬ IsPlusMinusOneMod5 (Nat.Partition.ofSums 4 {2, 2} (by decide)) := by
  unfold IsPlusMinusOneMod5
  decide

open scoped Classical in
/-- The first Rogers-Ramanujan counting theorem on native partitions, including size zero. -/
theorem rogersRamanujan_count (n : ℕ) :
    (Finset.univ.filter (fun p : Nat.Partition n => IsGapTwo p)).card =
      (Finset.univ.filter (fun p : Nat.Partition n => IsPlusMinusOneMod5 p)).card := by
  sorry

open scoped Classical in
/-- The second counting theorem requires minimum part two and residues two or three. -/
theorem rogersRamanujan_count_two (n : ℕ) :
    (Finset.univ.filter (fun p : Nat.Partition n =>
      IsGapTwo p ∧ ∀ i ∈ p.parts, 2 ≤ i)).card =
      (Finset.univ.filter (fun p : Nat.Partition n =>
        ∀ i ∈ p.parts, i % 5 = 2 ∨ i % 5 = 3)).card := by
  sorry

/-- Both Rogers-Ramanujan identities, with nonzero Euler-tail denominators on the disc. -/
theorem rogersRamanujan_hasSum (q : ℂ) (hq : ‖q‖ < 1) :
    HasSum (fun n : ℕ => q ^ (n * n) / P[q, q, n])
      ((∏' j : ℕ, ((1 - q ^ (5 * j + 1)) * (1 - q ^ (5 * j + 4))))⁻¹) ∧
    HasSum (fun n : ℕ => q ^ (n * n + n) / P[q, q, n])
      ((∏' j : ℕ, ((1 - q ^ (5 * j + 2)) * (1 - q ^ (5 * j + 3))))⁻¹) ∧
    Summable (fun n : ℕ => ‖q ^ (n * n) / P[q, q, n]‖) ∧
    Summable (fun n : ℕ => ‖q ^ (n * n + n) / P[q, q, n]‖) := by
  sorry

/-- The quintuple product with integer powers and absolute convergence; Gasper (2.2.10). -/
theorem quintupleProduct_hasSum (q z : ℂ)
    (hq : ‖q‖ < 1) (hq0 : q ≠ 0) (hz : z ≠ 0) :
    HasSum (fun n : ℤ => (-1 : ℂ) ^ n * q ^ (n * (3 * n - 1) / 2) *
      z ^ (3 * n) * (1 + z * q ^ n))
      ((∏' j : ℕ, (1 - q ^ (j + 1)) * (1 + z * q ^ j) * (1 + q / z * q ^ j)) *
        (∏' j : ℕ, (1 - q * z ^ 2 * (q ^ 2) ^ j) *
          (1 - q / z ^ 2 * (q ^ 2) ^ j))) ∧
    Summable (fun n : ℤ => ‖(-1 : ℂ) ^ n * q ^ (n * (3 * n - 1) / 2) *
      z ^ (3 * n) * (1 + z * q ^ n)‖) := by
  sorry

/-! ## Layer 4: rank, crank and arithmetic progressions -/

/-- Rank is the largest part minus the number of parts, with empty value zero. -/
def partitionRank {n : ℕ} (p : Nat.Partition n) : ℤ :=
  ((p.parts.toFinset.sup id : ℕ) : ℤ) - (p.parts.card : ℤ)

/-- Crank counts parts strictly greater than the number of ones when there are ones. In their absence, `partitionCrank_noOnes` gives the largest part, with value zero for the empty partition (README §4.1). -/
def partitionCrank {n : ℕ} (p : Nat.Partition n) : ℤ :=
  let o := p.parts.count 1
  if o = 0 then ((p.parts.toFinset.sup id : ℕ) : ℤ)
  else ((p.parts.filter (fun j => o < j)).card : ℤ) - (o : ℤ)

/-- Both statistics of any partition of zero vanish. -/
theorem rankCrankEmpty (p : Nat.Partition 0) :
    partitionRank p = 0 ∧ partitionCrank p = 0 := by
  simp [partitionRank, partitionCrank]

/-- Rank of the singleton and of the empty partition is zero. -/
example (p : Nat.Partition 0) :
    partitionRank (Nat.Partition.ofSums 1 {1} (by decide)) = 0 ∧ partitionRank p = 0 := by
  constructor
  · decide
  · exact (rankCrankEmpty p).1

/-- The strict-filter witness has rank minus one. -/
example : partitionRank (Nat.Partition.ofSums 7 {3, 2, 1, 1} (by decide)) = -1 ∧
    partitionRank (Nat.Partition.ofSums 6 {3, 3} (by decide)) = 1 ∧
    partitionRank (Nat.Partition.ofSums 6 {2, 2, 2} (by decide)) = -1 := by decide

/-- The ordinary crank at size one is minus one, while the empty crank is zero. -/
example (p : Nat.Partition 0) :
    partitionCrank (Nat.Partition.ofSums 1 {1} (by decide)) = -1 ∧ partitionCrank p = 0 := by
  constructor
  · decide
  · exact (rankCrankEmpty p).2

/-- The strict inequality and the no-ones branch give different largest-part behavior. -/
example : partitionCrank (Nat.Partition.ofSums 7 {3, 2, 1, 1} (by decide)) = -1 ∧
    partitionCrank (Nat.Partition.ofSums 6 {3, 3} (by decide)) = 3 := by decide

/-- Native conjugation negates rank. -/
theorem partitionRank_conjugate {n : ℕ} (p : Nat.Partition n) :
    partitionRank p.conjugate = -partitionRank p := by
  sorry

/-- Residue counts are finite fibers of an integer statistic on native partitions. -/
noncomputable def partitionResidueCount
    (s : (n : ℕ) → Nat.Partition n → ℤ) (t : ℕ) (r : ZMod t) (n : ℕ) : ℕ :=
  (Finset.univ.filter (fun p : Nat.Partition n => (s n p : ZMod t) = r)).card

/-- Summing the residue fibers recovers every partition once. -/
theorem partitionResidueCounts_sum
    (s : (n : ℕ) → Nat.Partition n → ℤ) (t : ℕ) [NeZero t] (n : ℕ) :
    (∑ r : ZMod t, partitionResidueCount s t r n) = Fintype.card (Nat.Partition n) := by
  classical
  simp only [partitionResidueCount]
  rw [← Finset.card_univ]
  exact (Finset.card_eq_sum_card_fiberwise
    (f := fun p : Nat.Partition n => (s n p : ZMod t))
    (fun _ _ => Finset.mem_univ _)).symm

/-- Modulo one the sole residue count is the ordinary partition count. -/
theorem filterOne (s : (n : ℕ) → Nat.Partition n → ℤ) (n : ℕ) :
    partitionResidueCount s 1 0 n = Fintype.card (Nat.Partition n) := by
  classical
  unfold partitionResidueCount
  rw [Finset.filter_true_of_mem (fun _ _ => Subsingleton.elim _ _), Finset.card_univ]

/-- The multiplied character filter remains valid without dividing by the modulus. -/
theorem partitionResidueCounts_filter_complex
    (s : (n : ℕ) → Nat.Partition n → ℤ) (t : ℕ) (ht : 0 < t)
    (ζ : ℂ) (hζ : IsPrimitiveRoot ζ t) (r n : ℕ) :
    (t : ℂ) * (partitionResidueCount s t (r : ZMod t) n : ℂ) =
      ∑ j ∈ Finset.range t, ζ ^ (-(r : ℤ) * (j : ℤ)) *
        ∑ p : Nat.Partition n, ζ ^ (s n p * (j : ℤ)) := by
  sorry

/-- At size one rank lies in class zero and crank in class one modulo two. -/
theorem filterTwo :
    partitionResidueCount (fun _ p => partitionRank p) 2 0 1 = 1 ∧
    partitionResidueCount (fun _ p => partitionCrank p) 2 1 1 = 1 := by
  classical
  norm_num [partitionResidueCount, partitionRank, partitionCrank, Multiset.filter_singleton]
  change (if (-1 : ZMod 2) = 1 then ({default} : Finset (Nat.Partition 1)) else ∅).card = 1
  rw [ite_eq_left (by decide)]
  simp

/-- A constant-zero statistic misses class one; rank and crank separate at size one. -/
example (n : ℕ) : partitionResidueCount (fun _ _ => 0) 2 1 n = 0 ∧
    partitionResidueCount (fun _ p => partitionRank p) 2 0 1 = 1 ∧
    partitionResidueCount (fun _ p => partitionCrank p) 2 1 1 = 1 := by
  constructor
  · classical
    simp [partitionResidueCount]
  · exact filterTwo

/-- Modulus one gives an empty residue fiber for no partition statistic. -/
example (s : (n : ℕ) → Nat.Partition n → ℤ) (n : ℕ) :
    partitionResidueCount s 1 0 n = Fintype.card (Nat.Partition n) := by
  exact filterOne s n

/-- The rank dissections yield equidistribution in the two Ramanujan progressions. -/
theorem rank_equidistribution_five_seven (n : ℕ) :
    (∀ r s : ZMod 5, partitionResidueCount (fun _ p => partitionRank p) 5 r (5 * n + 4) =
      partitionResidueCount (fun _ p => partitionRank p) 5 s (5 * n + 4)) ∧
    (∀ r s : ZMod 7, partitionResidueCount (fun _ p => partitionRank p) 7 r (7 * n + 5) =
      partitionResidueCount (fun _ p => partitionRank p) 7 s (7 * n + 5)) := by
  sorry

/-- Ordinary crank is equidistributed for all three specified prime progressions. -/
theorem crank_equidistribution_five_seven_eleven (ℓ d n : ℕ)
    (h : (ℓ = 5 ∧ d = 4) ∨ (ℓ = 7 ∧ d = 5) ∨ (ℓ = 11 ∧ d = 6))
    (r s : ZMod ℓ) :
    partitionResidueCount (fun _ p => partitionCrank p) ℓ r (ℓ * n + d) =
      partitionResidueCount (fun _ p => partitionCrank p) ℓ s (ℓ * n + d) := by
  sorry

/-- The residue-five eleven-dissection has zero coefficient at size forty-nine. -/
theorem dissectionCrankFortyNine (r : ZMod 11) :
    partitionResidueCount (fun _ p => partitionCrank p) 11 r 49 = 15775 := by
  sorry

/-- Rank does not give the corresponding eleven-equidistribution. -/
theorem rankElevenFails :
    partitionResidueCount (fun _ p => partitionRank p) 11 1 6 = 2 := by
  sorry

/-- A bounded inverse-of-24 representative, used for every positive coprime modulus. -/
def IsPartitionCongruenceOffset (M d : ℕ) : Prop :=
  d < M ∧ Nat.ModEq M (24 * d) 1

/-- Every positive modulus coprime to 24 has a unique bounded offset. -/
theorem partitionCongruenceOffset_existsUnique (M : ℕ) (hM : 0 < M)
    (hcop : Nat.Coprime 24 M) : ∃! d : ℕ, IsPartitionCongruenceOffset M d := by
  sorry

/-- Reduction along divisibility preserves the bounded inverse representative. -/
theorem partitionCongruenceOffset_mod (M N d : ℕ) (hN : 0 < N)
    (hdiv : N ∣ M) (hd : IsPartitionCongruenceOffset M d) :
    IsPartitionCongruenceOffset N (d % N) := by
  sorry

/-- Modulus one and the prime thirteen are both in the bounded-offset domain. -/
example : IsPartitionCongruenceOffset 1 0 ∧ IsPartitionCongruenceOffset 13 6 ∧
    IsPartitionCongruenceOffset 5 4 ∧ IsPartitionCongruenceOffset 7 5 ∧
    IsPartitionCongruenceOffset 11 6 ∧ IsPartitionCongruenceOffset 25 24 ∧
    IsPartitionCongruenceOffset 343 243 ∧ IsPartitionCongruenceOffset 65 19 := by
  norm_num [IsPartitionCongruenceOffset, Nat.ModEq]

/-- Zero has no bounded representative; neither two nor three admits the inverse. -/
example (d : ℕ) : ¬ IsPartitionCongruenceOffset 0 d ∧
    ¬ IsPartitionCongruenceOffset 2 d ∧ ¬ IsPartitionCongruenceOffset 3 d := by
  simp only [IsPartitionCongruenceOffset, Nat.ModEq]
  omega

/-- Prime-power partition congruences use any representative of the inverse of 24. -/
theorem partition_primePowerCongruences (ℓ r δ n : ℕ)
    (hℓ : ℓ = 5 ∨ ℓ = 7 ∨ ℓ = 11) (hr : 1 ≤ r)
    (hδ : δ < ℓ ^ r) (hcong : Nat.ModEq (ℓ ^ r) (24 * δ) 1) :
    (if ℓ = 7 then 7 ^ (r / 2 + 1) else ℓ ^ r) ∣
      Fintype.card (Nat.Partition (ℓ ^ r * n + δ)) := by
  sorry

/-- At exponent three the seven-adic guarantee cannot be increased to 343. -/
theorem sevenExponent :
    49 ∣ Fintype.card (Nat.Partition 243) ∧ ¬343 ∣ Fintype.card (Nat.Partition 243) := by
  sorry

/-- Decimation extracts coefficients divisible by the index; it is a linear operator. The coefficient identity `qSeriesDecimation_coeff` reads coefficient n at index t*n, and `qSeriesDecimation_map` commutes extraction with coefficient homomorphisms (README §4.7).
For commutative rings and t > 0, `qSeriesDecimation_eq_powerSeriesCartier` compares it with
`PowerSeries.cartier t 0` from PadicMeasuresIwasawaAlgebras §2.9; the ring laws transport through
that comparison. The separate README target `qSeriesDecimation_eq_cartier` identifies its
Laurent-series embedding over a field with ClassicalArithmeticCompletion §2.10’s operator. -/
def qSeriesDecimation {K : Type*} [CommSemiring K] (t : ℕ)
    (f : PowerSeries K) : PowerSeries K :=
  PowerSeries.mk fun n => PowerSeries.coeff (t * n) f

/-- Successive coefficient extractions multiply their indices. -/
theorem qSeriesDecimation_comp {K : Type*} [CommSemiring K]
    (s t : ℕ) (f : PowerSeries K) :
    qSeriesDecimation s (qSeriesDecimation t f) = qSeriesDecimation (s * t) f := by
  ext n
  simp [qSeriesDecimation, mul_assoc, mul_left_comm]

/-- Decimation is linear over every commutative coefficient semiring. -/
theorem qSeriesDecimation_add_smul {K : Type*} [CommSemiring K]
    (t : ℕ) (c : K) (f g : PowerSeries K) :
    qSeriesDecimation t (f + c • g) = qSeriesDecimation t f + c • qSeriesDecimation t g := by
  ext n
  simp [qSeriesDecimation]

/-- Coefficient substitution by X^t gives the pullout formula over every commutative semiring. -/
theorem qSeriesDecimation_pullout {K : Type*} [CommSemiring K]
    (t : ℕ) (ht : t ≠ 0) (f g : PowerSeries K) :
    qSeriesDecimation t
      (PowerSeries.mk (fun n => if t ∣ n then PowerSeries.coeff (n / t) f else 0) * g) =
      f * qSeriesDecimation t g := by
  sorry

/-- Decimation cannot be a ring homomorphism: it kills X but sends X squared to X. -/
theorem decimationNotMultiplicative :
    qSeriesDecimation 2 (PowerSeries.X : PowerSeries ℤ) = 0 ∧
    qSeriesDecimation 2 ((PowerSeries.X : PowerSeries ℤ) ^ 2) = PowerSeries.X := by
  constructor
  · ext n
    simp only [qSeriesDecimation, PowerSeries.coeff_mk, PowerSeries.coeff_X, map_zero]
    split_ifs with h <;> omega
  · ext n
    simp only [qSeriesDecimation, PowerSeries.coeff_mk, PowerSeries.coeff_X_pow,
      PowerSeries.coeff_X]
    have h : 2 * n = 2 ↔ n = 1 := by omega
    simp only [h]

/-- The coefficient-one term of the decimated quadratic records its coefficient two. -/
example : PowerSeries.coeff 1
    (qSeriesDecimation 2 (1 + PowerSeries.X + 2 * (PowerSeries.X : PowerSeries ℤ) ^ 2)) = 2 ∧
    qSeriesDecimation 2 (PowerSeries.X : PowerSeries ℤ) = 0 ∧
    qSeriesDecimation 2 ((PowerSeries.X : PowerSeries ℤ) ^ 2) = PowerSeries.X := by
  constructor
  · norm_num [qSeriesDecimation, PowerSeries.coeff_mul, PowerSeries.coeff_X,
      PowerSeries.coeff_X_pow, PowerSeries.coeff_one, PowerSeries.coeff_C_mul]
  · exact decimationNotMultiplicative

/-- Index one preserves every coefficient; the zero-index coefficient adapter differs
from the Laurent Cartier operator's stipulated zero value. -/
example {K : Type*} [CommSemiring K] (f : PowerSeries K) : qSeriesDecimation 1 f = f ∧
    PowerSeries.coeff 1 (qSeriesDecimation 0 (1 : PowerSeries K)) = 1 := by
  constructor
  · ext n
    simp [qSeriesDecimation]
  · simp [qSeriesDecimation]

/-- Watson's degree-five eta equation, with nonzero denominators on the upper half-plane;
Watson (3.2), derived in Section 2. -/
theorem etaDecimation_modularEquation_five (τ : ℂ) (hτ : 0 < τ.im) :
    let X := ModularForm.eta τ / ModularForm.eta (τ / 5)
    let Y := ModularForm.eta (5 * τ) / ModularForm.eta τ
    X ^ 5 - 25 * Y ^ 5 * X ^ 4 - 25 * Y ^ 4 * X ^ 3 -
      15 * Y ^ 3 * X ^ 2 - 5 * Y ^ 2 * X - Y = 0 := by
  sorry

/-- Watson's degree-seven eta equation includes the three lower-degree coefficients;
Watson (5.2), derived in Section 4. -/
theorem etaDecimation_modularEquation_seven (τ : ℂ) (hτ : 0 < τ.im) :
    let X := ModularForm.eta τ / ModularForm.eta (τ / 7)
    let Y := ModularForm.eta (7 * τ) / ModularForm.eta τ
    X ^ 7 - (343 * Y ^ 7 + 49 * Y ^ 3) * X ^ 6 -
      (343 * Y ^ 6 + 35 * Y ^ 2) * X ^ 5 - (147 * Y ^ 5 + 7 * Y) * X ^ 4 -
      49 * Y ^ 4 * X ^ 3 - 21 * Y ^ 3 * X ^ 2 - 7 * Y ^ 2 * X - Y = 0 := by
  sorry

/-! ## Layer 5: theta normalizations, error kernels and completed Lerch sums -/

/-- The shifted native theta has derivative minus two pi eta cubed at the origin. -/
theorem zwegersOddTheta_deriv_zero (τ : ℂ) (hτ : 0 < τ.im) :
    HasDerivAt (fun z : ℂ => Complex.I *
      Complex.exp ((Real.pi : ℂ) * Complex.I * τ / 4 + (Real.pi : ℂ) * Complex.I * z) *
      jacobiTheta₂ (z + (τ + 1) / 2) τ)
      (-2 * (Real.pi : ℂ) * ModularForm.eta τ ^ 3) 0 := by
  sorry

/-- The two central terms fix the odd theta shift and its factor i. -/
theorem oddThetaPair (z τ : ℂ) :
    Complex.I * Complex.exp ((Real.pi : ℂ) * Complex.I * τ / 4 +
      (Real.pi : ℂ) * Complex.I * z) *
      (jacobiTheta₂_term 0 (z + (τ + 1) / 2) τ +
        jacobiTheta₂_term (-1) (z + (τ + 1) / 2) τ) =
    Complex.I * Complex.exp ((Real.pi : ℂ) * Complex.I * τ / 4) *
      (Complex.exp ((Real.pi : ℂ) * Complex.I * z) -
        Complex.exp (-(Real.pi : ℂ) * Complex.I * z)) := by
  have ht0 : jacobiTheta₂_term 0 (z + (τ + 1) / 2) τ = 1 := by
    simp [jacobiTheta₂_term]
  have htneg : jacobiTheta₂_term (-1) (z + (τ + 1) / 2) τ =
      -Complex.exp (-2 * (Real.pi : ℂ) * Complex.I * z) := by
    unfold jacobiTheta₂_term
    push_cast
    rw [show 2 * (Real.pi : ℂ) * Complex.I * (-1) * (z + (τ + 1) / 2) +
        (Real.pi : ℂ) * Complex.I * (-1) ^ 2 * τ =
        -2 * (Real.pi : ℂ) * Complex.I * z + -((Real.pi : ℂ) * Complex.I) by ring]
    rw [Complex.exp_add, Complex.exp_neg_pi_mul_I, mul_neg_one]
  rw [ht0, htneg, Complex.exp_add]
  have hcancel : Complex.exp ((Real.pi : ℂ) * Complex.I * z) *
      Complex.exp (-2 * (Real.pi : ℂ) * Complex.I * z) =
      Complex.exp (-(Real.pi : ℂ) * Complex.I * z) := by
    rw [← Complex.exp_add]
    congr 1
    ring
  linear_combination -Complex.I * Complex.exp ((Real.pi : ℂ) * Complex.I * τ / 4) * hcancel

/-- The antiholomorphic Wirtinger derivative uses real derivatives in directions 1 and i. -/
noncomputable def wirtingerBar (F : ℂ → ℂ) (τ : ℂ) : ℂ :=
  (fderiv ℝ F τ 1 + Complex.I * fderiv ℝ F τ Complex.I) / 2

/-- The holomorphic-weight xi operator conjugates the antiholomorphic derivative. -/
noncomputable def maassXi (k : ℝ) (F : ℂ → ℂ) (τ : ℂ) : ℂ :=
  2 * Complex.I * (τ.im ^ k : ℝ) * star (wirtingerBar F τ)

/-- Constants have zero antiholomorphic derivative. -/
example (c τ : ℂ) : wirtingerBar (fun _ => c) τ = 0 := by
  simp [wirtingerBar]

/-- The imaginary coordinate has antiholomorphic derivative i/2; the identity has zero. -/
example (τ : ℂ) : wirtingerBar (fun z : ℂ => (z.im : ℂ)) τ = Complex.I / 2 ∧
    wirtingerBar (fun z : ℂ => z) τ = 0 := by
  constructor
  · have h : HasFDerivAt (fun z : ℂ => (z.im : ℂ))
        (Complex.ofRealCLM.comp Complex.imCLM) τ :=
      (Complex.ofRealCLM.comp Complex.imCLM).hasFDerivAt
    rw [wirtingerBar, h.fderiv]
    simp
  · simp [wirtingerBar]

/-- Xi sends y at weight zero and log y at weight one to one; constants give zero. -/
example (τ : ℂ) (hτ : 0 < τ.im) :
    maassXi 0 (fun z : ℂ => (z.im : ℂ)) τ = 1 ∧
    maassXi 1 (fun z : ℂ => (Real.log z.im : ℂ)) τ = 1 ∧
    maassXi 1 (fun _ : ℂ => (1 : ℂ)) τ = 0 := by
  constructor
  · have h : HasFDerivAt (fun z : ℂ => (z.im : ℂ))
        (Complex.ofRealCLM.comp Complex.imCLM) τ :=
      (Complex.ofRealCLM.comp Complex.imCLM).hasFDerivAt
    rw [maassXi, wirtingerBar, h.fderiv]
    norm_num
    linear_combination (-1 : ℂ) * Complex.I_sq
  constructor
  · have hlog : HasFDerivAt (fun z : ℂ => Real.log z.im)
        (τ.im⁻¹ • Complex.imCLM) τ :=
      Complex.imCLM.hasFDerivAt.log hτ.ne'
    have h : HasFDerivAt (fun z : ℂ => (Real.log z.im : ℂ))
        (Complex.ofRealCLM.comp (τ.im⁻¹ • Complex.imCLM)) τ :=
      Complex.ofRealCLM.hasFDerivAt.comp τ hlog
    have hy : (τ.im : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hτ.ne'
    rw [maassXi, wirtingerBar, h.fderiv]
    simp [ContinuousLinearMap.comp_apply, Complex.ofReal_inv, Real.rpow_one]
    field_simp [hy]
    ring_nf
    norm_num [Complex.I_sq]
  · simp [maassXi, wirtingerBar]

/-- Xi sends i times y to minus i, witnessing antilinearity. -/
example (τ : ℂ) : maassXi 0 (fun z : ℂ => Complex.I * (z.im : ℂ)) τ = -Complex.I := by
  have h : HasFDerivAt (fun z : ℂ => Complex.I * (z.im : ℂ))
      (Complex.I • (Complex.ofRealCLM.comp Complex.imCLM)) τ :=
    (Complex.I • (Complex.ofRealCLM.comp Complex.imCLM)).hasFDerivAt
  rw [maassXi, wirtingerBar, h.fderiv]
  norm_num
  ring

/-- Constants have zero xi-image at every weight. -/
theorem xiConstant (k : ℝ) (c τ : ℂ) : maassXi k (fun _ => c) τ = 0 := by
  simp [maassXi, wirtingerBar]

/-! ## Layer 8: harmonic weak Maass spaces, Fourier parts and shadows -/

local notation3 "Δ[" k ", " F ", " τ "]" =>
  (-(Complex.im τ : ℂ) ^ 2 *
    (fderiv ℝ (fun z => fderiv ℝ F z 1) τ 1 +
      fderiv ℝ (fun z => fderiv ℝ F z Complex.I) τ Complex.I) +
    (k : ℂ) * Complex.I * (Complex.im τ : ℂ) *
      (fderiv ℝ F τ 1 + Complex.I * fderiv ℝ F τ Complex.I))

/-- Holomorphicity forces the antiholomorphic Wirtinger derivative to vanish. -/
theorem wirtingerBar_holomorphic (F : ℂ → ℂ) (τ : ℂ)
    (hF : DifferentiableAt ℂ F τ) : wirtingerBar F τ = 0 := by
  sorry

/-- Xi is antilinear where the underlying real derivative exists. -/
theorem xi_antilinear (k : ℝ) (c : ℂ) (F : ℂ → ℂ) (τ : ℂ)
    (hF : DifferentiableAt ℝ F τ) :
    maassXi k (fun z => c * F z) τ = star c * maassXi k F τ := by
  sorry

/-- On C-squared functions the holomorphic-weight Laplacian is minus xi composed with xi. -/
theorem maassLaplacian_eq_neg_xi_xi (k : ℝ) (F : ℂ → ℂ)
    (hF : ContDiffOn ℝ 2 F {z : ℂ | 0 < z.im}) (τ : ℂ) (hτ : 0 < τ.im) :
    Δ[k, F, τ] = -maassXi (2 - k) (maassXi k F) τ := by
  sorry

/-- At weight one the second constant Fourier mode is logarithmic. -/
theorem maassLaplacian_log (τ : ℂ) (hτ : 0 < τ.im) :
    Δ[1, (fun z : ℂ => (Real.log z.im : ℂ)), τ] = 0 := by
  sorry

/-- A growing antiholomorphic Fourier mode has a polar holomorphic shadow. -/
theorem fourierPolarShadow (τ : ℂ) (hτ : 0 < τ.im) :
    maassXi 0 (fun z => star (Complex.exp (-2 * (Real.pi : ℂ) * Complex.I * z))) τ =
      4 * (Real.pi : ℂ) * Complex.exp (-2 * (Real.pi : ℂ) * Complex.I * τ) := by
  sorry

/-! ## Layer 9: completed kernels and meromorphic Jacobi coefficients -/

/-- Completing the square identifies each positive-index component with native theta. -/
theorem jacobiThetaComponent_eval (m : ℕ) (hm : 0 < m) (l : ℤ) (z τ : ℂ)
    (hτ : 0 < τ.im) :
    HasSum (fun j : ℤ => Complex.exp
      ((Real.pi : ℂ) * Complex.I * ((l : ℂ) + 2 * (m : ℂ) * j) ^ 2 * τ / (2 * m) +
        2 * (Real.pi : ℂ) * Complex.I * ((l : ℂ) + 2 * (m : ℂ) * j) * z))
      (Complex.exp ((Real.pi : ℂ) * Complex.I * (l : ℂ) ^ 2 * τ / (2 * m) +
        2 * (Real.pi : ℂ) * Complex.I * l * z) *
        jacobiTheta₂ (2 * (m : ℂ) * z + l * τ) (2 * (m : ℂ) * τ)) := by
  sorry

/-! ## Layer 10: explicit third-, fifth- and seventh-order mock theta vectors -/

/-- Ramanujan's third-order f on the open unit disc, using its actual unilateral summands. -/
noncomputable def thirdOrderF (q : ℂ) : ℂ :=
  ∑' n : ℕ, q ^ (n * n) / P[(-q), q, n] ^ 2

/-- The third-order f has constant term one, including at base zero. -/
example : thirdOrderF 0 = 1 := by
  unfold thirdOrderF
  rw [tsum_eq_single 0]
  · simp
  · intro n hn
    have hn' : n * n ≠ 0 := Nat.mul_ne_zero hn hn
    simp [zero_pow hn']

/-- The third-order f converges absolutely on its entire disc domain. -/
theorem thirdOrderF_hasSum (q : ℂ) (hq : ‖q‖ < 1) :
    HasSum (fun n : ℕ => q ^ (n * n) / P[(-q), q, n] ^ 2) (thirdOrderF q) ∧
    Summable (fun n : ℕ => ‖q ^ (n * n) / P[(-q), q, n] ^ 2‖) := by
  sorry

/-- The first three nonconstant Taylor coefficients are the signed partition ranks. -/
theorem thirdRankSigns : deriv thirdOrderF 0 = 1 ∧
    deriv (deriv thirdOrderF) 0 = -4 ∧
    deriv (deriv (deriv thirdOrderF)) 0 = 18 := by
  sorry

/-- Specialization of the actual rank series at minus one gives the third-order f. -/
theorem thirdOrderF_rank (q : ℂ) (hq : ‖q‖ < 1) :
    HasSum (fun n : ℕ =>
      (∑ p : Nat.Partition n, (-1 : ℂ) ^ partitionRank p) * q ^ n) (thirdOrderF q) := by
  sorry

/-- The bilateral rank identity uses the meromorphic Durfee-square expression, with its
actual nonzero-base and pole domain; Zagier, proof of Theorem 7.1. -/
theorem rankSeries_bilateral_hasSum (q z : ℂ) (hq0 : q ≠ 0) (hq : ‖q‖ < 1)
    (hz : z ≠ 0) (hpole : ∀ n : ℤ, 1 - z * q ^ n ≠ 0) :
    HasSum (fun n : ℤ => (-1 : ℂ) ^ n * q ^ (n * (3 * n + 1) / 2) /
      (1 - z * q ^ n))
      ((∏' j : ℕ, (1 - q ^ (j + 1))) *
        (∑' n : ℕ, q ^ (n * n) /
          (P[(z * q), q, n] * P[(q / z), q, n])) / (1 - z)) ∧
    Summable (fun n : ℤ => ‖(-1 : ℂ) ^ n * q ^ (n * (3 * n + 1) / 2) /
      (1 - z * q ^ n)‖) := by
  sorry

/-- The omega bilateral bridge is an identity on the punctured disc; omega is written as
its unilateral sum from Bringmann-Ono (2.1), and the bridge is the q-binomial derivation of §10.1a. -/
theorem thirdOrderOmega_bilateral (q : ℂ) (hq0 : q ≠ 0) (hq : ‖q‖ < 1) :
    HasSum (fun n : ℤ => (-1 : ℂ) ^ n * q ^ (3 * n * (n + 1)) /
      (1 - q ^ (2 * n + 1)))
      ((∏' j : ℕ, (1 - (q ^ 2) ^ (j + 1))) *
        ∑' n : ℕ, q ^ (2 * n * n + 2 * n) / P[q, (q ^ 2), (n + 1)] ^ 2) ∧
    Summable (fun n : ℤ => ‖(-1 : ℂ) ^ n * q ^ (3 * n * (n + 1)) /
      (1 - q ^ (2 * n + 1))‖) := by
  sorry

end

end TauCetiRoadmap.QSeriesPartitionsAndMockModularForms
