# Roadmap: the Chebotarev density theorem

Let \(L/K\) be a finite Galois extension of number fields and let \(C\) be a
conjugacy class in \(G=\operatorname{Gal}(L/K)\). This roadmap proves both
\[
\delta\{\mathfrak p:\operatorname{Frob}_{\mathfrak p}=C\}
=\frac{|C|}{|G|}
\]
and
\[
\pi_C(x)\sim\frac{|C|}{|G|}\operatorname{Li}(x).
\]

The proof remains independent of class field theory: cyclotomic extensions, Chebotarev's
crossing argument for abelian extensions, and fixed-field transfer for the general case.
The roadmap integrates the existing sorry-free Dirichlet-density formalization and adds the
prime-number-theorem form.

## Conventions

1. Frobenius is arithmetic Frobenius.
2. Prime sets are sets of a subtype of nonzero prime ideals; no counting function accepts an
   arbitrary ideal.
3. `[FiniteDimensional K L]` is explicit alongside `[IsGalois K L]`.
4. The public Frobenius value is a conjugacy class.  Element-valued statements occur only in
   the abelian case.
5. Dirichlet density is defined by the ratio to the all-prime series.  Normalization by
   \(\log(1/(s-1))\) is a theorem after the Euler product is available.
6. The prime-power coefficient detects
   \([\operatorname{Frob}_{\mathfrak p}^{\,j}]=C\).
7. The principal regularization is
   \(-L_1'/L_1-1/(s-1)\).
8. If \(m\equiv2\pmod4\), cyclotomic statements replace \(m\) internally by \(m/2\);
   public theorems do not carry this as a hypothesis.
9. \(\operatorname{Li}(x)=\int_2^xdt/\log t\).

## Scope

This roadmap owns:

- the Frobenius-prime sets attached to the conjugacy classes supplied by Number-Field Arithmetic
- the cyclotomic Galois-character \(L\)-series used in this proof
- ideal-congruence and lattice-point estimates needed for their continuation
- cyclotomic, abelian, and general Chebotarev in Dirichlet-density form
- the Frobenius von Mangoldt coefficients with the condition \(\operatorname{Frob}_{\mathfrak p}^j\in C\)
- boundary nonvanishing and regularized logarithmic derivatives for the special cyclotomic series
- the prime-ideal theorem as the trivial-extension case
- the \(\vartheta_C\), \(\pi_C\), and natural-density forms of Chebotarev

It does not own:

- general Hecke characters and Hecke \(L\)-functions
- class field theory and Brauer induction
- effective error terms, GRH bounds, and the least prime in a Frobenius class
- the general definition of Frobenius classes, Dirichlet density, Euler products, or Wiener–Ikehara

## Dependencies and exported interfaces

Number-Field Arithmetic owns `frobeniusClass` and its tower laws. Analytic Number Theory owns prime-density carriers, ideal Euler products, Wiener–Ikehara, and partial summation. The proof does not consume Class Field Theory or the general L-functions roadmap.

| Supplier | Material consumed |
|---|---|
| Number-Field Arithmetic | Frobenius conjugacy classes, tower functoriality, ramified primes |
| Analytic Number Theory | nonzero-prime subtype, Dirichlet density, ideal Euler products, Wiener–Ikehara, Abel summation |
| Mathlib | cyclotomic extensions, finite abelian character duality, Dirichlet primes in progressions |

The principal interfaces exported to later roadmaps are:

- `frobeniusPrimeSet`, `chebotarev_dirichletDensity`
- `frobeniusVonMangoldt`, `chebotarev_theta`, `chebotarev_primeCount`
- `primeIdealTheorem` and `chebotarev_naturalDensity`
- the fixed-field and cyclotomic-crossing transfer lemmas

## Layers

### Layer 0: Frobenius fibres and exceptional primes

Use the Frobenius class supplied by Number-Field Arithmetic. Define the corresponding set
of nonzero unramified primes and prove finite exceptional-prime lemmas, cyclotomic
Frobenius, and compatibility with towers and isomorphisms in the exact forms used later.

**Dependencies.** Number-Field Arithmetic.

### Layer 1: density and counting interfaces

Specialize Analytic Number Theory's `HasDirichletDensity`, \(\pi\), and \(\vartheta\)
to Frobenius fibres. Prove finite-change and disjoint-union results. Do not reintroduce a
second prime-set carrier or density definition.

**Dependencies.** Layer 0 and Analytic Number Theory.

### Layer 2: cyclotomic ideal characters and Euler products

For \(L=K(\mu_m)\), extend a character of \(\operatorname{Gal}(L/K)\) to nonzero ideals,
with value zero at ramified primes. Construct its Dirichlet series using the generic ideal
Euler product and prove the local and global zeta factorizations, including the finite
ramified correction.

**Dependencies.** Layers 0–1 and Analytic Number Theory.

### Layer 3: congruence-class counting and analytic continuation

Build the actual missing analytic prerequisite: the congruence relation on ideals,
lattice models for its classes, the lattice-point estimate with error
\(O(x^{1-1/[K:\mathbf Q]})\), cancellation of nontrivial character sums, and Abel
summation. Deduce continuation of the nontrivial cyclotomic character series and
nonvanishing at \(s=1\).

**Dependencies.** Layer 2, Number-Field Arithmetic, and geometry of numbers.

### Layer 4: cyclotomic Dirichlet density

Apply character orthogonality to isolate each Frobenius element, compare the prime sum with
\(\log(1/(s-1))\), and prove density \(1/|G|\) for every cyclotomic Frobenius fibre.
The all-prime logarithmic asymptotic and the equivalence of density normalizations are
proved here, after the Euler product exists.

**Dependencies.** Layers 1–3.

### Layer 5: fixed-field transfer

For \(H=\langle\sigma\rangle\) and \(E=L^H\), count degree-one primes of \(E\) above a
prime of \(K\) with class \([\sigma]\). Prove the factor
\(|C_G(\sigma)|/|H|\) and show that higher relative residue degree contributes a bounded
Dirichlet series.

**Dependencies.** Layers 0–1.

### Layer 6: cyclotomic crossing and the abelian theorem

For a suitable auxiliary cyclotomic extension, construct the product Galois group,
the crossed cyclic fixed fields, and the disjoint Frobenius fibres. Use Dirichlet's theorem
on primes in arithmetic progressions to choose admissible moduli whose good proportion
tends to one. Deduce the abelian density theorem.

**Dependencies.** Layers 4–5 and Mathlib's Dirichlet theorem.

### Layer 7: general Dirichlet-density Chebotarev

Apply the abelian theorem to \(L/L^{\langle\sigma\rangle}\) and use fixed-field transfer.
Prove the conjugacy-class theorem, the completely split case, infinitude, and the
cyclotomic specialization to Dirichlet's theorem.

**Dependencies.** Layers 5–6.

### Layer 8: boundary nonvanishing for the cyclotomic factors

Strengthen Layer 3 to the closed line \(\operatorname{Re}s=1\). For nonprincipal
characters adapt the \(3\)-\(4\)-\(1\) de la Vallée Poussin argument. For the principal
factor prove the simple pole and the continuous regularization
\[
-\frac{L_1'}{L_1}-\frac1{s-1}.
\]

**Dependencies.** Layers 2–4 and Mathlib's Dirichlet-character nonvanishing proof.

### Layer 9: the cyclotomic prime-number theorem

Define
\[
\Lambda_{L/K,C}(n)=
\sum_{\substack{N\mathfrak p^j=n\\
[\operatorname{Frob}_{\mathfrak p}^j]=C}}\log N\mathfrak p.
\]
Prove the character logarithmic-derivative identity, apply Wiener–Ikehara, and remove
higher prime powers. The \(j=2\) cyclic-degree-\(4\) test is a required check.

**Dependencies.** Layers 0–4, 8, and Analytic Number Theory.

### Layer 10: fixed-field transfer for \(\vartheta\)

Reuse the exact degree-one count of Layer 5 and prove that higher relative degree contributes
\(o(x)\). Transfer the cyclic \(\vartheta\)-asymptotic to a conjugacy class with coefficient
\(|C|/|G|\).

**Dependencies.** Layers 1, 5, and 9.

### Layer 11: the abelian prime-number theorem

Strengthen the cyclotomic-crossing lower-bound argument from density to
\(\vartheta_\sigma(x)/x\). The trivial extension in Layer 9 supplies the prime-ideal
theorem; summing over all fibres forces each lower bound to be an equality.

**Dependencies.** Layers 6, 9–10.

### Layer 12: general \(\vartheta\)-Chebotarev

Apply the cyclic theorem over the fixed field of \(\langle\sigma\rangle\), then Layer 10.
Prove the theorem for one conjugacy class and for a finite union of classes.

**Dependencies.** Layers 10–11.

### Layer 13: prime counting and natural density

Apply Analytic Number Theory's partial-summation theorem to obtain
\[
\pi_C(x)\sim\frac{|C|}{|G|}\operatorname{Li}(x).
\]
Deduce natural density among all prime ideals and prove that this natural density implies
the Dirichlet-density theorem already obtained.

**Dependencies.** Layers 1 and 12 and Analytic Number Theory.

## Worked examples and acceptance checks

- the trivial extension gives the prime-ideal theorem
- cyclotomic extensions of \(\mathbf Q\) give the prime number theorem in arithmetic progressions
- the identity class counts completely split primes with coefficient \(1/[L:K]\)
- a cyclic quartic example detects the required \(\operatorname{Frob}^2\) condition
- the principal logarithmic-derivative sign is checked against the Riemann zeta function

## Existing formalisation

A `sorry`-free formalisation of the Dirichlet-density form is due to Chris Birkbeck, Riccardo
Brasca and Xavier Roblot, in the `Chebotarev` project of AINTLIB and on the `development`
branch of `CBirkbeck/chebotarev-density`, the latter with a blueprint and dependency graph.
The density layers here may be discharged by adapting it. Any file that does so conforms to
its licence and credits those authors; the roadmap is met on its own terms rather than by
canonising the existing file structure. In particular that development predates Mathlib's
`arithFrobAt`, and the Frobenius class consumed here is the one built on Mathlib's API by
Number-Field Arithmetic, not a private notion.

## References

- R. Sharifi, *Algebraic Number Theory*, §§7.1–7.2
- P. Stevenhagen and H. W. Lenstra, *Chebotarëv and his density theorem*
- J. Neukirch, *Algebraic Number Theory*, Chapter VII
- J. Korevaar, *Tauberian Theory*
