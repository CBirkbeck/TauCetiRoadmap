import Mathlib

/-! # CohomologyComparisonsPartII: representative target signatures

The roadmap is README.md. This file records statements suggested against the pinned APIs
and is not exhaustive. The coordinate lattices use a chosen ordinary Tate generator.
The semistable differentials are the actual degree-zero realization of the total fibre;
restriction to rational scalars includes semilinear arithmetic Frobenius.
Layers 2, 3, 6 and 7 remain in README.md: their geometric realization, site and
coefficient-category carriers are not present at the pins.
-/

/-! ## Layer 1: Filtered Frobenius connections and extension evaluation -/

namespace TauCetiRoadmap.CohomologyComparisonsPartII.FilFMIC

/-- One degree of the explicit fibre differential in the coordinate convention
`d(a,b) = (da, f(a) - db)`. This is a coordinate map, with the complex supplied by
the mapping-cone construction. AM Definition 2.4, AM line 255–258. -/
def fiberCoordinatesDifferential {A A' B B' : Type*}
    [AddCommGroup A] [Module ℚ A] [AddCommGroup A'] [Module ℚ A']
    [AddCommGroup B] [Module ℚ B] [AddCommGroup B'] [Module ℚ B']
    (dA : A →ₗ[ℚ] A') (dB : B →ₗ[ℚ] B') (f : A →ₗ[ℚ] B')
    (x : A × B) : A' × B' :=
  (dA x.1, f x.1 - dB x.2)

/-- Multiplication by two enters with positive sign, while the shifted target
differential enters with negative sign. -/
example :
    fiberCoordinatesDifferential (0 : ℚ →ₗ[ℚ] ℚ) LinearMap.id
      ((2 : ℚ) • LinearMap.id) (1, 0) = (0, 2) ∧
    fiberCoordinatesDifferential (0 : ℚ →ₗ[ℚ] ℚ) LinearMap.id
      ((2 : ℚ) • LinearMap.id) (0, 1) = (0, -1) := by
  norm_num [fiberCoordinatesDifferential]

/-- A nonzero first differential survives alongside both terms of the second
coordinate. Deleting the first differential changes the first output. -/
example :
    fiberCoordinatesDifferential (LinearMap.id : ℚ →ₗ[ℚ] ℚ)
      ((2 : ℚ) • LinearMap.id) ((3 : ℚ) • LinearMap.id) (2, 5) = (2, -4) := by
  norm_num [fiberCoordinatesDifferential]

end TauCetiRoadmap.CohomologyComparisonsPartII.FilFMIC

/-! ## Layer 4: Classical period maps and their precise ranges -/

namespace TauCetiRoadmap.CohomologyComparisonsPartII.Syntomic

/-- The EN lattice in a Tate coordinate: the span of the inverse of `p^a * a!`,
where `a = r / (p - 1)`. EN Section 2.2, EN line 306. -/
noncomputable def enLattice (p r : ℕ) [Fact p.Prime] : Submodule (PadicInt p) (Padic p) :=
  Submodule.span (PadicInt p)
    {((p : Padic p) ^ (r / (p - 1)) *
      (Nat.factorial (r / (p - 1)) : Padic p))⁻¹}

/-- CN’s printed coordinate lattice `p^(-a) Z_p(r)` for the specified exponent `a`.
At weight `r` use `a = r / (p - 1)`. The fundamental-sequence kernel lattice is
`enLattice`; no period map into this printed lattice is asserted.
CN Section 2.4.3, CN line 971; EN Section 2.2, EN line 306. -/
noncomputable def cnLattice (p a : ℕ) [Fact p.Prime] : Submodule (PadicInt p) (Padic p) :=
  Submodule.span (PadicInt p) {((p : Padic p) ^ a)⁻¹}

/-- CN’s printed floor coordinate lattice is contained in the EN kernel lattice,
for every prime and nonnegative weight, on the actual p-adic scalar carriers. -/
theorem cnLattice_le_enLattice (p r : ℕ) [Fact p.Prime] :
    cnLattice p (r / (p - 1)) ≤ enLattice p r := by
  sorry

/-- The printed CN generator has factorial coordinate in the EN generator, with no inverse
asserted for the resulting finite-level coefficient inclusion. -/
theorem modifiedLattice_generator (p r : ℕ) [Fact p.Prime] :
    ((p : Padic p) ^ (r / (p - 1)))⁻¹ =
      (Nat.factorial (r / (p - 1)) : Padic p) *
        ((p : Padic p) ^ (r / (p - 1)) *
          (Nat.factorial (r / (p - 1)) : Padic p))⁻¹ := by
  sorry

/-- Weight zero gives the integer lattice; at `p = 3`, weight four has a
nontrivial factorial coordinate but the two lattices agree because two is a unit. -/
example (p : ℕ) [Fact p.Prime] :
    enLattice p 0 = Submodule.span (PadicInt p) {(1 : Padic p)} ∧
    cnLattice p 0 = Submodule.span (PadicInt p) {(1 : Padic p)} ∧
    enLattice 3 4 = Submodule.span (PadicInt 3) {(18 : Padic 3)⁻¹} ∧
    enLattice 3 4 = cnLattice 3 2 := by
  have hEN : enLattice 3 4 = Submodule.span (PadicInt 3) {(18 : Padic 3)⁻¹} := by
    norm_num [enLattice]
  have hCN : cnLattice 3 2 = Submodule.span (PadicInt 3) {(9 : Padic 3)⁻¹} := by
    norm_num [cnLattice]
  refine ⟨by simp [enLattice], by simp [cnLattice], hEN, ?_⟩
  rw [hEN, hCN]
  have hu : IsUnit (2 : PadicInt 3) :=
    PadicInt.isUnit_iff.mpr (PadicInt.norm_natCast_eq_one_iff.mpr (by norm_num))
  apply Submodule.span_singleton_eq_span_singleton.mpr
  refine ⟨hu.unit, ?_⟩
  change ((hu.unit : PadicInt 3) : Padic 3) * (18 : Padic 3)⁻¹ = (9 : Padic 3)⁻¹
  rw [hu.unit_spec]
  change (2 : Padic 3) * (18 : Padic 3)⁻¹ = (9 : Padic 3)⁻¹
  norm_num

/-- The actual generators give coordinate two for both inclusions, whose
induced maps on the nonzero quotient `ZMod 2` are zero. The displayed kernel of
reduction identifies that model with each generator-coordinate quotient by two.
The weight-one product also detects an incorrectly chosen weight-two lattice. -/
example :
    enLattice 2 2 = Submodule.span (PadicInt 2) {(8 : Padic 2)⁻¹} ∧
    cnLattice 2 2 = Submodule.span (PadicInt 2) {(4 : Padic 2)⁻¹} ∧
    cnLattice 2 1 = Submodule.span (PadicInt 2) {(2 : Padic 2)⁻¹} ∧
    cnLattice 2 0 = Submodule.span (PadicInt 2) {(1 : Padic 2)} ∧
    (∀ z : PadicInt 2,
      z • (4 : Padic 2)⁻¹ = (2 * z) • (8 : Padic 2)⁻¹ ∧
      z • (1 : Padic 2) = (2 * z) • (2 : Padic 2)⁻¹ ∧
      PadicInt.toZModPow 1 (2 * z) = (2 : ZMod 2) * PadicInt.toZModPow 1 z) ∧
    RingHom.ker (PadicInt.toZModPow 1 : PadicInt 2 →+* ZMod 2) =
      Ideal.span {(2 : PadicInt 2)} ∧
    ((2 : ZMod 2) • (LinearMap.id : ZMod 2 →ₗ[ZMod 2] ZMod 2)) = 0 ∧
    PadicInt.toZModPow 1 (1 : PadicInt 2) ≠ (0 : ZMod 2) ∧
    (2 : Padic 2)⁻¹ * (2 : Padic 2)⁻¹ = (4 : Padic 2)⁻¹ ∧
    (2 : Padic 2)⁻¹ * (2 : Padic 2)⁻¹ ∉ cnLattice 2 1 := by
  have hbad : (2 : Padic 2)⁻¹ * (2 : Padic 2)⁻¹ ∉ cnLattice 2 1 := by
    intro hmem
    obtain ⟨z, hz⟩ := Submodule.mem_span_singleton.mp hmem
    change (z : Padic 2) * ((2 : Padic 2) ^ 1)⁻¹ =
      (2 : Padic 2)⁻¹ * (2 : Padic 2)⁻¹ at hz
    norm_num only [pow_one] at hz
    have hz' : (z : Padic 2) * 2 = 1 := by
      field_simp at hz
      linear_combination hz / 2
    have hzInt : z * 2 = (1 : PadicInt 2) := by
      apply Subtype.coe_injective
      change (z : Padic 2) * 2 = 1
      exact hz'
    have hred := congrArg (PadicInt.toZModPow 1 : PadicInt 2 →+* ZMod 2) hzInt
    rw [map_mul, map_ofNat, map_one] at hred
    change _ * (0 : ZMod 2) = 1 at hred
    simp at hred
  refine ⟨by norm_num [enLattice], by norm_num [cnLattice],
    by norm_num [cnLattice], by norm_num [cnLattice], ?_, ?_, ?_, ?_, ?_, hbad⟩
  · intro z
    refine ⟨?_, ?_, ?_⟩
    · change (z : Padic 2) * (4 : Padic 2)⁻¹ =
        ((2 * z : PadicInt 2) : Padic 2) * (8 : Padic 2)⁻¹
      change (z : Padic 2) * (4 : Padic 2)⁻¹ =
        (2 * (z : Padic 2)) * (8 : Padic 2)⁻¹
      field_simp
      ring
    · change (z : Padic 2) * 1 =
        ((2 * z : PadicInt 2) : Padic 2) * (2 : Padic 2)⁻¹
      change (z : Padic 2) * 1 = (2 * (z : Padic 2)) * (2 : Padic 2)⁻¹
      field_simp
    · rw [map_mul]
      congr 1
      exact map_ofNat _ _
  · simpa using (PadicInt.ker_toZModPow (p := 2) 1)
  · change (0 : ZMod 2) • (LinearMap.id : ZMod 2 →ₗ[ZMod 2] ZMod 2) = 0
    simp
  · simp
  · norm_num

end TauCetiRoadmap.CohomologyComparisonsPartII.Syntomic

/-! ## Layer 5: Semistable and rational descent adapters -/

namespace TauCetiRoadmap.CohomologyComparisonsPartII.ClassicalSyntomic

/-- The first differential of the degree-zero semistable total fibre:
`x` maps to `((1 - phi / p^r)x, iota x, N x)`.
NN Section 3.2, NN line 1366–1384. -/
def semistableD0 (p r : ℕ) {D E : Type*}
    [AddCommGroup D] [Module ℚ D] [AddCommGroup E] [Module ℚ E]
    (phi N : D →ₗ[ℚ] D) (iota : D →ₗ[ℚ] E) (x : D) : D × E × D :=
  (x - (p : ℚ) ^ (-(r : ℤ)) • phi x, iota x, N x)

/-- The second differential of that total fibre. Its exponent is the integer
`1 - r`, so at weight zero the lower operator is `1 - p * phi`.
NN Section 3.2, NN line 1374–1384. -/
def semistableD1 (p r : ℕ) {D E : Type*}
    [AddCommGroup D] [Module ℚ D] [AddCommGroup E] [Module ℚ E]
    (phi N : D →ₗ[ℚ] D) (y : D × E × D) : D :=
  N y.1 - (y.2.2 - (p : ℚ) ^ (1 - (r : ℤ)) • phi y.2.2)

/-- Frobenius–monodromy compatibility makes the displayed semistable
differential square zero. All hypotheses are explicitly bound. -/
theorem semistable_d_squared (p r : ℕ) [Fact p.Prime]
    {D E : Type*} [AddCommGroup D] [Module ℚ D]
    [AddCommGroup E] [Module ℚ E]
    (phi N : D →ₗ[ℚ] D) (iota : D →ₗ[ℚ] E)
    (h : N.comp phi = (p : ℚ) • phi.comp N) (x : D) :
    semistableD1 p r phi N (semistableD0 p r phi N iota x) = 0 := by
  sorry

/-- Transporting classical monodromy to the negative p-normalized convention
has chain maps (identity, diag(1,1,-1/e), -1/e). The two conjuncts are its
degree-zero and degree-one chain-map squares. These equations hold
for every natural `e`, including zero; invertibility requires `e ≠ 0`. -/
theorem semistable_baseConvention_differentials (p r e : ℕ)
    {D E : Type*} [AddCommGroup D] [Module ℚ D]
    [AddCommGroup E] [Module ℚ E]
    (phi N : D →ₗ[ℚ] D) (iota : D →ₗ[ℚ] E) (x : D) (a c : D) (b : E) :
    semistableD0 p r phi ((-(e : ℚ)⁻¹) • N) iota x =
      ((semistableD0 p r phi N iota x).1,
        (semistableD0 p r phi N iota x).2.1,
        (-(e : ℚ)⁻¹) • (semistableD0 p r phi N iota x).2.2) ∧
    semistableD1 p r phi ((-(e : ℚ)⁻¹) • N) (a, b, (-(e : ℚ)⁻¹) • c) =
      (-(e : ℚ)⁻¹) • semistableD1 p r phi N (a, b, c) := by
  sorry

/-- The zero vector has zero image under both actual differentials. -/
example (p r : ℕ) {D E : Type*}
    [AddCommGroup D] [Module ℚ D] [AddCommGroup E] [Module ℚ E]
    (phi N : D →ₗ[ℚ] D) (iota : D →ₗ[ℚ] E) :
    semistableD0 p r phi N iota 0 = (0, 0, 0) ∧
      semistableD1 p r phi N (0, (0 : E), 0) = 0 := by
  constructor <;> simp [semistableD0, semistableD1]

/-- On the rank-two block, weights zero and one fix the lower exponent.
Independent nonzero second-differential values test both summands.
The ramification-two computations fix the adapter sign and factor; at zero index
the scalar equations still hold but the scaled terms vanish. -/
example :
    let phi : (ℚ × ℚ) →ₗ[ℚ] (ℚ × ℚ) :=
      (LinearMap.fst ℚ ℚ ℚ).prod (2 • LinearMap.snd ℚ ℚ ℚ)
    let N : (ℚ × ℚ) →ₗ[ℚ] (ℚ × ℚ) :=
      (LinearMap.snd ℚ ℚ ℚ).prod 0
    semistableD0 2 0 phi N LinearMap.id (0, 1) = ((0, -1), (0, 1), (1, 0)) ∧
    semistableD0 2 1 phi N LinearMap.id (0, 1) = ((0, 0), (0, 1), (1, 0)) ∧
    semistableD1 2 0 phi N (E := ℚ × ℚ) ((0, -1), (0, 1), (1, 0)) = (0, 0) ∧
    semistableD1 2 0 phi N (E := ℚ × ℚ) ((0, 1), (0, 0), (0, 0)) = (1, 0) ∧
    semistableD1 2 0 phi N (E := ℚ × ℚ) ((0, 0), (0, 0), (1, 0)) = (1, 0) ∧
    semistableD1 2 1 phi N (E := ℚ × ℚ) ((0, 0), (0, 0), (0, 1)) = (0, 1) ∧
    semistableD1 2 0 phi ((-(2 : ℚ)⁻¹) • N) (E := ℚ × ℚ)
      ((0, 1), (0, 0), (0, 0)) = (-(1 / 2), 0) ∧
    semistableD1 2 1 phi N (E := ℚ × ℚ) ((0, 0), (0, 1), (1, 0)) = (0, 0) ∧
    semistableD0 2 0 phi ((-(2 : ℚ)⁻¹) • N) LinearMap.id (0, 1) =
      ((0, -1), (0, 1), (-(1 / 2), 0)) ∧
    semistableD1 2 0 phi ((-(2 : ℚ)⁻¹) • N) (E := ℚ × ℚ)
      ((0, -1), (0, 1), (-(1 / 2), 0)) = (0, 0) ∧
    semistableD0 2 0 phi ((-(0 : ℚ)⁻¹) • N) LinearMap.id (0, 1) =
      ((0, -1), (0, 1), (0, 0)) ∧
    semistableD1 2 0 phi ((-(0 : ℚ)⁻¹) • N) (E := ℚ × ℚ)
      ((0, -1), (0, 1), (0, 0)) = (0, 0) := by
  norm_num [semistableD0, semistableD1]
  rfl

end TauCetiRoadmap.CohomologyComparisonsPartII.ClassicalSyntomic
