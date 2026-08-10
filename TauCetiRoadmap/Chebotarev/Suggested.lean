import Mathlib

/-!
# The Chebotarev density theorem: target signatures

**This file is not the roadmap and is not exhaustive.** The definitive document is
`README.md`. The statements here suggest Lean forms for particular milestones, so that
contributors and reviewers converge on names and signatures; discharging all of them
finishes neither a layer nor the roadmap.

This roadmap owns neither the Frobenius class nor the analytic carriers. `frobeniusClass`
and its tower laws come from `NumberFieldArithmetic`; `HasDirichletDensity`, `primeTheta`,
`primeCount`, the ideal Euler products, and Wiener--Ikehara come from
`AnalyticNumberTheory`. Both are restated below only so that this file elaborates on its
own, which keeps the roadmaps independently reviewable; the supplier roadmap is the owner in
each case, and the eventual Tau Ceti files import rather than duplicate.

What this roadmap does own, and what is therefore pinned here:

* the Frobenius-prime sets attached to a conjugacy class;
* the Frobenius von Mangoldt coefficient, which detects `Frob 𝔭 ^ j ∈ C` and **not**
  `Frob 𝔭 ∈ C`. The latter does not produce the logarithmic derivative of the character
  `L`-functions, and the distinction is invisible in a quadratic extension — the smallest
  test is cyclic of degree `4` with `σ = g²`;
* the two headline theorems, in Dirichlet-density and prime-counting form.
-/

namespace TauCetiRoadmap.Chebotarev

open Filter NumberField IsDedekindDomain
open scoped Topology

noncomputable section

universe u

variable (K L : Type u) [Field K] [NumberField K] [Field L] [NumberField L]
  [Algebra K L] [FiniteDimensional K L] [IsGalois K L]

/-! ## Carriers supplied by `AnalyticNumberTheory` -/

/-- Owned by `AnalyticNumberTheory`. -/
def normOf (𝔭 : HeightOneSpectrum (𝓞 K)) : ℝ := Ideal.absNorm 𝔭.asIdeal

/-- Owned by `AnalyticNumberTheory`. -/
def primeDirichletSum (S : Set (HeightOneSpectrum (𝓞 K))) (s : ℝ) : ℝ :=
  ∑' 𝔭 : S, normOf K (𝔭 : HeightOneSpectrum (𝓞 K)) ^ (-s)

/-- Owned by `AnalyticNumberTheory`. -/
def HasDirichletDensity (S : Set (HeightOneSpectrum (𝓞 K))) (δ : ℝ) : Prop :=
  Tendsto (fun s : ℝ ↦ primeDirichletSum K S s / primeDirichletSum K Set.univ s)
    (𝓝[>] 1) (𝓝 δ)

/-- Owned by `AnalyticNumberTheory`. -/
def primeTheta (S : Set (HeightOneSpectrum (𝓞 K))) (x : ℝ) : ℝ :=
  ∑ᶠ 𝔭 ∈ {𝔭 ∈ S | normOf K 𝔭 ≤ x}, Real.log (normOf K 𝔭)

/-- Owned by `AnalyticNumberTheory`. -/
def primeCount (S : Set (HeightOneSpectrum (𝓞 K))) (x : ℝ) : ℕ :=
  {𝔭 ∈ S | normOf K 𝔭 ≤ x}.ncard

/-- Owned by `AnalyticNumberTheory`. -/
def logarithmicIntegral (x : ℝ) : ℝ := ∫ t in (2 : ℝ)..x, (Real.log t)⁻¹

/-! ## Carriers supplied by `NumberFieldArithmetic` -/

section Frobenius

local instance : MulSemiringAction Gal(L/K) (𝓞 L) :=
  IsIntegralClosure.MulSemiringAction (𝓞 K) K L (𝓞 L)

local instance : IsGaloisGroup Gal(L/K) (𝓞 K) (𝓞 L) :=
  IsGaloisGroup.of_isFractionRing Gal(L/K) (𝓞 K) (𝓞 L) K L

local instance : SMulCommClass Gal(L/K) (𝓞 K) (𝓞 L) :=
  (inferInstance : IsGaloisGroup Gal(L/K) (𝓞 K) (𝓞 L)).commutes

/-- Owned by `NumberFieldArithmetic`. -/
def IsUnramifiedIn (𝔭 : HeightOneSpectrum (𝓞 K)) : Prop :=
  Ideal.ramificationIdxIn 𝔭.asIdeal (𝓞 L) = 1

open Classical in
/-- Owned by `NumberFieldArithmetic`. -/
def frobeniusClass (𝔭 : HeightOneSpectrum (𝓞 K)) : ConjClasses Gal(L/K) :=
  if h : ∃ 𝔓 : Ideal (𝓞 L), 𝔓.IsPrime ∧ 𝔓 ≠ ⊥ ∧ 𝔓.LiesOver 𝔭.asIdeal then
    haveI := h.choose_spec.1
    haveI : Finite (𝓞 L ⧸ h.choose) :=
      Ideal.finiteQuotientOfFreeOfNeBot _ h.choose_spec.2.1
    ConjClasses.mk (arithFrobAt (𝓞 K) Gal(L/K) h.choose)
  else 1

/-! ## Owned by this roadmap -/

/-- The unramified primes of `K` whose Frobenius class is `C`. -/
def frobeniusPrimeSet (C : ConjClasses Gal(L/K)) : Set (HeightOneSpectrum (𝓞 K)) :=
  {𝔭 | IsUnramifiedIn K L 𝔭 ∧ frobeniusClass K L 𝔭 = C}

/-- **The coefficient convention.** `Λ_{L/K,C}(n)` sums `log N𝔭` over the pairs `(𝔭, j)`
with `N𝔭 ^ j = n` and `Frob 𝔭 ^ j ∈ C`. The power is taken on a representative, since
`ConjClasses` carries no `Monoid` structure; supplying that power is a
`NumberFieldArithmetic` target. -/
def frobeniusVonMangoldt (C : ConjClasses Gal(L/K)) (n : ℕ) : ℝ :=
  ∑ᶠ p ∈ {p : HeightOneSpectrum (𝓞 K) × ℕ | IsUnramifiedIn K L p.1 ∧ 0 < p.2 ∧
      Ideal.absNorm p.1.asIdeal ^ p.2 = n ∧ ∃ σ ∈ (frobeniusClass K L p.1).carrier,
        ConjClasses.mk (σ ^ p.2) = C},
    Real.log (normOf K p.1)

/-- Nonnegativity, the hypothesis Wiener--Ikehara needs. -/
example (C : ConjClasses Gal(L/K)) (n : ℕ) : 0 ≤ frobeniusVonMangoldt K L C n := sorry

/-- **Chebotarev, Dirichlet-density form.** -/
example (C : ConjClasses Gal(L/K)) :
    HasDirichletDensity K (frobeniusPrimeSet K L C)
      ((Nat.card C.carrier : ℝ) / Nat.card Gal(L/K)) :=
  sorry

/-- Each Frobenius class contains infinitely many primes. -/
example (C : ConjClasses Gal(L/K)) : (frobeniusPrimeSet K L C).Infinite := sorry

/-- **Chebotarev, `ϑ`-form.** -/
example (C : ConjClasses Gal(L/K)) :
    Tendsto (fun x : ℝ ↦ primeTheta K (frobeniusPrimeSet K L C) x / x) atTop
      (𝓝 ((Nat.card C.carrier : ℝ) / Nat.card Gal(L/K))) :=
  sorry

/-- **Chebotarev, `π`-form**: `π_C(x) ~ (|C|/|G|) Li(x)`. -/
example (C : ConjClasses Gal(L/K)) :
    Tendsto (fun x : ℝ ↦
        (primeCount K (frobeniusPrimeSet K L C) x : ℝ) / logarithmicIntegral x)
      atTop (𝓝 ((Nat.card C.carrier : ℝ) / Nat.card Gal(L/K))) :=
  sorry

/-- **Natural density** among the prime ideals of `K`. -/
example (C : ConjClasses Gal(L/K)) :
    Tendsto (fun x : ℝ ↦
        (primeCount K (frobeniusPrimeSet K L C) x : ℝ) / primeCount K Set.univ x)
      atTop (𝓝 ((Nat.card C.carrier : ℝ) / Nat.card Gal(L/K))) :=
  sorry

end Frobenius

/-- **The prime ideal theorem**, the trivial-extension case, and the acceptance criterion for
the whole development: summing the `ϑ_C`-asymptotics over the conjugacy classes recovers it. -/
example : Tendsto (fun x : ℝ ↦ primeTheta K Set.univ x / x) atTop (𝓝 1) := sorry

/- **The ideal-congruence counting input** to the cyclotomic continuation is not stated here.
The continuation of a nontrivial character `L`-series past `Re s = 1` needs the cancellation
in `∑_{N𝔞 ≤ x} χ(𝔞)` over a ray class character, and the total ideal-counting asymptotic does
not supply it. Ray class groups are a `GlobalNumberFields` target and have no Mathlib API
yet, so the hypothesis cannot currently be *stated*; per the repository's prototyping rule a
condition one cannot state is omitted rather than named as an empty `Prop`. `README.md`
specifies it in prose, and this file gains the signature once the carrier exists. -/

end

end TauCetiRoadmap.Chebotarev
