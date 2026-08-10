# Roadmap: orthogonal and spin groups

This roadmap develops orthogonal, special orthogonal, pin, and spin groups over fields and
over local and global rings. It includes reflections, the spinor norm, local and adelic
point groups, strong approximation for spin groups, and the computation of the Tamagawa
number of \(SO(Q)\). General adelic groups and Tamagawa measures are consumed rather than
rebuilt.

## Scope

This roadmap owns:

- orthogonal and special orthogonal groups of a regular quadratic form
- reflections, Cartan–Dieudonné, and comparison with the polar bilinear form
- Clifford groups, pin and spin groups, and the spin double cover
- the spinor norm and its kernel
- local orthogonal groups, Eichler transvections, and integral compact opens
- adelic \(O\), \(SO\), and `Spin` as specializations of the general restricted-product theory
- strong approximation for `Spin` and its transport to the adelic spinor kernel
- the Hasse principle for the relevant \(SO\)-torsors
- the calculation \(\tau(SO_Q)=2\)

It does not own:

- general Tamagawa measures and general strong approximation
- local and global classification of quadratic forms
- integral lattice genera and mass formulae

## Dependencies and exported interfaces

The roadmap consumes quadratic-form invariants, the global Hasse principle, general adelic groups, class-field-theoretic obstruction groups, and the accepted Clifford/spin group constructions.

| Supplier | Material consumed |
|---|---|
| Quadratic Form Invariants | Witt theory, local forms, Hilbert and Hasse invariants |
| Global Quadratic Forms | Hasse–Minkowski and the global \(H^1\)-kernel |
| Adelic Algebraic Groups | restricted products, Tamagawa measures, strong approximation |
| Class Field Theory | cohomology of central kernels and reciprocity |
| Accepted Spin Representations / Reductive Groups | Clifford, pin, spin, and group-scheme carriers |

The principal interfaces exported to later roadmaps are:

- `orthogonalGroup`, `specialOrthogonalGroup`, `spinorNorm`
- `finiteAdelicOrthogonal`, `finiteAdelicSpin`, and compatible compact opens
- `strongApproximation_spin`, `adelicSpinorKernel`
- `specialOrthogonal_tamagawaNumber_eq_two`

## Layers

### Layer 0: orthogonal groups and reflections

Construct \(O(Q)\), \(SO(Q)\), determinant, base change, and the equivalence with the
automorphism group of the unhalved polar form. Define reflections with the correct formula
and prove Cartan–Dieudonné.

**Dependencies.** Quadratic Form Invariants and Mathlib.

### Layer 1: Clifford groups, pin, and spin

Specialize the accepted Clifford-algebra theory, define the Clifford group and reverse
norm, and construct `Pin` and `Spin` with the double-cover maps and kernels. Fix the sign
normalization \(N(v)=Q(v)\).

**Dependencies.** Layer 0 and the accepted spin roadmap.

### Layer 2: the spinor norm

Define the spinor norm by reflection products and prove independence of the decomposition.
Identify its kernel with the image of `Spin`, and prove functoriality, base change, and local
continuity/openness under the required square-class hypotheses.

**Dependencies.** Layers 0–1.

### Layer 3: local groups and transvections

Put the canonical topology on local point groups, construct integral stabilizers and
Eichler transvections, and lift transvections to `Spin`. Prove compactness, openness, and
generation statements used in strong approximation.

**Dependencies.** Layers 0–2 and Local Fields.

### Layer 4: adelic groups and strong approximation

Instantiate Adelic Algebraic Groups for \(O\), \(SO\), and `Spin`. Prove strong
approximation for `Spin` under the noncompact-place hypothesis and transport it to the
adelic spinor kernel in \(SO\), without making a false statement for the full orthogonal group.

**Dependencies.** Layers 1–3 and Adelic Algebraic Groups.

### Layer 5: global obstruction groups

Use Global Quadratic Forms and Class Field Theory to identify the kernel of the
global-to-local map for the relevant \(SO\)-torsors and the cohomological obstruction to
lifting an adelic \(SO\)-point to `Spin`.

**Dependencies.** Layers 2–4, Global Quadratic Forms, and Class Field Theory.

### Layer 6: Tamagawa number of \(SO\)

Apply the general Tamagawa-measure and central-isogeny formulae, local spinor norms, and
the global obstruction calculation to prove \(\tau(SO_Q)=2\) in the stated nondegenerate
regime. No isotropy hypothesis is imposed unless a particular proof step requires it.

**Dependencies.** Layers 4–5 and Adelic Algebraic Groups.

## Worked examples and acceptance checks

- reflection formula and spinor norm in dimensions \(1,2,3\)
- split and anisotropic ternary forms over \(\mathbf Q_p\)
- strong approximation for an indefinite spin group
- the Tamagawa number computation for a positive definite form

## References

- O. T. O'Meara, *Introduction to Quadratic Forms*
- T. Y. Lam, *Introduction to Quadratic Forms over Fields*
- V. Platonov and A. Rapinchuk, *Algebraic Groups and Number Theory*
- M. Kneser, papers on strong approximation and spinor genera
