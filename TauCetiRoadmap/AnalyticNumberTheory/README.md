# Roadmap: Dirichlet series, Euler products, prime densities, and Tauberian theorems

This roadmap provides the analytic-number-theory infrastructure shared by the \(L\)-function,
Chebotarev, and zero-distribution roadmaps. It is deliberately arithmetically neutral:
it knows how to regroup a locally finite family by an integer norm, form Euler products,
define prime densities, apply Abel and Perron summation, and use Wiener–Ikehara. It does
not construct a particular zeta or \(L\)-function.

## Scope

This roadmap owns:

- norm-indexed coefficient functions attached to locally finite arithmetic families
- regrouping sums over ideals, primes, and prime powers as Mathlib `LSeries`
- general Euler products and logarithmic derivatives for completely multiplicative weights
- Dirichlet density, upper and lower density, and finite-change lemmas for prime sets
- prime-counting and logarithmically weighted counting functions
- Abel summation and Perron formulae for locally finite normed families
- a reusable Wiener–Ikehara theorem
- generic removal of higher prime powers and conversion from \(\vartheta\) to \(\pi\)

It does not own:

- Dedekind zeta and Hecke \(L\)-functions
- Frobenius classes or Chebotarev
- zero-free regions and explicit formulae
- Poisson summation on lattices

## Dependencies and exported interfaces

This roadmap depends only on Mathlib analysis and elementary ideal-counting facts already in Tau Ceti. Arithmetic roadmaps supply the concrete coefficient families.

| Supplier | Material consumed |
|---|---|
| Mathlib | `LSeries`, Euler products over \mathbf N, Fourier analysis, bounded variation, Abel summation, asymptotics |
| Tau Ceti | effective or asymptotic finiteness of ideals of bounded norm |

The principal interfaces exported to later roadmaps are:

- `NormedFamily`, `normCoeff`, and regrouping theorems
- `IdealWeight`, `idealEulerProduct`, and `logDeriv_eq_primePowerSeries`
- `HasDirichletDensity`, `upperDirichletDensity`, `lowerDirichletDensity`
- `primeCount`, `primeTheta`, and finite-change theorems
- `wienerIkehara`, `removeHigherPrimePowers`, and `theta_asymptotic_imp_primeCount`

## Layers

### Layer 0: locally finite normed families

Define a family of objects with a positive-integer norm and finite fibres. Construct its
norm-indexed coefficient function and prove the equivalence between sums over objects and
`LSeries` over \(\mathbf N\). Include weighted and subtype forms.

**Dependencies.** Mathlib.

### Layer 1: multiplicative weights and Euler products

For a unique-factorization monoid of arithmetic objects, define completely multiplicative
weights with canonical behavior at zero. Prove absolute and locally uniform convergence,
Euler-product identities, nonvanishing in the half-plane of absolute convergence, and
termwise logarithmic differentiation.

**Dependencies.** Layer 0 and Mathlib's Euler products.

### Layer 2: prime sets and Dirichlet density

Use a subtype of nonzero prime objects, not arbitrary ideals. Define the prime Dirichlet
sum, upper and lower density, finite symmetric-difference invariance, disjoint additivity,
and comparison of alternative normalizations once the all-prime asymptotic is supplied.

**Dependencies.** Layers 0–1.

### Layer 3: counting functions and finite changes

Define \(\pi_S(x)\), \(\vartheta_S(x)\), and prime-power sums for real and natural cutoffs.
Prove local finiteness, monotonicity, finite-change bounds, and comparison under a map of
normed families with controlled fibre size.

**Dependencies.** Layers 0 and 2.

### Layer 4: Abel and Perron summation

Give partial-summation formulae for normed families and truncated Perron inversion with a
precise endpoint convention. Separate exact identities from asymptotic corollaries.

**Dependencies.** Layers 0 and 3.

### Layer 5: Wiener–Ikehara

For nonnegative coefficients \(a_n\), prove that continuity of
\[
\sum a_nn^{-s}-\frac A{s-1}
\]
on \(\operatorname{Re}s\ge1\) implies \(\sum_{n\le x}a_n\sim Ax\).
Complete the Fourier-decay and smoothing lemmas left open in PNT+ and express the final
theorem in Mathlib's `LSeries` vocabulary.

**Dependencies.** Mathlib Fourier analysis and Layer 0.

### Layer 6: higher prime powers

Prove reusable estimates comparing a nonnegative prime-power coefficient with its
first-power part. The hypotheses expose the bound on the number of prime objects of
bounded norm and the logarithmic weight.

**Dependencies.** Layers 3–4.

### Layer 7: from \(\vartheta\) to prime counting

Prove
\[
\vartheta_S(x)\sim\delta x\Longrightarrow
\pi_S(x)\sim\delta\operatorname{Li}(x)
\sim\delta x/\log x.
\]
Define the offset logarithmic integral and prove its standard asymptotic.

**Dependencies.** Layers 3–4.

## Worked examples and acceptance checks

- recover the ordinary Euler product of a completely multiplicative arithmetic function
- recover Mathlib's Chebyshev and von Mangoldt comparisons over \(\mathbf Q\)
- prove the discrete Wiener–Ikehara theorem on a test sequence with a finite Dirichlet polynomial
- check that a finite set of primes has both Dirichlet and natural density zero

## References

- G. Tenenbaum, *Introduction to Analytic and Probabilistic Number Theory*
- H. Montgomery and R. Vaughan, *Multiplicative Number Theory I*
- J. Korevaar, *Tauberian Theory*
- H. Davenport, *Multiplicative Number Theory*

## Source proposals

This extracts the reusable density, Euler-product, Abel-summation, and Wiener–Ikehara material from roed-math PR #8 and Tau Ceti PR #181.
