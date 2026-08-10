# Roadmap: arithmetic of number fields

This roadmap joins the standard algebraic invariants of a number field: splitting of
primes, Frobenius, Dedekind factorization, the different and discriminant, completions,
subfields, integral bases, units, and the intrinsic part of the LMFDB label.  It is an
early supplier for class field theory, Chebotarev, \(L\)-functions, and polynomial Galois
groups.

## Scope

This roadmap owns:

- relative splitting and the prime/subfield dictionary
- the arithmetic Frobenius element and conjugacy class for a finite Galois extension
- the ideal-theoretic Artin symbol away from ramification, without reciprocity claims
- Dedekind–Kummer factorization and the power-basis index
- relative differents, discriminants, and their ramified support
- completions at finite places and comparison with decomposition groups
- global and local ramification-exponent formulae
- subfield lattices, integral bases, monogenicity certificates, and explicit units
- intrinsic number-field label data

It does not own:

- local upper numbering and Hasse–Arf
- reciprocity and class fields
- Chebotarev density
- resolvents and transitive-group labels for polynomials
- analytic regulators and \(L\)-functions

## Dependencies and exported interfaces

The roadmap is designed to depend only on Mathlib and existing Tau Ceti number-field lemmas.  Local Fields later compares its valuation-theoretic invariants with the completion results here.

| Supplier | Material consumed |
|---|---|
| Mathlib | rings of integers, ideals, ramification and inertia, Frobenius, completions, discriminants |
| Tau Ceti | existing Frobenius-over-\mathbf Q and effective ideal-counting lemmas |

The principal interfaces exported to later roadmaps are:

- `frobeniusClass` with tower, restriction, and isomorphism functoriality
- `artinHomAway` and its value on unramified primes
- `exists_gal_fullCycleType_eq_factorizationType`
- `relativeDiscriminant`, `ramifiedSupport`, and completion/different comparison theorems
- the completion–decomposition-group equivalence

## Layers

### Layer 0: splitting and subfields

Develop relative splitting, inertia and residue degrees, primes in subfields, and the
double-coset formula for splitting in a nonnormal extension.  Relate total splitting to
the Galois closure.

**Dependencies.** Mathlib.

### Layer 1: Frobenius and the Artin symbol

Package Mathlib's arithmetic Frobenius into a conjugacy-class-valued function on
unramified nonzero primes.  Prove independence of the prime above, restriction in normal
subextensions, the tower power formula, and invariance under isomorphism of extensions.
For an abelian extension, extend the symbol multiplicatively to ideals prime to the
ramified set.

**Dependencies.** Layer 0 and Mathlib's Frobenius theory.

### Layer 2: indices and Dedekind factorization

Define the power-basis index without junk values.  Prove the index–discriminant formula,
Dedekind–Kummer under the correct conductor hypothesis, Dedekind's criterion, and the
factorization-type/cycle-type theorem, including reducible polynomials.

**Dependencies.** Layer 0.

### Layer 3: the different and discriminant

Define the relative different and discriminant for a finite extension.  Under separability,
prove nonvanishing, transitivity, the ramified-support theorem, Stickelberger's congruence,
and the relation to the power-basis discriminant.

**Dependencies.** Layers 0 and 2.

### Layer 4: completions and decomposition groups

Construct \(K_v\to L_w\), prove uniqueness, \( [L_w:K_v]=ef\), the semilocal
decomposition, and the identification of the decomposition group with the local Galois
group.  Compare completed rings of integers and integral closures.

**Dependencies.** Layers 0 and 3.

### Layer 5: localization of the different

Prove that the global different localizes to the local different, derive the
residue-degree-weighted formula for discriminant valuations, and compare global and local
lower ramification groups.

**Dependencies.** Layers 3–4.

### Layer 6: tame and wild discriminant exponents

Prove the tame exponent, Hilbert's different formula, and the sharp wild bounds under
separable residue extension.  Include explicit examples showing why naive formulas fail
in residue characteristic \(2\) and over imperfect residue fields.

**Dependencies.** Layers 4–5.

### Layer 7: subfields, integral bases, and units

Develop finite certificates for subfields, integral bases, monogenicity, and fundamental
units in the cases claimed.  Distinguish a finiteness theorem from a certificate that can
be checked.

**Dependencies.** Layers 2–6.

### Layer 8: intrinsic database labels

Define the intrinsic components of a number-field label—degree, signature, absolute
discriminant, and the isomorphism class identifier when accompanied by a certificate.
State exactly which displayed database fields are proved generally and which are only
worked examples.

**Dependencies.** Layers 0–7.

## Worked examples and acceptance checks

- quadratic fields of discriminants \(5\) and \(-4\)
- a nonmonogenic cubic illustrating the conductor hypothesis in Dedekind's theorem
- an \(S_3\)-cubic with explicit Frobenius cycle types
- completion and different calculations for a wildly ramified quadratic extension of \(\mathbf Q_2\)

## References

- J. Neukirch, *Algebraic Number Theory*
- D. Marcus, *Number Fields*
- H. Cohen, *A Course in Computational Algebraic Number Theory*
