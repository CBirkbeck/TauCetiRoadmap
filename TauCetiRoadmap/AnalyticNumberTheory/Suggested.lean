import Mathlib

/-!
# Dirichlet series, Euler products, prime densities, and Tauberian theorems: target signatures

**This file is not the roadmap and is not exhaustive.** The definitive document is
`README.md`. The statements here suggest Lean forms for particular milestones, so that
contributors and reviewers converge on names and signatures; discharging all of them
finishes neither a layer nor the roadmap.

This roadmap is the single owner of the prime-counting carriers, Dirichlet density, ideal
Euler products, and the Tauberian theorem. Consumers (`LFunctions`, `Chebotarev`,
`ZerosOfLFunctions`) take these and do not restate them.

Two conventions are pinned here because several consumers depend on them:

* **the carrier is a subtype of nonzero primes.** `primeDirichletSum`, `primeTheta` and
  `primeCount` take a `Set (IsDedekindDomain.HeightOneSpectrum (𝓞 K))`, never a
  `Set (Ideal (𝓞 K))`. The zero ideal and the composite ideals are excluded by the type
  rather than by a side condition that every downstream lemma has to carry;
* **Dirichlet density is the ratio** `P_S(s) / P_all(s)` as `s → 1⁺`. Normalising by
  `log (1/(s-1))` instead is a theorem, and it is available only after the ideal Euler
  product: the residue of `ζ_K` alone does not give `P_all(s) = log (1/(s-1)) + O(1)`, since
  that identity also needs the Euler product and the bounded contribution of the higher
  prime powers.
-/

namespace TauCetiRoadmap.AnalyticNumberTheory

open Filter NumberField IsDedekindDomain
open scoped Topology

noncomputable section

variable (K : Type*) [Field K] [NumberField K]

/-- The absolute norm of a nonzero prime, as a real number. -/
def normOf (𝔭 : HeightOneSpectrum (𝓞 K)) : ℝ := Ideal.absNorm 𝔭.asIdeal

/-- `P_S(s) = ∑_{𝔭 ∈ S} N𝔭 ^ (-s)`. -/
def primeDirichletSum (S : Set (HeightOneSpectrum (𝓞 K))) (s : ℝ) : ℝ :=
  ∑' 𝔭 : S, normOf K (𝔭 : HeightOneSpectrum (𝓞 K)) ^ (-s)

/-- **Dirichlet density**, normalised by the sum over all nonzero primes of `𝓞 K`. -/
def HasDirichletDensity (S : Set (HeightOneSpectrum (𝓞 K))) (δ : ℝ) : Prop :=
  Tendsto (fun s : ℝ ↦ primeDirichletSum K S s / primeDirichletSum K Set.univ s)
    (𝓝[>] 1) (𝓝 δ)

/-- The upper Dirichlet density. The lower density is the `liminf` analogue; the roadmap
asks for both, for their monotonicity, and for the theorem that they agree exactly when the
density exists. -/
def upperDirichletDensity (S : Set (HeightOneSpectrum (𝓞 K))) : ℝ :=
  limsup (fun s : ℝ ↦ primeDirichletSum K S s / primeDirichletSum K Set.univ s) (𝓝[>] 1)

/-- `ϑ_S(x) = ∑_{𝔭 ∈ S, N𝔭 ≤ x} log N𝔭`. -/
def primeTheta (S : Set (HeightOneSpectrum (𝓞 K))) (x : ℝ) : ℝ :=
  ∑ᶠ 𝔭 ∈ {𝔭 ∈ S | normOf K 𝔭 ≤ x}, Real.log (normOf K 𝔭)

/-- `π_S(x) = #{𝔭 ∈ S : N𝔭 ≤ x}`. -/
def primeCount (S : Set (HeightOneSpectrum (𝓞 K))) (x : ℝ) : ℕ :=
  {𝔭 ∈ S | normOf K 𝔭 ≤ x}.ncard

/-- The offset logarithmic integral `Li(x) = ∫_2^x dt / log t`. -/
def logarithmicIntegral (x : ℝ) : ℝ := ∫ t in (2 : ℝ)..x, (Real.log t)⁻¹

/-- **Regrouping by norm**, the bridge to Mathlib's `ℕ`-indexed `LSeries` and
`EulerProduct`. Used by every consumer of this roadmap, so it is stated once here. -/
example (f : HeightOneSpectrum (𝓞 K) → ℂ) (s : ℂ) (hs : 1 < s.re) :
    ∑' 𝔭 : HeightOneSpectrum (𝓞 K), f 𝔭 / (normOf K 𝔭 : ℂ) ^ s =
      LSeries (fun n ↦ ∑ᶠ 𝔭 ∈ {𝔭 | Ideal.absNorm 𝔭.asIdeal = n}, f 𝔭) s :=
  sorry

/-- **The all-prime asymptotic.** This sits after the ideal Euler product, not before it:
the residue of `ζ_K` gives `log ζ_K(s) = log (1/(s-1)) + O(1)`, and passing from there to the
prime sum needs the Euler product together with the bound on higher prime powers. -/
example : ∃ C : ℝ, ∀ᶠ s : ℝ in 𝓝[>] 1,
    |primeDirichletSum K Set.univ s - Real.log (1 / (s - 1))| ≤ C :=
  sorry

/-- The two normalisations of Dirichlet density agree. -/
example (S : Set (HeightOneSpectrum (𝓞 K))) (δ : ℝ) :
    HasDirichletDensity K S δ ↔
      Tendsto (fun s : ℝ ↦ primeDirichletSum K S s / Real.log (1 / (s - 1))) (𝓝[>] 1) (𝓝 δ) :=
  sorry

/-- Dirichlet density is unchanged by a finite symmetric difference. -/
example (S T : Set (HeightOneSpectrum (𝓞 K))) (h : (symmDiff S T).Finite) (δ : ℝ) :
    HasDirichletDensity K S δ ↔ HasDirichletDensity K T δ :=
  sorry

/-- The ideal-counting estimate `#{𝔞 : N𝔞 ≤ x} = O_K(x)`, from
`NumberField.Ideal.tendsto_norm_le_div_atTop`. -/
example : ∃ C : ℝ, ∀ x : ℝ, 1 ≤ x →
    ({I : Ideal (𝓞 K) | I ≠ ⊥ ∧ (Ideal.absNorm I : ℝ) ≤ x}.ncard : ℝ) ≤ C * x :=
  sorry

/-- **Wiener--Ikehara**, the Tauberian theorem. Stated in Mathlib's `LSeries` vocabulary so
that it is reusable outside this roadmap; every theorem in its dependency cone is to be
proved without `sorry`. -/
example {a : ℕ → ℝ} {A : ℝ} {G : ℂ → ℂ}
    (ha : ∀ n, 0 ≤ a n)
    (hs : ∀ s : ℂ, 1 < s.re → LSeriesSummable (fun n ↦ (a n : ℂ)) s)
    (hG : ContinuousOn G {s : ℂ | 1 ≤ s.re})
    (hEq : Set.EqOn G (fun s ↦ LSeries (fun n ↦ (a n : ℂ)) s - A / (s - 1)) {s : ℂ | 1 < s.re}) :
    Tendsto (fun N : ℕ ↦ (∑ n ∈ Finset.Icc 1 N, a n) / N) atTop (𝓝 A) :=
  sorry

/-- **Partial summation**: a `ϑ`-asymptotic gives a `π`-asymptotic. -/
example (S : Set (HeightOneSpectrum (𝓞 K))) (δ : ℝ)
    (h : Tendsto (fun x : ℝ ↦ primeTheta K S x / x) atTop (𝓝 δ)) :
    Tendsto (fun x : ℝ ↦ (primeCount K S x : ℝ) / logarithmicIntegral x) atTop (𝓝 δ) :=
  sorry

/-- `Li(x) ~ x / log x`, so that either normalisation of a `π`-asymptotic is available. -/
example : Tendsto (fun x : ℝ ↦ logarithmicIntegral x / (x / Real.log x)) atTop (𝓝 1) := sorry

end

end TauCetiRoadmap.AnalyticNumberTheory
