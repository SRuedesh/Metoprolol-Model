### Absorption

The model includes oral administration of metoprolol tartrate as a normal-release formulation, metoprolol succinate as a controlled-release formulation and dissolved oral dosing. Formulation behavior is represented through Weibull dissolution parameters for normal-release and controlled-release products, with the same compound intestinal permeability applied to both metoprolol enantiomers.

Oral absorption was evaluated together with first-pass metabolism because most clinical studies report plasma concentration-time data after oral dosing. Intravenous infusion studies were retained to separate systemic disposition from oral formulation behavior where possible.

The specific intestinal permeability was optimized and applied consistently for (R)- and (S)-metoprolol. Differences between CYP2D6 activity-score groups are assigned to metabolism rather than to absorption.

### Distribution

(R)- and (S)-metoprolol use a fraction unbound of 88% and a logP of 1.77 as summarized in [Section 2.2](#22). The same distribution assumptions are used for both enantiomers because the source information does not support separate enantiomer-specific binding or lipophilicity values.

Partition coefficients were calculated with the Rodgers and Rowland method. Cellular permeabilities were calculated with the PK-Sim Standard method. The racemic metoprolol observer is used only for comparison with total metoprolol observations and does not replace the enantiomer-specific disposition model.

α-Hydroxymetoprolol is represented with its own molecular weight, lipophilicity, plasma binding and clearance parameters. This separation is required because metabolite exposure is controlled by both formation from the parent enantiomers and metabolite-specific elimination.

The α-hydroxymetoprolol solubility input is the HMDB ALOGPS prediction of 1.43 g/L, implemented as 1,430 mg/L ([Wishart 2018](#5)). Table S2.4.3 of the published model labels this value as g/mL, but the cited HMDB source establishes g/L.

### Metabolism and elimination

Metoprolol clearance is represented by CYP2D6-dependent α-hydroxylation, CYP2D6-dependent O-demethylation, CYP3A4 first-order clearance and renal filtration.

* CYP2D6

CYP2D6 is the dominant metabolic enzyme in the model. Separate CYP2D6 pathways are implemented for (R)- and (S)-metoprolol α-hydroxylation and O-demethylation. K<sub>m</sub> values are enantiomer- and pathway-specific, while k<sub>cat</sub> values are scaled by CYP2D6 activity score as documented in Table 3 of [Rüdesheim 2020](#5).

The CYP2D6 activity-score implementation is the key determinant of simulated exposure differences between poor, intermediate, normal and ultrarapid metabolizer groups. Poor-metabolizer activity is set to zero, while non-zero activity-score groups use optimized k<sub>cat</sub> values. Simulations without an activity-score group use the NM default k<sub>cat</sub> values in [Table 1](#table-1). For (S)-metoprolol, these values equal the in vitro values of [Mautz 1995](#5), as listed in Supplement Table S12 of [Rüdesheim 2025](#5). They differ from the optimized values of 6.55 and 8.21 1/min in [Rüdesheim 2020](#5).

* CYP3A4

CYP3A4 is implemented as a first-order clearance pathway for each metoprolol enantiomer. This pathway accounts for CYP2D6-independent oxidative clearance and supports simulations in CYP2D6 poor-metabolizer groups without assigning all remaining clearance to renal elimination. This pathway replaces the unspecific hepatic clearance process of the 2020 model ([Rüdesheim 2025](#5)).

The CYP3A4 clearance is empirical. The fraction of metoprolol metabolized by CYP3A4 in vivo is not known ([Rüdesheim 2020](#5)).

* Renal and metabolite elimination

Renal filtration is included with a GFR fraction of 1 for metoprolol and α-hydroxymetoprolol. α-Hydroxymetoprolol also includes unspecific hepatic clearance to describe metabolite elimination beyond passive filtration.
