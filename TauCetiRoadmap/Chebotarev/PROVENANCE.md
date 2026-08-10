# Provenance

This file is secondary to [`README.md`](README.md).  It records where the draft came from;
it is not a mathematical prerequisite.

- **Portfolio status:** coordination draft prepared on 10 August 2026.
- **Source of the mathematics:** the `sorry`-free Dirichlet-density formalisation by Chris
  Birkbeck, Riccardo Brasca and Xavier Roblot (AINTLIB `projects/Chebotarev/`, and the
  `development` branch of `CBirkbeck/chebotarev-density`). Brasca and Roblot have consented
  to its being adapted for Tau Ceti.
- **Immediate predecessor:** [Tau Ceti PR #181](https://github.com/TauCetiProject/TauCetiRoadmap/pull/181),
  a single-roadmap draft, withdrawn in favour of this portfolio.
- **Mathematical reorganization:** This revises that draft. It fixes the layer-order gap around the Euler product, adds the missing ideal-congruence counting prerequisite, uses a subtype of nonzero primes, and consumes the Frobenius and analytic interfaces from their revised owners.
- **Porting rule:** copy no implementation merely because it overlaps mathematically.  Check
  the licence, coordinate with the authors, and restate the result against current Mathlib and
  accepted Tau Ceti interfaces.
- **Suggested.lean:** the present file is only an identifier ledger.  It must be replaced by
  genuine, compiling prototypes before final review.
