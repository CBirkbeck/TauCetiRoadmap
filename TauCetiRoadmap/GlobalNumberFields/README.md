# Roadmap: global number fields, adeles, ray class groups, and Hecke characters

This roadmap builds the arithmetic objects on which global class field theory and Hecke
\(L\)-functions are stated.  It stops before reciprocity.  In particular, a ray class
group is constructed as an arithmetic quotient and a Hecke character is constructed as a
character of the idèle class group; no class field is attached to either object here.

## Scope

This roadmap owns:

- weak approximation, finite and full adeles, ideles, and the idèle class group
- normalized local absolute values and the product formula
- moduli, ray groups, ray class groups, narrow class groups, and their exact sequences
- congruence subgroups of ideals and ideles and the comparison between them
- finite-order ray class characters and general algebraic Hecke characters
- conductors, primitivity, induction, local components, norm twists, and the unitary decomposition
- orders in number fields, proper invertible ideals, and `Pic`/`NarrowPic`
- finite and archimedean Haar-measure normalizations needed by later adelic roadmaps

It does not own:

- local or global reciprocity, existence of class fields, Hilbert class fields, and ring class fields
- analytic continuation or functional equations of Hecke \(L\)-functions
- Chebotarev density
- Hasse–Minkowski

## Dependencies and exported interfaces

The roadmap consumes Number-Field Arithmetic for finite places, completions, ideals away from a modulus, and the ideal-theoretic Artin carrier.  It does not consume class field theory.

| Supplier | Material consumed |
|---|---|
| Number-Field Arithmetic | finite places, completions, ideals, discriminants, and the Artin carrier |
| Mathlib | adele rings, Haar measure, class groups, Dirichlet units |

The principal interfaces exported to later roadmaps are:

- `Modulus`, `rayClassGroup`, `narrowRayClassGroup`, and their exact sequences
- `finiteAdeleRing`, `ideleGroup`, `ideleClassGroup`, and the product formula
- `RayClassCharacter`, `HeckeCharacter`, `IsPrimitive`, and conductor operations
- `NumberFieldOrder`, `properIdeals`, `Pic`, and `NarrowPic`

## Layers

### Layer 0: approximation and normalized places

Prove Artin–Whaples weak approximation in a form that includes finite and real places.
Fix normalized absolute values and prove the product formula.  Construct the diagonal maps
used in the adeles.

**Dependencies.** Number-Field Arithmetic and Mathlib.

### Layer 1: adeles and ideles

Develop the finite and full adele rings, the idèle group, restricted-product topologies,
local compactness, the diagonal embeddings, and the idèle class group.  Prove discreteness
in the full adeles and density statements only where they are true.

**Dependencies.** Layer 0.

### Layer 2: moduli and ray congruence

Define a modulus with finite and real parts, divisibility of moduli, ideals prime to the
finite part, principal ray subgroups, and the idelic congruence subgroup.  Prove functoriality
under enlarging the modulus.

**Dependencies.** Layers 0–1.

### Layer 3: ray and narrow class groups

Construct the ideal and idelic ray class groups and prove their canonical isomorphism.
Give the exact sequences involving units, residue-unit groups, the ordinary class group,
and signs at real places.  Deduce finiteness and class-number formulae.

**Dependencies.** Layer 2.

### Layer 4: ray class characters

Define characters of ray class groups, inflation to a larger modulus, primitivity,
conductor, conjugation, and products.  Prove that the infinite part of a primitive modulus
is exactly the support of the parity character.

**Dependencies.** Layer 3.

### Layer 5: Hecke characters

Define a Hecke character as a continuous character of the idèle class group, with its
ideal-theoretic and local-component descriptions.  Prove the equivalence with compatible
ray data and archimedean characters, and the decomposition into a unitary character times a
real power of the norm.

**Dependencies.** Layers 1–4.

### Layer 6: conductors and induction

Define local and global conductor exponents, primitive associates, induction from a
smaller modulus, and the finite Euler factors removed by an imprimitive presentation.
No analytic \(L\)-function is constructed in this roadmap.

**Dependencies.** Layers 4–5.

### Layer 7: orders and proper ideal classes

Define orders in a number field, their conductors, proper invertible ideals, and the Picard
and narrow Picard groups.  Prove extension/contraction, finiteness, and comparison with the
maximal order.

**Dependencies.** Layers 0–3.

### Layer 8: measure normalizations

Fix additive and multiplicative Haar measures at finite, real, and complex places in the
normalizations used by Tate's thesis and by Tamagawa measures.  Prove product-measure and
change-of-variables formulae, without evaluating a global class-field-theoretic volume.

**Dependencies.** Layers 0–2.

## Worked examples and acceptance checks

- the ray class groups of \(\mathbf Q\) and the correspondence with Dirichlet characters
- the narrow versus ordinary class group of a real quadratic field
- the idèle class of a principal idèle is trivial and the product formula holds
- the Picard and narrow Picard groups of a quadratic order of discriminant \(12\)

## References

- J. Neukirch, *Algebraic Number Theory*, Chapters V–VII
- J. Tate, *Fourier analysis in number fields and Hecke's zeta-functions*
- J. Cassels and A. Fröhlich, *Algebraic Number Theory*
- A. Weil, *Basic Number Theory*

## Source proposals

This extracts the arithmetic carriers from roed-math PR #6 and the order-theoretic carriers needed by PR #7 and PR #8.
