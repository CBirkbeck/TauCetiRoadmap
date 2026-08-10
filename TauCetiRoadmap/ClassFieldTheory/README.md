# Roadmap: class field theory: abstract formalism, local fields, and number fields

This roadmap develops class field theory as one subject.  The first part is abstract:
Tate cohomology, class formations, fundamental classes, and Tate–Nakayama.  The second
verifies the axioms for the multiplicative groups of local fields.  The third verifies
them for idèle class groups and proves global reciprocity and existence.

The abstract theorem is proved once.  The local and global existence theorems remain
separate arithmetic theorems; they are not formal consequences of the class-formation
axioms.

## Scope

This roadmap owns:

- Tate cohomology of finite groups in every integer degree and its comparison with ordinary cohomology
- finite and profinite class formations, compatible fundamental classes, and Tate–Nakayama
- the abstract norm-residue map and its formal functoriality
- local class field theory, including reciprocity, existence, conductors, local duality, and Euler characteristics
- global class field theory, including reciprocity, existence, ray and Hilbert class fields, Kronecker–Weber, and Hilbert reciprocity
- the Hasse norm theorem for cyclic extensions
- ring class fields as an application to orders

It does not own:

- the arithmetic construction of local ramification groups and unit filtrations
- the construction of adeles, ray class groups, Hecke-character carriers, and orders
- analytic Hecke \(L\)-functions
- global quadratic-form classification and Hasse–Minkowski
- the structure of maximal pro-\(p\) quotients of local absolute Galois groups

## Dependencies and exported interfaces

The abstract part uses Profinite Cohomology.  The local instance uses Local Fields and Ramification.  The global instance uses Global Number Fields and Number-Field Arithmetic.  The profinite integers and free procyclic groups come from Profinite and Pro-\(p\) Groups.

| Supplier | Material consumed |
|---|---|
| Profinite Cohomology | ordinary continuous cohomology, cup products, restriction and corestriction |
| Profinite and Pro-\(p\) Groups | `\hat{\mathbf Z}` and profinite procyclic groups |
| Local Fields and Ramification | unit filtrations, Frobenius, norm groups, conductors |
| Global Number Fields | adeles, idèles, ray classes, Hecke characters, orders |
| Number-Field Arithmetic | finite-prime Artin symbols and completion dictionaries |

The principal interfaces exported to later roadmaps are:

- `tateH`, Tate restriction/corestriction/inflation, and `ordinaryToTate`
- `FiniteClassFormation`, `ClassFormation`, `fundamentalClass`, and `tateNakayama`
- `localArtinMap`, `localNormResidue`, `localInvariant`, and `localTateDuality`
- `globalArtinMap`, `globalReciprocity`, `classFieldExistence`, and `hilbertProductFormula`
- `hilbertClassField`, `rayClassField`, `ringClassField`, and `kroneckerWeber`

## Layers

### Layer A0: Tate cohomology

For a finite group and a module, define Tate cohomology in all integer degrees using a
complete resolution or the standard norm complex.  Compare with ordinary cohomology in
positive degrees and homology in negative degrees.  Construct restriction, corestriction,
inflation, conjugation, and cup products.

**Dependencies.** Profinite Cohomology and Mathlib's finite-group homological algebra.

### Layer A1: class formations and fundamental classes

Define a finite class formation and a compatible class formation over finite quotients.
The data include distinguished \(H^2\)-classes, restriction and corestriction laws,
\(H^1\)-vanishing, and the correct cardinality of \(H^2\).  Prove uniqueness of a
normalization once the invariant map is fixed.

**Dependencies.** Layer A0.

### Layer A2: Tate–Nakayama and abstract reciprocity

Prove that cup product with the fundamental class gives
\[
\widehat H^r(H,\mathbf Z)\simeq \widehat H^{r+2}(H,M)
\]
for every subgroup \(H\) and integer \(r\).  Deduce the finite-level norm-residue
isomorphism, transitivity, base change, and the abstract Artin map.

**Dependencies.** Layers A0–A1.

### Layer L0: local Brauer groups and fundamental classes

For a nonarchimedean local field, construct the local Brauer invariant
\(\operatorname{Br}(K)\simeq\mathbf Q/\mathbf Z\), with restriction and corestriction
normalizations.  Construct the fundamental class of a finite Galois extension and prove
its tower laws.

**Dependencies.** Local Fields and Ramification and Layers A0–A1.

### Layer L1: local class formation

Verify the class-formation axioms for \(L^\times\).  Prove Hilbert 90, the Herbrand
quotient calculation, the cyclic \(H^2\)-calculation, and the compatibility of local
fundamental classes.

**Dependencies.** Layer L0 and Profinite Cohomology.

### Layer L2: finite-level local reciprocity

Apply Tate–Nakayama to obtain
\[
K^\times/N_{L/K}L^\times\simeq \operatorname{Gal}(L/K)^{ab}.
\]
Normalize the isomorphism so that a uniformizer maps to arithmetic Frobenius in an
unramified extension.  Prove tower and base-change functoriality.

**Dependencies.** Layers A2 and L1.

### Layer L3: the local Artin map and existence theorem

Pass to the inverse limit to define \(K^\times\to G_K^{ab}\), its unramified coordinate,
and the normic topology.  Prove continuity, injectivity, dense image, and the correspondence
between finite abelian extensions and open finite-index subgroups.  Prove the existence theorem
by Lubin–Tate formal groups over \(\mathcal O_K\): construct the Lubin–Tate extensions for a
uniformizer, compute their norm groups, obtain the maximal totally ramified abelian extension,
and combine it with the maximal unramified extension.  The construction is carried out for both
mixed and equal characteristic.

**Dependencies.** Layer L2 and Local Fields and Ramification.

### Layer L4: local conductors, symbols, and duality

Compare the conductor of an abelian extension and of a character with the unit filtration.
Construct the local norm-residue symbol, Hilbert symbols, local Tate duality, and the
Euler–Poincaré characteristic.  State the mixed-characteristic \(p\)-primary and
prime-to-residue-characteristic regimes separately.

**Dependencies.** Layers L2–L3 and Profinite Cohomology.

### Layer G0: idele cohomology and the global fundamental class

Compute the cohomology of ideles and idèle classes by decomposition into local terms.
Construct the global Brauer exact sequence and the global fundamental class, normalized by
the sum of local invariants.

**Dependencies.** Global Number Fields, Local CFT Layers L0–L2, and Layer A0.

### Layer G1: the global class formation

Verify the class-formation axioms for idèle class groups.  Prove compatibility with local
fundamental classes, restriction and corestriction in towers, and the global Tate–Nakayama
isomorphism.

**Dependencies.** Layer G0 and Layers A1–A2.

### Layer G2: global reciprocity

Construct the global Artin map from the idèle class group, prove the product formula for
local Artin maps, identify its kernel on principal ideles, and compare the ideal and idelic
formulations.

**Dependencies.** Layer G1, Number-Field Arithmetic, and Global Number Fields.

### Layer G3: the global existence theorem

Prove that open finite-index subgroups of the idèle class group are norm groups of finite
abelian extensions.  Use the Neukirch–Grunwald–Wang route: reduce to cyclic prime-power
quotients, pass to Kummer theory after adjoining the required roots of unity, solve the
prescribed local conditions, treat the Wang special case explicitly, and descend by the
crossing argument.  Deduce the bijection between finite abelian extensions and open
subgroups, with conductor and modulus control.

**Dependencies.** Layer G2 and Global Number Fields.

### Layer G4: class fields and standard applications

Construct ray class fields and the Hilbert class field.  Prove Kronecker–Weber, the cyclic
Hasse norm theorem, and Hilbert reciprocity.  State each theorem with its local and global
normalizations visible.

**Dependencies.** Layers G2–G3.

### Layer G5: orders and ring class fields

For an order \(\mathcal O\) in a quadratic field, construct its ring class field and prove
\[
\operatorname{Gal}(H_{\mathcal O}/K)\simeq\operatorname{Pic}(\mathcal O).
\]
Include narrow variants and compatibility under change of conductor.

**Dependencies.** Layer G4 and the order/Picard theory of Global Number Fields.

## Worked examples and acceptance checks

- local reciprocity for unramified and tamely ramified extensions of \(\mathbf Q_p\)
- the local invariant of a cyclic algebra and its restriction/corestriction laws
- the Hilbert class field of a quadratic field of class number \(2\)
- Kronecker–Weber over \(\mathbf Q\)
- the ring class field attached to a nonmaximal imaginary quadratic order

## References

- E. Artin and J. Tate, *Class Field Theory*
- J. Milne, *Class Field Theory*
- J. Neukirch, *Class Field Theory*
- J. Cassels and A. Fröhlich, *Algebraic Number Theory*
- A. Weil, *Basic Number Theory*

## Source proposals

This combines the abstract and local class-field-theoretic parts of roed-math PR #2 with the reciprocity and class-field parts of PR #6.  The arithmetic carrier constructions of PR #6 move to Global Number Fields.
