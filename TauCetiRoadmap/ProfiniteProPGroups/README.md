# Roadmap: profinite and pro-\(p\) groups, with abstract Demushkin theory

This roadmap develops the group theory needed for local Galois groups without using any
local field.  It begins with general profinite groups, passes to pro-\(p\) groups, free
objects and presentations, and ends with the marked classification of Demushkin groups.
The applications to \(G_K\) are deliberately placed in a separate roadmap, so that the
abstract theory can be accepted and used before local class field theory is available.

## Scope

This roadmap owns:

- supernatural order and index, profinite Sylow theory, and maximal pro-\(p\) quotients
- the profinite integers as a topological commutative ring, their unit group, and profinite exponentiation
- Frattini subgroups, the Burnside basis theorem, Gaschütz lifting, and Hopficity
- free pro-\(\mathcal C\) and free pro-\(p\) groups, including the universal property on finite and profinite generating spaces
- topological generator rank and relation rank
- lower \(p\)-central series, completed group algebras, and relation modules
- the elementary-abelian criterion for cohomological dimension of a pro-\(p\) group
- Demushkin groups, their \(q\)-invariant and orientation character
- the marked Demushkin–Serre–Labute classification

It does not own:

- the identification of \(G_K(p)\) for a local field; this belongs to Absolute Galois Groups of Local Fields
- local reciprocity, local duality, and the cohomology of local multiplicative groups
- general continuous cohomology operations, which come from Profinite Cohomology

## Dependencies and exported interfaces

The only roadmap dependency is Profinite Cohomology.  All uses of \(H^1\), \(H^2\), cup products, and \(cd_p\) refer to that carrier.

| Supplier | Material consumed |
|---|---|
| Profinite Cohomology | continuous cohomology, cup products, \(cd_p\), restriction and corestriction |
| Mathlib | profinite spaces and groups, free groups, completed rings, cardinal arithmetic |

The principal interfaces exported to later roadmaps are:

- `Supernatural`, `profiniteOrder`, `profiniteIndex`, `IsProPSylow`
- `ZHat`, its projections and ring structure, and continuous profinite exponentiation
- `maximalProPQuotient`, `proPFrattini`, `topologicalGeneratorRank`
- `freeProP`, `freeProC`, and their lifting properties
- `IsDemushkin`, `demushkinQ`, `demushkinOrientation`, and the marked classification theorem

## Layers

### Layer 0: profinite foundations and supernatural arithmetic

Develop open normal subgroups, inverse-limit reconstruction from finite quotients,
supernatural numbers, and the order and index of a profinite group.  Prove multiplicativity
in towers and the finite-group comparison.

**Dependencies.** Mathlib.

### Layer 1: the profinite integers and profinite powers

Construct \(\widehat{\mathbf Z}=\varprojlim_n\mathbf Z/n\mathbf Z\) as a topological
commutative ring, its unit group, its \(\ell\)-adic projections, and the dense embedding of
\(\mathbf Z\).  For a profinite group define \(g^a\) for
\(a\in\widehat{\mathbf Z}\), with the expected laws and functoriality.

**Dependencies.** Layer 0.

### Layer 2: profinite Sylow theory

Define pro-\(p\) groups by their finite quotients.  Prove existence and conjugacy of
pro-\(p\) Sylow subgroups, functoriality under quotients, and the prime-to-\(p\) index
criterion.

**Dependencies.** Layer 0.

### Layer 3: maximal pro-\(p\) quotients and Frattini theory

Construct the pro-\(p\) kernel and maximal pro-\(p\) quotient.  Define the Frattini
subgroup, prove \(\Phi(G)=\overline{G^p[G,G]}\), and establish the Burnside basis theorem.
Include finite generation criteria and Gaschütz lifting.

**Dependencies.** Layers 0 and 2.

### Layer 4: free pro-\(\mathcal C\) and free pro-\(p\) groups

For a formation \(\mathcal C\) of finite groups, construct the free pro-\(\mathcal C\)
group on a finite set and on a profinite space.  Prove the universal property, residual
properties, Nielsen–Schreier in the pro-\(p\) case, and the structure of finitely generated
abelian pro-\(p\) groups.

**Dependencies.** Layers 0–3.

### Layer 5: presentations, ranks, and relation modules

Define finite pro-\(p\) presentations, generator rank, relation rank, deficiency, and the
relation module.  Prove
\[
d(G)=\dim_{\mathbf F_p}H^1(G,\mathbf F_p),\qquad
r(G)=\dim_{\mathbf F_p}H^2(G,\mathbf F_p)
\]
under the standard minimality hypotheses.

**Dependencies.** Layers 3–4 and Profinite Cohomology.

### Layer 6: cohomological dimension for pro-\(p\) groups

Prove reduction of \(cd_p\le n\) to the trivial module \(\mathbf F_p\), Serre's
criterion \(cd_pG\le1\) for free pro-\(p\) groups, the open-subgroup formula, and the
Nielsen–Schreier rank formula.

**Dependencies.** Layers 4–5 and Profinite Cohomology.

### Layer 7: Demushkin groups and their invariants

Define a Demushkin group as a finitely generated pro-\(p\) group of cohomological
dimension \(2\), with one-dimensional \(H^2\) and a perfect cup pairing on \(H^1\).
Define the \(q\)-invariant and the canonical orientation character, with the dyadic
normalizations stated explicitly.

**Dependencies.** Layers 5–6.

### Layer 8: completed group algebras and the Labute relation module

Develop the completed group algebra in the forms used by Labute, the lower
\(p\)-series, and the module \(X/[X,X]\) for the kernel of the orientation.  Prove the
comparison and divisibility results needed to read a defining relator.

**Dependencies.** Layers 4–7.

### Layer 9: marked classification of Demushkin groups

For each normal-form family, construct the one-relator pro-\(p\) group and prove a
marked isomorphism carrying the canonical orientation to the tabulated character.  Include
the exceptional \(p=2\) families and uniqueness of the marked form.

**Dependencies.** Layers 7–8.

## Worked examples and acceptance checks

- recover \(\widehat{\mathbf Z}\) and \(\mathbf Z_p\) with the correct transition maps
- prove the Burnside basis theorem for a finite \(p\)-group as a specialization
- compute the ranks of free pro-\(p\) groups and of \(\mathbf Z_p^d\)
- construct each Labute normal-form group with its marked generators and orientation

## References

- L. Ribes and P. Zalesskii, *Profinite Groups*
- J.-P. Serre, *Galois Cohomology*
- J. Labute, papers on Demushkin groups
- J. Neukirch, A. Schmidt, K. Wingberg, *Cohomology of Number Fields*
