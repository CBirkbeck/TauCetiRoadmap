import Mathlib

/-!
# QWittVectors: representative target signatures

The roadmap is README.md. This file records statements suggested against the pinned APIs
and is not exhaustive. Ghost polynomials can be stated on coordinate functions before the
big Witt ring structure is constructed. Their indices are positive members of a truncation
set; values of a coordinate function outside that set are irrelevant.
-/

namespace TauCetiRoadmap.QWittVectors.BigWitt

open scoped BigOperators

/-! ## Layer 1: Big Witt rings and shared homological algebra -/

/-- A truncation set is a set of positive natural numbers closed under positive divisors.
The empty truncation set is allowed (Hesselholt, §1). Positive-divisor closure
also underlies the roadmap's `TruncationSet.div_mem` API for the truncation set S/n. -/
structure TruncationSet where
  carrier : Set ℕ
  positive : ∀ n ∈ carrier, 0 < n
  divisor_closed : ∀ {n d : ℕ}, n ∈ carrier → 0 < d → d ∣ n → d ∈ carrier

/-- The integral big Witt ghost polynomial of positive index `n`, evaluated on coordinates.
The defining divisor sum is used only at positive indices in the target theorems. -/
def ghostPolynomial {R : Type*} [CommRing R] (n : ℕ) (x : ℕ → R) : R :=
  ∑ d ∈ n.divisors, (d : R) * x d ^ (n / d)

/-- The Dwork ghost-image criterion, with independently specified prime Frobenius lifts.
The lifts need not commute (Hesselholt, Lemma 1.1). -/
theorem ghost_image {R : Type*} [CommRing R] (S : TruncationSet)
    (φ : ℕ → R →+* R)
    (hφ : ∀ p, p.Prime → p ∈ S.carrier → ∀ a : R,
      φ p a - a ^ p ∈ Ideal.span ({(p : R)} : Set R))
    (b : ℕ → R) :
    (∃ x : ℕ → R, ∀ n ∈ S.carrier, ghostPolynomial n x = b n) ↔
      ∀ p, p.Prime → ∀ n ∈ S.carrier, p ∣ n →
        b n - φ p (b (n / p)) ∈
          Ideal.span ({(p : R) ^ padicValNat p n} : Set R) := by
  sorry

/-- Ghosts determine all coordinates in a truncation set when multiplication by each
index is injective. No Frobenius lifts are needed for this assertion. -/
theorem ghost_injective {R : Type*} [CommRing R] (S : TruncationSet)
    (hS : ∀ n ∈ S.carrier, Function.Injective (fun a : R => (n : R) * a))
    (x y : ℕ → R)
    (hxy : ∀ n ∈ S.carrier, ghostPolynomial n x = ghostPolynomial n y) :
    ∀ n ∈ S.carrier, x n = y n := by
  sorry

/-- If all truncation indices are units, every ghost sequence has a unique coordinate
sequence on that truncation set, including the empty set. -/
theorem ghost_equiv_of_units {R : Type*} [CommRing R] (S : TruncationSet)
    (hS : ∀ n ∈ S.carrier, IsUnit (n : R)) (b : ℕ → R) :
    ∃ x : ℕ → R, (∀ n ∈ S.carrier, ghostPolynomial n x = b n) ∧
      ∀ y : ℕ → R, (∀ n ∈ S.carrier, ghostPolynomial n y = b n) →
        ∀ n ∈ S.carrier, y n = x n := by
  sorry

/-- The empty set and the positive divisors of six both give truncation sets;
the empty coordinate product has exactly one element. -/
example :
    ((∃ S : TruncationSet, S.carrier = ∅) ∧
      Nonempty (Unique ((n : (∅ : Set ℕ)) → ℤ))) ∧
    (∃ S : TruncationSet, S.carrier = {n : ℕ | 0 < n ∧ n ∣ 6}) := by
  constructor
  · constructor
    · exact ⟨⟨∅, by simp, by simp⟩, rfl⟩
    · refine ⟨{ default := fun _ => 0, uniq := ?_ }⟩
      intro f
      funext n
      exact False.elim n.property
  · refine ⟨⟨{n : ℕ | 0 < n ∧ n ∣ 6}, ?_, ?_⟩, rfl⟩
    · intro n hn
      exact hn.1
    · intro n d hn hd hdn
      exact ⟨hd, dvd_trans hdn hn.2⟩

/-- Omitting the divisor one prevents the singleton containing two from being a
truncation set. -/
example : ¬ ∃ S : TruncationSet, S.carrier = ({2} : Set ℕ) := by
  rintro ⟨S, hS⟩
  have h2 : 2 ∈ S.carrier := by simp [hS]
  have h1 : 1 ∈ S.carrier := S.divisor_closed h2 (by decide) (one_dvd 2)
  simp [hS] at h1

/-- The symbolic divisor ghosts retain both prime divisors of six. Over the integers,
coordinates one and one give the compatible first two ghosts one and three. -/
example {R : Type*} [CommRing R] (x : ℕ → R) :
    (ghostPolynomial 1 x = x 1 ∧
      ghostPolynomial 2 x = x 1 ^ 2 + 2 * x 2 ∧
      ghostPolynomial 6 x = x 1 ^ 6 + 2 * x 2 ^ 3 + 3 * x 3 ^ 2 + 6 * x 6) ∧
    (ghostPolynomial 1 (fun _ : ℕ => (1 : ℤ)) = 1 ∧
      ghostPolynomial 2 (fun _ : ℕ => (1 : ℤ)) = 3) := by
  have h1 : Nat.divisors 1 = {1} := by decide
  have h2 : Nat.divisors 2 = {1, 2} := by decide
  have h6 : Nat.divisors 6 = {1, 2, 3, 6} := by decide
  constructor
  · refine ⟨?_, ?_, ?_⟩
    · norm_num [ghostPolynomial, h1]
    · norm_num [ghostPolynomial, h2]
    · norm_num [ghostPolynomial, h6]
      ring
  · norm_num [ghostPolynomial, h1, h2]

/-- Characteristic two permits a nonzero coordinate with zero ghosts. Over the integers,
the incompatible pair of ghosts zero and one has no coordinate preimage. -/
example :
    (ghostPolynomial 1 (fun n : ℕ => if n = 2 then (1 : ZMod 2) else 0) = 0 ∧
      ghostPolynomial 2 (fun n : ℕ => if n = 2 then (1 : ZMod 2) else 0) = 0 ∧
      (if (2 : ℕ) = 2 then (1 : ZMod 2) else 0) ≠ 0) ∧
    (¬ ∃ x : ℕ → ℤ, ghostPolynomial 1 x = 0 ∧ ghostPolynomial 2 x = 1) := by
  have h1 : Nat.divisors 1 = {1} := by decide
  have h2 : Nat.divisors 2 = {1, 2} := by decide
  constructor
  · norm_num [ghostPolynomial, h1, h2]
    decide
  · rintro ⟨x, hx1, hx2⟩
    have hx : x 1 = 0 := by simpa [ghostPolynomial, h1] using hx1
    have hx2' : 2 * x 2 = 1 := by simpa [ghostPolynomial, h2, hx] using hx2
    omega

end TauCetiRoadmap.QWittVectors.BigWitt

namespace TauCetiRoadmap.QWittVectors.QWitt

open scoped BigOperators

/-! ## Layer 6: Completed coefficient Frobenius and cyclotomic overlaps -/

/-- Consecutive p-cyclotomic completion ideals have the same radical over any base ring.
The characteristic-p cyclotomic power identities cover both p dividing d and p not dividing d;
at d = 0 both ideals are the unit ideal. -/
theorem cyclotomicCompletedFrobenius_ideals
    (A : Type*) [CommRing A] (p d : ℕ) [Fact p.Prime] :
    (Ideal.span ({Polynomial.C (p : A), Polynomial.cyclotomic d A} :
      Set (Polynomial A))).radical =
    (Ideal.span ({Polynomial.C (p : A), Polynomial.cyclotomic (p * d) A} :
      Set (Polynomial A))).radical := by
  sorry

/-- Equal radicals do not imply equal cyclotomic completion ideals, already over the integers. -/
theorem cyclotomicCompletedFrobenius_ideals_ne :
    Ideal.span ({Polynomial.C (3 : ℤ), Polynomial.cyclotomic 3 ℤ} :
      Set (Polynomial ℤ)) ≠
    Ideal.span ({Polynomial.C (3 : ℤ), Polynomial.X - 1} :
      Set (Polynomial ℤ)) := by
  sorry

/-! ## Layer 8: Complete framed difference calculus -/

/-- An étale frame has a unique series-algebra automorphism reducing to the identity
and multiplying its chosen coordinate by one plus the series variable (Wagner §4.7).
Series-algebra linearity preserves every power of the series variable. -/
theorem framedGamma_existsUnique
    (A : Type*) (R : Type*) [CommRing A] [CommRing R] [Algebra A R]
    (r : ℕ) [Algebra (MvPolynomial (Fin r) A) R]
    [IsScalarTower A (MvPolynomial (Fin r) A) R]
    [Algebra.Etale (MvPolynomial (Fin r) A) R] (i : Fin r) :
    let t : Fin r → R := fun j =>
      algebraMap (MvPolynomial (Fin r) A) R (MvPolynomial.X j)
    ∃! γ : PowerSeries R ≃ₐ[PowerSeries A] PowerSeries R,
      (∀ f : PowerSeries R,
        PowerSeries.constantCoeff (γ f) = PowerSeries.constantCoeff f) ∧
      ∀ j : Fin r, γ (PowerSeries.C (t j)) =
        (if j = i then 1 + PowerSeries.X else 1) * PowerSeries.C (t j) := by
  sorry

/-! ## Layer 9: Algebraic support for the smooth torsion induction -/

/-- The prime-to-p part of an exponent gives a unit geometric sum in the power-series ring.
Its constant coefficient is u, a p-adic unit (Wagner §4.12). -/
theorem framedTwoTermCohomology_unit
    (p : ℕ) [Fact p.Prime] (e u : ℕ) (hu : ¬ p ∣ u) :
    IsUnit (∑ j ∈ Finset.range u,
      (1 + PowerSeries.X : PowerSeries ℤ_[p]) ^ (p ^ e * j)) := by
  sorry

/-- The kernel of the two-term framed differential is generated by its complementary
geometric factor, including e = α when the differential vanishes (Wagner Corollary 4.15). -/
theorem framedTwoTermCohomology_kernel
    (p : ℕ) [Fact p.Prime] (α e : ℕ) (he : e ≤ α) :
    let B := PowerSeries ℤ_[p]
    let q : B := 1 + PowerSeries.X
    let I : Ideal B := Ideal.span ({q ^ (p ^ α) - 1} : Set B)
    let g : B := ∑ j ∈ Finset.range (p ^ (α - e)), q ^ (p ^ e * j)
    ∀ x : B ⧸ I,
      Ideal.Quotient.mk I (q ^ (p ^ e) - 1) * x = 0 ↔
      x ∈ Ideal.span ({Ideal.Quotient.mk I g} : Set (B ⧸ I)) := by
  sorry

/-- For p = 2, α = 1 and e = 0, the degree-zero cohomology is the ideal generated by h + 2
in the quotient by h(h + 2). Multiplication by h + 2 identifies it with the quotient by h. -/
theorem framedTwoTermCohomology_two :
    let B := PowerSeries ℤ_[2]
    let h : B := PowerSeries.X
    let I : Ideal B := Ideal.span ({h * (h + 2)} : Set B)
    (∀ x : B ⧸ I,
      Ideal.Quotient.mk I h * x = 0 ↔
      x ∈ Ideal.span ({Ideal.Quotient.mk I (h + 2)} : Set (B ⧸ I))) ∧
    Nonempty ((B ⧸ Ideal.span ({h * (h + 2), h} : Set B)) ≃+* ℤ_[2]) := by
  sorry

end TauCetiRoadmap.QWittVectors.QWitt
