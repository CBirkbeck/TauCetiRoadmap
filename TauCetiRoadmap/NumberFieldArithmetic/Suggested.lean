import Mathlib

/-!
# Arithmetic of number fields: target signatures

**This file is not the roadmap and is not exhaustive.** The definitive document is
`README.md`. The statements here suggest Lean forms for particular milestones, so that
contributors and reviewers converge on names and signatures; discharging all of them
finishes neither a layer nor the roadmap.

This roadmap is the single owner of the Frobenius conjugacy class and its tower laws.
`Chebotarev`, `PolynomialGaloisGroups`, `ClassFieldTheory` and `LFunctions` consume
`frobeniusClass` from here rather than defining their own.

The construction extends Mathlib's `arithFrobAt` (`Mathlib/RingTheory/Frobenius.lean`); it
does not introduce a parallel notion of Frobenius. Two things are needed before it can even
be stated, and both are targets of this roadmap:

* **the AKLB instances**, given by the `local instance` block below. Applying `arithFrobAt`
  to `𝓞 L` currently requires introducing `IsIntegralClosure.MulSemiringAction`,
  `IsGaloisGroup.of_isFractionRing`, and the `SMulCommClass` it carries by hand at every use
  site. Tau Ceti should supply these once, globally, for `𝓞 K → 𝓞 L`;
* **powers of conjugacy classes.** `ConjClasses α` carries only `One`, so `C ^ j` does not
  typecheck, yet the Frobenius von Mangoldt coefficient of `Chebotarev` needs exactly that.
  The `j`-th power of a conjugacy class is well defined because `IsConj` is preserved by
  taking powers; state it for a general monoid, since it is Mathlib-shaped material.

Primes are carried by `IsDedekindDomain.HeightOneSpectrum`, so that nonzeroness is enforced
by the type rather than by a side condition on every lemma.
-/

namespace TauCetiRoadmap.NumberFieldArithmetic

open NumberField IsDedekindDomain

noncomputable section

universe u

variable (K L : Type u) [Field K] [NumberField K] [Field L] [NumberField L]
  [Algebra K L] [FiniteDimensional K L] [IsGalois K L]

/-! ## The AKLB instances

These three are the plumbing that this roadmap should supply globally. -/

local instance : MulSemiringAction Gal(L/K) (𝓞 L) :=
  IsIntegralClosure.MulSemiringAction (𝓞 K) K L (𝓞 L)

local instance : IsGaloisGroup Gal(L/K) (𝓞 K) (𝓞 L) :=
  IsGaloisGroup.of_isFractionRing Gal(L/K) (𝓞 K) (𝓞 L) K L

local instance : SMulCommClass Gal(L/K) (𝓞 K) (𝓞 L) :=
  (inferInstance : IsGaloisGroup Gal(L/K) (𝓞 K) (𝓞 L)).commutes

/-! ## Splitting, ramification, and the Frobenius class -/

/-- `𝔭` is unramified in `L`. In the Galois setting all the ramification indices above `𝔭`
agree, so Mathlib's `Ideal.ramificationIdxIn` is the right spelling. -/
def IsUnramifiedIn (𝔭 : HeightOneSpectrum (𝓞 K)) : Prop :=
  Ideal.ramificationIdxIn 𝔭.asIdeal (𝓞 L) = 1

open Classical in
/-- **The public object.** The arithmetic Frobenius conjugacy class of a nonzero prime `𝔭` of
`𝓞 K` in `Gal(L/K)`, as the class of `arithFrobAt` at any prime of `𝓞 L` above `𝔭`. The
`else` branch is unreachable — a nonzero prime of `𝓞 K` always has a prime above it — but
Lean needs it to make the definition total. -/
def frobeniusClass (𝔭 : HeightOneSpectrum (𝓞 K)) : ConjClasses Gal(L/K) :=
  if h : ∃ 𝔓 : Ideal (𝓞 L), 𝔓.IsPrime ∧ 𝔓 ≠ ⊥ ∧ 𝔓.LiesOver 𝔭.asIdeal then
    haveI := h.choose_spec.1
    haveI : Finite (𝓞 L ⧸ h.choose) :=
      Ideal.finiteQuotientOfFreeOfNeBot _ h.choose_spec.2.1
    ConjClasses.mk (arithFrobAt (𝓞 K) Gal(L/K) h.choose)
  else 1

/-- **The workhorse.** Any prime of `𝓞 L` above `𝔭` computes the class; this is what lets
every consumer choose its own `𝔓`. It follows from `isConj_arithFrobAt`. -/
example (𝔭 : HeightOneSpectrum (𝓞 K)) (𝔓 : Ideal (𝓞 L)) [𝔓.IsPrime]
    [𝔓.LiesOver 𝔭.asIdeal] (h : 𝔓 ≠ ⊥) [Finite (𝓞 L ⧸ 𝔓)] :
    frobeniusClass K L 𝔭 = ConjClasses.mk (arithFrobAt (𝓞 K) Gal(L/K) 𝔓) :=
  sorry

/-- The order of a Frobenius element is the inertia degree. -/
example (𝔭 : HeightOneSpectrum (𝓞 K)) (hu : IsUnramifiedIn K L 𝔭)
    (σ : Gal(L/K)) (hσ : σ ∈ (frobeniusClass K L 𝔭).carrier) :
    orderOf σ = Ideal.inertiaDegIn 𝔭.asIdeal (𝓞 L) :=
  sorry

/-- An unramified prime splits completely exactly when its Frobenius class is trivial. -/
example (𝔭 : HeightOneSpectrum (𝓞 K)) (hu : IsUnramifiedIn K L 𝔭) :
    frobeniusClass K L 𝔭 = 1 ↔
      (Ideal.primesOver 𝔭.asIdeal (𝓞 L)).ncard = Module.finrank K L :=
  sorry

/-- **The cyclotomic formula.** If `N𝔭` is coprime to `m`, a Frobenius element at `𝔭` raises
every `m`-th root of unity to the power `N𝔭`. Consumes
`AlgHom.IsArithFrobAt.apply_of_pow_eq_one`. -/
example (𝔭 : HeightOneSpectrum (𝓞 K)) (m : ℕ) (hm : 0 < m)
    (hcop : Nat.Coprime (Ideal.absNorm 𝔭.asIdeal) m)
    (σ : Gal(L/K)) (hσ : σ ∈ (frobeniusClass K L 𝔭).carrier)
    (ζ : L) (hζ : ζ ^ m = 1) :
    σ ζ = ζ ^ (Ideal.absNorm 𝔭.asIdeal) :=
  sorry

/-- Only finitely many primes of `K` ramify in `L`. -/
example : {𝔭 : HeightOneSpectrum (𝓞 K) | ¬ IsUnramifiedIn K L 𝔭}.Finite := sorry

/-! ## Powers of conjugacy classes

Stated for a general monoid: `ConjClasses` carries only `One`, and consumers need `C ^ j`. -/

/-- The `j`-th power of a conjugacy class, well defined because `IsConj` is preserved by
taking powers. -/
example {α : Type*} [Monoid α] (j : ℕ) :
    ∃ p : ConjClasses α → ConjClasses α,
      ∀ a : α, p (ConjClasses.mk a) = ConjClasses.mk (a ^ j) :=
  sorry

end

end TauCetiRoadmap.NumberFieldArithmetic
