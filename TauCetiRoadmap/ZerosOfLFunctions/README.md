# Roadmap: zeros of \(L\)-functions

This roadmap studies the zeros of the completed \(L\)-functions constructed in the
L-functions roadmap. It develops growth, analytic conductors, zero counting, Hadamard
factorization, zero-free regions, Riemann–von Mangoldt formulae, explicit formulae, and
the semantics of a certified list of zeros. The qualitative prime ideal theorem and
Chebotarev asymptotic remain in the Chebotarev roadmap.

## Scope

This roadmap owns:

- entire completions obtained by removing a finite polar divisor
- gamma-factor growth, vertical-strip bounds, analytic conductors, and convexity
- zero and divisor counts in rectangles and disks
- Hadamard factorization for order at most one
- de la Vallée Poussin zero-free regions and the exceptional-zero disjunction
- Riemann–von Mangoldt formulae
- Perron and Weil explicit formulae for the supplied \(L\)-function families
- semantic certificates proving completeness of a finite zero list in a region
- effective or zero-dependent prime-ideal estimates derived from the explicit formula

It does not own:

- construction and functional equations of the \(L\)-functions
- the general argument principle and residue theorem
- qualitative Chebotarev and Wiener–Ikehara
- interval arithmetic and numerical root isolation

## Dependencies and exported interfaces

The roadmap consumes the analytic data and concrete families from L-functions, summation and Perron infrastructure from Analytic Number Theory, and the general residue and argument-principle machinery from the accepted Contour Integration roadmap.

| Supplier | Material consumed |
|---|---|
| L-functions | completed functions, polar divisors, functional equations, gamma factors, nonvanishing |
| Analytic Number Theory | Perron formulae, von Mangoldt coefficients, summation |
| Contour Integration | argument principle, residues, winding numbers and null-homologous cycles |

The principal interfaces exported to later roadmaps are:

- `entireCompletion`, `analyticConductorAt`, and growth predicates
- `zeroCount`, `divisorCount`, `riemannVonMangoldt`
- `hadamardFactorization`, `zeroFreeRegion`, and `ExceptionalZero`
- `explicitFormula` and zero-certificate structures

## Layers

### Layer 0: entire completion and growth predicates

Remove the exact polar divisor by a removable extension, not pointwise multiplication at
poles. Define finite order, vertical-strip growth with an existential height threshold,
and the family-specific comparison to the uncompleted continuation.

**Dependencies.** L-functions.

### Layer 1: gamma factors and analytic conductors

Construct branches of \(\log\Gamma\) on appropriate domains, prove Stirling estimates,
and define arithmetic, height-dependent analytic, and central analytic conductors. Treat
complex shifts by paired real parameters.

**Dependencies.** Layer 0 and Mathlib special functions.

### Layer 2: convexity and finite order

Apply Phragmén–Lindelöf to obtain convexity and vertical-strip bounds. Prove order at most
one for the completed Dedekind and Hecke families, with constants and polar exceptions
stated explicitly.

**Dependencies.** Layers 0–1.

### Layer 3: zero counting from growth

Develop Jensen and Borel–Carathéodory estimates with the necessary lower bound at the
basepoint. Define zero counts and signed divisor counts and prove local
\(O(\log q)\) bounds.

**Dependencies.** Layers 1–2.

### Layer 4: Hadamard factorization

Construct canonical products and prove Hadamard factorization for an entire function of
order at most one. State coefficient identities only with the normalizations and reality
hypotheses that fix the exponential factor.

**Dependencies.** Layers 2–3.

### Layer 5: zero-free regions

Prove de la Vallée Poussin regions for Dedekind and Hecke \(L\)-functions, with the
possible exceptional real simple zero represented by a predicate plus uniqueness.
Do not identify it with a quadratic character without a Stark-type theorem.

**Dependencies.** Layers 1–4 and L-functions nonvanishing.

### Layer 6: Riemann–von Mangoldt

Construct rectangle contours, compare the argument-principle count with the divisor,
and prove the main term and error for zero counts. Unit-height bounds are separate from
an asymptotic difference formula.

**Dependencies.** Layers 1–5 and Contour Integration.

### Layer 7: explicit formulae

Prove truncated Perron formulae with correct endpoint conventions, shift contours, list
all crossed poles and trivial zeros, and derive prime-side and Weil-form explicit formulae.
Retain the exceptional-zero term in the unconditional branch.

**Dependencies.** Layers 4–6 and Analytic Number Theory.

### Layer 8: prime estimates

Derive effective or zero-dependent estimates for the prime ideal theorem and for selected
Hecke families. Qualitative asymptotics are cited from Chebotarev rather than reproved.

**Dependencies.** Layers 5–7.

### Layer 9: zero certificates

Define valid rectangles, no-boundary-zero conditions, multiplicities, disjoint half-open
decompositions, coverage, and semantic completeness. A numerical certificate consists of
data plus proofs that the analytic hypotheses and coverage hold; a mere list of approximate
zeros is not a certificate.

**Dependencies.** Layers 3, 6–7.

## Worked examples and acceptance checks

- the first zeros of the entire Riemann \(\xi\)-function in a rectangle
- Riemann–von Mangoldt for \(\zeta\)
- the exceptional-zero disjunction for a real finite-order Hecke character
- a certificate whose rectangles cover a stated height range without double-counting boundaries

## References

- E. C. Titchmarsh, *The Theory of the Riemann Zeta-Function*
- H. Davenport, *Multiplicative Number Theory*
- H. Iwaniec and E. Kowalski, *Analytic Number Theory*
- J. Lagarias and A. Odlyzko, *Effective versions of the Chebotarev density theorem*

## Source proposals

This is a revised form of roed-math PR #11, with the qualitative prime-counting endpoint assigned to Chebotarev and the common summation theory assigned to Analytic Number Theory.
