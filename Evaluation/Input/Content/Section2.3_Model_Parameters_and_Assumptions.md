### 2.3.1 Absorption

The model includes oral administration of metoprolol tartrate as a normal-release formulation, metoprolol succinate as a controlled-release formulation and dissolved oral dosing. Formulation behavior is represented through Weibull dissolution parameters for normal-release and controlled-release products, with the same compound intestinal permeability applied to both metoprolol enantiomers.

Oral absorption was evaluated together with first-pass metabolism because most clinical studies report plasma concentration-time data after oral dosing. Intravenous infusion studies were retained to separate systemic disposition from oral formulation behavior where possible.

The specific intestinal permeability was optimized and applied consistently for (R)- and (S)-metoprolol. Differences between CYP2D6 activity-score groups are assigned to metabolism rather than to absorption.

### 2.3.2 Distribution

(R)- and (S)-metoprolol use a fraction unbound of 88% and a logP of 1.77 as summarized in [Section 2.2](Section2.2_Data.md). The same distribution assumptions are used for both enantiomers because the source information does not support separate enantiomer-specific binding or lipophilicity values.

Partition coefficients were calculated with the Rodgers and Rowland method. The racemic metoprolol observer is used only for comparison with total metoprolol observations and does not replace the enantiomer-specific disposition model.

α-Hydroxymetoprolol is represented with its own molecular weight, lipophilicity, plasma binding and clearance parameters. This separation is required because metabolite exposure is controlled by both formation from the parent enantiomers and metabolite-specific elimination.

### 2.3.3 Metabolism and elimination

Metoprolol clearance is represented by CYP2D6-dependent α-hydroxylation, CYP2D6-dependent O-demethylation, CYP3A4 first-order clearance, renal filtration and residual clearance components.

* CYP2D6

CYP2D6 is the dominant metabolic enzyme in the model. Separate CYP2D6 pathways are implemented for (R)- and (S)-metoprolol α-hydroxylation and O-demethylation. K<sub>m</sub> values are enantiomer- and pathway-specific, while k<sub>cat</sub> values are scaled by CYP2D6 activity score [[1](References.md), Table 3].

The CYP2D6 activity-score implementation is the key determinant of simulated exposure differences between poor, intermediate, normal and ultrarapid metabolizer groups. Poor-metabolizer activity is set to zero, while non-zero activity-score groups use optimized k<sub>cat</sub> values.

* CYP3A4 and residual clearance

CYP3A4 is implemented as a first-order clearance pathway for each metoprolol enantiomer. This pathway accounts for CYP2D6-independent oxidative clearance and supports simulations in CYP2D6 poor-metabolizer groups without assigning all remaining clearance to renal elimination.

Residual clearance terms are empirical. They should be interpreted as structural model components required to describe total disposition rather than as direct measurements of a single biochemical pathway.

* Renal and metabolite elimination

Renal filtration is included with a GFR fraction of 1 for metoprolol and α-hydroxymetoprolol. α-Hydroxymetoprolol also includes unspecific hepatic clearance to describe metabolite elimination beyond passive filtration.
