VFSv   BlkS       @D      @�          pBlkEBlkS       @�              @8      fold    A�V��   A�V��   /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�      @�`     @�d     ????   A�V��   A�V��   VasH.fasta                                                                                                                                                                                                                      >f_hcpC_SCRI_site_1+2_PC1_wpp163_BC_S7_21A
AACTGCGCATTCTGCGCAACT
>r_hcpC_SCRI_site_1+2_PC1_wpp163_BC_S7_21A
AGTTGCGCAGAATGCGCAGTT
>f_hcpA?_SCRI_site1
AACCGCGCATTCTGCGCAACT
>r_hcpA?_SCRI_site1
AGTTGCGCAGAATGCGCGGTT
>f_hcpB_BC_S7
AACTGCGCATTCTGCGCAATT
>r_hcpB_BC_S7
AATTGCGCAGAATGCGCAGTT
>f_hcpC_Pcc21_site_1 offset= 361
AACTGCGCATCCTGCGCAATT
>r_hcpC_Pcc21_site_1 offset= 361
AATTGCGCAGGATGCGCAGTT
>f_hcpB_Pcc21_site_1 offset= 282
AACTGCACATTCTGCGCAATT
>r_hcpB_Pcc21_site_1 offset= 282
AATTGCGCAGAATGTGCAGTT
>f_hcpB_PC1_site_1 offset= 316
AAATGCGCATTCTGCGCAACT
>r_hcpB_PC1_site_1 offset= 316
AGTTGCGCAGAATGCGCATTT
>f_wpp163_0344_4256_SCC3193
TACTGCGCATTCTGCGCAACT
>r_wpp163_0344_4256_SCC3193
AGTTGCGCAGAATGCGCAGTA
>f_wpp163_0061
AATTGCGTABlkEBlkS      @�              TTCTGCGCAACT
>r_wpp163_0061
AGTTGCGCAGAATACGCAATT
>f_hcp3_BC_S7
AATTGCGCATTCTGCGCAACT
>r_hcp3_BC_S7
AGTTGCGCAGAATGCGCAATT
>f_hcp1_pcc_NCPPB312 score 16.6
AGTTGCGCAGAATGCGCAGTT
>r_hcp1_pcc_NCPPB312 score 16.6
AACTGCGCATTCTGCGCAACT
>f_hcp2_pcc_NCPPB312 score 17.2/16.0
AATTGCGCAGAATGCGTAGTT
>r_hcp2_pcc_NCPPB312 score 17.2/16.0
AACTACGCATTCTGCGCAATT
>f_hcp_pcb_CFIA1001 18.7
AATTGCGCAGAATGCGCAGTT
>r_hcp_pcb_CFIA1001 18.7
AACTGCGCATTCTGCGCAATT                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       BlkEBlkS       @�      @�0     @��     ????   A�V��   A�V��   VasH.options                                                                                                                                                                                                                    ////
// nhmmer options
////


// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 16.0 16.0


// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
#=GF GA 13 13


//Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 9.6 9.6


// use the gathering threshold from the calibrated profile
nhmmer.--cut_ga


////
// HmmGen options
////


// the alignment length
HmmGen.-L 21


// the site is palindromic
HmmGen.-p


// don't pick up locus_tag from next locus
HmmGenBlkEBlkS      @�              .-n


// ignore sites inside ORFs (and risk missing some real ones!)
HmmGen.-i 


// feature key
HmmGen.-f protein_bind


// feature qualifier
HmmGen.-q bound_moiety#VasH


// MASTgen p-value cutoff
mastGen.-V 1e-9


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       BlkEBlkS       @�      @�0     @��     ????   A�V��   A�V��   VasH.info                                                                                                                                                                                                                       VasH is one of several bacterial enhancer binding proteins (bEBP) required for transcription activation by RpoN-containing RNA polymerase. vasH is located within the gene cluster coding for the components of the type VI secretion system (tss). VasH is known to activate transcription of hcp genes (usually 1-3 per genome) coding for the main tss effector proteins.

Since no VasH binding site was described for Pectobacteria, intergenic regions in front of hcp genes from four pectobacterial genomes were scanned for potential palindromic binding sites with MEME. One palindrome was present in front of all hcps checked and this profile is built around this palindrome. 

The final profile is built from 12 non-redundant sites from PectBlkEBlkS      @�              obacterium genomes and their reverse complements. The profile is very strict with no false positives or false negatives finds a site in front of every hcp gene present in a pectobacterial genome (and nothing else), always followed by an RpoN-dependent promoter. Nevertheless, there is no experimental evidence for validity of this binding site. It may even be bound by some other regulator.



                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      BlkEBlkS       @�      @�     @ϒ�    ????   A�V��`  A�V��`  meme.txt                                                                                                                                                                                                                        ********************************************************************************
MEME - Motif discovery tool
********************************************************************************
MEME version 4.10.1 (Release date: Wed Mar 25 11:40:43 2015 +1000)

For further information on how to interpret these results or to get
a copy of the MEME software please access http://meme-suite.org .

This file may be used as input to the MAST algorithm for searching
sequence databases for matches to groups of motifs.  MAST is available
for interactive use and downloading at http://meme-suite.org .
********************************************************************************


***********************************************************BlkEBlkS      @�      @�     *********************
REFERENCE
********************************************************************************
If you use this program in your research, please cite:

Timothy L. Bailey and Charles Elkan,
"Fitting a mixture model by expectation maximization to discover
motifs in biopolymers", Proceedings of the Second International
Conference on Intelligent Systems for Molecular Biology, pp. 28-36,
AAAI Press, Menlo Park, California, 1994.
********************************************************************************


********************************************************************************
TRAINING SET
********************************************************************************
DATAFILE= /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp
ALPHABET= ACGT
Sequence name            Weight Length  Sequence name            Weight Length  
-------------            ------ ------  -------------            ------ ------  
f_hcpC_SCRI_siteBlkEBlkS      @�      @�     _1+2_PC1 1.0000     21  r_hcpC_SCRI_site_1+2_PC1 1.0000     21  
f_hcpA?_SCRI_site1       1.0000     21  r_hcpA?_SCRI_site1       1.0000     21  
f_hcpB_BC_S7             1.0000     21  r_hcpB_BC_S7             1.0000     21  
f_hcpC_Pcc21_site_1      1.0000     21  r_hcpC_Pcc21_site_1      1.0000     21  
f_hcpB_Pcc21_site_1      1.0000     21  r_hcpB_Pcc21_site_1      1.0000     21  
f_hcpB_PC1_site_1        1.0000     21  r_hcpB_PC1_site_1        1.0000     21  
f_wpp163_0344_4256_SCC31 1.0000     21  r_wpp163_0344_4256_SCC31 1.0000     21  
f_wpp163_0061            1.0000     21  r_wpp163_0061            1.0000     21  
f_hcp3_BC_S7             1.0000     21  r_hcp3_BC_S7             1.0000     21  
f_hcp1_pcc_NCPPB312      1.0000     21  r_hcp1_pcc_NCPPB312      1.0000     21  
f_hcp2_pcc_NCPPB312      1.0000     21  r_hcp2_pcc_NCPPB312      1.0000     21  
f_hcp_pcb_CFIA1001       1.0000     21  r_hcp_pcb_CFIA1001       1.0000     21  
************************************BlkEBlkS      @�      @�     ********************************************

********************************************************************************
COMMAND LINE SUMMARY
********************************************************************************
This information can also be useful in the event you wish to report a
problem with the MEME software.

command: meme -nmotifs 1 -dna -text /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=         zoops    nmotifs=         1    evt=           inf
object function=  E-value of product of p-values
width:  minw=            8    maxw=           21    minic=        0.00
width:  wg=             11    ws=              1    endgaps=       yes
nsites: minsites=        2    maxsites=       24    wnsites=       0.8
theta:  prob=            1    spmap=         uni    spfuzz=        0.5
global: substring=     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter= BlkEBlkS      @�      @�            50
        distance=    1e-05
data:   n=             504    N=              24
strands: +
sample: seed=            0    seqfrac=         1
Letter frequencies in dataset:
A 0.256 C 0.244 G 0.244 T 0.256 
Background letter frequencies (from dataset with add-one prior applied):
A 0.256 C 0.244 G 0.244 T 0.256 
********************************************************************************


********************************************************************************
MOTIF  1 MEME	width =  21  sites =  24  llr = 532  E-value = 4.5e-186
********************************************************************************
--------------------------------------------------------------------------------
	Motif 1 Description
--------------------------------------------------------------------------------
Simplified        A  a7::::::a:55:::::a6::
pos.-specific     C  ::4::a:a:::5::a:a::3:
probability       G  :3::a:a::5:::a:a::4::
matrix            T  ::6a:::::55:a::::::7a

     BlkEBlkS      @�      @�         bits    2.0      *  *   *  *     
                 1.8     *****   *****    
                 1.6 *  ******   ******  *
                 1.4 *  ******   ******  *
Relative         1.2 *  ******   ******  *
Entropy          1.0 ** ******* ******* **
(32.0 bits)      0.8 ********** **********
                 0.6 *********************
                 0.4 *********************
                 0.2 *********************
                 0.0 ---------------------

Multilevel           AATTGCGCAGAATGCGCAATT
consensus             GC      TTC      GC 
sequence                                  
                                          
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 sites sorted by position p-value
--------------------------------------------------------------------------------
Sequence name             Start   P-value                    SiteBlkEBlkS      @�      @�            
-------------             ----- ---------            ---------------------
r_hcp_pcb_CFIA1001            1  5.65e-12          . AACTGCGCATTCTGCGCAATT           
f_hcp_pcb_CFIA1001            1  5.65e-12          . AATTGCGCAGAATGCGCAGTT           
r_hcpB_BC_S7                  1  5.65e-12          . AATTGCGCAGAATGCGCAGTT           
f_hcpB_BC_S7                  1  5.65e-12          . AACTGCGCATTCTGCGCAATT           
r_hcp3_BC_S7                  1  9.36e-12          . AGTTGCGCAGAATGCGCAATT           
f_hcp3_BC_S7                  1  9.36e-12          . AATTGCGCATTCTGCGCAACT           
r_hcp1_pcc_NCPPB312           1  1.82e-11          . AACTGCGCATTCTGCGCAACT           
f_hcp1_pcc_NCPPB312           1  1.82e-11          . AGTTGCGCAGAATGCGCAGTT           
r_hcpC_SCRI_site_1+2_PC1      1  1.82e-11          . AGTTGCGCAGAATGCGCAGTT           
f_hcpC_SCRI_site_1+2_PC1      1  1.82e-11          . AACTGCGCATTCTGCGCAACT           
r_hcpC_Pcc21_site_1           1  3.76e-11        BlkEBlkS      @�      @�       . AATTGCGCAGGATGCGCAGTT           
f_hcpC_Pcc21_site_1           1  3.76e-11          . AACTGCGCATCCTGCGCAATT           
r_hcpB_PC1_site_1             1  7.37e-11          . AGTTGCGCAGAATGCGCATTT           
f_hcpB_PC1_site_1             1  7.37e-11          . AAATGCGCATTCTGCGCAACT           
r_hcp2_pcc_NCPPB312           1  1.18e-10          . AACTACGCATTCTGCGCAATT           
f_hcp2_pcc_NCPPB312           1  1.18e-10          . AATTGCGCAGAATGCGTAGTT           
r_hcpB_Pcc21_site_1           1  1.18e-10          . AATTGCGCAGAATGTGCAGTT           
f_hcpB_Pcc21_site_1           1  1.18e-10          . AACTGCACATTCTGCGCAATT           
r_wpp163_0061                 1  1.72e-10          . AGTTGCGCAGAATACGCAATT           
f_wpp163_0061                 1  1.72e-10          . AATTGCGTATTCTGCGCAACT           
r_wpp163_0344_4256_SCC31      1  2.17e-10          . AGTTGCGCAGAATGCGCAGTA           
f_wpp163_0344_4256_SCC31      1  2.17e-10          . TACTGCGCATTCTGCGCAACT           
r_hcpA?_SBlkEBlkS      @�      @�     CRI_site1            1  2.17e-10          . AGTTGCGCAGAATGCGCGGTT           
f_hcpA?_SCRI_site1            1  2.17e-10          . AACCGCGCATTCTGCGCAACT           
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 block diagrams
--------------------------------------------------------------------------------
SEQUENCE NAME            POSITION P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
r_hcp_pcb_CFIA1001                5.7e-12  [+1]
f_hcp_pcb_CFIA1001                5.7e-12  [+1]
r_hcpB_BC_S7                      5.7e-12  [+1]
f_hcpB_BC_S7                      5.7e-12  [+1]
r_hcp3_BC_S7                      9.4e-12  [+1]
f_hcp3_BC_S7                      9.4e-12  [+1]
r_hcp1_pcc_NCPPB312               1.8e-11  [+1]
f_hcp1_pcc_NCPPB312               1.8e-11  [+1]
r_hcpC_SCRI_site_1+2_PC1          1.8e-11  [+1]
f_hcpC_SCRI_sitBlkEBlkS      	@�      @�     e_1+2_PC1          1.8e-11  [+1]
r_hcpC_Pcc21_site_1               3.8e-11  [+1]
f_hcpC_Pcc21_site_1               3.8e-11  [+1]
r_hcpB_PC1_site_1                 7.4e-11  [+1]
f_hcpB_PC1_site_1                 7.4e-11  [+1]
r_hcp2_pcc_NCPPB312               1.2e-10  [+1]
f_hcp2_pcc_NCPPB312               1.2e-10  [+1]
r_hcpB_Pcc21_site_1               1.2e-10  [+1]
f_hcpB_Pcc21_site_1               1.2e-10  [+1]
r_wpp163_0061                     1.7e-10  [+1]
f_wpp163_0061                     1.7e-10  [+1]
r_wpp163_0344_4256_SCC31          2.2e-10  [+1]
f_wpp163_0344_4256_SCC31          2.2e-10  [+1]
r_hcpA?_SCRI_site1                2.2e-10  [+1]
f_hcpA?_SCRI_site1                2.2e-10  [+1]
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 in BLOCKS format
--------------------------------------------------------------------------------
BL   MOTIF 1 widtBlkEBlkS      
@�      @�     h=21 seqs=24
r_hcp_pcb_CFIA1001       (    1) AACTGCGCATTCTGCGCAATT  1 
f_hcp_pcb_CFIA1001       (    1) AATTGCGCAGAATGCGCAGTT  1 
r_hcpB_BC_S7             (    1) AATTGCGCAGAATGCGCAGTT  1 
f_hcpB_BC_S7             (    1) AACTGCGCATTCTGCGCAATT  1 
r_hcp3_BC_S7             (    1) AGTTGCGCAGAATGCGCAATT  1 
f_hcp3_BC_S7             (    1) AATTGCGCATTCTGCGCAACT  1 
r_hcp1_pcc_NCPPB312      (    1) AACTGCGCATTCTGCGCAACT  1 
f_hcp1_pcc_NCPPB312      (    1) AGTTGCGCAGAATGCGCAGTT  1 
r_hcpC_SCRI_site_1+2_PC1 (    1) AGTTGCGCAGAATGCGCAGTT  1 
f_hcpC_SCRI_site_1+2_PC1 (    1) AACTGCGCATTCTGCGCAACT  1 
r_hcpC_Pcc21_site_1      (    1) AATTGCGCAGGATGCGCAGTT  1 
f_hcpC_Pcc21_site_1      (    1) AACTGCGCATCCTGCGCAATT  1 
r_hcpB_PC1_site_1        (    1) AGTTGCGCAGAATGCGCATTT  1 
f_hcpB_PC1_site_1        (    1) AAATGCGCATTCTGCGCAACT  1 
r_hcp2_pcc_NCPPB312      (    1) AACTACGCATTCTGCGCAATT  1 
f_hcp2_pcc_NCPPB312      (    1) AATTGCGCAGAATGCGTAGTT  1 
r_hcpB_Pcc21_site_1      (    1) AABlkEBlkS      @�      @�     TTGCGCAGAATGTGCAGTT  1 
f_hcpB_Pcc21_site_1      (    1) AACTGCACATTCTGCGCAATT  1 
r_wpp163_0061            (    1) AGTTGCGCAGAATACGCAATT  1 
f_wpp163_0061            (    1) AATTGCGTATTCTGCGCAACT  1 
r_wpp163_0344_4256_SCC31 (    1) AGTTGCGCAGAATGCGCAGTA  1 
f_wpp163_0344_4256_SCC31 (    1) TACTGCGCATTCTGCGCAACT  1 
r_hcpA?_SCRI_site1       (    1) AGTTGCGCAGAATGCGCGGTT  1 
f_hcpA?_SCRI_site1       (    1) AACCGCGCATTCTGCGCAACT  1 
//

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific scoring matrix
--------------------------------------------------------------------------------
log-odds matrix: alength= 4 w= 21 n= 24 bayes= 1.45943 E= 4.5e-186 
   190  -1123  -1123   -262 
   147  -1123     26  -1123 
  -262     62  -1123    119 
 -1123   -255  -1123    190 
  -262  -1123    197  -1123 
 -1123    203  -1123  -1123 
  -262  -1123    197  -BlkEBlkS      @�      @�     1123 
 -1123    197  -1123   -262 
   197  -1123  -1123  -1123 
 -1123  -1123    103     97 
    84   -255   -255     84 
    97    103  -1123  -1123 
 -1123  -1123  -1123    197 
  -262  -1123    197  -1123 
 -1123    197  -1123   -262 
 -1123  -1123    203  -1123 
 -1123    197  -1123   -262 
   190  -1123   -255  -1123 
   119  -1123     62   -262 
 -1123     26  -1123    147 
  -262  -1123  -1123    190 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific probability matrix
--------------------------------------------------------------------------------
letter-probability matrix: alength= 4 w= 21 nsites= 24 E= 4.5e-186 
 0.958333  0.000000  0.000000  0.041667 
 0.708333  0.000000  0.291667  0.000000 
 0.041667  0.375000  0.000000  0.583333 
 0.000000  0.041667  0.000000  0.958333 
 0.041667  0.000000  0.958333  0.000000 
 0.000000  1.0000BlkEBlkS      @�      @�     00  0.000000  0.000000 
 0.041667  0.000000  0.958333  0.000000 
 0.000000  0.958333  0.000000  0.041667 
 1.000000  0.000000  0.000000  0.000000 
 0.000000  0.000000  0.500000  0.500000 
 0.458333  0.041667  0.041667  0.458333 
 0.500000  0.500000  0.000000  0.000000 
 0.000000  0.000000  0.000000  1.000000 
 0.041667  0.000000  0.958333  0.000000 
 0.000000  0.958333  0.000000  0.041667 
 0.000000  0.000000  1.000000  0.000000 
 0.000000  0.958333  0.000000  0.041667 
 0.958333  0.000000  0.041667  0.000000 
 0.583333  0.000000  0.375000  0.041667 
 0.000000  0.291667  0.000000  0.708333 
 0.041667  0.000000  0.000000  0.958333 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 regular expression
--------------------------------------------------------------------------------
A[AG][TC]TGCGCA[GT][AT][AC]TGCGCA[AG][TC]T
--------------------------------------BlkEBlkS      @�      @�     ------------------------------------------




Time  0.04 secs.

********************************************************************************


********************************************************************************
SUMMARY OF MOTIFS
********************************************************************************

--------------------------------------------------------------------------------
	Combined block diagrams: non-overlapping sites with p-value < 0.0001
--------------------------------------------------------------------------------
SEQUENCE NAME            COMBINED P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
f_hcpC_SCRI_site_1+2_PC1         1.82e-11  [+1(1.82e-11)]
r_hcpC_SCRI_site_1+2_PC1         1.82e-11  [+1(1.82e-11)]
f_hcpA?_SCRI_site1               2.17e-10  [+1(2.17e-10)]
r_hcpA?_SCRI_site1               2.17e-10  [+1(2.17e-10)]
f_hcpB_BC_S7                     5.65e-12  [+1(5.65e-12)]
r_hcpB_BC_S7               BlkEBlkS      @�      @�           5.65e-12  [+1(5.65e-12)]
f_hcpC_Pcc21_site_1              3.76e-11  [+1(3.76e-11)]
r_hcpC_Pcc21_site_1              3.76e-11  [+1(3.76e-11)]
f_hcpB_Pcc21_site_1              1.18e-10  [+1(1.18e-10)]
r_hcpB_Pcc21_site_1              1.18e-10  [+1(1.18e-10)]
f_hcpB_PC1_site_1                7.37e-11  [+1(7.37e-11)]
r_hcpB_PC1_site_1                7.37e-11  [+1(7.37e-11)]
f_wpp163_0344_4256_SCC31         2.17e-10  [+1(2.17e-10)]
r_wpp163_0344_4256_SCC31         2.17e-10  [+1(2.17e-10)]
f_wpp163_0061                    1.72e-10  [+1(1.72e-10)]
r_wpp163_0061                    1.72e-10  [+1(1.72e-10)]
f_hcp3_BC_S7                     9.36e-12  [+1(9.36e-12)]
r_hcp3_BC_S7                     9.36e-12  [+1(9.36e-12)]
f_hcp1_pcc_NCPPB312              1.82e-11  [+1(1.82e-11)]
r_hcp1_pcc_NCPPB312              1.82e-11  [+1(1.82e-11)]
f_hcp2_pcc_NCPPB312              1.18e-10  [+1(1.18e-10)]
r_hcp2_pcc_NCPPB312              1.18e-10  [+1(1.18e-10)]
f_hcp_pcb_CFIA1001               BlkEBlkS      @�              5.65e-12  [+1(5.65e-12)]
r_hcp_pcb_CFIA1001               5.65e-12  [+1(5.65e-12)]
--------------------------------------------------------------------------------

********************************************************************************


********************************************************************************
Stopped because nmotifs = 1 reached.
********************************************************************************

CPU: Ptushka.local

********************************************************************************
                                                                                                                                                                                                                                                                                                                                                                                                                                                           BlkEBlkS       @�      @�     @��     ????   A�V��`  A�V��`  VasH.hmm                                                                                                                                                                                                                        HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  21
MAXL  76
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Sun Jan 10 09:28:59 2016
NSEQ  24
EFFN  24.000000
CKSUM 2139456187
GA    13.00
TC    16.00
NC    9.60
STATS LOCAL MSV       -6.2815  0.74363
STATS LOCAL VITERBI   -6.4490  0.74363
STATS LOCAL FORWARD   -3.2295  0.74363
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.36626  1.40592  1.40986  1.36405
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  0.00000        *
      1   0.07191  5.08124  5.40269  2.83578      1 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.0BlkEBlkS      @�      @�     0766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
      2   0.37036  5.63942  1.19854  5.44281      2 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
      3   2.83757  1.00750  4.22036  0.57695      3 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
      4   5.04149  2.68992  5.29557  0.08269      4 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
      5   2.73970  5.05672  0.08224  4.82866      5 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
      6   5.29540  0.01782  5.46338  4.77842      6 C - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
      7   2.73970  5.05672  0.08224  4.82866    BlkEBlkS      @�      @�       7 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
      8   5.07607  0.07944  5.34183  2.72823      8 C - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
      9   0.00771  6.32002  5.58407  6.15505      9 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
     10   4.57704  4.51276  0.71219  0.71708     10 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
     11   0.86969  2.56511  2.55209  0.85311     11 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
     12   0.71735  0.70631  5.07205  4.40437     12 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26BlkEBlkS      @�      @�     236  1.09861  0.40547
     13   5.37643  4.99868  5.49739  0.01559     13 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
     14   2.71963  5.04873  0.08379  4.82047     14 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
     15   5.07693  0.07800  5.34262  2.74874     15 C - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
     16   5.16583  6.12720  0.01065  5.91491     16 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
     17   5.07693  0.07800  5.34262  2.74874     17 C - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
     18   0.06386  6.12336  2.86263  5.97166     18 A - - -
          1.38629  1.3862BlkEBlkS      @�              9  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
     19   0.64616  3.69049  0.96387  2.66535     19 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
     20   4.90884  1.19673  5.15195  0.37885     20 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
     21   2.84820  4.64742  5.32054  0.07518     21 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00384  5.56452        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                                                                                                                                                                                                              BlkEBlkS      @�              BMap      0         0         0        0         0        0         0        0          0        $0        (0        ,0        00        40        80        <0        @0      	  D0      
  H0        L0        P0        T0        X0        \0        `0         d0        h0        l0        p0        t0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      BlkE