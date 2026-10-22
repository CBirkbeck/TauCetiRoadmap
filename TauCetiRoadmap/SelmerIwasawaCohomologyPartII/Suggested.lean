import Mathlib
import TauCeti.RepresentationTheory.Homological.ContCohomology.LowDegree

/-!
# SelmerIwasawaCohomologyPartII: representative target signatures

The roadmap is README.md. This file records statements suggested against the pinned APIs
and is not exhaustive. Special inertness uses prime ideals and absolute norms. The finite diagonal period is evaluated on the native definite
Shimura sets supplied in the roadmap; it retains the source of a correspondence and its
fibre multiplicities. Geometric and arithmetic headline statements use the native carriers
specified in README.md.
-/

namespace TauCetiRoadmap.SelmerIwasawaCohomologyPartII

open scoped BigOperators NumberField

universe u v w z t

/-! ## Layer 1: Coefficient algebra, local predicates and admissibility -/

/-- Special inertness on ideals in a number-field extension: a nonzero prime of prime
odd absolute norm, with prime extension ideal and underlying rational prime unramified
at every prime of the upper field. On CM quadratic extensions this is the predicate of
LTXZZ, published Definition 3.3.4; prime norm gives residue degree one. -/
def specialInertPlace (K : Type u) (F : Type v) [Field K] [NumberField K]
    [Field F] [NumberField F] [Algebra K F] (v : Ideal (𝓞 K)) : Prop :=
  v ≠ ⊥ ∧ v.IsPrime ∧ v.absNorm.Prime ∧ v.absNorm ≠ 2 ∧
    Algebra.IsUnramifiedIn (𝓞 F) (Ideal.span {(v.absNorm : ℤ)}) ∧
    (Ideal.map (algebraMap (𝓞 K) (𝓞 F)) v).IsPrime

/-- In the Gaussian field, the prime above 3 is special inert and its extension has norm 9.
This is the special-inert part of the very-special control in README §1.5. -/
theorem specialInertPlace_Qi_three :
    specialInertPlace ℚ (CyclotomicField 4 ℚ) (Ideal.span {(3 : 𝓞 ℚ)}) ∧
    (Ideal.map (algebraMap (𝓞 ℚ) (𝓞 (CyclotomicField 4 ℚ)))
      (Ideal.span {(3 : 𝓞 ℚ)})).absNorm = 9 := by
  sorry

/-- The split prime 5 in the Gaussian field is not special inert. -/
theorem specialInertPlace_Qi_five :
    ¬ specialInertPlace ℚ (CyclotomicField 4 ℚ) (Ideal.span {(5 : 𝓞 ℚ)}) := by
  sorry

/-- The even ramified prime 2 in the Gaussian field is not special inert. -/
theorem specialInertPlace_Qi_two :
    ¬ specialInertPlace ℚ (CyclotomicField 4 ℚ) (Ideal.span {(2 : 𝓞 ℚ)}) := by
  sorry

/-- A residue-degree-two prime of norm p squared fails the degree-one clause,
including when it is inert and unramified in a CM extension. -/
theorem specialInertPlace_not_square_norm (K : Type u) (F : Type v)
    [Field K] [NumberField K] [Field F] [NumberField F] [Algebra K F]
    (v : Ideal (𝓞 K)) (p : ℕ) (hp : p.Prime) (hv : v.absNorm = p ^ 2) :
    ¬ specialInertPlace K F v := by
  sorry

/-- A prime of norm two is rejected even if all the other clauses hold. -/
example (K : Type u) (F : Type v) [Field K] [NumberField K]
    [Field F] [NumberField F] [Algebra K F] (v : Ideal (𝓞 K))
    (hv : v.absNorm = 2) : ¬ specialInertPlace K F v := by
  intro h
  exact h.2.2.2.1 hv

/-- A split extension ideal is rejected independently of parity and unramifiedness. -/
example (K : Type u) (F : Type v) [Field K] [NumberField K]
    [Field F] [NumberField F] [Algebra K F] (v : Ideal (𝓞 K))
    (hv : ¬ (Ideal.map (algebraMap (𝓞 K) (𝓞 F)) v).IsPrime) :
    ¬ specialInertPlace K F v := by
  intro h
  exact hv h.2.2.2.2.2

/-! ## Layer 5: First geometric and explicit reciprocity laws -/

/-- The definite diagonal period sums a test function over the source of its two legs,
counting each source point. See README §5.1 and LTXZZ Theorem 7.2.8(3). -/
def definiteDiagonalPeriod {S : Type u} [Fintype S] {X : Type v} {Y : Type w}
    {R : Type z} [AddCommMonoid R] (a : S → X) (b : S → Y) (f : X × Y → R) : R :=
  ∑ s : S, f (a s, b s)

/-- Summing over graph pairs weights each value by the cardinality of its full source fibre.
This is the definite-function multiplicity identity of README §§5.1 and 6.1. -/
theorem definiteDiagonalPeriod_fiber {S : Type u} [Fintype S]
    {X : Type v} [Fintype X] {Y : Type w} [Fintype Y]
    {R : Type z} [AddCommMonoid R] (a : S → X) (b : S → Y) (f : X × Y → R) :
    definiteDiagonalPeriod a b f =
      ∑ q : X × Y, Nat.card {s : S // (a s, b s) = q} • f q := by
  sorry

/-- Singleton, double-fibre and empty-source controls distinguish counting from averaging
and ensure that an empty correspondence contributes zero. The sign-action coboundary
period evaluates the actual d0 at both units of ℤ. -/
example :
    definiteDiagonalPeriod (fun _ : PUnit => PUnit.unit)
        (fun _ : PUnit => PUnit.unit) (fun _ => (1 : ℤ)) = 1 ∧
    definiteDiagonalPeriod (fun _ : Bool => PUnit.unit)
        (fun _ : Bool => PUnit.unit) (fun _ => (1 : ℤ)) = 2 ∧
    definiteDiagonalPeriod (fun _ : Fin 0 => PUnit.unit)
        (fun _ : Fin 0 => PUnit.unit) (fun _ => (1 : ℤ)) = 0 ∧
    definiteDiagonalPeriod (fun s : Bool => if s then (-1 : ℤˣ) else 1)
        (fun _ : Bool => PUnit.unit)
        (fun q : ℤˣ × PUnit => TauCeti.ContCohomology.d0 ℤˣ ℤ 1 q.1) = -2 := by
  norm_num [definiteDiagonalPeriod, Fintype.sum_bool, TauCeti.ContCohomology.d0_apply]

/-- Two nonzero signed graph values can cancel; two coincident points also have zero
period in characteristic two. Neither fact permits replacing counting by averaging. -/
example :
    definiteDiagonalPeriod (fun s : Bool => s) (fun _ : Bool => PUnit.unit)
        (fun q : Bool × PUnit => if q.1 then (1 : ℤ) else -1) = 0 ∧
    definiteDiagonalPeriod (fun _ : Bool => PUnit.unit)
        (fun _ : Bool => PUnit.unit) (fun _ => (1 : ZMod 2)) = 0 := by
  constructor
  · norm_num [definiteDiagonalPeriod, Fintype.sum_bool]
  · change (∑ _ : Bool, (1 : ZMod 2)) = 0
    simp only [Fintype.sum_bool]
    decide

end TauCetiRoadmap.SelmerIwasawaCohomologyPartII
