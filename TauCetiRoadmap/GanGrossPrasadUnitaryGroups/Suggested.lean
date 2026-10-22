import Mathlib

/-!
# GanGrossPrasadUnitaryGroups: representative target signatures

The roadmap is README.md. This file records statements suggested against the pinned APIs
and is not exhaustive. The algebraic model uses representations already restricted to the
relative subgroup; the analytic categories and the period theorems are specified in README.md.
-/

namespace TauCetiRoadmap.GanGrossPrasadUnitaryGroups

open scoped TensorProduct

universe u v w

/-! ## Layer 1: Relative Hermitian geometry and Bessel data -/

/-- A vector frames the standard split Hermitian line precisely when it generates the
free rank-one module over the split quadratic algebra. -/
def splitLineFrame {F : Type u} [Field F] (e : F × F) : Prop := IsUnit e

/-- Split-line frames can have norm one or two. The linear-first split pairing
is preserved by the inverse dual scaling (2,1/2), while scaling both coordinates
by two multiplies the cross-pairing by four. -/
example {F : Type u} [Field F] :
    let h : (ℚ × ℚ) → (ℚ × ℚ) → ℚ × ℚ :=
      fun v w => (v.1 * w.2, v.2 * w.1)
    (splitLineFrame ((1 : F), 1) ∧ (1 : F) * 1 = 1) ∧
    (splitLineFrame ((2 : ℚ), 1) ∧ (2 : ℚ) * 1 = 2) ∧
    (splitLineFrame ((2 : ℚ), 1 / 2) ∧ (2 : ℚ) * (1 / 2) = 1) ∧
    h (2, 0) (0, 1 / 2) = (1, 0) ∧ h (2, 0) (0, 2) = (4, 0) := by
  norm_num [splitLineFrame, Prod.isUnit_iff]

/-- A nonzero split idempotent fails the frame condition. The conjugate-first and
linear-first cross-pairings exchange coordinates, and its E-line is self-orthogonal. -/
example {F : Type u} [Field F] :
    let h : (F × F) → (F × F) → F × F := fun v w => (v.1 * w.2, v.2 * w.1)
    let k : (F × F) → (F × F) → F × F := fun v w => h w v
    (((1 : F), 0) ≠ 0 ∧ ¬ splitLineFrame ((1 : F), 0) ∧ (1 : F) * 0 = 0) ∧
    h (1, 0) (0, 1) = (1, 0) ∧ k (1, 0) (0, 1) = (0, 1) ∧
    (∀ v : F × F, h (1, 0) v = 0 ↔ v.2 = 0) := by
  simp [splitLineFrame, Prod.isUnit_iff]

/-! ## Layer 2: Local Bessel models, multiplicity one and tempered integrability -/

/-- The positive pairing in the period formula is linear in its first argument;
this is the swapped-slot specialization of the native complex inner product. -/
noncomputable def linearFirstPairing {V : Type v} [NormedAddCommGroup V] [InnerProductSpace ℂ V]
    (x y : V) : ℂ := inner ℂ y x

/-- The two scalar pairings pin the conjugation convention on an explicit witness. -/
example : linearFirstPairing Complex.I (1 : ℂ) = Complex.I ∧
    linearFirstPairing (1 : ℂ) Complex.I = -Complex.I := by
  simp [linearFirstPairing, RCLike.inner_apply]

/-- Scaling the first argument is linear, scaling the second is conjugate-linear,
and the zero vector has zero pairing in both positions. -/
example {V : Type v} [NormedAddCommGroup V] [InnerProductSpace ℂ V]
    (c : ℂ) (x y : V) :
    linearFirstPairing (c • x) y = c * linearFirstPairing x y ∧
    linearFirstPairing x (c • y) = star c * linearFirstPairing x y ∧
    linearFirstPairing (0 : V) x = 0 ∧ linearFirstPairing x (0 : V) = 0 := by
  simp [linearFirstPairing, mul_comm]

/-- The algebraic Bessel model is the native intertwiner space from the tensor of the
two restricted representations to the specified character line. No continuity or
admissibility is asserted by this algebraic specialization. -/
noncomputable abbrev algebraicBesselModel {H : Type u} [Group H]
    {V : Type v} [AddCommGroup V] [Module ℂ V]
    {W : Type w} [AddCommGroup W] [Module ℂ W]
    (ρV : Representation ℂ H V) (ρW : Representation ℂ H W)
    (ν : Representation ℂ H ℂ) :=
  Representation.IntertwiningMap (ρV.tprod ρW) ν

/-- Evaluation at one identifies the scalar-character model with the complex line.
Multiplication gives the inverse at one, with values one and i; the trivial character
specializes this to the one-dimensional trivial-group model. -/
example {H : Type u} [Group H] (ν : Representation ℂ H ℂ) :
    ∃ e : algebraicBesselModel ν (Representation.trivial ℂ H ℂ) ν ≃ₗ[ℂ] ℂ,
      (∀ ℓ, e ℓ = ℓ ((1 : ℂ) ⊗ₜ[ℂ] (1 : ℂ))) ∧
      e.symm 1 ((1 : ℂ) ⊗ₜ[ℂ] (1 : ℂ)) = 1 ∧
      e.symm 1 (Complex.I ⊗ₜ[ℂ] (1 : ℂ)) = Complex.I ∧
      Module.finrank ℂ (algebraicBesselModel ν (Representation.trivial ℂ H ℂ) ν) = 1 := by
  let m : algebraicBesselModel ν (Representation.trivial ℂ H ℂ) ν :=
    ⟨LinearMap.mul' ℂ ℂ, by
      intro h
      ext
      simp [Representation.tprod]⟩
  let ev : algebraicBesselModel ν (Representation.trivial ℂ H ℂ) ν →ₗ[ℂ] ℂ :=
    { toFun := fun ℓ => ℓ ((1 : ℂ) ⊗ₜ[ℂ] (1 : ℂ))
      map_add' := by intros; rfl
      map_smul' := by intros; rfl }
  have h_eval (ℓ : algebraicBesselModel ν (Representation.trivial ℂ H ℂ) ν)
      (v w : ℂ) : ℓ (v ⊗ₜ[ℂ] w) = v * w * ev ℓ := by
    rw [TensorProduct.tmul_eq_smul_one_tmul, map_smul]
    nth_rw 1 [← mul_one w]
    rw [← smul_eq_mul, TensorProduct.tmul_smul, map_smul]
    simp [ev, smul_eq_mul, mul_assoc]
  let e : algebraicBesselModel ν (Representation.trivial ℂ H ℂ) ν ≃ₗ[ℂ] ℂ :=
    { ev with
      invFun := fun c => c • m
      left_inv := by
        intro ℓ
        apply Representation.IntertwiningMap.ext
        apply TensorProduct.ext'
        intro v w
        change ev ℓ * (v * w) = ℓ (v ⊗ₜ[ℂ] w)
        rw [h_eval]
        ring
      right_inv := by intro c; simp [ev, m] }
  refine ⟨e, fun _ => rfl, ?_, ?_, ?_⟩
  · simp [e, m]
  · simp [e, m]
  · simpa using e.finrank_eq

/-- Circle weights one and minus one give a one-dimensional invariant model, whereas
two weight-one factors give the zero model, as witnessed by i. A fixed tensor is also
annihilated when its target character acts by minus identity. -/
example :
    let ρ : Representation ℂ Circle ℂ :=
      (algebraMap ℂ (Module.End ℂ ℂ)).toMonoidHom.comp Circle.coeHom
    let ρinv : Representation ℂ Circle ℂ := ρ.comp invMonoidHom
    let τ := Representation.trivial ℂ Circle ℂ
    (∃ e : algebraicBesselModel ρ ρinv τ ≃ₗ[ℂ] ℂ,
      (∀ f, e f = f ((1 : ℂ) ⊗ₜ[ℂ] (1 : ℂ))) ∧
      e.symm 1 ((1 : ℂ) ⊗ₜ[ℂ] (1 : ℂ)) = 1 ∧
      Module.finrank ℂ (algebraicBesselModel ρ ρinv τ) = 1) ∧
    ((∀ f : algebraicBesselModel ρ ρ τ, f = 0) ∧
      Module.finrank ℂ (algebraicBesselModel ρ ρ τ) = 0) ∧
    (∀ {H : Type u} [Group H]
      {V : Type v} [AddCommGroup V] [Module ℂ V]
      {W : Type w} [AddCommGroup W] [Module ℂ W]
      (ρV : Representation ℂ H V) (ρW : Representation ℂ H W)
      (ν : Representation ℂ H ℂ) (ℓ : algebraicBesselModel ρV ρW ν)
      (h : H) (v : V) (w : W),
      ρV h v = v → ρW h w = w →
      ν h = -LinearMap.id → ℓ (v ⊗ₜ[ℂ] w) = 0) := by
  dsimp only
  let ρ : Representation ℂ Circle ℂ :=
    (algebraMap ℂ (Module.End ℂ ℂ)).toMonoidHom.comp Circle.coeHom
  let ρinv : Representation ℂ Circle ℂ := ρ.comp invMonoidHom
  let τ := Representation.trivial ℂ Circle ℂ
  have hρ (z : Circle) (x : ℂ) : ρ z x = (z : ℂ) * x := by
    rfl
  have hinv (z : Circle) (x : ℂ) : ρinv z x = (z : ℂ)⁻¹ * x := by
    simp [ρinv, hρ]
  have h_eval (σ₁ σ₂ : Representation ℂ Circle ℂ)
      (f : algebraicBesselModel σ₁ σ₂ τ) (x y : ℂ) :
      f (x ⊗ₜ[ℂ] y) = x * y * f ((1 : ℂ) ⊗ₜ[ℂ] (1 : ℂ)) := by
    rw [TensorProduct.tmul_eq_smul_one_tmul, map_smul]
    nth_rw 1 [← mul_one y]
    rw [← smul_eq_mul, TensorProduct.tmul_smul, map_smul]
    simp [smul_eq_mul, mul_assoc]
  let m : algebraicBesselModel ρ ρinv τ :=
    ⟨LinearMap.mul' ℂ ℂ, by
      intro z
      apply TensorProduct.ext'
      intro x y
      change (ρ z x) * (ρinv z y) = τ z (x * y)
      rw [hρ, hinv]
      change (z : ℂ) * x * ((z : ℂ)⁻¹ * y) = x * y
      calc
        _ = ((z : ℂ) * (z : ℂ)⁻¹) * (x * y) := by ring
        _ = x * y := by rw [mul_inv_cancel₀ (Circle.coe_ne_zero z), one_mul]⟩
  let ev : algebraicBesselModel ρ ρinv τ →ₗ[ℂ] ℂ :=
    { toFun := fun f => f ((1 : ℂ) ⊗ₜ[ℂ] (1 : ℂ))
      map_add' := by intros; rfl
      map_smul' := by intros; rfl }
  let e : algebraicBesselModel ρ ρinv τ ≃ₗ[ℂ] ℂ :=
    { ev with
      invFun := fun c => c • m
      left_inv := by
        intro f
        apply Representation.IntertwiningMap.ext
        apply TensorProduct.ext'
        intro x y
        change ev f * (x * y) = f (x ⊗ₜ[ℂ] y)
        rw [h_eval]
        dsimp [ev]
        ring
      right_inv := by intro c; simp [ev, m] }
  have hz (f : algebraicBesselModel ρ ρ τ) : f = 0 := by
    let zi : Circle := ⟨Complex.I, by simp [Submonoid.unitSphere]⟩
    have he := Representation.IntertwiningMap.isIntertwining _ _ f zi
      ((1 : ℂ) ⊗ₜ[ℂ] (1 : ℂ))
    simp only [Representation.tprod_apply, TensorProduct.map_tmul, hρ, mul_one] at he
    have he' : -f ((1 : ℂ) ⊗ₜ[ℂ] (1 : ℂ)) =
        f ((1 : ℂ) ⊗ₜ[ℂ] (1 : ℂ)) := by
      calc
        _ = f (Complex.I ⊗ₜ[ℂ] Complex.I) := by
          rw [h_eval ρ ρ f Complex.I Complex.I, Complex.I_mul_I, neg_one_mul]
        _ = τ zi (f ((1 : ℂ) ⊗ₜ[ℂ] (1 : ℂ))) := he
        _ = _ := rfl
    have hzero : f ((1 : ℂ) ⊗ₜ[ℂ] (1 : ℂ)) = 0 := by
      linear_combination (-1 / 2 : ℂ) * he'
    apply Representation.IntertwiningMap.ext
    apply TensorProduct.ext'
    intro x y
    change f (x ⊗ₜ[ℂ] y) = 0
    rw [h_eval, hzero, mul_zero]
  refine ⟨⟨e, fun _ => rfl, ?_, ?_⟩, ⟨hz, ?_⟩, ?_⟩
  · simp [e, m]
  · simpa only [ρ, ρinv, τ, Module.finrank_self] using e.finrank_eq
  · let : Subsingleton (algebraicBesselModel ρ ρ τ) :=
      ⟨fun f g => (hz f).trans (hz g).symm⟩
    exact Module.finrank_zero_of_subsingleton
  · intro H _ V _ _ W _ _ ρV ρW ν ℓ h v w hv hw hν
    have he := Representation.IntertwiningMap.isIntertwining _ _ ℓ h (v ⊗ₜ[ℂ] w)
    simp only [Representation.tprod_apply, TensorProduct.map_tmul, hv, hw, hν,
      LinearMap.neg_apply, LinearMap.id_apply] at he
    have hz : (2 : ℂ) * ℓ (v ⊗ₜ[ℂ] w) = 0 := by linear_combination he
    exact (mul_eq_zero.mp hz).resolve_left (by norm_num)

/-! ## Layer 3: Root-number characters and the tempered local theorem -/

/-- In the additive sign group, the image of minus identity records the multiplicity
of each distinct appropriate-sign irreducible modulo two (GGP, Section 6). -/
def componentCentralElement {I : Type u} (multiplicity : I → ℕ) : I → ZMod 2 :=
  fun i => multiplicity i

/-- Evaluating any additive component character on the central element counts
multiplicities, whereas evaluating it on a single component generator counts one copy. -/
theorem componentCentralElement_character {I : Type u} [Fintype I] [DecidableEq I]
    (multiplicity : I → ℕ) (χ : (I → ZMod 2) →+ ZMod 2) :
    χ (componentCentralElement multiplicity) =
      ∑ i, (multiplicity i : ZMod 2) * χ (Pi.single i 1) := by
  sorry

/-- A repeated irreducible of multiplicity two has trivial central element, even
though the component group still has a nontrivial generator. -/
example : componentCentralElement (fun _ : Fin 1 => 2) = 0 ∧
    (Pi.single (0 : Fin 1) (1 : ZMod 2) : Fin 1 → ZMod 2) ≠ 0 := by
  constructor
  · funext i; change (2 : ZMod 2) = 0; decide
  · intro h
    have := congrFun h 0
    simp at this

/-- Two constituents occurring once each have both central coordinates. The additive
character summing these coordinates is one on each generator and zero on the central
element; a zero-dimensional parameter has the unique empty central element. -/
example :
    let χ : (Fin 2 → ZMod 2) →+ ZMod 2 :=
      { toFun := fun x => x 0 + x 1
        map_zero' := by simp
        map_add' := by intros; simp only [Pi.add_apply]; abel }
    componentCentralElement (fun _ : Fin 2 => 1) = (fun _ => 1) ∧
    componentCentralElement (fun i : Fin 0 => Fin.elim0 i) = 0 ∧
    χ (Pi.single (0 : Fin 2) 1) = 1 ∧
    χ (Pi.single (1 : Fin 2) 1) = 1 ∧
    χ (componentCentralElement (fun _ : Fin 2 => 1)) = 0 := by
  dsimp
  refine ⟨rfl, ?_, ?_, ?_, ?_⟩
  · funext i; exact Fin.elim0 i
  · simp
  · simp
  · decide

/-! ## Layer 6: Relative characters and the endoscopic spectral calculation -/

/-- The constituent sign group has one sign for each distinct cuspidal constituent
in each degree. Its coordinates are written additively (BPCZ, Section 10.3). -/
abbrev unitaryConstituentSigns (I : Type u) (J : Type v) := (I ⊕ J) → ZMod 2

/-- Two single-constituent degrees give four signs. -/
example : Nat.card (unitaryConstituentSigns (Fin 1) (Fin 1)) = 4 := by
  norm_num [unitaryConstituentSigns, Nat.card_eq_fintype_card, Fintype.card_fun]

/-- An endoscopic degree with two constituents and a degree with one give eight
signs; the empty pair has the trivial sign group. -/
example : Nat.card (unitaryConstituentSigns (Fin 2) (Fin 1)) = 8 ∧
    Nat.card (unitaryConstituentSigns (Fin 0) (Fin 0)) = 1 := by
  norm_num [unitaryConstituentSigns, Nat.card_eq_fintype_card, Fintype.card_fun]

/-- The numerical coefficient in the relative spectral contribution is the inverse
order of the full constituent sign group, with no quotient by a diagonal sign. -/
noncomputable def unitaryConstituentCoefficient (I : Type u) (J : Type v)
    [Finite I] [Finite J] : ℂ :=
  (Nat.card (unitaryConstituentSigns I J) : ℂ)⁻¹

/-- Stable cuspidal base change gives the coefficient one quarter. -/
example : unitaryConstituentCoefficient (Fin 1) (Fin 1) = 1 / 4 := by
  norm_num [unitaryConstituentCoefficient, unitaryConstituentSigns, Nat.card_eq_fintype_card, Fintype.card_fun]

/-- Three constituents give one eighth, and an empty constituent pair gives one.
The empty case tests the sign-group definition, not a positive-rank global theorem. -/
example : unitaryConstituentCoefficient (Fin 2) (Fin 1) = 1 / 8 ∧
    unitaryConstituentCoefficient (Fin 0) (Fin 0) = 1 := by
  norm_num [unitaryConstituentCoefficient, unitaryConstituentSigns, Nat.card_eq_fintype_card, Fintype.card_fun]

end TauCetiRoadmap.GanGrossPrasadUnitaryGroups
