# Roadmap: absolute Galois groups of local fields

This roadmap applies the abstract pro-\(p\), cohomological, and local class-field-theoretic
developments to the absolute Galois group of a local field.  It is separated from the
abstract Pro-\(p\) roadmap so that no roadmap depends on a theorem which is proved only
after that dependency has itself been used.

## Scope

This roadmap owns:

- comparison of the public absolute Galois group with the separable-closure model
- cohomology of local absolute Galois groups with finite coefficients
- the maximal pro-\(p\) quotient \(G_K(p)\)
- the Shafarevich free case and the Demushkin case
- the cyclotomic orientation and the \(q\)-invariant
- the exceptional dyadic presentations, including \(G_{\mathbf Q_2}(2)\)
- topological finite generation and the rank of the full absolute Galois group
- worked descriptions of tame and maximal pro-\(p\) quotients in mixed and equal characteristic

It does not own:

- the abstract classification of Demushkin groups
- local reciprocity and local duality
- Artin–Schreier–Witt theory beyond the applications explicitly required

## Dependencies and exported interfaces

This is an application roadmap.  It consumes exact declarations from Profinite Cohomology, Profinite and Pro-\(p\) Groups, Local Fields and Ramification, and Class Field Theory.

| Supplier | Material consumed |
|---|---|
| Profinite Cohomology | Kummer theory, cup products, \(cd_p\), finite-quotient colimits |
| Profinite and Pro-\(p\) Groups | maximal pro-\(p\) quotients and marked Demushkin classification |
| Local Fields and Ramification | unit filtrations, roots of unity, ramification and tame quotient |
| Class Field Theory | local reciprocity, local duality, and Euler characteristics |

The principal interfaces exported to later roadmaps are:

- `absoluteGaloisGroupProP` and its generator and relation ranks
- `isFreeProP_absoluteGaloisGroupProP`
- `isDemushkin_absoluteGaloisGroupProP` and its marked classification
- `rank_absoluteGaloisGroup`
- the marked isomorphism \(G_{\mathbf Q_2}(2)\simeq D_0\)

## Layers

### Layer 0: absolute Galois groups and coefficient dictionaries

Compare Mathlib's absolute Galois group with automorphisms of the separable closure.  Build
the discrete coefficient modules \(\mu_n\), finite constant modules, and the cyclotomic
character, with continuity and compatibility under passage to the maximal pro-\(p\) quotient.

**Dependencies.** Profinite Cohomology and Mathlib.

### Layer 1: cohomological dimension

Compute \(cd_\ell G_K\) in the prime-to-residue-characteristic and mixed-characteristic
\(p\)-primary regimes.  Treat positive characteristic at \(\ell=p\) separately.  Derive
the finite-dimensionality of \(H^1\) and \(H^2\).

**Dependencies.** Layer 0 and Class Field Theory's local duality.

### Layer 2: generator and relation ranks of \(G_K(p)\)

Use Kummer theory and local duality to compute
\(d=\dim H^1(G_K(p),\mathbf F_p)\) and
\(r=\dim H^2(G_K(p),\mathbf F_p)\), with the roots-of-unity cases and \(p=2\) stated
separately.

**Dependencies.** Layers 0–1 and Profinite/Pro-\(p\) rank theorems.

### Layer 3: the free case

When the relevant \(p\)-power roots of unity are absent, prove that \(G_K(p)\) has
cohomological dimension at most \(1\), hence is a free pro-\(p\) group of the computed rank.
Include equal-characteristic examples.

**Dependencies.** Layers 1–2 and the abstract free-pro-\(p\) criterion.

### Layer 4: the Demushkin case

When the appropriate roots of unity are present, prove that the cup pairing is perfect,
that \(H^2\) is one-dimensional, and hence that \(G_K(p)\) is Demushkin.  Identify the
orientation with the pro-\(p\) cyclotomic character and compute the \(q\)-invariant.

**Dependencies.** Layers 1–2, local duality, and the Demushkin predicate.

### Layer 5: marked classifications and dyadic fields

Apply the marked abstract classification to finite extensions of \(\mathbf Q_p\).  Work
out the exceptional \(p=2\) families, including the standard marked presentation of
\(G_{\mathbf Q_2}(2)\) and of selected quadratic extensions.

**Dependencies.** Layers 4 and the marked Demushkin classification.

### Layer 6: the full absolute Galois group

Combine the tame quotient, wild pro-\(p\) information, and a profinite generation theorem
to compute the topological generator rank of \(G_K\).  State clearly that the familiar
\([K:\mathbf Q_p]+1\) count concerns \(G_K(p)\) in one regime, whereas the full group has
a different rank.

**Dependencies.** Layers 2–5 and Local Fields' tame quotient.

## Worked examples and acceptance checks

- \(G_{\mathbf Q_p}(p)\) with and without \(\mu_p\)
- \(G_{\mathbf Q_2}(2)\) with the marked orientation
- \(G_{F_q((t))}(\ell)\) for \(\ell
e p\) and for \(\ell=p\)
- the generator rank of the full absolute Galois group of a finite extension of \(\mathbf Q_p\)

## References

- J. Neukirch, A. Schmidt, K. Wingberg, *Cohomology of Number Fields*
- J.-P. Serre, *Galois Cohomology*
- I. Efrat, *Valuations, Orderings, and Milnor K-Theory*
- J. Labute, papers on Demushkin groups

## Source proposals

This contains the local-field application layers removed from roed-math PRs #2 and #3.
