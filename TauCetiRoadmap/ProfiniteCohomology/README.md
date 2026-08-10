# Roadmap: continuous cohomology of profinite groups

Let \(G\) be a profinite group and let \(M\) be a discrete \(G\)-module.  This
roadmap develops the form of continuous cohomology used in Galois theory.  Mathlib's
`continuousCohomology` is the canonical carrier.  The purpose of the roadmap is to
make that carrier calculable: explicit low-degree cocycles, finite-quotient
descriptions, exact sequences, change of groups, cup products, Kummer theory, and
cohomological dimension.

There is one cohomology theory.  Explicit inhomogeneous \(H^0,H^1,H^2\) are
comparison models for Mathlib's object, not competing definitions.

## Scope

This roadmap owns:

- discrete continuous representations of topological and profinite groups, including the open-stabilizer criterion
- functoriality of Mathlib's continuous cohomology in a compatible homomorphism of groups and modules
- explicit inhomogeneous \(H^0,H^1,H^2\), with natural comparison isomorphisms to the canonical carrier
- the filtered-colimit description over finite quotients
- long exact sequences, inflation–restriction, the five-term sequence, restriction, corestriction, and conjugation
- coinduction and Shapiro's lemma for closed subgroups
- low-degree and all-degree cup products, including projection formulae
- continuous Hilbert 90 and Kummer theory
- cohomological dimension \(cd_p\), strict cohomological dimension, and closed-subgroup bounds
- the mod-\(2\) Evens norm required by quadratic-form applications

It does not own:

- Tate cohomology in negative degrees, class formations, and Tate–Nakayama; these belong to Class Field Theory
- profinite Sylow theory, free pro-\(p\) groups, and Demushkin groups
- non-discrete coefficient systems such as \(\mathbf Z_p(1)\), Iwasawa modules, or condensed coefficients
- nonabelian continuous \(H^1\)

## Dependencies and exported interfaces

The roadmap depends only on Mathlib.  Every later arithmetic roadmap should cite the declarations here rather than reconstructing continuous cohomology.

| Supplier | Material consumed |
|---|---|
| Mathlib | `continuousCohomology`, discrete group cohomology, profinite groups, Krull topology, separable closures |

The principal interfaces exported to later roadmaps are:

- `TopRep`, the discrete-representation constructor, and the comparison with open stabilizers
- `explicitH0Iso`, `explicitH1Iso`, `explicitH2Iso`
- `finiteQuotientColimit`, `inflationRestriction`, `fiveTermExact`
- `restriction`, `corestriction`, `shapiroIso`, and the Mackey formula
- `cup`, its graded laws and projection formula
- `kummerIso`, `hilbert90`, `cd_p`, and `evensNormIndexTwo`

## Layers

### Layer 0: discrete modules and the canonical carrier

Define the coefficient category used throughout.  Prove that a continuous action on a
discrete module is equivalent to every element having an open stabilizer.  Construct the
associated object of Mathlib's topological module category, and prove compatibility with
submodules, quotients, finite products, filtered colimits, and restriction of scalars.

**Dependencies.** Mathlib.

### Layer 1: functoriality in compatible pairs

For a continuous homomorphism \(H\to G\) and an equivariant coefficient map, construct the
map on `continuousCohomology`.  Prove identity, composition, restriction, inflation, and
coefficient-change formulae.  The construction is natural at the cochain-complex level.

**Dependencies.** Layer 0.

### Layer 2: explicit cohomology in degrees \(0,1,2\)

Define continuous inhomogeneous cochains, cocycles, and coboundaries.  Give the usual
crossed-homomorphism description of \(H^1\) and the factor-set description of \(H^2\).
Include normalization of cochains, functoriality, and the discrete-group specialization.

**Dependencies.** Layers 0–1.

### Layer 3: comparison with the canonical theory

Construct natural isomorphisms from the explicit groups to Mathlib's continuous
cohomology in degrees \(0,1,2\).  Prove that restriction, inflation, coefficient maps,
and connecting maps commute with these isomorphisms.

**Dependencies.** Layers 1–2.

### Layer 4: finite quotients

For an open normal subgroup \(U\), define the finite-level group
\(H^n(G/U,M^U)\) and its transition maps.  Prove that continuous cochains factor through
a finite quotient and deduce the filtered-colimit theorem, first explicitly in low
degrees and then for the canonical carrier in every degree.

**Dependencies.** Layers 0–4.

### Layer 5: exact sequences

For a short exact sequence of discrete modules, construct the connecting homomorphisms,
the long exact sequence, inflation–restriction, and the five-term sequence.  Give an
explicit transgression formula and prove compatibility with the comparison isomorphisms.

**Dependencies.** Layers 3–4.

### Layer 6: change of groups

Construct restriction, corestriction for open subgroups, and conjugation.  Prove
transitivity, `cor ∘ res`, the Mackey double-coset formula, and compatibility with
connecting maps.

**Dependencies.** Layers 4–5.

### Layer 7: coinduction and Shapiro

Construct the discrete coinduced module for a closed subgroup, prove its adjunction and
exactness properties, and establish Shapiro's lemma.  Include the comparison with ordinary
algebraic coinduction for open subgroups.

**Dependencies.** Layers 0–6.

### Layer 8: cup products

Define the low-degree formulas and the all-degree cup product.  Prove associativity,
graded commutativity, units, naturality, compatibility with boundary maps, and the
projection formula for corestriction.

**Dependencies.** Layers 3–7.

### Layer 9: Galois cohomology, Hilbert 90, and Kummer theory

Compare the public absolute Galois group with the separable-closure model used for
coefficients.  Construct the multiplicative coefficient module, prove continuous Hilbert
90, and derive
\[
K^\times/(K^\times)^n \simeq H^1(G_K,\mu_n)
\]
when \(n\) is invertible in \(K\), with restriction and norm compatibility.

**Dependencies.** Layers 4–8 and Mathlib's finite-level Hilbert 90.

### Layer 10: cohomological dimension and the Evens norm

Define \(cd_p\), \(cd\), and strict cohomological dimension.  Prove dévissage to finite
\(p\)-primary coefficients and the standard subgroup inequalities.  Construct the
index-two Evens norm on mod-\(2\) cohomology and prove its restriction, transfer, and cup
identities.

**Dependencies.** Layers 5–9.

## Worked examples and acceptance checks

- for a finite group with the discrete topology, recover Mathlib's ordinary group cohomology
- identify \(H^1(\widehat{\mathbf Z},M)\) with the expected Frobenius coinvariant description
- recover classical Kummer theory for \(K=\mathbf Q_p\) and \(n\) prime to \(p\)
- verify the index-two Evens norm on \(C_2\)

## References

- J.-P. Serre, *Galois Cohomology*
- J. Neukirch, A. Schmidt, K. Wingberg, *Cohomology of Number Fields*
- L. Ribes and P. Zalesskii, *Profinite Groups*
- K. S. Brown, *Cohomology of Groups*
