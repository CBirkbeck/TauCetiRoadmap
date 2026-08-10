# Roadmap: local fields and ramification

This roadmap develops the arithmetic of nonarchimedean local fields up to, but not
including, class field theory.  It treats finite extensions, units, unramified and tame
extensions, higher ramification, Herbrand theory, Hasse–Arf, and conductors.  Reciprocity,
class formations, local duality, and the structure of the absolute Galois group are separate
roadmaps.

## Scope

This roadmap owns:

- normalized valuations, ramification and residue degrees, and finite-extension structure
- unit filtrations, power classes, Teichmüller representatives, and the multiplicative group
- unramified extensions and arithmetic Frobenius
- lower and upper ramification filtrations, Herbrand functions, and Hasse–Arf
- the tame quotient and the structure of tame inertia
- the different and discriminant of a local extension
- ramification-theoretic conductors of finite characters and finite Galois extensions
- norm groups and explicit norm calculations before reciprocity

It does not own:

- finite-group Tate cohomology, class formations, and Tate–Nakayama
- the local Artin map, the existence theorem, local Tate duality, and Euler characteristics
- the pro-\(p\) classification of \(G_K(p)\) and the rank of \(G_K\)
- Artin–Schreier–Witt theory for \(p\)-power coefficients in equal characteristic

## Dependencies and exported interfaces

The roadmap uses the profinite integers from Profinite and Pro-\(p\) Groups for the maximal unramified extension.  It otherwise rests on Mathlib's valuation-theoretic local-field class.

| Supplier | Material consumed |
|---|---|
| Profinite and Pro-\(p\) Groups | `\hat{\mathbf Z}` and continuous procyclic groups |
| Mathlib | `IsNonarchimedeanLocalField`, valuation rings, finite extensions, residue fields |

The principal interfaces exported to later roadmaps are:

- `normalizedValuation`, `ramificationIndex`, `inertiaDegree`
- `unitFiltration`, its graded pieces and power-map theorems
- `maximalUnramifiedExtension`, `frobeniusAlgEquiv`, and the norm group in an unramified extension
- `lowerRamificationGroup`, `herbrandPhi`, `herbrandPsi`, `upperRamificationGroup`
- `conductorExponent` and the local different formula

## Layers

### Layer 0: finite extensions and normalized valuations

Construct the unique extension of the valuation to a finite field extension.  Prove that
the extension is again local, define \(e\) and \(f\), prove \(ef=[L:K]\), tower
multiplicativity, and compatibility with the valuation-ring and residue-field extensions.

**Dependencies.** Mathlib.

### Layer 1: units and power classes

Define \(U_K^0=\mathcal O_K^\times\) and \(U_K^i=1+\mathfrak m_K^i\).
Compute the graded quotients, Teichmüller representatives, and the power maps.  State
separately the prime-to-residue-characteristic case and the mixed-characteristic
\(p\)-primary case, including \(p=2\).

**Dependencies.** Layer 0.

### Layer 2: unramified extensions

Classify finite unramified extensions by finite residue-field extensions, construct
arithmetic Frobenius, and build the maximal unramified extension with Galois group
\(\widehat{\mathbf Z}\).  Prove the norm formulas on valuations and units.

**Dependencies.** Layers 0–1 and the profinite integers.

### Layer 3: lower ramification groups

Define \(G_i\) for integer indices, with \(G_{-1}=G\), \(G_0\) inertia and \(G_1\)
wild inertia.  Prove normality, functoriality in quotients and subextensions, the
commutator and \(p\)-power bounds, and Hilbert's formula for the different.

**Dependencies.** Layers 0–2.

### Layer 4: Herbrand functions and upper numbering

Construct \(\varphi_{L/K}\) and \(\psi_{L/K}\), prove their monotonicity and inverse
relations, and define \(G^u=G_{\psi(u)}\).  Establish Herbrand's theorem for quotients and
the transitivity formulas in towers.

**Dependencies.** Layer 3.

### Layer 5: Hasse–Arf and conductors

Prove Hasse–Arf for finite abelian extensions.  Define the conductor exponent of a finite
character and of an abelian extension, prove attainment in the unit filtration, and compare
with the upper ramification breaks and the local discriminant.

**Dependencies.** Layers 1 and 4.

### Layer 6: the tame quotient

Construct tame inertia as the prime-to-\(p\) product of Tate modules of roots of unity,
describe the action of Frobenius, and give the standard presentation of the tame quotient
of the absolute Galois group.  Keep wild inertia as a named kernel, without classifying it.

**Dependencies.** Layers 2–4.

### Layer 7: explicit norm groups

Compute norm groups in unramified, totally tamely ramified, and selected cyclic wild
extensions.  Prove openness and finite index directly where possible, but do not identify
the quotient with a Galois group; that is the local reciprocity theorem of Class Field Theory.

**Dependencies.** Layers 1–6.

## Worked examples and acceptance checks

- \(\mathbf Q_p\), its unramified extension of degree \(n\), and \(F_q((t))\)
- the quadratic extensions of \(\mathbf Q_2\), with all ramification breaks
- the tame relation \(\varphi\tau\varphi^{-1}=\tau^q\)
- the conductor and different of a cyclotomic local extension

## References

- J.-P. Serre, *Local Fields*
- J. Neukirch, *Algebraic Number Theory*, Chapter II
- I. Fesenko and S. Vostokov, *Local Fields and Their Extensions*

## Source proposals

This is the arithmetic part of roed-math PR #2.  Its class-formation, reciprocity, duality, and absolute-Galois-group layers move elsewhere.
