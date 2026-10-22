import Mathlib
import TauCeti.NumberTheory.Multiquadratic.FundamentalDiscriminant.Basic
import TauCeti.NumberTheory.Multiquadratic.FundamentalDiscriminant.Character
import TauCeti.NumberTheory.BinaryQuadraticForm.Reduced
import TauCeti.AlgebraicGeometry.EllipticCurve.QuadraticTwist.Basic
import TauCeti.AlgebraicGeometry.EllipticCurve.MordellWeil.PointModTorsion
import TauCeti.AlgebraicGeometry.EllipticCurve.CanonicalHeight.Basic
import TauCeti.Analysis.Contour.Residue.Basic

/-!
# EffectiveClassNumbers: representative target signatures

This file is not the roadmap and is not exhaustive: `README.md` is definitive. It records the
light definitions, layer milestones and end theorems of the roadmap that can be stated against
the pinned Mathlib and Tau Ceti, together with `example` checks named in the README, so that
contributors and reviewers converge on names and signatures. Docstrings cite the README's
subsections as §k.n. Heavy constructions (the Hardy function of an odd character, the
symmetric-square L-function, Heegner points) are README targets only. Numerical inputs are
stated as explicit inequalities; the computations that prove them are not targets.

Design choices made explicit here:
* imaginary quadratic fields are number fields `K` with `Module.finrank ℚ K = 2` and
  `NumberField.discr K < 0`; the class number is `NumberField.classNumber K`;
* the weight θ removes the largest prime factor, taken as `d.primeFactors.sup id`;
* L-functions of elliptic curves are entire functions `L` agreeing with Mathlib's totalized
  `WeierstrassCurve.LSeries` on `3/2 < re s`, supplied as hypotheses;
* `WeierstrassCurve.Affine.Point.canonicalHeight` is the pinned normalization
  `lim h(2ⁿP)/4ⁿ`, the full x-coordinate height `ĥ` of the README.
-/

open Filter MeasureTheory Asymptotics
open scoped BigOperators Topology NumberField

namespace TauCetiRoadmap.EffectiveClassNumbers

noncomputable section

/-! ## Layer 0: imaginary quadratic fields, discriminant weights and small split primes -/

section Layer0

/-- §0.1: for a quadratic field the negative discriminant convention is equivalent to having
no real embedding, the input convention of ImaginaryQuadraticClassNumber H1.1. -/
theorem isTotallyComplex_iff_discr_neg (K : Type) [Field K] [NumberField K]
    (hdeg : Module.finrank ℚ K = 2) :
    NumberField.IsTotallyComplex K ↔ NumberField.discr K < 0 := by
  sorry

/-- §0.1: the real quadratic extension of the base roadmap's negative-radicand classification. -/
theorem exists_positive_squarefree_radicand (K : Type) [Field K] [NumberField K]
    (hdeg : Module.finrank ℚ K = 2) (hpos : 0 < NumberField.discr K) :
    ∃ (d : ℤ) (θ : 𝓞 K), 1 < d ∧ Squarefree d ∧
      minpoly ℤ θ = Polynomial.X ^ 2 - Polynomial.C d ∧
      Algebra.adjoin ℚ {(θ : K)} = ⊤ := by
  sorry

/-- §0.1: the discriminant of a quadratic field is a fundamental discriminant different
from `1`, for both Tau Ceti's and Mathlib's predicates. -/
theorem isFundamentalDiscriminant_discr (K : Type) [Field K] [NumberField K]
    (hdeg : Module.finrank ℚ K = 2) :
    TauCeti.Multiquadratic.IsFundamentalDiscriminant (NumberField.discr K) ∧
      Int.IsFundamentalDiscr (NumberField.discr K) ∧ NumberField.discr K ≠ 1 := by
  sorry

/-- §0.1: genus divisibility `2 ^ (t - 1) ∣ h` for every imaginary quadratic field, `t` the
number of primes dividing the discriminant (including `ℚ(i)`, outside Tau Ceti's radicand
hypothesis `d < -1`). -/
theorem two_pow_sub_one_dvd_classNumber (K : Type) [Field K] [NumberField K]
    (hdeg : Module.finrank ℚ K = 2) (hneg : NumberField.discr K < 0) :
    2 ^ ((NumberField.discr K).natAbs.primeFactors.card - 1) ∣ NumberField.classNumber K := by
  sorry

/-- §0.1: a negative fundamental discriminant with one prime factor is `-4`, `-8` or `-p`
with `p ≡ 3 mod 4`. -/
theorem discr_of_card_primeFactors_eq_one (K : Type) [Field K] [NumberField K]
    (hdeg : Module.finrank ℚ K = 2) (hneg : NumberField.discr K < 0)
    (ht : (NumberField.discr K).natAbs.primeFactors.card = 1) :
    NumberField.discr K = -4 ∨ NumberField.discr K = -8 ∨
      ∃ p : ℕ, p.Prime ∧ p % 4 = 3 ∧ NumberField.discr K = -(p : ℤ) := by
  sorry

/-- §0.2: a reduced form of negative discriminant has `d ≤ 4c²`; equality is possible for a
primitive form only at discriminant `-4`. -/
theorem reducedForm_four_mul_c_sq_ge (f : TauCeti.BinaryQuadraticForm ℤ) (d : ℕ)
    (hd : 0 < d) (hdiscr : f.discrim = -(d : ℤ)) (hred : TauCeti.IsReducedForm f) :
    (d : ℤ) ≤ 4 * f.c ^ 2 ∧
      (Int.gcd (Int.gcd f.a f.b : ℤ) f.c = 1 → d ≠ 4 → (d : ℤ) < 4 * f.c ^ 2) := by
  sorry

/-- §0.2: small reduced-form counts for fundamental and imprimitive discriminants, including
`139` and `907`; these are boundary targets for the consumed unweighted count. -/
theorem reducedForms_small_counts :
    (TauCeti.reducedForms 23).card = 3 ∧ (TauCeti.reducedForms 20).card = 2 ∧
    (TauCeti.reducedForms 907).card = 3 ∧ (TauCeti.reducedForms 139).card = 3 ∧
    (TauCeti.reducedForms 4).card = 1 ∧
    (TauCeti.reducedForms 16).card = 2 ∧ (TauCeti.reducedForms 12).card = 2 := by
  sorry

/-- §0.3: the ramified-prime weight θ(d), a product over the distinct prime factors of `d`
with the largest one removed. The README's `ramifiedWeight_congr_primeFactors` expresses dependence
only on that set; `ramifiedWeight_prime_pow` gives weight one for every positive prime power. -/
def ramifiedWeight (d : ℕ) : ℝ :=
  ∏ p ∈ d.primeFactors.erase (d.primeFactors.sup id),
    (1 - (⌊2 * Real.sqrt p⌋₊ : ℝ) / (p + 1))

/-- §0.3: θ is positive. -/
theorem ramifiedWeight_pos (d : ℕ) : 0 < ramifiedWeight d := by sorry

/-- §0.3: θ is at most `1`. -/
theorem ramifiedWeight_le_one (d : ℕ) : ramifiedWeight d ≤ 1 := by sorry

/-- §0.3: θ is `1` for an imaginary quadratic field of odd class number. -/
theorem ramifiedWeight_eq_one_of_odd_classNumber (K : Type) [Field K] [NumberField K]
    (hdeg : Module.finrank ℚ K = 2) (hneg : NumberField.discr K < 0)
    (hodd : Odd (NumberField.classNumber K)) :
    ramifiedWeight (NumberField.discr K).natAbs = 1 := by
  sorry

/-- §0.3: empty and single-prime products have weight one. -/
example : ramifiedWeight 0 = 1 ∧ ramifiedWeight 907 = 1 := by
  constructor
  · simp [ramifiedWeight]
  · have h : Nat.Prime 907 := by norm_num
    simp [ramifiedWeight, h.primeFactors]

/-- §0.3: removing the largest prime, and ignoring prime multiplicities, gives these two
nonempty products. -/
example : ramifiedWeight 15 = 1 / 4 ∧ ramifiedWeight 84 = 1 / 12 := by
  have h2 : ⌊2 * Real.sqrt 2⌋₊ = 2 := by
    apply (Nat.floor_eq_iff (by positivity)).2
    constructor
    · have h := Real.le_sqrt_of_sq_le (show (1 : ℝ) ^ 2 ≤ 2 by norm_num)
      norm_num at h ⊢
    · have h := (Real.sqrt_lt (by norm_num : (0 : ℝ) ≤ 2)
        (by norm_num : (0 : ℝ) ≤ 3 / 2)).2 (by norm_num : (2 : ℝ) < (3 / 2) ^ 2)
      norm_num at h ⊢; linarith
  have h3 : ⌊2 * Real.sqrt 3⌋₊ = 3 := by
    apply (Nat.floor_eq_iff (by positivity)).2
    constructor
    · have h := Real.le_sqrt_of_sq_le (show (3 / 2 : ℝ) ^ 2 ≤ 3 by norm_num)
      norm_num at h ⊢; linarith
    · have h := (Real.sqrt_lt (by norm_num : (0 : ℝ) ≤ 3)
        (by norm_num : (0 : ℝ) ≤ 2)).2 (by norm_num : (3 : ℝ) < 2 ^ 2)
      norm_num at h ⊢; linarith
  have h15 : Nat.primeFactors 15 = {3, 5} := by
    rw [show (15 : ℕ) = 3 * 5 by norm_num, Nat.primeFactors_mul (by norm_num) (by norm_num),
      Nat.Prime.primeFactors (by norm_num), Nat.Prime.primeFactors (by norm_num)]
    rfl
  have h84 : Nat.primeFactors 84 = {2, 3, 7} := by
    rw [show (84 : ℕ) = 2 ^ 2 * (3 * 7) by norm_num,
      Nat.primeFactors_mul (by norm_num) (by norm_num),
      Nat.primeFactors_prime_pow (by norm_num) (by norm_num),
      Nat.primeFactors_mul (by norm_num) (by norm_num),
      Nat.Prime.primeFactors (by norm_num), Nat.Prime.primeFactors (by norm_num)]
    rfl
  have e15 : (Nat.primeFactors 15).erase ((Nat.primeFactors 15).sup id) = {3} := by
    rw [h15]; decide
  have e84 : (Nat.primeFactors 84).erase ((Nat.primeFactors 84).sup id) = {2, 3} := by
    rw [h84]; decide
  rw [ramifiedWeight, ramifiedWeight, e15, e84]
  rw [Finset.prod_singleton, Finset.prod_insert (by decide), Finset.prod_singleton]
  norm_num [h2, h3]

/-- §0.4: a split prime `p` satisfies `d ≤ 4 p ^ h`. -/
theorem splitPrime_size (K : Type) [Field K] [NumberField K]
    (hdeg : Module.finrank ℚ K = 2) (hneg : NumberField.discr K < 0)
    (p : ℕ) (hp : p.Prime) (hunram : ¬ (p : ℤ) ∣ NumberField.discr K)
    (hsplit : ∃ P : Ideal (𝓞 K), P.IsPrime ∧ P.absNorm = p) :
    (NumberField.discr K).natAbs ≤ 4 * p ^ NumberField.classNumber K := by
  sorry

/-- §0.4: the extra-unit boundary fields have class number one and the required split prime
ideals; this supplies the discriminating instances `3 ≤ 4·7` and `4 ≤ 4·5`. -/
theorem splitPrime_boundary_fields (K : Type) [Field K] [NumberField K]
    (hdeg : Module.finrank ℚ K = 2) (hD : NumberField.discr K = -3 ∨ NumberField.discr K = -4) :
    NumberField.classNumber K = 1 ∧
      (∃ P : Ideal (𝓞 K), P.IsPrime ∧
        P.absNorm = if NumberField.discr K = -3 then 7 else 5) := by
  sorry

/-- §0.5, arithmetic core: a completely multiplicative function equal to `-1` at every prime
factor of `n` agrees with Liouville's function at `n`. -/
theorem liouville_agreement (χ : ArithmeticFunction ℤ) (n : ℕ)
    (hone : χ 1 = 1) (hmul : ∀ m k : ℕ, χ (m * k) = χ m * χ k) (hn : 0 < n)
    (hinert : ∀ p ∈ n.primeFactors, χ p = -1) :
    χ n = ArithmeticFunction.liouville n := by
  sorry

end Layer0

/-! ## Layer 1: Goldfeld's effective analytic principle -/

section Layer1

/-- §1.1: Goldfeld's degree-four completion `d^(s-1) M^s Γ(s)² Ψ(s) G(s)`, centred at `1`.
The README's `goldfeldCompletion_two` evaluates it at two, and `goldfeldCompletion_congr`
transports equality of its factors. For `d, M > 0`, `goldfeldCompletion_analyticOrder` preserves
the finite analytic order of `ΨG` at one, since the remaining factor is analytic and nonzero. -/
def goldfeldCompletion (d : ℕ) (M : ℝ) (Ψ G : ℂ → ℂ) : ℂ → ℂ :=
  fun s ↦ (d : ℂ) ^ (s - 1) * (M : ℂ) ^ s * Complex.Gamma s ^ 2 * Ψ s * G s

/-- §1.1: the value at the centre. -/
theorem goldfeldCompletion_one (d : ℕ) (M : ℝ) (Ψ G : ℂ → ℂ) :
    goldfeldCompletion d M Ψ G 1 = (M : ℂ) * Ψ 1 * G 1 := by
  simp [goldfeldCompletion]

/-- §1.1: with `ΨG = L·L_χ` and `M = √(N N_χ)/(4π² d)` the right-half-plane expression is `Λ·Λ_χ / d`. -/
theorem goldfeldCompletion_product (d N Nχ : ℕ) (hd : 0 < d) (hN : 0 < N) (hNχ : 0 < Nχ)
    (Ψ G L Lχ : ℂ → ℂ) (hprod : ∀ s : ℂ, 3 / 2 < s.re → Ψ s * G s = L s * Lχ s)
    (s : ℂ) (hs : 3 / 2 < s.re) :
    goldfeldCompletion d (Real.sqrt ((N : ℝ) * Nχ) / (4 * Real.pi ^ 2 * d)) Ψ G s =
      ((N : ℂ) ^ (s / 2) * (2 * Real.pi : ℂ) ^ (-s) * Complex.Gamma s * L s) *
      ((Nχ : ℂ) ^ (s / 2) * (2 * Real.pi : ℂ) ^ (-s) * Complex.Gamma s * Lχ s) /
      (d : ℂ) := by
  sorry

/-- §1.1: the centre and the value at two distinguish the conductor powers. -/
example : goldfeldCompletion 2 3 (fun _ ↦ 2) (fun _ ↦ 5) 1 = 30 ∧
    goldfeldCompletion 2 3 (fun _ ↦ 1) (fun _ ↦ 1) 2 = 18 := by
  constructor
  · norm_num [goldfeldCompletion]
  · have hΓ : Complex.Gamma 2 = 1 := by simp
    norm_num [goldfeldCompletion, hΓ]

/-- §1.1: a zero factor gives the zero product, and totalized Gamma forces the product's value
at zero even though an analytic continuation need not have that value. -/
example (d : ℕ) (M : ℝ) (Ψ G : ℂ → ℂ) :
    (goldfeldCompletion d M (fun _ ↦ 0) G = fun _ ↦ 0) ∧
      goldfeldCompletion d M Ψ G 0 = 0 := by
  constructor
  · funext s; simp [goldfeldCompletion]
  · simp [goldfeldCompletion]

/-- §1.3: the positive inverse Mellin kernel `x^(-a) (log (1/x))^(m-1) / (m-1)!` on `(0,1]`.
Its interior formula is `inverseMellinKernel_of_pos_of_le_one` in the README; for `m ≥ 2`,
`inverseMellinKernel_eq_zero` includes the endpoint and exterior zeros, and
`inverseMellinKernel_nonneg` gives nonnegativity. With `a ≥ 0` and `m ≥ 2`,
`inverseMellinKernel_antitoneOn` gives monotonicity on the positive half-line. -/
def inverseMellinKernel (a : ℝ) (m : ℕ) : ℝ → ℝ :=
  fun x ↦ if 0 < x ∧ x ≤ 1 then
    x ^ (-a) * Real.log (1 / x) ^ (m - 1) / ((m - 1).factorial : ℝ) else 0

/-- §1.3: for `a ≥ 0` and `m ≥ 2` the kernel is convex on `(0, ∞)`. -/
theorem inverseMellinKernel_convexOn (a : ℝ) (m : ℕ) (ha : 0 ≤ a) (hm : 2 ≤ m) :
    ConvexOn ℝ (Set.Ioi 0) (inverseMellinKernel a m) := by
  sorry

/-- §1.3: the Mellin transform of the kernel is `(s - a)^(-m)` for `a < re s`. -/
theorem inverseMellinKernel_mellin (a : ℝ) (m : ℕ) (hm : 2 ≤ m) (s : ℂ) (hs : a < s.re) :
    mellin (fun x ↦ (inverseMellinKernel a m x : ℂ)) s = (s - (a : ℂ)) ^ (-(m : ℤ)) := by
  sorry

/-- §1.3: `a=1` contributes a factor two at `x=1/2`, while `m=3` has denominator `2!`. -/
example : inverseMellinKernel 0 2 (1 / 2) = Real.log 2 ∧
    inverseMellinKernel 1 2 (1 / 2) = 2 * Real.log 2 ∧
    inverseMellinKernel 0 3 (1 / 2) = Real.log 2 ^ 2 / 2 ∧
    0 < inverseMellinKernel 0 3 (1 / 2) := by
  norm_num [inverseMellinKernel]
  exact sq_pos_of_pos (Real.log_pos (by norm_num : (1 : ℝ) < 2))

/-- §1.3: the support endpoints vanish; the negative-`a` kernel increases between `1/16`
and `1/4`, so the antitonicity hypothesis cannot be dropped. -/
example : inverseMellinKernel 0 3 1 = 0 ∧ inverseMellinKernel 0 2 2 = 0 ∧
    inverseMellinKernel (-1) 2 (1 / 16) < inverseMellinKernel (-1) 2 (1 / 4) := by
  have hlog4 : Real.log (4 : ℝ) = 2 * Real.log 2 := by
    rw [show (4 : ℝ) = 2 ^ (2 : ℕ) by norm_num, Real.log_pow]; norm_num
  have hlog16 : Real.log (16 : ℝ) = 4 * Real.log 2 := by
    rw [show (16 : ℝ) = 2 ^ (4 : ℕ) by norm_num, Real.log_pow]; norm_num
  norm_num [inverseMellinKernel, hlog4, hlog16]
  nlinarith [Real.log_pos (show (1 : ℝ) < 2 by norm_num)]

/-- §1.4: positive Mellin comparison for one factor, under integrated cumulative domination
(Oesterlé's Lemma 3); finite products iterate it. -/
theorem positiveMellin_comparison (a x : ℝ) (m : ℕ) (ha : 0 ≤ a) (hx : 0 < x) (hm : 2 ≤ m)
    (μ ν : Measure ℝ) (hμ : μ (Set.Iic 0) = 0) (hν : ν (Set.Iic 0) = 0)
    (hlocμ : ∀ t : ℝ, μ (Set.Ioc 0 t) ≠ ⊤) (hlocν : ∀ t : ℝ, ν (Set.Ioc 0 t) ≠ ⊤)
    (hdom : ∀ T : ℝ, 0 ≤ T →
      (∫ t in Set.Icc 0 T, (μ (Set.Ioc 0 t)).toReal) ≤
        ∫ t in Set.Icc 0 T, (ν (Set.Ioc 0 t)).toReal)
    (hintμ : Integrable (fun t ↦ inverseMellinKernel a m (x * t)) μ)
    (hintν : Integrable (fun t ↦ inverseMellinKernel a m (x * t)) ν) :
    0 ≤ ∫ t, inverseMellinKernel a m (x * t) ∂μ ∧
      (∫ t, inverseMellinKernel a m (x * t) ∂μ) ≤ ∫ t, inverseMellinKernel a m (x * t) ∂ν := by
  sorry

/-- §1.5: the fundamental contour identity: a plus-sign functional equation and a central zero
of order at least three annihilate `∫ F(s)/(s-1)³` on `re s = σ > 3/2`. -/
theorem fundamentalContour (F : ℂ → ℂ) (hentire : Differentiable ℂ F)
    (hFE : ∀ s, F s = F (2 - s)) (hzero : ∀ j : ℕ, j < 3 → iteratedDeriv j F 1 = 0)
    (hdecay : ∀ A B : ℝ, ∀ r : ℕ, ∃ C : ℝ, 0 < C ∧ ∀ s : ℂ,
      A ≤ s.re → s.re ≤ B → 1 ≤ |s.im| → ‖F s‖ ≤ C / |s.im| ^ r)
    (σ : ℝ) (hσ : 3 / 2 < σ) :
    ∫ t : ℝ, F ((σ : ℂ) + t * Complex.I) / (((σ : ℂ) + t * Complex.I) - 1) ^ 3 = 0 := by
  sorry

/-- §1.6: the residue of `d^(s-1) H(s) G(s)/(s-1)²` at `1`, for `H`, `G` analytic at `1`. -/
theorem truncatedResidue (d : ℕ) (hd : 0 < d) (H G : ℂ → ℂ)
    (hH : AnalyticAt ℂ H 1) (hG : AnalyticAt ℂ G 1) :
    TauCeti.Contour.residue (fun s ↦ (d : ℂ) ^ (s - 1) * H s * G s / (s - 1) ^ 2) 1 =
      H 1 * G 1 * (Real.log d : ℂ) + H 1 * deriv G 1 + deriv H 1 * G 1 := by
  sorry

/-- §1.8: Oesterlé's technical theorem. For fixed `M` and `Ψ` satisfying the `Ψ`-parts of C1 and
C4 there is `C`, independent of the field and of `G`, with
`min(1, ∏_{p ∈ P(d)} |G_p(1)|/(1 + 1/p)) · log d ≤ C h` whenever `G` satisfies C1–C2 and
an entire `F`, agreeing with the product on `re s > 3/2`, satisfies C3. -/
theorem oesterleTechnical (M : ℝ) (hM : 0 < M) (Ψ : ℂ → ℂ) (a : ℕ → ℂ)
    (hΨseries : ∀ s : ℂ, 1 < s.re → Ψ s = LSeries a s)
    (hΨcoeff : ∀ n : ℕ, 0 < n → ‖a n‖ ≤
      if (Nat.sqrt n) ^ 2 = n then (Nat.sqrt n : ℝ) * (Nat.divisors (Nat.sqrt n)).card else 0)
    (U : Set ℂ) (hU : IsOpen U) (hUc : {s : ℂ | 1 ≤ s.re} ⊆ U) (hΨan : AnalyticOnNhd ℂ Ψ U)
    (hΨzero : Ψ 1 = 0) (hΨsimple : deriv Ψ 1 ≠ 0)
    (hΨdecay : ∀ A B : ℝ, 1 ≤ A → ∀ r : ℕ, ∃ C : ℝ, 0 < C ∧ ∀ s : ℂ,
      A ≤ s.re → s.re ≤ B → 1 ≤ |s.im| →
        ‖(M : ℂ) ^ s * Complex.Gamma s ^ 2 * Ψ s‖ ≤ C / |s.im| ^ r) :
    ∃ C : ℝ, 0 < C ∧ ∀ (K : Type) [Field K] [NumberField K],
      Module.finrank ℚ K = 2 → NumberField.discr K < -4 →
      ∀ (G F : ℂ → ℂ) (b : ℕ → ℂ) (ν : ℕ → ℝ) (Gp : ℕ → ℂ → ℂ) (α β α' β' : ℕ → ℂ),
      (∀ n, 0 ≤ ν n) →
      (∀ s : ℂ, 1 < s.re → LSeries (fun n ↦ (ν n : ℂ)) s =
        NumberField.dedekindZeta K s / riemannZeta (2 * s)) →
      (∀ s : ℂ, 3 / 2 < s.re → G s = LSeries b s) →
      (∀ n : ℕ, 0 < n → ‖b n‖ ≤ Real.sqrt n * ∑ q ∈ n.divisors, ν q * ν (n / q)) →
      (∀ p : ℕ, p.Prime → ‖α p‖ ≤ Real.sqrt p ∧ ‖β p‖ ≤ Real.sqrt p ∧
        ‖α' p‖ ≤ Real.sqrt p ∧ ‖β' p‖ ≤ Real.sqrt p) →
      (∀ p : ℕ, p.Prime → ∀ s : ℂ, Gp p s =
        ((1 + α p * (p : ℂ) ^ (-s)) * (1 + β p * (p : ℂ) ^ (-s))) /
          ((1 + α' p * (p : ℂ) ^ (-s)) * (1 + β' p * (p : ℂ) ^ (-s)))) →
      (∀ s : ℂ, 3 / 2 < s.re → Tendsto
        (fun B : ℕ ↦ ∏ p ∈ (Finset.range B).filter Nat.Prime, Gp p s) atTop (𝓝 (G s))) →
      Differentiable ℂ F →
      (∀ s : ℂ, 3 / 2 < s.re →
        F s = goldfeldCompletion (NumberField.discr K).natAbs M Ψ G s) →
      (∀ s, F s = F (2 - s)) →
      (∀ j : ℕ, j < 3 → iteratedDeriv j F 1 = 0) →
      (∀ A B : ℝ, ∀ r : ℕ, ∃ T : ℝ, 0 < T ∧ ∀ s : ℂ, A ≤ s.re → s.re ≤ B → 1 ≤ |s.im| →
        ‖F s‖ ≤ T / |s.im| ^ r) →
      min 1 (∏ p ∈ (NumberField.discr K).natAbs.primeFactors.erase
          ((NumberField.discr K).natAbs.primeFactors.sup id),
          ‖Gp p 1‖ / (1 + 1 / (p : ℝ))) * Real.log (NumberField.discr K).natAbs ≤
        C * NumberField.classNumber K := by
  sorry

end Layer1

/-! ## Layer 2: two elliptic curves of rank three -/

section Layer2

/-- §2.1: the Gross–Zagier curve `Y² + Y = X³ - X² - 64403X - 6220110`.
The README's `curve139_j` identifies its j-invariant as `4096000/37`, and
`curve139_isQuadraticTwist` identifies it with the `-139` twist of `curve37` by an explicit
change of variables. The README’s `curve139_source_isogeny` instead compares the isogenous
Oesterlé model by a rational degree-three isogeny. The invariant scaling below fixes the twist
normalization. -/
def curve139 : WeierstrassCurve ℚ := ⟨0, -1, 1, -64403, -6220110⟩

/-- §2.1: the conductor-37 curve `y² + y = x³ + x² - 3x + 1`, whose `-139` twist is `curve139`. -/
def curve37 : WeierstrassCurve ℚ := ⟨0, 1, 1, -3, 1⟩

/-- §2.2: the Buhler–Gross–Zagier curve `y² + y = x³ - 7x + 6`.
The README's `curve5077_equation` identifies this affine equation; `curve5077_c₄` gives
`c₄ = 336`. The map `y ↦ -y` gives the minus-y model in `curve5077_minus_y_equation`, and
`curve5077_points` places `(0,2)`, `(1,0)`, `(2,0)` on the plus-y model. -/
def curve5077 : WeierstrassCurve ℚ := ⟨0, 0, 1, -7, 6⟩

/-- §2.1: the discriminant of `curve139` is `37·139⁶`. -/
theorem curve139_discriminant : curve139.Δ = 37 * 139 ^ 6 := by
  simp only [curve139, WeierstrassCurve.Δ, WeierstrassCurve.b₂, WeierstrassCurve.b₄,
    WeierstrassCurve.b₆, WeierstrassCurve.b₈]
  norm_num

/-- §2.1: the discriminant of `curve37` is `37`. -/
theorem curve37_discriminant : curve37.Δ = 37 := by
  simp only [curve37, WeierstrassCurve.Δ, WeierstrassCurve.b₂, WeierstrassCurve.b₄,
    WeierstrassCurve.b₆, WeierstrassCurve.b₈]
  norm_num

/-- §2.2: the discriminant of `curve5077` is `5077`. -/
theorem curve5077_discriminant : curve5077.Δ = 5077 := by
  simp only [curve5077, WeierstrassCurve.Δ, WeierstrassCurve.b₂, WeierstrassCurve.b₄,
    WeierstrassCurve.b₆, WeierstrassCurve.b₈]
  norm_num

/-- §2.1: the nonzero discriminant makes `curve139` elliptic. -/
instance curve139_isElliptic : curve139.IsElliptic :=
  ⟨by rw [curve139_discriminant]; exact isUnit_iff_ne_zero.mpr (by norm_num)⟩

/-- §2.2: the nonzero discriminant makes `curve5077` elliptic. -/
instance curve5077_isElliptic : curve5077.IsElliptic :=
  ⟨by rw [curve5077_discriminant]; exact isUnit_iff_ne_zero.mpr (by norm_num)⟩

/-- §2.1: `curve139` and `curve37` differ by the twist by `-139`: `c₄` scales by `(-139)²` and
`c₆` by `(-139)³`. -/
theorem curve139_c₄_c₆ :
    curve139.c₄ = (-139) ^ 2 * curve37.c₄ ∧ curve139.c₆ = (-139) ^ 3 * curve37.c₆ := by
  simp only [curve139, curve37, WeierstrassCurve.c₄, WeierstrassCurve.c₆,
    WeierstrassCurve.b₂, WeierstrassCurve.b₄, WeierstrassCurve.b₆]
  norm_num

/-- §2.1: the coordinate change to the model `-139y² = x³ + 10x² - 20x + 8` of Gross–Zagier. -/
theorem curve139_source_equation (X Y : ℚ) :
    curve139.toAffine.Equation X Y ↔
      (-139 : ℚ) * ((8 * Y + 4) / 139 ^ 2) ^ 2 =
        ((4 * X + 462) / (-139)) ^ 3 + 10 * ((4 * X + 462) / (-139)) ^ 2 -
          20 * ((4 * X + 462) / (-139)) + 8 := by
  rw [WeierstrassCurve.Affine.equation_iff]; simp only [curve139]
  constructor <;> intro h
  · linear_combination (-64 / 2685619 : ℚ) * h
  · linear_combination (-2685619 / 64 : ℚ) * h

/-- §2.1: the origin fails the chosen affine equation. -/
example : curve139.a₂ = -1 ∧ curve139.a₄ = -64403 ∧ curve139.a₆ = -6220110 ∧
    ¬ curve139.toAffine.Equation 0 0 := by
  simp [curve139, WeierstrassCurve.Affine.equation_iff]

/-- §2.1: the displayed integral point belongs to this model. -/
example : curve139.toAffine.Equation (-156) 77 := by
  rw [WeierstrassCurve.Affine.equation_iff]; simp [curve139]; norm_num

/-- §2.2: the three generators lie on the plus-`y` model. -/
example : curve5077.toAffine.Equation 0 2 ∧ curve5077.toAffine.Equation 1 0 ∧
    curve5077.toAffine.Equation 2 0 := by
  simp only [WeierstrassCurve.Affine.equation_iff, curve5077]; norm_num

/-- §2.2: negating only this generator's y-coordinate gives a point on the other model. -/
example : ¬ curve5077.toAffine.Equation 0 (-2) := by
  rw [WeierstrassCurve.Affine.equation_iff]; simp [curve5077]; norm_num

/-- §2.1: model and invariants of the conductor-37 curve fix the twist normalization. -/
example : curve37.a₂ = 1 ∧ curve37.a₄ = -3 ∧ curve37.a₆ = 1 ∧
    curve37.Δ = 37 ∧ curve37.c₄ = 160 ∧ curve37.c₆ = -2008 := by
  norm_num [curve37, WeierstrassCurve.Δ, WeierstrassCurve.c₄, WeierstrassCurve.c₆,
    WeierstrassCurve.b₂, WeierstrassCurve.b₄, WeierstrassCurve.b₆, WeierstrassCurve.b₈]

/-- §§2.1, 2.7: the origin is excluded and the two nonzero isogeny-kernel points lie on the
curve; the displayed equation has nine projective points
modulo seven, whereas its nonminimal scaled equation reduces to a cusp with eight. -/
example : ¬ curve37.toAffine.Equation 0 0 ∧
    curve37.toAffine.Equation 1 0 ∧ curve37.toAffine.Equation 1 (-1) ∧
    (Finset.univ.filter (fun P : ZMod 7 × ZMod 7 ↦
      P.2 ^ 2 + P.2 = P.1 ^ 3 + P.1 ^ 2 - 3 * P.1 + 1)).card + 1 = 9 ∧
    (Finset.univ.filter (fun P : ZMod 7 × ZMod 7 ↦ P.2 ^ 2 = P.1 ^ 3)).card + 1 = 8 := by
  refine ⟨?_, ?_, ?_, by decide, by decide⟩ <;>
    rw [WeierstrassCurve.Affine.equation_iff] <;> norm_num [curve37]

/-- §2.3: elliptic motivic-normalization adapter to the sign-parity theorem of
AutomorphicLFunctionsAndLocalFactors AL.5 (`central-sign-vanishing`). The entire completion
is supplied independently of its right-half-plane gamma expression; `a₁=1` excludes `L=0`. -/
theorem analyticRank_parity (E : WeierstrassCurve ℚ) [E.IsElliptic]
    (N : ℕ) (hN : 0 < N) (L Λ : ℂ → ℂ)
    (hL : Differentiable ℂ L) (hΛ : Differentiable ℂ Λ)
    (hseries : ∀ s : ℂ, 3 / 2 < s.re → L s = E.LSeries s)
    (hcompletion : ∀ s : ℂ, 3 / 2 < s.re → Λ s =
      (N : ℂ) ^ (s / 2) * (2 * Real.pi : ℂ) ^ (-s) * Complex.Gamma s * L s)
    (w : ℤ) (hw : w = 1 ∨ w = -1) (hFE : ∀ s : ℂ, Λ (2 - s) = (w : ℂ) * Λ s) :
    analyticOrderAt L 1 ≠ ⊤ ∧ (-1 : ℤ) ^ analyticOrderNatAt L 1 = w := by
  sorry

/-- §2.3: twisting coefficients by the primitive quadratic character when every prime dividing
its conductor is a prime of good reduction. The local-polynomial condition is equivalent to
coprimality of the elliptic conductor and `D`. -/
theorem twist_LFunction_coeff (E : WeierstrassCurve ℚ) [E.IsElliptic] (D : ℤ)
    (hD : TauCeti.Multiquadratic.IsFundamentalDiscriminant D) (hD1 : D ≠ 1)
    (hgood : ∀ (p : ℕ) [Fact p.Prime], p ∣ D.natAbs →
      ((E.baseChange ℚ_[p]).localPolynomial ℤ_[p]).natDegree = 2)
    (n : ℕ) (hn : 0 < n) :
    (E.quadraticTwistOf 1 ((1 - (D : ℚ)) / 4)).LFunction n =
      TauCeti.Multiquadratic.fundamentalDiscriminantChar D hD n * E.LFunction n := by
  sorry

/-- §2.3: the bad Euler factors: additive reduction of `curve139` at `139` and nonsplit
multiplicative reduction of `curve5077` at `5077`. -/
theorem curve_local_data : curve139.LFunction 139 = 0 ∧ curve5077.LFunction 5077 = -1 := by
  sorry

/-- §2.3: all three displayed integral equations are minimal at every rational prime.
Their nonzero discriminant valuations are `1` or `6`, strictly below `12`. -/
theorem curve_models_minimal (p : ℕ) [Fact p.Prime] :
    WeierstrassCurve.IsMinimal ℤ_[p] (curve37.baseChange ℚ_[p]) ∧
      WeierstrassCurve.IsMinimal ℤ_[p] (curve139.baseChange ℚ_[p]) ∧
      WeierstrassCurve.IsMinimal ℤ_[p] (curve5077.baseChange ℚ_[p]) := by
  sorry

/-- §§2.3, 2.7: the trace-zero good factor at five, split factor at thirty-seven and
minimalization at seven fix the cohomological geometric-Frobenius convention. -/
theorem curve37_local_polynomial_checks [Fact (Nat.Prime 5)] [Fact (Nat.Prime 37)]
    [Fact (Nat.Prime 7)] :
    (curve37.baseChange ℚ_[5]).localPolynomial ℤ_[5] =
        1 + Polynomial.C 5 * Polynomial.X ^ 2 ∧
      (curve37.baseChange ℚ_[37]).localPolynomial ℤ_[37] = 1 - Polynomial.X ∧
      (curve37.baseChange ℚ_[7]).localPolynomial ℤ_[7] =
        1 + Polynomial.X + Polynomial.C 7 * Polynomial.X ^ 2 ∧
      ((⟨0, 49, 343, -7203, 117649⟩ : WeierstrassCurve ℚ).baseChange ℚ_[7]).localPolynomial
          ℤ_[7] = 1 + Polynomial.X + Polynomial.C 7 * Polynomial.X ^ 2 := by
  sorry

/-- §2.4: Mordell–Weil ranks: both curves have rank `3`, and `curve5077(ℚ)` is torsion-free. -/
theorem mordellWeilRank_eq_three :
    Module.finrank ℤ curve139.toAffine.PointModTorsion = 3 ∧
      Module.finrank ℤ curve5077.toAffine.PointModTorsion = 3 ∧
      Submodule.torsion ℤ curve5077.toAffine.Point = ⊥ := by
  sorry

/-- §2.5: the Buhler–Gross–Zagier kernels: `G₀(x) = e^(-x)` and
`G_r(x) = (r-1)!⁻¹ ∫₁^∞ e^(-xy) (log y)^(r-1) dy/y` for `x > 0`, and `0` for `x ≤ 0`.
For `x > 0`, the README's `bgzKernel_zero` gives the exponential at `r = 0`, and
`bgzKernel_pos` gives strict positivity; `bgzKernel_of_nonpos` records the zero convention
for `x ≤ 0`. For `r ≥ 1`, `bgzKernel_mellinInv` identifies the inverse Mellin transform of
`Γ(s)s^(-r)` on a line of positive real part. The residue polynomial and convergent series
are `bgzKernel_series`; `bgzKernel_series_remainder` bounds every truncation by its first
omitted term for `K ≥ 0`. For `Y ≥ exp(r-1)`, `bgzKernel_integral_tail_le` bounds the
normalized integral tail by `exp(-xY)(log Y)^(r-1)/(xY(r-1)!)`. -/
def bgzKernel (r : ℕ) : ℝ → ℝ :=
  fun x ↦ if x ≤ 0 then 0 else if r = 0 then Real.exp (-x) else
    (∫ y in Set.Ioi (1 : ℝ), Real.exp (-x * y) * Real.log y ^ (r - 1) / y) /
      ((r - 1).factorial : ℝ)

/-- §2.5: `G_r' = -G_{r-1}/x` for `r ≥ 1`. -/
theorem bgzKernel_hasDerivAt (r : ℕ) (hr : 1 ≤ r) (x : ℝ) (hx : 0 < x) :
    HasDerivAt (bgzKernel r) (-bgzKernel (r - 1) x / x) x := by
  sorry

/-- §2.5: `G_r(x) ≤ e^(-x)/x^r` for `x > 0`. -/
theorem bgzKernel_le (r : ℕ) (x : ℝ) (hx : 0 < x) : bgzKernel r x ≤ Real.exp (-x) / x ^ r := by
  sorry

/-- §2.5: at positive argument the zeroth kernel is the exponential. -/
example : bgzKernel 0 1 = Real.exp (-1) := by norm_num [bgzKernel]

/-- §2.5: the boundary convention vanishes at zero and at negative arguments. -/
example : bgzKernel 3 0 = 0 ∧ bgzKernel 1 (-1) = 0 := by simp [bgzKernel]

/-- §2.5: boundary inequalities at positive arguments exercise the integral kernels for
`r=1` and `r=3`, beyond the exponential and nonpositive-argument branches. -/
theorem bgzKernel_boundary_bounds :
    0 < bgzKernel 1 1 ∧ bgzKernel 1 1 < Real.exp (-1) ∧
      bgzKernel 3 2 ≤ Real.exp (-2) / 8 := by
  sorry

/-- §2.6: odd central derivatives as kernel series, for a weight-two coefficient sequence with
root number `-1` (encoded by the theta relation) and an entire `L` vanishing to order `≥ r`. -/
theorem centralDerivative_series (N r : ℕ) (hN : 0 < N) (hr : Odd r) (a : ℕ → ℝ) (L : ℂ → ℂ)
    (hcoeff : ∀ n : ℕ, |a n| ≤ (n.divisors.card : ℝ) * Real.sqrt n)
    (hentire : Differentiable ℂ L)
    (hseries : ∀ s : ℂ, 3 / 2 < s.re → L s = LSeries (fun n ↦ (a n : ℂ)) s)
    (hFricke : ∀ y : ℝ, 0 < y →
      (∑' n : ℕ, a n * Real.exp (-2 * Real.pi * n / (y * Real.sqrt N))) =
        -y ^ 2 * ∑' n : ℕ, a n * Real.exp (-2 * Real.pi * n * y / Real.sqrt N))
    (hzero : ∀ j : ℕ, j < r → iteratedDeriv j L 1 = 0) :
    iteratedDeriv r L 1 =
      (2 * (r.factorial : ℂ)) * ∑' n : ℕ,
        ((a n / n * bgzKernel r (2 * Real.pi * n / Real.sqrt N) : ℝ) : ℂ) := by
  sorry

/-- §2.7: a rational enclosure before exact vanishing gives `|L′(1)| < 10⁻¹²`. -/
theorem curve5077_deriv_small (L : ℂ → ℂ) (hentire : Differentiable ℂ L)
    (hseries : ∀ s : ℂ, 3 / 2 < s.re → L s = curve5077.LSeries s) :
    ‖deriv L 1‖ < (10 : ℝ) ^ (-12 : ℤ) := by
  sorry

/-- §2.7: the entire L-function of the `-7` twist has central value in `(4,5)`.
The trace-one, norm-two twist parameter has discriminant `1²-4·2=-7`. -/
theorem curve5077_twist7_central_bounds (L : ℂ → ℂ)
    (hentire : Differentiable ℂ L)
    (hseries : ∀ s : ℂ, 3 / 2 < s.re →
      L s = (curve5077.quadraticTwistOf 1 2).LSeries s) :
    (4 : ℝ) < (L 1).re ∧ (L 1).re < 5 := by
  sorry

/-- §2.7: the entire conductor-37 L-function has its central value in `(0.72,0.73)`. -/
theorem curve37_central_bounds (L : ℂ → ℂ) (hentire : Differentiable ℂ L)
    (hseries : ∀ s : ℂ, 3 / 2 < s.re → L s = curve37.LSeries s) :
    (72 / 100 : ℝ) < (L 1).re ∧ (L 1).re < (73 / 100 : ℝ) := by
  sorry

/-- §2.8, arithmetic core of the height gap: `ab = cη` with `c > 0`, `b ≠ 0`, `η = 0` or
`η ≥ δ`, and `|ab| < cδ` force `η = 0` and `a = 0`. -/
theorem heegnerHeight_gap (a b : ℂ) (c δ η : ℝ) (hc : 0 < c) (hb : b ≠ 0)
    (hformula : a * b = ((c * η : ℝ) : ℂ)) (hgap : η = 0 ∨ δ ≤ η) (hsmall : ‖a * b‖ < c * δ) :
    η = 0 ∧ a = 0 := by
  have hη : η = 0 := by
    rcases hgap with h | h
    · exact h
    · exfalso
      rw [hformula, Complex.norm_real, Real.norm_eq_abs] at hsmall
      have : c * δ ≤ c * η := mul_le_mul_of_nonneg_left h hc.le
      have h2 : c * η ≤ |c * η| := le_abs_self _
      linarith
  refine ⟨hη, ?_⟩
  rw [hη, mul_zero, Complex.ofReal_zero] at hformula
  exact (mul_eq_zero.mp hformula).resolve_right hb

/-- §2.8: the full x-height of every nonzero rational point is at least `1/2`. -/
theorem curve5077_height_gap (P : curve5077.toAffine.Point) (hP : P ≠ 0) :
    (1 / 2 : ℝ) ≤ P.canonicalHeight := by
  sorry

/-- §2.8: the quantitative Heegner height gap proves exact first-derivative vanishing.
The README's `curve5077_heegner_descent` descends the Heegner trace to an actual rational point.
For the fixed minimal-degree parametrisation and the relative full x-height,
`curve5077_grossZagier_constant_lower` bounds the Gross–Zagier constant below by `5·10⁻¹²`.
These targets combine with the twisted central-value interval and the height gap. -/
theorem curve5077_deriv_eq_zero (L : ℂ → ℂ) (hentire : Differentiable ℂ L)
    (hseries : ∀ s : ℂ, 3 / 2 < s.re → L s = curve5077.LSeries s) :
    deriv L 1 = 0 := by
  sorry

/-- §2.11: the conductor-37 Heegner trace over `ℚ(√-139)` vanishes, hence `L'(E₁₃₉, 1) = 0`
for the entire continuation `L` of the Euler series of `curve139`. -/
theorem heegnerTrace_139 (L : ℂ → ℂ) (hentire : Differentiable ℂ L)
    (hseries : ∀ s : ℂ, 3 / 2 < s.re → L s = curve139.LSeries s) :
    deriv L 1 = 0 := by
  sorry

/-- §2.12: the third central derivative of `curve139`: `1842/100 < L'''(1)/3! < 1844/100`, for the
entire continuation `L` of its Euler series. -/
theorem curve139_third_deriv_bounds (L : ℂ → ℂ) (hentire : Differentiable ℂ L)
    (hseries : ∀ s : ℂ, 3 / 2 < s.re → L s = curve139.LSeries s) :
    (1842 / 100 : ℝ) < (iteratedDeriv 3 L 1).re / 6 ∧
      (iteratedDeriv 3 L 1).re / 6 < (1844 / 100 : ℝ) := by
  sorry

/-- §2.12: Gross–Zagier's example: analytic and arithmetic rank of `curve139` are `3`. -/
theorem rankThree_139 (L : ℂ → ℂ) (hentire : Differentiable ℂ L)
    (hseries : ∀ s : ℂ, 3 / 2 < s.re → L s = curve139.LSeries s) :
    analyticOrderAt L 1 ≠ ⊤ ∧ analyticOrderNatAt L 1 = 3 ∧
      Module.finrank ℤ curve139.toAffine.PointModTorsion = 3 := by
  sorry

/-- §2.13: the third-derivative interval after exact first-derivative vanishing. -/
theorem curve5077_third_deriv_bounds (L : ℂ → ℂ) (hentire : Differentiable ℂ L)
    (hseries : ∀ s : ℂ, 3 / 2 < s.re → L s = curve5077.LSeries s) :
    (173 / 100 : ℝ) < (iteratedDeriv 3 L 1).re / 6 ∧
      (iteratedDeriv 3 L 1).re / 6 < (174 / 100 : ℝ) := by
  sorry

/-- §2.13: Buhler–Gross–Zagier's example, with `173/100 < L'''(1)/3! < 174/100`. -/
theorem rankThree_5077 (L : ℂ → ℂ) (hentire : Differentiable ℂ L)
    (hseries : ∀ s : ℂ, 3 / 2 < s.re → L s = curve5077.LSeries s) :
    analyticOrderAt L 1 ≠ ⊤ ∧ analyticOrderNatAt L 1 = 3 ∧
      Module.finrank ℤ curve5077.toAffine.PointModTorsion = 3 ∧ deriv L 1 = 0 ∧
      (173 / 100 : ℝ) < (iteratedDeriv 3 L 1).re / 6 ∧
      (iteratedDeriv 3 L 1).re / 6 < (174 / 100 : ℝ) := by
  sorry

end Layer2

/-! ## Layer 3: uniform logarithmic class-number bounds -/

section Layer3

/-- §3.1: a good prime with trace zero still has a quadratic Euler denominator, as tested
by the conductor-37 curve at `5`. -/
theorem curve37_trace_five : curve37.LFunction 5 = 0 := by
  sorry

/-- §3.5: no imaginary quadratic field has `|disc K| = 5077`. -/
theorem exceptional_5077 (K : Type) [Field K] [NumberField K]
    (hdeg : Module.finrank ℚ K = 2) (hneg : NumberField.discr K < 0) :
    (NumberField.discr K).natAbs ≠ 5077 := by
  intro h
  have hD : NumberField.discr K = -5077 := by omega
  rcases (isFundamentalDiscriminant_discr K hdeg).1 with ⟨h4, -⟩ | ⟨m, hm, -, -⟩ <;> omega



/-- §3.6: Oesterlé's universal bound `θ(d) log d ≤ 7000 h`. -/
theorem global_7000 (K : Type) [Field K] [NumberField K]
    (hdeg : Module.finrank ℚ K = 2) (hneg : NumberField.discr K < 0) :
    ramifiedWeight (NumberField.discr K).natAbs * Real.log (NumberField.discr K).natAbs ≤
      7000 * NumberField.classNumber K := by
  sorry

/-- §3.7: the bound `θ(d) log d ≤ 55 h` for discriminants prime to `5077`. -/
theorem coprime_55 (K : Type) [Field K] [NumberField K]
    (hdeg : Module.finrank ℚ K = 2) (hneg : NumberField.discr K < 0)
    (hcop : (NumberField.discr K).natAbs.Coprime 5077) :
    ramifiedWeight (NumberField.discr K).natAbs * Real.log (NumberField.discr K).natAbs ≤
      55 * NumberField.classNumber K := by
  sorry



end Layer3

/-! ## Layer 4: explicit constants and effective finiteness -/

section Layer4

/-- §4.1: the prime-product majorant `C_c(t) = c ∏_{j < t-1} (p_j + 1)/(p_j + 1 - 2√p_j)`.
The README's `primeMajorant_zero` and `primeMajorant_one` give the empty-product values `c`.
For `t ≥ 1`, `primeMajorant_succ` appends the factor at `p_(t-1)`; every denominator is
positive. Thus `primeMajorant_pos` gives positivity for `c > 0`, and
`primeMajorant_monotone` gives monotonicity in `t` for `c ≥ 0`. -/
def primeMajorant (c : ℝ) (t : ℕ) : ℝ :=
  c * ∏ j ∈ Finset.range (t - 1),
    ((Nat.nth Nat.Prime j : ℝ) + 1) /
      ((Nat.nth Nat.Prime j : ℝ) + 1 - 2 * Real.sqrt (Nat.nth Nat.Prime j))

/-- §4.2: `θ(d) C_c(t) ≥ c`. -/
theorem primeMajorant_weight (d : ℕ) (hd : 1 < d) (c : ℝ) (hc : 0 ≤ c) :
    c ≤ ramifiedWeight d * primeMajorant c d.primeFactors.card := by
  sorry

/-- §4.2: `log C_c(t) ≤ log c + 16 √t`, without the prime number theorem. -/
theorem primeMajorant_log_le (c : ℝ) (hc : 0 < c) (t : ℕ) :
    Real.log (primeMajorant c t) ≤ Real.log c + 16 * Real.sqrt t := by
  sorry

/-- §4.1: the product has no factors at `t=0,1`. -/
example : primeMajorant 7000 0 = 7000 ∧ primeMajorant 55 1 = 55 := by
  simp [primeMajorant]

/-- §4.1: the first factor is at `p₀=2`, the next at `p₁=3`. -/
example : primeMajorant 55 2 = 55 * (3 / (3 - 2 * Real.sqrt 2)) ∧
    primeMajorant 55 3 = 55 * (3 / (3 - 2 * Real.sqrt 2)) * (4 / (4 - 2 * Real.sqrt 3)) := by
  simp only [primeMajorant, Finset.prod_range_succ, Finset.prod_range_zero,
    Nat.nth_prime_zero_eq_two, Nat.nth_prime_one_eq_three]
  norm_num
  ring

/-- §4.3: the bounds `log d ≤ C_7000(t) h` and, for `5077 ∤ d`, `log d ≤ C_55(t) h`. -/
theorem explicitT_bound (K : Type) [Field K] [NumberField K]
    (hdeg : Module.finrank ℚ K = 2) (hneg : NumberField.discr K < 0) :
    Real.log (NumberField.discr K).natAbs ≤
        primeMajorant 7000 (NumberField.discr K).natAbs.primeFactors.card *
          NumberField.classNumber K ∧
      ((NumberField.discr K).natAbs.Coprime 5077 →
        Real.log (NumberField.discr K).natAbs ≤
          primeMajorant 55 (NumberField.discr K).natAbs.primeFactors.card *
            NumberField.classNumber K) := by
  sorry

/-- §4.4: the `n`-th prime, counted from `p₀ = 2`, is asymptotic to `n log n`.
The README’s `rationalPrimeCount_eq` first identifies the pinned prime-ideal count over `ℚ`
with `Nat.primeCounting` at the inclusive natural floor. -/
theorem nth_prime_isEquivalent :
    (fun n : ℕ ↦ (Nat.nth Nat.Prime n : ℝ)) ~[atTop] fun n ↦ n * Real.log n := by
  sorry

/-- §4.4: `Σ_{j<n} p_j^(-1/2) ~ 2 √(n / log n)`. -/
theorem sum_inv_sqrt_nth_prime_isEquivalent :
    (fun n : ℕ ↦ ∑ j ∈ Finset.range n, 1 / Real.sqrt (Nat.nth Nat.Prime j)) ~[atTop]
      fun n ↦ 2 * Real.sqrt (n / Real.log n) := by
  sorry

/-- §4.5: `log C_c(t) ~ 4 √(t / log t)`. -/
theorem primeMajorant_log_asymptotic (c : ℝ) (hc : 0 < c) :
    Tendsto (fun t : ℕ ↦ Real.log (primeMajorant c t) / (4 * Real.sqrt (t / Real.log t)))
      atTop (𝓝 1) := by
  sorry

/-- §4.6: the explicit rational witness `κ(q)`.
The README's `effectiveKappa_of_nonpos` gives zero for `q ≤ 0`, while
`effectiveKappa_of_one_le` gives `1/2` for `q ≥ 1`. On `0 < q < 1`,
`effectiveKappa_of_pos_of_lt_one` gives `2^(-(46 + ⌈256(1-q)/q⌉))`.
The decreasing ceiling exponent makes `effectiveKappa_monotoneOn` nondecreasing on `(0,∞)`. -/
def effectiveKappa (q : ℚ) : ℚ :=
  if q ≤ 0 then 0 else if 1 ≤ q then 1 / 2
  else 1 / (2 : ℚ) ^ (46 + (Int.ceil (256 * (1 - q) / q)).toNat)

/-- §4.6: `κ(q) > 0` for `q > 0`. -/
theorem effectiveKappa_pos (q : ℚ) (hq : 0 < q) : 0 < effectiveKappa q := by
  unfold effectiveKappa
  split_ifs <;> first | linarith | positivity

/-- §4.6: the nonpositive branch is zero and the large-loss branch is `1/2`. -/
example : effectiveKappa 0 = 0 ∧ effectiveKappa 1 = 1 / 2 := by
  simp [effectiveKappa]

/-- §4.6: the two interior rational losses distinguish the exact ceiling exponents. -/
example : effectiveKappa (1 / 2) = 1 / 2 ^ 302 ∧ effectiveKappa (1 / 4) = 1 / 2 ^ 814 := by
  constructor <;> norm_num [effectiveKappa]

/-- §4.7: the effective logarithmic class-number theorem with the rational witness `κ(q)`,
valid for every real exponent loss `ε ≥ q`. -/
theorem effectiveLogarithmic_bound (K : Type) [Field K] [NumberField K]
    (hdeg : Module.finrank ℚ K = 2) (hneg : NumberField.discr K < 0)
    (q : ℚ) (hq : 0 < q) (ε : ℝ) (hqε : (q : ℝ) ≤ ε) :
    (effectiveKappa q : ℝ) * Real.log (NumberField.discr K).natAbs ^ (1 - ε) <
      NumberField.classNumber K := by
  sorry

/-- §4.8: a computable cutoff for a fixed class number. -/
theorem effective_cutoff (K : Type) [Field K] [NumberField K]
    (hdeg : Module.finrank ℚ K = 2) (hneg : NumberField.discr K < 0) (H : ℕ)
    (hH : NumberField.classNumber K = H) :
    ((NumberField.discr K).natAbs : ℝ) < Real.exp (2 ^ 604 * (H : ℝ) ^ 2) ∧
      (NumberField.discr K).natAbs < 2 ^ (2 ^ 605 * H ^ 2) := by
  sorry

end Layer4

/-! ## Layer 5: the sixteen fields of class number three -/

section Layer5

/-- §5.1: class number three forces `disc K = -p` with `p ≡ 3 mod 4` prime. -/
theorem classThree_prime (K : Type) [Field K] [NumberField K]
    (hdeg : Module.finrank ℚ K = 2) (hneg : NumberField.discr K < 0)
    (hthree : NumberField.classNumber K = 3) :
    ∃ p : ℕ, p.Prime ∧ p % 4 = 3 ∧ NumberField.discr K = -(p : ℤ) := by
  sorry

/-- §5.3: Montgomery–Weinberger zeros: the odd primitive real character of conductor
`k ∈ {17923, 115147, 123204}` has a zero `1/2 + iγ` with `γ` in the stated bracket. -/
theorem mwZero_brackets (k : ℕ) [NeZero k] (hk : k = 17923 ∨ k = 115147 ∨ k = 123204)
    (χ : DirichletCharacter ℂ k) (hprim : χ.IsPrimitive) (hodd : χ (-1) = -1)
    (hoddPrimes : ∀ p : ℕ, (hp : p.Prime) → p ≠ 2 →
      χ p = (@legendreSym p ⟨hp⟩ (-(k : ℤ)) : ℂ))
    (htwo : χ 2 = (ZMod.χ₈ (-(k : ZMod 8)) : ℂ)) :
    ∃ γ : ℝ,
      (if k = 17923 then (30985 / 10 ^ 6 : ℝ)
        else if k = 115147 then 3157 / 10 ^ 6 else 10649 / 10 ^ 6) ≤ γ ∧
      γ ≤ (if k = 17923 then (30987 / 10 ^ 6 : ℝ)
        else if k = 115147 then 3159 / 10 ^ 6 else 10651 / 10 ^ 6) ∧
      χ.LFunction ((1 / 2 : ℂ) + γ * Complex.I) = 0 := by
  sorry

/-- §5.4: no class number three for `10¹² ≤ d ≤ 10²⁵⁰⁰`. -/
theorem montgomeryWeinberger (K : Type) [Field K] [NumberField K]
    (hdeg : Module.finrank ℚ K = 2) (hneg : NumberField.discr K < 0)
    (hlo : 10 ^ 12 ≤ (NumberField.discr K).natAbs)
    (hhi : (NumberField.discr K).natAbs ≤ 10 ^ 2500) :
    NumberField.classNumber K ≠ 3 := by
  sorry

/-- §5.5: `p` is `x`-inert: `p ≡ 3 mod 8` is prime and `(-p/q) = -1` for every odd prime `q ≤ x`,
so that every prime `q ≤ x` is inert in `ℚ(√-p)`. -/
def IsInertPrime (x p : ℕ) : Prop :=
  p.Prime ∧ p % 8 = 3 ∧
    ∀ q : ℕ, (hq : q.Prime) → 2 < q → q ≤ x → @legendreSym q ⟨hq⟩ (-(p : ℤ)) = -1

/-- §5.5: the least `43`-inert prime is `1333963` (Lehmer–Lehmer–Shanks, Table III). -/
theorem leastInertPrime_43 : IsLeast {p : ℕ | IsInertPrime 43 p} 1333963 := by
  sorry

/-- §5.5: the least `67`-inert prime is `51599563`. -/
theorem leastInertPrime_67 : IsLeast {p : ℕ | IsInertPrime 67 p} 51599563 := by
  sorry

/-- §5.5: the least `163`-inert prime is `1432817816347`. -/
theorem leastInertPrime_163 : IsLeast {p : ℕ | IsInertPrime 163 p} 1432817816347 := by
  sorry

/-- §5.5: the composite least integer solution fails the prime predicate. -/
example : IsInertPrime 0 3 ∧ ¬ IsInertPrime 3 3 ∧ ¬ IsInertPrime 43 77683 := by
  refine ⟨?_, ?_, fun h ↦ absurd h.1 (by norm_num)⟩
  · refine ⟨by norm_num, by norm_num, ?_⟩
    intro q hq h2 h0
    omega
  · intro h
    have h3 := h.2.2 3 (by norm_num) (by norm_num) (by norm_num)
    norm_num at h3

/-- §5.5: a positive prime witness includes both the dyadic condition and every odd prime
through `43`; at `47` the same witness still qualifies. -/
example : IsInertPrime 43 1333963 ∧ IsInertPrime 47 1333963 := by
  have hp : Nat.Prime 1333963 := by norm_num
  have hodd : ∀ q ∈ ({3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47} : Finset ℕ),
      ∀ hq : q.Prime, @legendreSym q ⟨hq⟩ (-1333963) = -1 := by
    intro q hq hprime
    fin_cases hq <;> norm_num
  have h47 : IsInertPrime 47 1333963 := by
    refine ⟨hp, by norm_num, ?_⟩
    intro q hq h2 hle
    have hmem : q ∈ ({3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47} : Finset ℕ) := by
      interval_cases q <;> first | (norm_num at hq; done) | norm_num
    exact hodd q hmem hq
  exact ⟨⟨h47.1, h47.2.1, fun q hq h2 hle ↦ h47.2.2 q hq h2 (by omega)⟩, h47⟩

/-- §5.6: no class number three for `907 < d < 10¹²`. -/
theorem smallRange_sieve (K : Type) [Field K] [NumberField K]
    (hdeg : Module.finrank ℚ K = 2) (hneg : NumberField.discr K < 0)
    (hlo : 907 < (NumberField.discr K).natAbs) (hhi : (NumberField.discr K).natAbs < 10 ^ 12) :
    NumberField.classNumber K ≠ 3 := by
  sorry

/-- §5.7: class number three implies `d ≤ 907`. -/
theorem classThree_cutoff (K : Type) [Field K] [NumberField K]
    (hdeg : Module.finrank ℚ K = 2) (hneg : NumberField.discr K < 0)
    (hthree : NumberField.classNumber K = 3) :
    (NumberField.discr K).natAbs ≤ 907 := by
  sorry

/-- §5.8: the sixteen discriminants of class number three.
The README's `classThreeDiscriminants_card` gives cardinality sixteen, and
`classThreeDiscriminants_negative` states that every listed integer is negative. -/
def classThreeDiscriminants : Finset ℤ :=
  {-23, -31, -59, -83, -107, -139, -211, -283, -307, -331, -379, -499, -547, -643, -883, -907}

/-- §5.8: an imaginary quadratic field has class number three exactly when its discriminant is
one of the sixteen. -/
theorem classThree_enumeration (K : Type) [Field K] [NumberField K]
    (hdeg : Module.finrank ℚ K = 2) (hneg : NumberField.discr K < 0) :
    NumberField.classNumber K = 3 ↔ NumberField.discr K ∈ classThreeDiscriminants := by
  sorry

/-- §5.8: the list has sixteen entries, includes the endpoint and its two dyadic-split members. -/
example : classThreeDiscriminants.card = 16 ∧ (-907 : ℤ) ∈ classThreeDiscriminants ∧
    (-23 : ℤ) ∈ classThreeDiscriminants ∧ (-31 : ℤ) ∈ classThreeDiscriminants := by
  unfold classThreeDiscriminants
  decide

/-- §5.8: an order discriminant and a fundamental discriminant of class number one are excluded. -/
example : (-243 : ℤ) ∉ classThreeDiscriminants ∧ (-163 : ℤ) ∉ classThreeDiscriminants := by
  unfold classThreeDiscriminants
  decide

end Layer5


end

end TauCetiRoadmap.EffectiveClassNumbers
