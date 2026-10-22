import Mathlib

/-!
# AbelianSchemesAndArithmeticModuliPartII: representative target signatures

The roadmap is README.md; this file records statements suggested against the pinned APIs
and is not exhaustive.
-/

noncomputable section

namespace TauCetiRoadmap.AbelianSchemesAndArithmeticModuliPartII

open scoped BigOperators

/-! ## Layer P0: Symmetric tensors and moment coefficients -/

section Tensors

variable (R M : Type*) [CommRing R] [AddCommGroup M] [Module R M]

/-- Permutation-invariant tensors, formed as the intersection of the permutation equalizers. -/
def tensorSymmetricPower (n : ℕ) : Submodule R (TensorPower R n M) :=
  ⨅ σ : Equiv.Perm (Fin n),
    LinearMap.eqLocus (PiTensorProduct.reindex R (fun _ : Fin n => M) σ).toLinearMap
      LinearMap.id

/-- In degree zero the permutation condition imposes no restriction. -/
example : tensorSymmetricPower R M 0 = ⊤ := by
  ext t
  simp only [tensorSymmetricPower, Submodule.mem_iInf, LinearMap.mem_eqLocus,
    LinearEquiv.coe_coe, LinearMap.id_coe, id_eq, Submodule.mem_top, iff_true]
  intro σ
  have hσ : σ = Equiv.refl (Fin 0) := Subsingleton.elim _ _
  subst σ
  simp

/-- In degree one there is no nonidentity permutation. -/
example : tensorSymmetricPower R M 1 = ⊤ := by
  ext t
  simp only [tensorSymmetricPower, Submodule.mem_iInf, LinearMap.mem_eqLocus,
    LinearEquiv.coe_coe, LinearMap.id_coe, id_eq, Submodule.mem_top, iff_true]
  intro σ
  have hσ : σ = Equiv.refl (Fin 1) := Subsingleton.elim _ _
  subst σ
  simp

/-- The off-diagonal tensor in a free rank-two module is not invariant under swapping. -/
theorem tensorSymmetricPower_nonfixed :
    PiTensorProduct.tprod ℤ
      (fun i : Fin 2 => fun j : Fin 2 => if i = j then (1 : ℤ) else 0)
        ∉ tensorSymmetricPower ℤ (Fin 2 → ℤ) 2 := by
  sorry

/-- Degree completion is the product of the invariant modules, with no adic comparison assumed. -/
abbrev degreeCompletion := ∀ n : ℕ, ↥(tensorSymmetricPower R M n)

/-- The all-unit tensor sequence has infinite support and is outside the canonical direct sum. -/
theorem degreeCompletion_infiniteSupport :
    let c : degreeCompletion ℤ ℤ := fun n =>
      ⟨PiTensorProduct.tprod ℤ (fun _ : Fin n => (1 : ℤ)),
        by
          simp [tensorSymmetricPower, LinearMap.mem_eqLocus]⟩
    (∀ n, c n ≠ 0) ∧
      c ∉ Set.range (fun s : DirectSum ℕ (fun n => ↥(tensorSymmetricPower ℤ ℤ n)) =>
        (fun n => s n : degreeCompletion ℤ ℤ)) := by
  sorry

/-- Truncation through N loses a nonzero coefficient in degree N+1. -/
example (N : ℕ) (x : ↥(tensorSymmetricPower R M (N + 1))) (hx : x ≠ 0) :
    Function.update (0 : degreeCompletion R M) (N + 1) x ≠ 0 ∧
      ∀ j : Fin (N + 1),
        (Function.update (0 : degreeCompletion R M) (N + 1) x) j.val = 0 := by
  classical
  constructor
  · intro h
    apply hx
    simpa using congrFun h (N + 1)
  · intro j
    have hj : j.val ≠ N + 1 := Nat.ne_of_lt j.isLt
    simp [Function.update_of_ne hj]

/-- A degree-zero coefficient equal to the empty unit tensor detects a nonzero completion. -/
theorem degreeCompletion_nonzero_degree_zero (c : degreeCompletion ℤ ℤ)
    (hc : (c 0 : TensorPower ℤ 0 ℤ) =
      PiTensorProduct.tprod ℤ (fun _ : Fin 0 => (1 : ℤ))) : c ≠ 0 := by
  sorry

end Tensors

/-! ## Layer B2: Curve monodromy and constant traces -/

/-- The real n-torus with its native circle quotient and product group structure. -/
abbrev BettiTorus (n : ℕ) := Fin n → AddCircle (1 : ℝ)

/-- An integer weight defines the finite additive pairing on the real torus. -/
def torusCharacter {n : ℕ} (m : Fin n → ℤ) : BettiTorus n →+ AddCircle (1 : ℝ) where
  toFun x := ∑ i, m i • x i
  map_zero' := by simp
  map_add' x y := by simp [smul_add, Finset.sum_add_distrib]

/-- Weights (1,-1) pair with (a,b) as a-b, fixing the character sign. -/
example (a b : AddCircle (1 : ℝ)) :
    torusCharacter ![1, -1] ![a, b] = a - b := by
  simp [torusCharacter, Fin.sum_univ_two, sub_eq_add_neg]

/-- The zero weight gives the zero character in every dimension, including zero. -/
example (n : ℕ) (x : BettiTorus n) : torusCharacter (0 : Fin n → ℤ) x = 0 := by
  simp [torusCharacter]

/-- The annihilator consists of all integer weights whose characters vanish on the subgroup. -/
def torusAnnihilator {n : ℕ} (H : AddSubgroup (BettiTorus n)) :
    AddSubgroup (Fin n → ℤ) where
  carrier := {m | ∀ x ∈ H, torusCharacter m x = 0}
  zero_mem' := by intro x hx; simp [torusCharacter]
  add_mem' := by
    intro a b ha hb x hx
    simpa [torusCharacter, add_zsmul, Finset.sum_add_distrib] using
      congrArg₂ (fun u v : AddCircle (1 : ℝ) => u + v) (ha x hx) (hb x hx)
  neg_mem' := by
    intro a ha x hx
    simpa [torusCharacter, neg_zsmul, Finset.sum_neg_distrib] using
      congrArg (fun u : AddCircle (1 : ℝ) => -u) (ha x hx)

/-- Every character vanishes on the trivial subgroup. -/
example (n : ℕ) : torusAnnihilator (⊥ : AddSubgroup (BettiTorus n)) = ⊤ := by
  ext m
  simp [torusAnnihilator, torusCharacter]

/-- Only the zero weight vanishes on the entire real torus. -/
theorem torusAnnihilator_top (n : ℕ) :
    torusAnnihilator (⊤ : AddSubgroup (BettiTorus n)) = ⊥ := by
  sorry

/-- The order-two subgroup of the circle has the nonsaturated annihilator 2ℤ. -/
theorem torusAnnihilator_orderTwo (m : Fin 1 → ℤ) :
    m ∈ torusAnnihilator (AddSubgroup.zmultiples
      (fun _ : Fin 1 => ((1 / 2 : ℝ) : AddCircle (1 : ℝ)))) ↔ Even (m 0) := by
  sorry

/-- Integer characters separate a closed torus subgroup from each point outside it. -/
theorem closedTorusSubgroup_characters {n : ℕ} (H : AddSubgroup (BettiTorus n))
    (hH : IsClosed (H : Set (BettiTorus n))) (x : BettiTorus n) :
    x ∈ H ↔ ∀ m ∈ torusAnnihilator H, torusCharacter m x = 0 := by
  sorry

/-- There are countably many closed subgroups of a finite-dimensional real torus. -/
theorem countableClosedTorusSubgroups (n : ℕ) :
    Set.Countable {H : AddSubgroup (BettiTorus n) | IsClosed (H : Set (BettiTorus n))} := by
  sorry

/-- The height is explicit, nonnegative and submultiplicative; specialize it to a matrix norm. -/
theorem freeMatrixWordGrowth (n : ℕ)
    (f : FreeGroup (Fin 2) →* Matrix.GeneralLinearGroup (Fin n) ℤ)
    (hf : Function.Injective f) (ρ : Matrix.GeneralLinearGroup (Fin n) ℤ → ℝ)
    (hρ : ∀ a, 0 ≤ ρ a) (hunit : ρ 1 ≤ 1)
    (hmul : ∀ a b, ρ (a * b) ≤ ρ a * ρ b) (c : ℝ) (hc : 1 < c)
    (hgen : ∀ i, ρ (f (FreeGroup.of i)) ≤ c ∧ ρ ((f (FreeGroup.of i))⁻¹) ≤ c) :
    (∀ k : ℕ, ∃ s : Finset (Matrix.GeneralLinearGroup (Fin n) ℤ),
      2 ^ k ≤ s.card ∧ ∀ a ∈ s, ρ a ≤ c ^ k) ∧
    ∃ C : ℝ, 0 < C ∧ ∃ T₀ : ℝ, ∀ T ≥ T₀,
      ∃ s : Finset (Matrix.GeneralLinearGroup (Fin n) ℤ),
        C * T ^ (Real.log 2 / Real.log c) ≤ (s.card : ℝ) ∧ ∀ a ∈ s, ρ a ≤ T := by
  sorry

/-- Not virtually solvable means no finite-index subgroup is solvable. -/
theorem titsFreeSubgroup {K : Type*} [Field K] [CharZero K] (n : ℕ)
    (Γ : Subgroup (Matrix.GeneralLinearGroup (Fin n) K))
    (hΓ : ∀ H : Subgroup Γ, H.FiniteIndex → ¬ Group.IsSolvable H) :
    ∃ f : FreeGroup (Fin 2) →* Γ, Function.Injective f := by
  sorry

/-- A continuous injection from an open subset of real m-space is an open embedding. -/
theorem invarianceOfDomain (m : ℕ) (U : Set (Fin m → ℝ)) (hU : IsOpen U)
    (f : U → (Fin m → ℝ)) (hf : Continuous f) (hinj : Function.Injective f) :
    Topology.IsOpenEmbedding f := by
  sorry

open scoped ContDiff

/-- A constant-rank C^k map on a real open set has local C^k projection coordinates, for 1 ≤ k ≤ ω. -/
theorem constantRankLocal (m n r : ℕ) (hrm : r ≤ m) (hrn : r ≤ n)
    (k : ℕ∞ω) (hk : 1 ≤ k) (f : (Fin m → ℝ) → (Fin n → ℝ))
    (U : Set (Fin m → ℝ)) (hU : IsOpen U) (hf : ContDiffOn ℝ k f U)
    (hrank : ∀ x ∈ U, Module.finrank ℝ (LinearMap.range (fderiv ℝ f x).toLinearMap) = r)
    (x : Fin m → ℝ) (hx : x ∈ U) :
    ∃ a : OpenPartialHomeomorph (Fin m → ℝ) (Fin m → ℝ),
    ∃ b : OpenPartialHomeomorph (Fin n → ℝ) (Fin n → ℝ),
      x ∈ a.source ∧ a.source ⊆ U ∧ f x ∈ b.source ∧ a x = 0 ∧ b (f x) = 0 ∧
      ContDiffOn ℝ k a a.source ∧ ContDiffOn ℝ k a.symm a.target ∧
      ContDiffOn ℝ k b b.source ∧ ContDiffOn ℝ k b.symm b.target ∧
      ∀ y ∈ a.source, f y ∈ b.source ∧
        b (f y) = fun i => if h : i.val < r then a y ⟨i.val, Nat.lt_of_lt_of_le h hrm⟩ else 0 := by
  sorry

open scoped Manifold ContDiff in
/-- A complex-analytic Riemann surface admits a countable relatively compact good refinement. -/
theorem riemannGoodCover {S ι : Type*} [TopologicalSpace S] [T2Space S]
    [SecondCountableTopology S] [ChartedSpace ℂ S] [IsManifold 𝓘(ℂ) ω S]
    (C : ι → Set S) (hC : ∀ i, IsOpen (C i)) (hcover : ∀ x, ∃ i, x ∈ C i) :
    ∃ V : ℕ → Set S, LocallyFinite V ∧ (∀ x, ∃ j, x ∈ V j) ∧
      (∀ j, IsOpen (V j) ∧ IsCompact (closure (V j)) ∧
        ((V j).Nonempty → ∃ i, V j ⊆ C i) ∧
        ((V j).Nonempty → ∃ x : S, V j ⊆ (chartAt ℂ x).source)) ∧
      ∀ t : Finset ℕ, t.Nonempty → (⋂ j ∈ t, V j).Nonempty →
        ContractibleSpace ↥(⋂ j ∈ t, V j) := by
  sorry

/-! ## Layer F0: Finite-field Frobenius and Tate -/

/-- Limits of matrices on a compact p-adic lattice have image the intersection of nested images.
Tate, Proposition 1 proof, pp.136–137. -/
theorem compactLatticeImageLimit {ℓ : ℕ} [Fact ℓ.Prime] (d : ℕ)
    (u : ℕ → Matrix (Fin d) (Fin d) (PadicInt ℓ))
    (v : Matrix (Fin d) (Fin d) (PadicInt ℓ))
    (hlim : Filter.Tendsto u Filter.atTop (nhds v))
    (hanti : Antitone (fun n => Set.range (u n).mulVec)) :
    Set.range v.mulVec = ⋂ n, Set.range (u n).mulVec := by
  sorry

/-- The intersection of all p-power multiples of a finite free p-adic lattice is zero. -/
theorem compactLatticeImageLimit_powers {ℓ : ℕ} [Fact ℓ.Prime] (d : ℕ) :
    (⋂ n : ℕ, Set.range (fun x : Fin d → PadicInt ℓ => (ℓ : PadicInt ℓ) ^ n • x)) =
      {0} := by
  sorry

/-! ## Layer F2: Resultant recognition -/

/-- Monic integer tests with common nonzero resultants determine a monic p-adic polynomial. -/
theorem padicResultantRecognition {p : ℕ} [Fact p.Prime]
    (P Q : Polynomial (PadicInt p)) (hP : P.Monic) (hQ : Q.Monic)
    (h : ∀ ψ : Polynomial ℤ, ψ.Monic →
      Polynomial.resultant P (ψ.map (Int.castRingHom (PadicInt p))) ≠ 0 →
      Polynomial.resultant Q (ψ.map (Int.castRingHom (PadicInt p))) ≠ 0 →
      PadicInt.valuation (Polynomial.resultant P (ψ.map (Int.castRingHom (PadicInt p)))) =
        PadicInt.valuation (Polynomial.resultant Q (ψ.map (Int.castRingHom (PadicInt p))))) :
    P = Q := by
  sorry

/-- Uniformizer perturbations recover a factor multiplicity from the eventual resultant valuation. -/
theorem shiftedFactorSlope {O K : Type*} [CommRing O] [IsDomain O]
    [IsDiscreteValuationRing O] [Field K] [Algebra O K] [IsFractionRing O K]
    (π : O) (hπ : Irreducible π) (R S : Polynomial O)
    (hR : R.Monic) (hS : S.Monic) (hd : 0 < R.natDegree)
    (hcoprime : IsCoprime (R.map (algebraMap O K)) (S.map (algebraMap O K)))
    (e : ℕ) (ψ : ℕ → Polynomial O)
    (hψ : ∀ n, (ψ n).Monic ∧ (ψ n).natDegree = R.natDegree ∧
      ∀ i, (ψ n).coeff i - (R + Polynomial.C (π ^ n)).coeff i ∈
        Ideal.span {π ^ (2 * n)}) :
    ∃ N, ∀ n ≥ N,
      Polynomial.resultant (R ^ e * S) (ψ n) ≠ 0 ∧
      IsDiscreteValuationRing.addVal O (Polynomial.resultant (R ^ e * S) (ψ n)) =
        (n * R.natDegree * e : ℕ) +
          IsDiscreteValuationRing.addVal O (Polynomial.resultant S R) := by
  sorry

/-- Monic tests from a uniformizer-adically dense subring determine a monic DVR polynomial. -/
theorem resultantRecognition {D O : Type*} [CommRing D] [CommRing O] [IsDomain O]
    [IsDiscreteValuationRing O] (φ : D →+* O) (π : O) (hπ : Irreducible π)
    (hφ : ∀ N : ℕ, ∀ o : O, ∃ d : D, o - φ d ∈ Ideal.span {π ^ N})
    (P Q : Polynomial O) (hP : P.Monic) (hQ : Q.Monic)
    (h : ∀ ψ : Polynomial D, ψ.Monic →
      Polynomial.resultant P (ψ.map φ) ≠ 0 →
      Polynomial.resultant Q (ψ.map φ) ≠ 0 →
      IsDiscreteValuationRing.addVal O (Polynomial.resultant P (ψ.map φ)) =
        IsDiscreteValuationRing.addVal O (Polynomial.resultant Q (ψ.map φ))) :
    P = Q := by
  sorry

/-! ## Layer F4: Adelic class sets and local bounds -/

/-- The field discriminant is bounded by the polynomial discriminant of an integral Weil generator. Lee, §§2.1,3.1–3.2, pp.3,5–6. -/
theorem weilGeneratorDiscriminantBound {K : Type*} [Field K] [NumberField K]
    (p : ℕ) (hp : p.Prime) (π : NumberField.RingOfIntegers K)
    (hgen : IntermediateField.adjoin ℚ {(π : K)} = ⊤)
    (hweil : ∀ σ : K →+* ℂ, ‖σ (π : K)‖ = Real.sqrt (p : ℝ)) :
    let P := minpoly ℤ (π : K)
    let d := Module.finrank ℚ K
    |(NumberField.discr K : ℝ)| ≤ |((Polynomial.discr P : ℤ) : ℝ)| ∧
      |((Polynomial.discr P : ℤ) : ℝ)| ≤
        (2 * Real.sqrt (p : ℝ)) ^ (d * (d - 1)) := by
  sorry

/-- Ordered pairs exclude equal values while retaining root occurrences.
The product stays a positive integer even for repeated roots.
Lee, §3.2(11), pp.5–6; the README uses the coarse ordered-root bound. -/
theorem orderedRootProductBound (q m : ℕ) (hq : 1 ≤ q)
    (P : Polynomial ℤ) (hP : P.Monic) (hdeg : P.natDegree = m)
    (roots : Fin m → ℂ)
    (hroots : P.map (Int.castRingHom ℂ) =
      ∏ i, (Polynomial.X - Polynomial.C (roots i)))
    (hmod : ∀ i, ‖roots i‖ = Real.sqrt (q : ℝ)) :
    let D : ℝ := ‖∏ i, ∏ j,
      if roots i ≠ roots j then roots i - roots j else (1 : ℂ)‖
    (∃ d : ℕ, 0 < d ∧ D = (d : ℝ)) ∧
      D ≤ (2 * Real.sqrt (q : ℝ)) ^ (m * (m - 1)) := by
  sorry

/-- Abstract form of the conditional local-to-rational orbit bound.
LT, §3.2(15),(20)–(21),(28), v1 pp.11,14,16; coarse counting adaptation.
Finiteness is explicit because native cardinalities and indices can be zero
for infinite quotients. -/
theorem rationalOrbitCount {G X : Type*} [Group G] [MulAction G X]
    (Γ K₀ : Subgroup G) (D h : ℕ)
    [Finite (MulAction.orbitRel.Quotient G X)]
    [Finite (DoubleCoset.Quotient (Γ : Set G) (K₀ : Set G))]
    (horbits : Nat.card (MulAction.orbitRel.Quotient G X) ≤ D ^ 2)
    (hclasses : Nat.card (DoubleCoset.Quotient (Γ : Set G) (K₀ : Set G)) = h)
    (hstab : ∀ x : X, ∃ a : G,
      let K := K₀.map (MulAut.conj a).toMonoidHom
      MulAction.stabilizer G x ≤ K ∧
        ((MulAction.stabilizer G x).subgroupOf K).FiniteIndex ∧
        (MulAction.stabilizer G x).relIndex K ≤ D) :
    Finite (MulAction.orbitRel.Quotient Γ X) ∧
      Nat.card (MulAction.orbitRel.Quotient Γ X) ≤ D ^ 3 * h := by
  sorry

/-! ## Layer F6: Counting isogeny and isomorphism classes -/

/-- The first g power sums and q-reciprocity determine a degree-2g monic integer polynomial. -/
theorem powerSumReconstruction (q g : ℕ) (P Q : Polynomial ℤ)
    (hP : P.Monic) (hQ : Q.Monic)
    (hdegP : P.natDegree = 2 * g) (hdegQ : Q.natDegree = 2 * g)
    (rootsP rootsQ : Fin (2 * g) → ℂ)
    (hrootsP : P.map (Int.castRingHom ℂ) =
      ∏ i, (Polynomial.X - Polynomial.C (rootsP i)))
    (hrootsQ : Q.map (Int.castRingHom ℂ) =
      ∏ i, (Polynomial.X - Polynomial.C (rootsQ i)))
    (hrecP : ∀ i ≤ g, P.coeff i = (q : ℤ) ^ (g - i) * P.coeff (2 * g - i))
    (hrecQ : ∀ i ≤ g, Q.coeff i = (q : ℤ) ^ (g - i) * Q.coeff (2 * g - i))
    (hsum : ∀ j, 1 ≤ j → j ≤ g → ∑ i, rootsP i ^ j = ∑ i, rootsQ i ^ j) :
    P = Q := by
  sorry

/-- The power-sum count concerns actual integer polynomials, independently of
the later isogeny-class carrier. LT, Lemma 2.1, v1 p.5; the interval count uses
the README's enlarged constant and its explicit reciprocity hypothesis. -/
theorem weilPolynomialCount (q g : ℕ) (hq : 2 ≤ q) (hg : 1 ≤ g) :
    let W : Set (Polynomial ℤ) := {P | P.Monic ∧ P.natDegree = 2 * g ∧
      P.coeff 0 = (q : ℤ) ^ g ∧
      (∀ i ≤ g, P.coeff i = (q : ℤ) ^ (g - i) * P.coeff (2 * g - i)) ∧
      ∀ z : ℂ, (P.map (Int.castRingHom ℂ)).eval z = 0 → ‖z‖ = Real.sqrt (q : ℝ)}
    W.Finite ∧ (W.ncard : ℝ) ≤ ((4 * g + 1 : ℕ) : ℝ) ^ g *
      (q : ℝ) ^ (((g * (g + 1) : ℕ) : ℝ) / 4) := by
  sorry

end TauCetiRoadmap.AbelianSchemesAndArithmeticModuliPartII
