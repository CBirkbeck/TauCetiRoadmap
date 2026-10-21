import Mathlib

/-!
# K3SurfacesAndSymplecticBoundedness: representative target signatures

The roadmap is README.md. This file records statements suggested against the pinned APIs
and is not exhaustive.
-/

namespace TauCetiRoadmap.K3SurfacesAndSymplecticBoundedness

/-! ## Layer 4: Picard lattices and arithmetic rank boundedness -/

/-- The first congruence kernel consists of invertible matrices reducing to the identity. -/
noncomputable def firstCongruenceKernel (ell : ℕ) [Fact ell.Prime] (n : ℕ) :
    Subgroup (Matrix.GeneralLinearGroup (Fin n) (PadicInt ell)) :=
  (Matrix.GeneralLinearGroup.map
    (PadicInt.toZMod : PadicInt ell →+* ZMod ell)).ker

/-- The rank-one odd-prime control `rank1_prime3`: minus one is outside the kernel. -/
example : (-1 : Matrix.GeneralLinearGroup (Fin 1) (PadicInt 3)) ∉
    firstCongruenceKernel 3 1 := by
  intro h
  change Matrix.GeneralLinearGroup.map (n := Fin 1)
    (PadicInt.toZMod : PadicInt 3 →+* ZMod 3) (-1) = 1 at h
  have hentry := congrArg
    (fun A : Matrix.GeneralLinearGroup (Fin 1) (ZMod 3) => A 0 0) h
  change (PadicInt.toZMod : PadicInt 3 →+* ZMod 3) (-1) = 1 at hentry
  rw [RingHom.map_neg, map_one] at hentry
  norm_num [ZMod.neg_one_eq_one_iff] at hentry

/-- The control `prime2_negative`: at two the kernel contains a nontrivial involution. -/
example : (-1 : Matrix.GeneralLinearGroup (Fin 1) (PadicInt 2)) ∈
      firstCongruenceKernel 2 1 ∧
    (-1 : Matrix.GeneralLinearGroup (Fin 1) (PadicInt 2)) ≠ 1 ∧
    (-1 : Matrix.GeneralLinearGroup (Fin 1) (PadicInt 2)) ^ 2 = 1 := by
  refine ⟨?_, ?_, ?_⟩
  · change Matrix.GeneralLinearGroup.map (n := Fin 1)
      (PadicInt.toZMod : PadicInt 2 →+* ZMod 2) (-1) = 1
    apply Matrix.GeneralLinearGroup.ext
    intro i j
    fin_cases i
    fin_cases j
    change (PadicInt.toZMod : PadicInt 2 →+* ZMod 2) (-1) = 1
    rw [RingHom.map_neg, map_one]
    decide
  · intro h
    have hentry := congrArg
      (fun A : Matrix.GeneralLinearGroup (Fin 1) (PadicInt 2) => A 0 0) h
    change (-1 : PadicInt 2) = 1 at hentry
    have htwo : (2 : PadicInt 2) = 0 := by linear_combination -hentry
    exact (by norm_num : (2 : PadicInt 2) ≠ 0) htwo
  · simp

/-- In matrix size zero the general linear group, and hence its congruence kernel, is trivial. -/
theorem rank0_kernel (ell : ℕ) [Fact ell.Prime]
    (A : Matrix.GeneralLinearGroup (Fin 0) (PadicInt ell)) : A = 1 := by
  apply Matrix.GeneralLinearGroup.ext
  intro i
  exact Fin.elim0 i

/-- The two-term unipotent control: the square-zero off-diagonal term has linear powers. -/
theorem unipotent_two_term (m : ℕ) :
    (!![1, 3; 0, 1] : Matrix (Fin 2) (Fin 2) (PadicInt 3)) ^ m =
      !![1, 3 * (m : PadicInt 3); 0, 1] := by
  induction m with
  | zero =>
    ext i j
    fin_cases i <;> fin_cases j <;> norm_num
  | succ m ih =>
    rw [pow_succ, ih, Matrix.mul_fin_two]
    ext i j
    fin_cases i <;> fin_cases j <;> simp
    ring

/-- For every odd prime and every matrix size, the first principal congruence subgroup
of the p-adic general linear group has no nonidentity element of finite order.
The integral consequence is used in Huybrechts, Chapter 17, proof of Lemma 2.6. -/
theorem GeneralLinearGroup.oddCongruenceKernel_torsionFree
    (ell : ℕ) [Fact ell.Prime] (hodd : ell ≠ 2) (n : ℕ)
    (A : Matrix.GeneralLinearGroup (Fin n) (PadicInt ell))
    (hred : Matrix.GeneralLinearGroup.map
      (PadicInt.toZMod : PadicInt ell →+* ZMod ell) A = 1)
    (hfinite : IsOfFinOrder A) : A = 1 := by
  sorry

/-- Reduction modulo an odd prime is injective on every finite subgroup of the
p-adic general linear group, including in matrix size zero. -/
theorem finiteSubgroup.reduction_injective
    (ell : ℕ) [Fact ell.Prime] (hodd : ell ≠ 2) (n : ℕ)
    (H : Subgroup (Matrix.GeneralLinearGroup (Fin n) (PadicInt ell))) [Finite H] :
    Function.Injective (fun A : H => Matrix.GeneralLinearGroup.map
      (PadicInt.toZMod : PadicInt ell →+* ZMod ell) A.val) := by
  sorry

/-- Every finite subgroup of the integral general linear group embeds into the
general linear group over the field with three elements by entrywise reduction.
Huybrechts, Chapter 17, proof of Lemma 2.6. -/
theorem finiteSubgroup.integral_reduction_injective
    (n : ℕ) (H : Subgroup (Matrix.GeneralLinearGroup (Fin n) ℤ)) [Finite H] :
    Function.Injective (fun A : H => Matrix.GeneralLinearGroup.map
      (Int.castRingHom (ZMod 3)) A.val) := by
  sorry

/-! ## Layer 5: Symplectic and polarized automorphisms -/

/-- The two Wehler deck pullbacks on column vectors in the ordered hyperplane classes. -/
def wehlerPullbacks (i : Fin 2) : Matrix (Fin 2) (Fin 2) ℤ :=
  if i = 0 then !![1, 4; 0, -1] else !![-1, 0; 4, 1]

/-- The first deck involution fixes the first hyperplane class. -/
theorem wehlerPullbacks_zero : wehlerPullbacks 0 = !![1, 4; 0, -1] := by
  rfl

/-- The second deck involution fixes the second hyperplane class. -/
theorem wehlerPullbacks_one : wehlerPullbacks 1 = !![-1, 0; 4, 1] := by
  rfl

/-- The control `wehler_pairing`: both deck pullbacks preserve the intersection pairing. -/
example : (∀ i : Fin 2, (wehlerPullbacks i).transpose * !![2, 4; 4, 2] *
      wehlerPullbacks i = !![2, 4; 4, 2]) ∧
    Matrix.det (!![2, 4; 4, 2] : Matrix (Fin 2) (Fin 2) ℤ) = -12 := by
  constructor
  · intro i
    fin_cases i <;> decide
  · norm_num [Matrix.det_fin_two]

/-- The control `wehler_product`: composition reverses pullback order, giving trace fourteen. -/
example : wehlerPullbacks 1 * wehlerPullbacks 0 = !![-1, -4; 4, 15] ∧
    Matrix.trace (wehlerPullbacks 1 * wehlerPullbacks 0) = 14 ∧
    Matrix.det (wehlerPullbacks 1 * wehlerPullbacks 0) = 1 := by
  norm_num [wehlerPullbacks, Matrix.mul_fin_two, Matrix.trace_fin_two, Matrix.det_fin_two]

/-! ## Layer 6: Finite symplectic actions and universal bounds -/

open scoped BigOperators

/-- The rational Mathieu character formula; only positive inputs represent element orders. -/
def mathieuCharacter (n : ℕ) : ℚ :=
  24 / ((n : ℚ) * ∏ q ∈ n.primeFactors, (1 + 1 / (q : ℚ)))

/-- The identity has Mathieu character twenty-four. -/
theorem mathieuCharacter_one : mathieuCharacter 1 = 24 := by
  norm_num [mathieuCharacter]

/-- At a prime order q the Mathieu character is twenty-four divided by q plus one. -/
theorem mathieuCharacter_prime (q : ℕ) (hq : q.Prime) :
    mathieuCharacter q = 24 / ((q : ℚ) + 1) := by
  have hq0 : (q : ℚ) ≠ 0 := by exact_mod_cast hq.ne_zero
  unfold mathieuCharacter
  rw [hq.primeFactors]
  simp only [Finset.prod_singleton]
  congr 1
  field_simp [hq0]

/-- The control `mathieu_identity`: the empty prime product gives character twenty-four. -/
example : mathieuCharacter 1 = 24 := by
  norm_num [mathieuCharacter]

/-- The controls `mathieu_order2` and `mathieu_order7`: nonidentity tame character values. -/
example : mathieuCharacter 2 = 8 ∧ mathieuCharacter 7 = 3 := by
  norm_num [mathieuCharacter, (by decide : Nat.Prime 2).primeFactors,
    (by decide : Nat.Prime 7).primeFactors]

end TauCetiRoadmap.K3SurfacesAndSymplecticBoundedness
