import Mathlib
import TauCeti.AlgebraicGeometry.AbelianVariety.Albanese
import TauCeti.Combinatorics.SimpleGraph.Cohomology.Basic

/-!
# ColemanIntegrationPartII: representative target signatures

The roadmap is `README.md`. This file records statements suggested against the
pinned APIs and is not exhaustive. The formal degree-one logarithmic space uses
its Laurent-coefficient decomposition. Analytic annuli, Coleman functions,
natural integration and semistable comparisons have their full targets in the
README. The polynomial specialization law records the algebra used for branch
transport; it does not construct an integration theory.

`Graph.harmonic_exact_decomposition` and `Graph.harmonic_subdivision` use the
metric multigraph flag/cochain construction of README §§1.1–1.3, whose carrier
is not yet available at the pins. The native simple-graph decomposition below
records the unit-length specialization; subdivision retains its full metric
statement in the README. `SingleIntegral.properHolomorphic_branchIndependent`
uses the natural integration and differential-form carriers constructed in
README §§4.0–4.0c and §7.2. Those carriers are not yet available at the pins;
the affine value space below records scalar specialization only.

Layer 5 requires the full polynomial-logarithm primitive data, beyond the
degree-one coefficient pairs below. With those data,
`Annulus.tripleIndex_changeConstant` gives the residue error from opposite
primitive shifts. `Annulus.tripleIndex_simplePoles` expresses the index using
constant coefficients when the three differentials have at most simple poles.
`Annulus.tripleIndex_pullback` scales it by the positive oriented degree only
when every auxiliary primitive is transported. These signatures require the
primitive-data construction in the README.
-/

namespace TauCetiRoadmap.ColemanIntegrationPartII

universe u

/-! ## Layer 1: Finite graph cochains and harmonic normalization -/

namespace Graph

/-- Sum the additive cochain values on the outgoing darts at a vertex of a
finite simple graph with unit lengths. The pinned coboundary has head minus
tail sign, opposite to the differential in the metric multigraph theory. -/
noncomputable def simpleDivergence {V k : Type*} [Fintype V] [AddCommGroup k]
    (G : SimpleGraph V) (c : G.oneCochains (Multiplicative k)) (v : V) : k := by
  classical
  exact ∑ w : V, if h : G.Adj v w then
    Multiplicative.toAdd ((c : G.Dart → Multiplicative k) ⟨(v, w), h⟩) else 0

/-- Divergence of the pinned head-minus-tail coboundary is the negative
Laplacian. Negating that coboundary gives the roadmap's positive Laplacian. -/
theorem simple_laplacian {V k : Type*} [Fintype V] [DecidableEq V]
    [Field k] [CharZero k] (G : SimpleGraph V) [DecidableRel G.Adj]
    (f : V → k) (v : V) :
    simpleDivergence G (G.coboundary (Multiplicative k)
      (fun w ↦ Multiplicative.ofAdd (f w))) v =
        -((G.lapMatrix k).mulVec f v) := sorry

/-- The unit-length simple-graph specialization of harmonic decomposition:
the harmonic and exact cochains are unique; a potential for the exact cochain
is not asserted unique (Besser, Theorem 4.4, p. 12). Multiplication of the
native multiplicative cochains represents addition of their additive values. -/
theorem simple_harmonic_exact_decomposition {V k : Type*} [Fintype V]
    [Field k] [CharZero k] (G : SimpleGraph V)
    (c : G.oneCochains (Multiplicative k)) :
    ∃! hr : G.oneCochains (Multiplicative k) × G.oneCochains (Multiplicative k),
      (∀ v, simpleDivergence G hr.1 v = 0) ∧
      (∃ f : V → k, hr.2 = G.coboundary (Multiplicative k)
        (fun v ↦ Multiplicative.ofAdd (f v))) ∧ c = hr.1 * hr.2 := sorry

/-- On one edge, the native coboundary of the potential `(2,5)` is `3`,
its outgoing divergences are `3,-3`, and the roadmap differential is `-3`. -/
example :
    let G : SimpleGraph (Fin 2) := ⊤
    let f : Fin 2 → ℚ := ![2, 5]
    let c := G.coboundary (Multiplicative ℚ) (fun v ↦ Multiplicative.ofAdd (f v))
    simpleDivergence G c 0 = 3 ∧ simpleDivergence G c 1 = -3 ∧
      -Multiplicative.toAdd ((c : G.Dart → Multiplicative ℚ)
        ⟨(0, 1), by decide⟩) = -3 ∧
      simpleDivergence (⊥ : SimpleGraph (Fin 1))
        (1 : (⊥ : SimpleGraph (Fin 1)).oneCochains (Multiplicative ℚ)) 0 = 0 := by
  norm_num [simpleDivergence, SimpleGraph.coboundary, Fin.sum_univ_succ]

/-- On a rational triangle, `(3,0,0)` is the sum of the cyclic harmonic
cochain `(1,1,1)` and the coboundary of `(0,2,1)`, whose cyclic values are
`(2,-1,-1)`. Over `ZMod 3`, the coboundary of `(0,1,2)` is itself the nonzero
cyclic harmonic cochain: characteristic zero is essential for the direct sum. -/
example :
    (∃ c : (⊤ : SimpleGraph (Fin 3)).oneCochains (Multiplicative ℚ),
      (∀ v, simpleDivergence (⊤ : SimpleGraph (Fin 3)) c v = 0) ∧
      Multiplicative.toAdd ((c : (⊤ : SimpleGraph (Fin 3)).Dart → Multiplicative ℚ)
        ⟨(0, 1), by decide⟩) = 1 ∧
      Multiplicative.toAdd ((c : (⊤ : SimpleGraph (Fin 3)).Dart → Multiplicative ℚ)
        ⟨(1, 0), by decide⟩) = -1 ∧
      (let G : SimpleGraph (Fin 3) := ⊤
       let r := G.coboundary (Multiplicative ℚ)
         (fun v ↦ Multiplicative.ofAdd ((![0, 2, 1] : Fin 3 → ℚ) v))
       Multiplicative.toAdd ((r : G.Dart → Multiplicative ℚ)
         ⟨(0, 1), by decide⟩) = 2 ∧
       Multiplicative.toAdd ((r : G.Dart → Multiplicative ℚ)
         ⟨(1, 2), by decide⟩) = -1 ∧
       Multiplicative.toAdd ((r : G.Dart → Multiplicative ℚ)
         ⟨(2, 0), by decide⟩) = -1 ∧
       ∀ d : G.Dart,
         Multiplicative.toAdd ((c * r : G.Dart → Multiplicative ℚ) d) =
           if d.fst = 0 ∧ d.snd = 1 then 3
           else if d.fst = 1 ∧ d.snd = 0 then -3 else 0)) ∧
    (let G : SimpleGraph (Fin 3) := ⊤
     let f : Fin 3 → ZMod 3 := ![0, 1, 2]
     let c := G.coboundary (Multiplicative (ZMod 3))
       (fun v ↦ Multiplicative.ofAdd (f v))
     (∀ v, simpleDivergence G c v = 0) ∧ c ≠ 1 ∧
       Multiplicative.toAdd ((c : G.Dart → Multiplicative (ZMod 3))
         ⟨(0, 1), by decide⟩) = 1 ∧
       Multiplicative.toAdd ((c : G.Dart → Multiplicative (ZMod 3))
         ⟨(1, 2), by decide⟩) = 1 ∧
       Multiplicative.toAdd ((c : G.Dart → Multiplicative (ZMod 3))
         ⟨(2, 0), by decide⟩) = 1) := by
  constructor
  · let c : (⊤ : SimpleGraph (Fin 3)).oneCochains (Multiplicative ℚ) :=
      ⟨fun d ↦ Multiplicative.ofAdd
        (if (d.fst = 0 ∧ d.snd = 1) ∨ (d.fst = 1 ∧ d.snd = 2) ∨
            (d.fst = 2 ∧ d.snd = 0) then (1 : ℚ) else -1), by
          intro d
          rcases d with ⟨⟨i, j⟩, h⟩
          fin_cases i <;> fin_cases j <;>
            norm_num [SimpleGraph.Dart.symm] at h <;>
            norm_num [SimpleGraph.Dart.symm]⟩
    refine ⟨c, ?_, ?_, ?_, ?_⟩
    · intro v
      fin_cases v <;> norm_num [simpleDivergence, c, Fin.sum_univ_succ]
    · norm_num [c]
    · norm_num [c]
    · dsimp
      refine ⟨by norm_num [SimpleGraph.coboundary],
        by norm_num [SimpleGraph.coboundary],
        by norm_num [SimpleGraph.coboundary], ?_⟩
      intro d
      rcases d with ⟨⟨i, j⟩, h⟩
      fin_cases i <;> fin_cases j <;>
        norm_num at h <;> norm_num [c, SimpleGraph.coboundary]
  · dsimp
    refine ⟨?_, ?_, ?_, ?_, ?_⟩
    · intro v
      fin_cases v <;>
        simp [simpleDivergence, SimpleGraph.coboundary, Fin.sum_univ_succ] <;> decide
    · intro h
      have hval := congrArg
        (fun c : (⊤ : SimpleGraph (Fin 3)).oneCochains (Multiplicative (ZMod 3)) ↦
          Multiplicative.toAdd
            ((c : (⊤ : SimpleGraph (Fin 3)).Dart → Multiplicative (ZMod 3))
              ⟨(0, 1), by decide⟩)) h
      simp [SimpleGraph.coboundary] at hval
      exact (by decide : (1 : ZMod 3) ≠ 0) hval
    · simp [SimpleGraph.coboundary]; decide
    · simp [SimpleGraph.coboundary]; decide
    · simp [SimpleGraph.coboundary]; decide

end Graph

/-! ## Layer 2: Logarithmic annular functions and the double index -/

namespace Annulus

/-- In a fixed formal parameter, `f + a L` is represented by its Laurent part and
scalar logarithmic coefficient. This is a module presentation, with no assertion
that multiplication preserves degree one (Besser, Definition 3.1, p. 9). -/
abbrev LogarithmicFunctions (k : Type*) [Field k] := LaurentSeries k × k

namespace LogarithmicFunctions

/-- The coefficient of `dz` in `d(f + a L)`, where `dL = dz/z`. -/
noncomputable def differential {k : Type*} [Field k] (F : LogarithmicFunctions k) :
    LaurentSeries k :=
  LaurentSeries.derivative k F.1 + HahnSeries.single (-1) F.2

/-- The formal logarithmic coefficient decomposition embeds into the polynomial
logarithm algebra by `f + a L`. -/
noncomputable def toPolynomial {k : Type*} [Field k] (F : LogarithmicFunctions k) :
    Polynomial (LaurentSeries k) :=
  Polynomial.C F.1 + Polynomial.C (HahnSeries.single 0 F.2) * Polynomial.X

/-- Every formal meromorphic differential has a degree-one logarithmic primitive,
and its logarithmic coefficient is its residue. Characteristic zero is essential. -/
theorem formal_primitive {k : Type*} [Field k] [CharZero k]
    (w : LaurentSeries k) :
    ∃ F : LogarithmicFunctions k, differential F = w ∧ F.2 = w.coeff (-1) := sorry

/-- The only degree-one logarithmic functions with zero differential are scalars. -/
theorem differential_eq_zero_iff {k : Type*} [Field k] [CharZero k]
    (F : LogarithmicFunctions k) :
    differential F = 0 ↔ ∃ c : k, F = (HahnSeries.single 0 c, 0) := sorry

/-- Residue recovers the logarithmic coefficient, with positive `dz/z` orientation. -/
theorem differential_residue {k : Type*} [Field k] [CharZero k]
    (F : LogarithmicFunctions k) :
    (differential F).coeff (-1) = F.2 := sorry

/-- A degree-one logarithmic function is Laurent exactly when its differential
has zero residue. This is the formal coefficient version of the residue criterion. -/
theorem residue_zero_iff {k : Type*} [Field k] [CharZero k]
    (F : LogarithmicFunctions k) :
    (differential F).coeff (-1) = 0 ↔ ∃ f : LaurentSeries k, F = (f, 0) := sorry

/-- Laurent and logarithmic coefficients are unique in the polynomial presentation. -/
theorem toPolynomial_injective {k : Type*} [Field k] :
    Function.Injective (toPolynomial (k := k)) := sorry

/-- The nonzero logarithmic residue and scalar zero derivative distinguish the
logarithm from constants, including over residue characteristic two. -/
example {k : Type*} [Field k] [CharZero k] :
    differential ((0, 1) : LogarithmicFunctions k) = HahnSeries.single (-1) 1 ∧
      differential ((0, 1) : LogarithmicFunctions k) ≠ 0 ∧
      ∀ c : k, differential ((HahnSeries.single 0 c, 0) : LogarithmicFunctions k) = 0 := by
  refine ⟨by simp [differential], ?_, ?_⟩
  · simp [differential]
  · intro c
    simp [differential, LaurentSeries.derivative]

/-- The derivative of `2 + 3 L` is `3 dz/z`, with residue three. The polynomial comparison sends
the nonzero Laurent constant to its constant polynomial and the logarithmic generator
to `X`, while excluding `X²` from its image. Over `ZMod 2`, the non-scalar
monomial `z²` has zero differential, testing the characteristic-zero kernel hypothesis. -/
example :
    differential ((HahnSeries.single 0 2, 3) : LogarithmicFunctions ℚ) =
        HahnSeries.single (-1) 3 ∧
      (differential ((HahnSeries.single 0 2, 3) : LogarithmicFunctions ℚ)).coeff (-1) = 3 ∧
      toPolynomial ((HahnSeries.single 0 2, 0) : LogarithmicFunctions ℚ) =
        Polynomial.C (HahnSeries.single 0 2) ∧
      toPolynomial ((0, 1) : LogarithmicFunctions ℚ) = Polynomial.X ∧
      (∀ F : LogarithmicFunctions ℚ, toPolynomial F ≠ Polynomial.X ^ 2) ∧
      differential ((HahnSeries.single 2 1, 0) : LogarithmicFunctions (ZMod 2)) = 0 ∧
      ∀ c : ZMod 2,
        ((HahnSeries.single 2 1, 0) : LogarithmicFunctions (ZMod 2)) ≠
          (HahnSeries.single 0 c, 0) := by
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · norm_num [differential, LaurentSeries.derivative]
  · norm_num [differential, LaurentSeries.derivative]
  · simp [toPolynomial]
  · simp [toPolynomial]
  · intro F h
    have hc := congrArg (fun P : Polynomial (LaurentSeries ℚ) ↦ P.coeff 2) h
    simp [toPolynomial] at hc
  · simp [differential, LaurentSeries.derivative]; decide
  · intro c h
    have hc := congrArg
      (fun F : LogarithmicFunctions (ZMod 2) ↦ F.1.coeff 2) h
    simp at hc

end LogarithmicFunctions

/-- The formal double index in positive parameter orientation. Its residue rule
places the differentiated function second (Besser, Definition 3.2, p. 9).
The last two terms are the logarithmic correction.

The fixed-parameter coefficient presentation does not encode annular maps or
oriented ends. On those carriers, `Annulus.doubleIndex_pullback` scales the
index by positive oriented degree, and `doubleIndex_reverse` negates it under
orientation reversal. `doubleIndex_scalarExtension` transports this value under
coefficient embeddings on the formal coefficient pairs as well;
`doubleIndex_shrink` identifies analytic values on a common end annulus.
Only the analytic transport signatures require the domain constructions
specified in README Layer 2. -/
noncomputable def doubleIndex {k : Type*} [Field k]
    (F G : LogarithmicFunctions k) : k :=
  (F.1 * LaurentSeries.derivative k G.1).coeff (-1) +
    G.2 * F.1.coeff 0 - F.2 * G.1.coeff 0

/-- The local double index is alternating for every characteristic-zero field. -/
theorem doubleIndex_self {k : Type*} [Field k] [CharZero k]
    (F : LogarithmicFunctions k) : doubleIndex F F = 0 := sorry

/-- Additivity in the first slot of the double index, with the pointwise module
structure in the coefficient presentation. -/
theorem doubleIndex_add_left {k : Type*} [Field k] [CharZero k]
    (F F' G : LogarithmicFunctions k) :
    doubleIndex (F + F') G = doubleIndex F G + doubleIndex F' G := sorry

/-- If the first argument has no logarithmic term, the index is the residue of
that argument times the differential of the second. -/
theorem doubleIndex_laurent_first {k : Type*} [Field k] [CharZero k]
    (f : LaurentSeries k) (G : LogarithmicFunctions k) :
    doubleIndex (f, 0) G = (f * LogarithmicFunctions.differential G).coeff (-1) := sorry

/-- If the second argument is Laurent, integration by parts puts the
differential in the first argument and introduces a minus sign. -/
theorem doubleIndex_laurent_second {k : Type*} [Field k] [CharZero k]
    (F : LogarithmicFunctions k) (g : LaurentSeries k) :
    doubleIndex F (g, 0) = -(g * LogarithmicFunctions.differential F).coeff (-1) := sorry

/-- Alternation and the Laurent-first residue rule uniquely determine the
formal double index among bilinear pairings. -/
theorem doubleIndex_ext {k : Type*} [Field k] [CharZero k]
    (B : LogarithmicFunctions k →ₗ[k] LogarithmicFunctions k →ₗ[k] k)
    (hAlternating : ∀ F : LogarithmicFunctions k, B F F = 0)
    (hLaurent : ∀ (f : LaurentSeries k) (G : LogarithmicFunctions k),
      B (f, 0) G = (f * LogarithmicFunctions.differential G).coeff (-1))
    (F G : LogarithmicFunctions k) : B F G = doubleIndex F G := sorry

/-- Adding scalar constants gives the two residue terms with opposite signs. -/
theorem doubleIndex_add_constants {k : Type*} [Field k] [CharZero k]
    (F G : LogarithmicFunctions k) (a b : k) :
    doubleIndex (F + (HahnSeries.single 0 a, 0))
      (G + (HahnSeries.single 0 b, 0)) - doubleIndex F G =
        a * G.2 - b * F.2 := sorry

/-- Coefficient embeddings commute with the formal double index. -/
theorem doubleIndex_scalarExtension
    {k l : Type*} [Field k] [CharZero k] [Field l] [CharZero l]
    (f : k →+* l) (F G : LogarithmicFunctions k) :
    f (doubleIndex F G) =
      doubleIndex (F.1.map f, f F.2) (G.1.map f, f G.2) := sorry

/-- Constants paired with the logarithm detect the residue order; logarithms
paired with themselves and pairs of constants have zero index. -/
example :
    doubleIndex ((HahnSeries.single 0 1, 0) : LogarithmicFunctions ℚ) (0, 1) = 1 ∧
      doubleIndex ((0, 1) : LogarithmicFunctions ℚ) (HahnSeries.single 0 1, 0) = -1 ∧
      doubleIndex ((0, 1) : LogarithmicFunctions ℚ) (0, 1) = 0 ∧
      doubleIndex ((HahnSeries.single 0 1, 0) : LogarithmicFunctions ℚ) (0, 2) = 2 ∧
      doubleIndex ((HahnSeries.single 0 1, 0) : LogarithmicFunctions ℚ) (0, -1) = -1 ∧
      ∀ a b : ℚ,
        doubleIndex ((HahnSeries.single 0 a, 0) : LogarithmicFunctions ℚ)
          (HahnSeries.single 0 b, 0) = 0 := by
  norm_num [doubleIndex, LaurentSeries.derivative]

/-- The Laurent test gives `B(z,z⁻¹) = -1`. The Laurent-first rule, a
Laurent-second witness with first argument `z + 2L`, and the constant-change
witness fix the residue order and logarithmic correction. -/
example :
    (doubleIndex ((HahnSeries.single 1 1, 0) : LogarithmicFunctions ℚ)
      (HahnSeries.single (-1) 1, 0) = -1 ∧
      -(HahnSeries.single (-1) 1 * LogarithmicFunctions.differential
        ((HahnSeries.single 1 1, 0) : LogarithmicFunctions ℚ)).coeff (-1) = -1) ∧
      (∀ (f : LaurentSeries ℚ) (G : LogarithmicFunctions ℚ),
        doubleIndex (f, 0) G = (f * LogarithmicFunctions.differential G).coeff (-1)) ∧
      (doubleIndex ((HahnSeries.single 1 1, 2) : LogarithmicFunctions ℚ)
        (HahnSeries.single (-1) 1, 0) = -1 ∧
        -(HahnSeries.single (-1) 1 * LogarithmicFunctions.differential
          ((HahnSeries.single 1 1, 2) : LogarithmicFunctions ℚ)).coeff (-1) = -1) ∧
      doubleIndex ((HahnSeries.single 0 1, 0) : LogarithmicFunctions ℚ) (0, 1) -
        doubleIndex ((0, 0) : LogarithmicFunctions ℚ) (0, 1) = 1 := by
  constructor
  · norm_num [doubleIndex, LogarithmicFunctions.differential, LaurentSeries.derivative,
      HahnSeries.single_mul_single]
  constructor
  · intro f G
    simp [doubleIndex, LogarithmicFunctions.differential, mul_add,
      HahnSeries.coeff_mul_single, mul_comm]
  constructor
  · norm_num [doubleIndex, LogarithmicFunctions.differential, LaurentSeries.derivative,
      mul_add, HahnSeries.single_mul_single]
  · norm_num [doubleIndex, LaurentSeries.derivative]

end Annulus

/-! ## Layer 4: Harmonic realization of arbitrary-reduction single integration -/

open CategoryTheory MonoidalCategory
open AlgebraicGeometry

namespace NaturalIntegration

/-- Every pointed smooth geometrically connected separated finite-type variety
over a characteristic-zero field has a proper Albanese variety
(Serre, Exposé 10, §4, Theorems 5–6). -/
theorem properAlbanese_exists {k : Type u} [Field k] [CharZero k]
    (X : Over (Spec (.of k)))
    [Smooth X.hom] [LocallyOfFiniteType X.hom] [QuasiCompact X.hom]
    [IsSeparated X.hom]
    [GeometricallyConnected X.hom]
    (x₀ : 𝟙_ (Over (Spec (.of k))) ⟶ X) :
    ∃ (A : TauCeti.AlgebraicGeometry.AbelianVariety k)
      (a : X ⟶ A.toOver),
      TauCeti.AlgebraicGeometry.AbelianVariety.IsAlbanese x₀ a := sorry

end NaturalIntegration

/-! ## Layer 7: Branch transport, traces and arbitrary-reduction descent -/

namespace SingleIntegral

/-- The coefficients of an affine universal single-integral value `A + B T`.
This is the affine value space, without an assertion that a form has been integrated. -/
abbrev UniversalAffine (k : Type*) := k × k

namespace UniversalAffine

/-- Evaluate an affine universal value at the chosen logarithm parameter. -/
def specialize {k : Type*} [CommRing k] (I : UniversalAffine k) (lam : k) : k :=
  I.1 + I.2 * lam

/-- Exact-form values have no branch term; the zero value stays zero. -/
example {k : Type*} [CommRing k] (a lam : k) :
    specialize (a, 0) lam = a ∧ specialize ((0, 0) : UniversalAffine k) lam = 0 := by
  simp [specialize]

/-- The `dlog` value has branch slope one, while ramification index two gives
slope one half. The general subtraction law holds even over the zero ring. -/
example :
    specialize ((0, 1) : UniversalAffine ℚ) 2 - specialize (0, 1) 0 = 2 ∧
      specialize ((0, 1 / 2) : UniversalAffine ℚ) 2 -
        specialize (0, 1 / 2) 0 = 1 ∧
      ∀ {k : Type*} [CommRing k] (I : UniversalAffine k) (lam lam' : k),
        specialize I lam' - specialize I lam = (lam' - lam) * I.2 := by
  refine ⟨by norm_num [specialize], by norm_num [specialize], ?_⟩
  intro k _ I lam lam'
  dsimp [specialize]
  ring

end UniversalAffine

end SingleIntegral

end TauCetiRoadmap.ColemanIntegrationPartII
