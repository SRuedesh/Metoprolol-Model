# Metoprolol-Model
Whole-body parent-metabolite PBPK model of metoprolol enantiomers and α-hydroxymetoprolol including CYP2D6 drug-gene interactions.

This repository contains the metoprolol model originally published by Rüdesheim et al. [[1](#references)] and used as a CYP2D6 substrate model in the CYP2D6 drug-drug-gene interaction network by Rüdesheim et al. [[2](#references)].

The model was developed and evaluated using published adult clinical plasma pharmacokinetic data after intravenous metoprolol infusion and oral metoprolol tartrate or succinate administration, including studies by Bae et al. [[3](#references)], Damy et al. [[4](#references)], Godbillon et al. [[5](#references)], Hamelin et al. [[6](#references)], Huang et al. [[7](#references)], Jin et al. [[8](#references)], Johnson and Burlew [[9](#references)], Johnsson et al. [[10](#references)], Kelly et al. [[11](#references)], Kirchheiner et al. [[12](#references)], Krösser et al. [[13](#references)], Luzier et al. [[14](#references)], Parker and Soberman [[16](#references)], Regårdh et al. [[18](#references)], Regårdh and Johnsson [[19](#references)], Seeringer et al. [[20](#references)], Sharma et al. [[21](#references)], Stout et al. [[22](#references)] and Werner et al. [[23](#references)], as summarized by Rüdesheim et al. [[1](#references)].

Users of the model are expected to cite these studies when using the model in scientific work, reports or derivative model development:

- [S Rüdesheim, J-G Wojtyniak, D Selzer, N Hanke, F Mahfoud, M Schwab, T Lehr. Physiologically Based Pharmacokinetic Modeling of Metoprolol Enantiomers and α-Hydroxymetoprolol to Describe CYP2D6 Drug-Gene Interactions. Pharmaceutics, 2020;12:1200.](https://doi.org/10.3390/pharmaceutics12121200)
- [S Rüdesheim, H L H Loer, D Feick, F Z Marok, L M Fuhr, D Selzer, D Teutonico, A R P Schneider, J Solodenko, S Frechen, M van der Lee, D J A R Moes, J J Swen, M Schwab, T Lehr. A Comprehensive CYP2D6 Drug-Drug-Gene Interaction Network for Application in Precision Dosing and Drug Development. Clin Pharmacol Ther, 2025.](https://doi.org/10.1002/cpt.3604)

This metoprolol model is intended to describe racemic metoprolol, (R)-metoprolol, (S)-metoprolol and α-hydroxymetoprolol pharmacokinetics across CYP2D6 activity-score groups.

The presented model includes the following features:

- enantiomer-specific (R)- and (S)-metoprolol disposition,
- formation of α-hydroxymetoprolol,
- CYP2D6 activity score-dependent metabolism,
- CYP3A4 first-order clearance,
- intravenous infusion, oral normal-release tartrate and oral controlled-release succinate applications,
- racemic metoprolol observer output for comparison with total metoprolol observations.

## Repository files
This repository contains:

- a [PK-Sim snapshot (*.json) file](https://docs.open-systems-pharmacology.org/working-with-pk-sim/pk-sim-documentation/importing-exporting-project-data-models#exporting-project-to-snapshot-loading-project-from-snapshot) of the current PBPK model
- static content (e.g. text blocks, *.md files) as inputs for an evaluation plan
- an evaluation plan (evaluation_plan.json) to create an evaluation report using the snapshot and static text blocks to display the performance of the model

**The latest release of the snapshot of the model, the evaluation plan and the static content can be found in the [latest release in this repository](./releases/latest).**

**The latest release of the PK-Sim project model file and the respective evaluation report can be found in the [latest OSP PBPK Model Library release](https://github.com/Open-Systems-Pharmacology/OSP-PBPK-Model-Library/releases/latest).**

## Code of conduct
Everyone interacting in the Open Systems Pharmacology community (codebases, issue trackers, chat rooms, mailing lists etc...) is expected to follow the Open Systems Pharmacology [code of conduct](https://github.com/Open-Systems-Pharmacology/Suite/blob/master/CODE_OF_CONDUCT.md#contributor-covenant-code-of-conduct).

## Contribution
We encourage contribution to the Open Systems Pharmacology community. Before getting started please read the [contribution guidelines](https://github.com/Open-Systems-Pharmacology/Suite/blob/master/CONTRIBUTING.md#ways-to-contribute). If you are contributing code, please be familiar with the [coding standard](https://github.com/Open-Systems-Pharmacology/Suite/blob/master/CODING_STANDARDS.md#visual-studio-settings).

## License
The model code is distributed under the [GPLv2 License](https://github.com/Open-Systems-Pharmacology/Suite/blob/develop/LICENSE).

## References
[1] S Rüdesheim, J-G Wojtyniak, D Selzer, N Hanke, F Mahfoud, M Schwab, T Lehr. Physiologically Based Pharmacokinetic Modeling of Metoprolol Enantiomers and α-Hydroxymetoprolol to Describe CYP2D6 Drug-Gene Interactions. Pharmaceutics, 2020;12:1200. doi: [10.3390/pharmaceutics12121200](https://doi.org/10.3390/pharmaceutics12121200).

[2] S Rüdesheim, H L H Loer, D Feick, F Z Marok, L M Fuhr, D Selzer, D Teutonico, A R P Schneider, J Solodenko, S Frechen, M van der Lee, D J A R Moes, J J Swen, M Schwab, T Lehr. A Comprehensive CYP2D6 Drug-Drug-Gene Interaction Network for Application in Precision Dosing and Drug Development. Clin Pharmacol Ther, 2025. doi: [10.1002/cpt.3604](https://doi.org/10.1002/cpt.3604).

[3] Bae, S. H., Lee, J. K., Cho, D.-Y. & Bae, S. K. Simultaneous determination of metoprolol and its metabolites, α-hydroxymetoprolol and O-desmethylmetoprolol, in human plasma by liquid chromatography with tandem mass spectrometry: Application to the pharmacokinetics of metoprolol associated with CYP2D6 genotype. Journal of Separation Science 37, 1256-1264 (June 2014). doi: [10.1002/jssc.201301353](https://doi.org/10.1002/jssc.201301353).

[4] Damy, T., Pousset, F., Caplain, H., Hulot, J.-S. & Lechat, P. Pharmacokinetic and pharmacodynamic interactions between metoprolol and dronedarone in extensive and poor CYP2D6 metabolizers healthy subjects. Fundamental and Clinical Pharmacology 18, 113-123 (Feb. 2004). doi: [10.1046/j.1472-8206.2003.00216.x](https://doi.org/10.1046/j.1472-8206.2003.00216.x).

[5] Godbillon, J. et al. Investigation of drug absorption from the gastrointestinal tract of man. III. Metoprolol in the colon. British Journal of Clinical Pharmacology 19 Suppl 2, 113S-118S (Apr. 1985). doi: [10.1111/j.1365-2125.1985.tb02751.x](https://doi.org/10.1111/j.1365-2125.1985.tb02751.x).

[6] Hamelin, B. A. et al. Significant interaction between the nonprescription antihistamine diphenhydramine and the CYP2D6 substrate metoprolol in healthy men with high or low CYP2D6 activity. Clinical Pharmacology and Therapeutics 67, 466-477 (May 2000). doi: [10.1067/mcp.2000.106464](https://doi.org/10.1067/mcp.2000.106464).

[7] Huang, J., Chuang, S. K., Cheng, C. L. & Lai, M. L. Pharmacokinetics of metoprolol enantiomers in Chinese subjects of major CYP2D6 genotypes. Clinical Pharmacology and Therapeutics 65, 402-407 (Apr. 1999). doi: [10.1016/S0009-9236(99)70134-7](https://doi.org/10.1016/S0009-9236(99)70134-7).

[8] Jin, S. K. et al. Influence of CYP2D6*10 on the pharmacokinetics of metoprolol in healthy Korean volunteers. Journal of Clinical Pharmacy and Therapeutics 33, 567-573. doi: [10.1111/j.1365-2710.2008.00945.x](https://doi.org/10.1111/j.1365-2710.2008.00945.x).

[9] Johnson, J. A. & Burlew, B. S. Metoprolol metabolism via cytochrome P4502D6 in ethnic populations. Drug Metabolism and Disposition 24, 350-355 (Mar. 1996). doi: [10.1016/S0090-9556(25)07354-4](https://doi.org/10.1016/S0090-9556(25)07354-4).

[10] Johnsson, G., Regårdh, C.-G. & Sölvell, L. Combined pharmacokinetic and pharmacodynamic studies in man of the adrenergic β1-receptor antagonist metoprolol. Acta Pharmacologica et Toxicologica 36, 31-44 (Mar. 1975). doi: [10.1111/j.1600-0773.1975.tb03320.x](https://doi.org/10.1111/j.1600-0773.1975.tb03320.x).

[11] Kelly, J. G., Salem, S. A., Kinney, C. D., Shanks, R. G. & McDevitt, D. G. Effects of ranitidine on the disposition of metoprolol. British Journal of Clinical Pharmacology 19, 219-224 (Feb. 1985). doi: [10.1111/j.1365-2125.1985.tb02634.x](https://doi.org/10.1111/j.1365-2125.1985.tb02634.x).

[12] Kirchheiner, J. et al. Impact of the ultrarapid metabolizer genotype of cytochrome P450 2D6 on metoprolol pharmacokinetics and pharmacodynamics. Clinical Pharmacology and Therapeutics 76, 302-312 (Oct. 2004). doi: [10.1016/j.clpt.2004.07.002](https://doi.org/10.1016/j.clpt.2004.07.002).

[13] Krösser, S. et al. Investigation of sarizotan's impact on the pharmacokinetics of probe drugs for major cytochrome P450 isoenzymes: a combined cocktail trial. European Journal of Clinical Pharmacology 62, 277-284 (2006). doi: [10.1007/s00228-006-0101-7](https://doi.org/10.1007/s00228-006-0101-7).

[14] Luzier, A. B. et al. Gender-related effects on metoprolol pharmacokinetics and pharmacodynamics in healthy volunteers. Clinical Pharmacology and Therapeutics 66, 594-601 (Dec. 1999). doi: [10.1053/cp.1999.v66.103400001](https://doi.org/10.1053/cp.1999.v66.103400001).

[15] Mautz, D. S., Nelson, W. L. & Shen, D. D. Regioselective and stereoselective oxidation of metoprolol and bufuralol catalyzed by microsomes containing cDNA-expressed human P4502D6. Drug Metabolism and Disposition 23, 513-517 (Apr. 1995). doi: [10.1016/S0090-9556(25)06590-0](https://doi.org/10.1016/S0090-9556(25)06590-0).

[16] Parker, R. B. & Soberman, J. E. Effects of paroxetine on the pharmacokinetics and pharmacodynamics of immediate-release and extended-release metoprolol. Pharmacotherapy 31, 630-641 (2011). doi: [10.1592/phco.31.7.630](https://doi.org/10.1592/phco.31.7.630).

[17] Plosker, G. L. & Clissold, S. P. Controlled Release Metoprolol Formulations. Drugs 43, 382-414 (Mar. 1992). doi: [10.2165/00003495-199243030-00006](https://doi.org/10.2165/00003495-199243030-00006).

[18] Regårdh, C. G., Borg, K. O., Johansson, R., Johnsson, G. & Palmer, L. Pharmacokinetic studies on the selective beta1-receptor antagonist metoprolol in man. Journal of Pharmacokinetics and Biopharmaceutics 2, 347-364 (Aug. 1974). doi: [10.1007/BF01061407](https://doi.org/10.1007/BF01061407).

[19] Regårdh, C. G. & Johnsson, G. Clinical Pharmacokinetics of Metoprolol. Clinical Pharmacokinetics 5, 557-569 (1980). doi: [10.2165/00003088-198005060-00004](https://doi.org/10.2165/00003088-198005060-00004).

[20] Seeringer, A., Brockmöller, J., Bauer, S. & Kirchheiner, J. Enantiospecific pharmacokinetics of metoprolol in CYP2D6 ultra-rapid metabolizers and correlation with exercise-induced heart rate. European Journal of Clinical Pharmacology 64, 883-888 (Sept. 2008). doi: [10.1007/s00228-008-0504-8](https://doi.org/10.1007/s00228-008-0504-8).

[21] Sharma, A. et al. Modulation of Metoprolol Pharmacokinetics and Hemodynamics by Diphenhydramine Coadministration during Exercise Testing in Healthy Premenopausal Women. Journal of Pharmacology and Experimental Therapeutics 313, 1172-1181 (June 2005). doi: [10.1124/jpet.104.081109](https://doi.org/10.1124/jpet.104.081109).

[22] Stout, S. M. et al. Influence of metoprolol dosage release formulation on the pharmacokinetic drug interaction with paroxetine. Journal of Clinical Pharmacology 51, 389-396 (Mar. 2011). doi: [10.1177/0091270010365559](https://doi.org/10.1177/0091270010365559).

[23] Werner, U. et al. Celecoxib inhibits metabolism of cytochrome P450 2D6 substrate metoprolol in humans. Clinical Pharmacology and Therapeutics 74, 130-137 (2003). doi: [10.1016/S0009-9236(03)00120-6](https://doi.org/10.1016/S0009-9236(03)00120-6).
