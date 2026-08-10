# Roadmap: zeta functions and Hecke \(L\)-functions of number fields

This roadmap develops the analytic theory of the zeta and Hecke \(L\)-functions attached
to a number field. It begins with a precise analytic data model, proves the functional
equation of the Dedekind zeta function by theta and Poisson summation, constructs finite-order
and general Hecke \(L\)-functions, and proves their continuation, functional equations,
special values, and nonvanishing on \(\operatorname{Re}s=1\).

Prime counting, Chebotarev, zero-free regions, explicit formulae, and zero certificates
have separate owners.

## Scope

This roadmap owns:

- the analytic data model for a completed \(L\)-function and normalization translations
- Poisson summation on lattices and the theta transformation needed by Hecke's proof
- Dedekind zeta continuation, functional equation, residues, and trivial zeros
- partial zeta functions and class-by-class theta series
- quadratic and cyclotomic factorizations and selected special values
- finite-order Hecke \(L\)-functions with conductor, gamma factors, Gauss sums, and root numbers
- general algebraic or unitary Grössencharacters and their \(L\)-functions
- nonvanishing at \(s=1\) and on \(\operatorname{Re}s=1\)
- coefficient and vertical-strip growth bounds needed by the Zeros roadmap

It does not own:

- Chebotarev density and the prime ideal theorem
- Wiener–Ikehara and general prime-density infrastructure
- zero counts, zero-free regions, explicit formulae, and interval certificates
- automorphic \(L\)-functions beyond the accepted modular-forms interface

## Dependencies and exported interfaces

The character carriers come from Global Number Fields. General ideal Euler products and norm regrouping come from Analytic Number Theory. Number-Field Arithmetic supplies discriminants, completions, and ideal data.

| Supplier | Material consumed |
|---|---|
| Global Number Fields | ray class characters, Hecke characters, conductors, local components |
| Analytic Number Theory | norm-indexed series, ideal Euler products, logarithmic derivatives |
| Number-Field Arithmetic | different, discriminant, embeddings, ideal classes |
| Accepted Modular Forms roadmap | the newform \(L\)-function comparison, where used |

The principal interfaces exported to later roadmaps are:

- `AnalyticLFunctionData` and `NormalizationTranslation`
- `completedDedekindZeta`, its functional equation and residue
- `heckeLFunction`, `completedHeckeLFunction`, `heckeRootNumber`
- `grossencharacterLFunction` and the classification of the polar case
- `LFunction_ne_zero_re_eq_one` and growth predicates used by Zeros

## Layers

### Layer 0: the analytic data model

Define coefficients, conductor, archimedean parameters, root number, completed function,
and polar divisor as separate data. Define predicates for Dirichlet agreement,
meromorphic continuation, functional equation, coefficient bounds, and finite order.
Record arithmetic and analytic normalizations and their shift convention.

**Dependencies.** Mathlib complex analysis and Analytic Number Theory.

### Layer 1: ideal series and partial zeta functions

Construct norm coefficients of ideals and ideal classes, Euler products, partial zeta
functions, and their half-plane convergence. Prove the ideal-class counting estimate and
the preliminary continuation to a right half-plane.

**Dependencies.** Analytic Number Theory and Number-Field Arithmetic.

### Layer 2: Poisson summation and theta series

Develop Poisson summation for \(\mathbf Z^n\) and general lattices, Gaussian transforms,
covolumes, trace-dual lattices, and ideal lattices. Prove the theta transformation with
all normalizations visible.

**Dependencies.** Mathlib Fourier analysis and Number-Field Arithmetic.

### Layer 3: Dedekind zeta

Carry out Hecke's theta/Mellin proof of meromorphic continuation and the functional
equation. Identify the residue, the exact polar divisor, trivial zeros, and the asymmetric
and symmetric completed normalizations.

**Dependencies.** Layers 1–2.

### Layer 4: quadratic, cyclotomic, and special-value formulae

Prove quadratic splitting factorizations, finite class-number formulae, cyclotomic
factorization into primitive characters, and the generalized Bernoulli-number formulae
within the precise parity and conductor regimes.

**Dependencies.** Layer 3 and Mathlib's Dirichlet \(L\)-functions.

### Layer 5: finite-order Hecke \(L\)-functions

For a primitive finite-order Hecke character, construct the ideal series, local Euler
factors, completed function, Gauss sum, root number, continuation, and functional equation.
For an imprimitive character, prove the finite Euler-factor correction and reduce analytic
statements to the primitive associate.

**Dependencies.** Global Number Fields and Layers 1–3.

### Layer 6: general Grössencharacters

Treat unitary archimedean parameters, algebraic infinity types, weighted theta series, and
the norm-power translation. Classify the polar case and prove the functional equation in
analytic normalization.

**Dependencies.** Layers 2 and 5.

### Layer 7: nonvanishing on the line \(\operatorname{Re}s=1\)

Prove nonvanishing at \(1\) for nontrivial finite-order characters and the de la Vallée
Poussin boundary theorem. State the principal case in terms of meromorphic order, not a
value at the pole. Prove continuous regularized logarithmic derivatives.

**Dependencies.** Layers 3, 5–6 and Analytic Number Theory.

### Layer 8: growth and downstream interfaces

Prove finite order, vertical-strip bounds, convexity in the forms required by the Zeros
roadmap, and exact comparison cards for Dedekind zeta, Dirichlet characters, and modular
newforms. Do not prove a zero-counting theorem here.

**Dependencies.** Layers 0 and 3–7.

## Worked examples and acceptance checks

- recover the Riemann zeta function with the accepted normalization
- recover primitive even and odd Dirichlet \(L\)-functions over \(\mathbf Q\)
- the Dedekind zeta function of a quadratic field and its factorization
- a nontrivial finite-order Hecke character over an imaginary quadratic field

## References

- J. Neukirch, *Algebraic Number Theory*, Chapter VII
- J. Tate, *Fourier analysis in number fields and Hecke's zeta-functions*
- H. Iwaniec and E. Kowalski, *Analytic Number Theory*
- A. Weil, *Basic Number Theory*
