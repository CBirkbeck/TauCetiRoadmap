# Dependency graph

```mermaid
graph TD
  PC[Profinite Cohomology]
  PP[Profinite and Pro-p Groups]
  LF[Local Fields and Ramification]
  NFA[Number-Field Arithmetic]
  GNF[Global Number Fields]
  CFT[Class Field Theory]
  LG[Local Galois Groups]
  QF[Quadratic Form Invariants]
  GQ[Global Quadratic Forms]
  AC[Algebraic Curves]
  ANT[Analytic Number Theory]
  LFN[L-functions]
  CH[Chebotarev]
  ZL[Zeros of L-functions]
  PG[Polynomial Galois Groups]
  AAG[Adelic Algebraic Groups]
  OS[Orthogonal and Spin Groups]
  IL[Integral Lattices]
  BM[Belyi Maps]

  PC --> PP
  PP --> LF
  NFA --> GNF
  NFA --> PG
  NFA --> CH
  ANT --> CH
  GNF --> CFT
  LF --> CFT
  PC --> CFT
  PP --> CFT
  CFT --> LG
  LF --> LG
  PP --> LG
  PC --> LG
  CFT --> QF
  LF --> QF
  PC --> QF
  QF --> GQ
  CFT --> GQ
  GNF --> GQ
  GNF --> LFN
  ANT --> LFN
  NFA --> LFN
  LFN --> ZL
  ANT --> ZL
  GNF --> AAG
  AAG --> OS
  QF --> OS
  GQ --> OS
  CFT --> OS
  QF --> IL
  GQ --> IL
  CFT --> IL
  LFN --> IL
  OS --> IL
  AC --> BM
  PP --> BM
  PG --> BM
```

Accepted roadmaps such as Contour Integration, Reductive Groups, Spin Representations,
Universal Covers, and Conformal Mapping are omitted from the diagram but are named in the
individual dependency tables.
