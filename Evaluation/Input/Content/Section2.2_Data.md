### In vitro and physicochemical data

Drug-dependent input parameters for the metoprolol enantiomers were taken from the published metoprolol PBPK model and its cited primary sources ([Rüdesheim 2020](#5)). The model uses the same physicochemical properties for both enantiomers when the source data do not support an enantiomer-specific difference.

| Parameter | Unit | (R)-metoprolol | (S)-metoprolol | Source | Description |
| --- | --- | ---: | ---: | --- | --- |
| MW | g/mol | 267.36 | 267.36 | Literature | Molecular weight. |
| pK<sub>a</sub>,base | - | 9.70 | 9.70 | Literature | pKa of a basic ionization site. |
| Solubility, tartrate | g/mL | 1.00 | 1.00 | Literature | Aqueous solubility of the tartrate salt at pH 7.4. |
| Solubility, succinate | g/mL | 0.16 | 0.16 | Literature | Aqueous solubility of the succinate salt at pH 5.5. |
| logP | - | 1.77 | 1.77 | Literature | Octanol-water partition coefficient of the neutral species. |
| f<sub>u</sub> | % | 88 | 88 | Literature | Fraction unbound in plasma. |
| K<sub>m,CYP2D6</sub>, αHM | µmol/L | 10.08 | 10.75 | [Mautz 1995](#5) | Michaelis constant for α-hydroxymetoprolol formation. |
| k<sub>cat,CYP2D6</sub>, αHM, AS=2 | 1/min | 10.17 | 11.19 | Optimized | Catalytic rate constant for α-hydroxymetoprolol formation. |
| K<sub>m,CYP2D6</sub>, ODM | µmol/L | 8.82 | 12.43 | [Mautz 1995](#5) | Michaelis constant for O-demethylmetoprolol formation. |
| k<sub>cat,CYP2D6</sub>, ODM, AS=2 | 1/min | 16.69 | 14.02 | Optimized | Catalytic rate constant for O-demethylmetoprolol formation. |
| k<sub>cat,CYP2D6</sub>, αHM, NM default | 1/min | 6.02 | 8.27 | R: Optimized. S: [Mautz 1995](#5) | Catalytic rate constant for α-hydroxymetoprolol formation in simulations that use the NM model default. |
| k<sub>cat,CYP2D6</sub>, ODM, NM default | 1/min | 9.87 | 10.37 | R: Optimized. S: [Mautz 1995](#5) | Catalytic rate constant for O-demethylmetoprolol formation in simulations that use the NM model default. |
| CL<sub>spec,CYP3A4</sub> | 1/min | 0.022 | 0.021 | [Rüdesheim 2025](#5) | CYP3A4 first-order specific clearance. It replaces the unspecific hepatic clearance of the 2020 model. |
| GFR fraction | - | 1.00 | 1.00 | Assumed | Fraction used to scale passive glomerular filtration. |
| EHC fraction | - | 1.00 | 1.00 | Assumed | Fraction released continuously into bile. |
| P<sub>int</sub> | cm/min | 4.14 × 10<sup>−5</sup> | 4.14 × 10<sup>−5</sup> | Optimized | Specific transcellular intestinal permeability. |
| Partition coefficients | - | Rodgers and Rowland | Rodgers and Rowland | Calculated | Tissue-to-plasma partition coefficients calculated with the Rodgers and Rowland method. |
| Cellular permeabilities | cm/min | 4.64 × 10<sup>−3</sup> | 4.64 × 10<sup>−3</sup> | Calculated | Cellular permeabilities calculated with the PK-Sim Standard method. |
| t<sub>50,IR</sub> | min | 12.31 | 12.31 | Optimized | Time to dissolve 50% of the immediate-release dose. |
| Weibull shape, IR | - | 0.72 | 0.72 | Optimized | Shape parameter for immediate-release dissolution. |
| t<sub>50,CR</sub> | min | 331.92 | 331.92 | Optimized | Time to dissolve 50% of the controlled-release dose. |
| Weibull shape, CR | - | 1.53 | 1.53 | Optimized | Shape parameter for controlled-release dissolution. |

**Table 1:**<a name="table-1"></a> Drug-dependent parameters for (R)-metoprolol and (S)-metoprolol from Table 2, Table 3 and Supplement Table S2.3.2 of [Rüdesheim 2020](#5) and from Supplement Table S12 of [Rüdesheim 2025](#5). AS: activity score; CR: controlled release; EHC: enterohepatic circulation; GFR: glomerular filtration rate; IR: immediate release; ODM: O-demethylmetoprolol; αHM: α-hydroxymetoprolol.

| AS | (R)-metoprolol k<sub>cat</sub> → αHM [1/min] | (R)-metoprolol k<sub>cat</sub> → ODM [1/min] | (S)-metoprolol k<sub>cat</sub> → αHM [1/min] | (S)-metoprolol k<sub>cat</sub> → ODM [1/min] | Origin |
| ---: | ---: | ---: | ---: | ---: | --- |
| 0 | 0.00 | 0.00 | 0.00 | 0.00 | Assumed |
| 0.5 | 1.65 | 2.70 | 1.82 | 2.27 | Optimized |
| 1.25 | 5.73 | 9.40 | 6.30 | 7.89 | Optimized |
| 1.5 | 6.38 | 10.48 | 7.03 | 8.81 | Optimized |
| 2 | 10.17 | 16.69 | 11.19 | 14.02 | Optimized |
| 3 | 19.03 | 31.22 | 20.93 | 26.23 | Optimized |

**Table 1a:**<a name="table-1a"></a> CYP2D6 activity-score-specific k<sub>cat</sub> values for metoprolol metabolism from Table 3 and Supplement Table S3.1.1 of [Rüdesheim 2020](#5). AS = 0 represents the assumed absence of CYP2D6 activity. The other values were optimized. AS: activity score; ODM: O-demethylmetoprolol; αHM: α-hydroxymetoprolol.

### Clinical data

The evaluation uses 47 plasma concentration-time profiles from adults ([Table 2](#table-2)). Eighteen profiles were used for model building and 29 profiles were used for model verification. The assignments follow the training and test classifications in the published model. Seven verification profiles are the metoprolol-only control arms of the CYP2D6 interaction network ([Rüdesheim 2025](#5)): [Bennett 1982](#5), [Chellingsworth 1988](#5) (two arms), [Hemeryck 2000](#5), [Kirch 1982](#5), [Leemann 1993](#5) (NM arm) and [Toon 1988](#5). Table S2.2.1 of [Rüdesheim 2020](#5) lists four further profiles that this evaluation does not include: Houtzagers 1982, Jack 1982, Krauwinkel 2013 and the Kelly 1985 oral single dose.

| Source | Dose [mg] / schedule\* | Age [years] | Weight [kg] | Sex | N | Form. | CYP2D6 characterization |
| --- | --- | --- | --- | --- | ---: | --- | --- |
| [Bae 2014](#5) | 100 | NR | NR | Male | 3 | Tablet IR | AS = 0.5 (IM) |
| [Bae 2014](#5) | 100 | NR | NR | Male | 4 | Tablet IR | AS = 2 (NM) |
| [Bennett 1982](#5) | 100 | 28 (21-35) | 71 (62-82) | Male | 12 | NR | EM |
| [Chellingsworth 1988](#5) | 100 | 22-34 | NR | 50% female | 12 | Tablet IR | EM |
| [Chellingsworth 1988](#5) | 100 b.i.d., multiple dose | 23-32 | NR | Male | 12 | Tablet IR | EM |
| [Damy 2004](#5)<sup>+</sup> | 200 q.d. | 21-45 | NR | 27% female | 13 | Tablet CR | NM |
| [Godbillon 1985](#5) | 88.7, intravenous infusion over 150 min | 23-29 | NR | 17% female | 6 | Solution | EM |
| [Hamelin 2000](#5) | 100 | 26 (20-36) | 73 (59-96) | Male | 10 | Tablet IR | NM |
| [Hamelin 2000](#5) | 100 | 26 (20-36) | 73 (59-96) | Male | 6 | Tablet IR | PM |
| [Hemeryck 2000](#5) | 100 | 20-29 | NR | Male | 8 | Tablet IR | NM<sup>‡</sup> |
| [Huang 1999](#5)<sup>+</sup> | 100 | 24 | 63 | Male | 12 | Tablet IR | AS = 0.5 (IM) |
| [Huang 1999](#5)<sup>+</sup> | 100 | 24 | 65 | Male | 12 | Tablet IR | AS = 1.25 (NM) |
| [Huang 1999](#5)<sup>+</sup> | 100 | 25 | 65 | Male | 16 | Tablet IR | AS = 2 (NM) |
| [Jin 2008](#5)<sup>+</sup> | 100 | 23 | 67 | 22% female | 5 | Tablet IR | AS = 0.5 (IM) |
| [Jin 2008](#5)<sup>+</sup> | 100 | 23 | 67 | 22% female | 7 | Tablet IR | AS = 1.25 (NM) |
| [Jin 2008](#5)<sup>+</sup> | 100 | 23 | 67 | 22% female | 6 | Tablet IR | AS = 2 (NM) |
| [Johnson and Burlew 1996](#5)<sup>+</sup> | 200 | 29 (24-36) | 82 | Male | 10 | Tablet IR | NM |
| [Johnson and Burlew 1996](#5)<sup>+</sup> | 200 | 29 (24-40) | 85 | Male | 10 | Tablet IR | NM |
| [Johnsson 1975](#5) | 5, intravenous infusion over 10 min | 23-28 | 62-70 | Male | 5 | Solution | EM |
| [Johnsson 1975](#5) | 10, intravenous infusion over 10 min | 23-28 | 62-70 | Male | 5 | Solution | EM |
| [Johnsson 1975](#5) | 15, intravenous infusion over 10 min | 23-28 | 62-70 | Male | 5 | Solution | EM |
| [Johnsson 1975](#5) | 20, intravenous infusion over 10 min | 23-28 | 62-70 | Male | 5 | Solution | EM |
| [Johnsson 1975](#5) | 20 | 23-28 | 62-70 | Male | 5 | Tablet IR | EM |
| [Johnsson 1975](#5) | 50 | 23-28 | 62-70 | Male | 5 | Tablet IR | EM |
| [Johnsson 1975](#5) | 100 | 23-28 | 62-70 | Male | 5 | Tablet IR | EM |
| [Kelly 1985](#5)<sup>+</sup> | 50, intravenous infusion over 10 min | 19-26 | 60-98 | Male | 12 | Solution | EM |
| [Kelly 1985](#5)<sup>+</sup> | 100 b.i.d., multiple dose | 19-26 | 60-98 | Male | 12 | NR | EM |
| [Kirch 1982](#5) | 100 b.i.d., multiple dose | 24 | 69 | Male | 6 | NR | EM |
| [Kirchheiner 2004 / Seeringer 2008](#5)<sup>+</sup> | 100 | 28 (23-34) | 77 (69-81) | Male | 13 | Tablet IR | AS = 2 (NM) |
| [Kirchheiner 2004 / Seeringer 2008](#5)<sup>+</sup> | 100 | 38 (29-40) | 90 (77-101) | Male | 4 | Tablet IR | AS = 0 (PM) |
| [Kirchheiner 2004 / Seeringer 2008](#5)<sup>+</sup> | 100 | 28 (25-37) | 76 (70-80) | 8% female | 12 | Tablet IR | AS = 3 (UM) |
| [Krösser 2006](#5) | 100 | 29 (18-39) | 79 (62-100) | Male | 18 | Tablet IR | NM |
| [Leemann 1993](#5) | 20, intravenous infusion over 20 min | 30 | NR | Male | 4 | Solution | NM |
| [Luzier 1999](#5) | 100 b.i.d., multiple dose | 25 (21-35) | 62 (54-77) | Female | 10 | Tablet IR | NM |
| [Luzier 1999](#5) | 100 b.i.d., multiple dose | 26 (20-36) | 84 (66-97) | Male | 10 | Tablet IR | NM |
| [Parker and Soberman 2011](#5) | 100 | 21-45 | NR | 27% female | 15 | Tablet CR | NM (model default) |
| [Parker and Soberman 2011](#5) | 100 b.i.d., multiple dose | 21-45 | NR | 27% female | 15 | Tablet IR | NM (model default) |
| [Parker and Soberman 2011](#5) | 200 | 21-45 | NR | 27% female | 15 | Tablet CR | NM (model default) |
| [Regårdh 1974](#5)<sup>+</sup> | 5, intravenous infusion over 10 min | 23-28 | 62-70 | Male | 5 | Solution | EM |
| [Regårdh 1974](#5)<sup>+</sup> | 5 | 23-28 | 62-70 | Male | 5 | Oral solution | EM |
| [Regårdh and Johnsson 1980](#5) | 10, intravenous infusion over 5 min | 23-28 | NR | Male | 6 | Solution | EM |
| [Sharma 2005](#5)<sup>+</sup> | 100 | 27 (18-40) | 60 (49-100) | Female | 16 | NR | AS = 1.5 (NM) |
| [Sharma 2005](#5)<sup>+</sup> | 100 | 27 (18-40) | 60 (49-100) | Female | 4 | NR | AS = 0 (PM) |
| [Stout 2011](#5) | 50 | 28 (18-45) | 82 (63-94) | Male | 10 | NR | EM |
| [Stout 2011](#5) | 100 | 28 (18-45) | 82 (63-94) | Male | 10 | Tablet CR | EM |
| [Toon 1988](#5) | 100 b.i.d., multiple dose | 25 | 71 | Male | 12 | NR | EM |
| [Werner 2003](#5) | 50 | 31 | 78 | Male | 12 | Tablet IR | AS = 1.5 (NM) |

**Table 2:**<a name="table-2"></a> Clinical metoprolol concentration-time profiles used for model building and verification. \*: Single oral dose unless otherwise specified; AS: activity score; b.i.d.: twice daily; CR: controlled release; EM: extensive metabolizer; IM: intermediate metabolizer; IR: immediate release; NM: normal metabolizer; NR: not reported; PM: poor metabolizer; PT: predicted phenotype; q.d.: once daily; UM: ultrarapid metabolizer; <sup>+</sup>: data used for model building; <sup>‡</sup>: simulated with the AS = 2 k<sub>cat</sub> values, as in the paroxetine-metoprolol interaction model ([Rüdesheim 2025](#5)). Parenthetical PTs for AS-coded rows use the current CPIC CYP2D6 activity score-to-phenotype mapping ([Moore 2026](#5)). EM is the model default when study-specific CYP2D6 information is not available. Only metoprolol-only study arms are included. Coadministered perpetrator arms are outside the scope of this compound report.
