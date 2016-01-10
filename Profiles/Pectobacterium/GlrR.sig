VFSv   BlkS       @D      @�          pBlkEBlkS       @�              @8      fold    A�V�5`  A�V�5`  /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�      @�`     @��     ????   A�V�5`  A�V�5`  GlrR.fasta                                                                                                                                                                                                                      >f_glmY/Z1_SCRI1043
TGTCTGTTTTTAGCGACA
>r_glmY/Z1_SCRI1043
TGTCGCTAAAAACAGACA
>f_glmY/Z2_Pcc21
TGTCTCTAATTGGTGACA
>r_glmY/Z2_Pcc21
TGTCACCAATTAGAGACA
>f_glmY/Z3_Pcc21
TGTCGTTTTTTTGCGACG
>r_glmY/Z3_Pcc21
CGTCGCAAAAAAACGACA
>f_glmY/Z2_Pca3-2
TGTCTCTAATTAGTGACA
>r_glmY/Z2_Pca3-2
TGTCACTAATTAGAGACA
>f_glmY/Z2_SCRI1043
TGTCTCTAATTAGTGACA
>r_glmY/Z2_SCRI1043
TGTCACTAATTAGAGACA
>f_glmY/Z3_SCRI1043
TGTCGTTTTTTTGCGACG
>r_glmY/Z3_SCRI1043
CGTCGCAAAAAAACGACA
>f_glmY/Z1_Dda3937
TGTCTTTCTTTAGCGACA
>r_glmY/Z1_Dda3937
TGTCGCTAAAGAAAGACA
>f_glmY/Z2_Dda3937
TGTCTCAAATCAACGACA
>r_glmY/Z2_Dda3937
TGTCGTTGATTTGAGACA
>f_glmY/Z1_Pwa_SCC3193
TGTCTGTTTTTAGCGACA
>r_glmY/Z1_Pwa_SCC3193
TGTCGCTAAAAACAGACA
>f_glmY/Z2_Pwa_SCC3193
TGTCTCTAATTGATGACA
>r_glmBlkEBlkS      @�              Y/Z2_Pwa_SCC3193
TGTCATCAATTAGAGACA
>f_glmY/Z3_Pwa_SCC3193
TGTCGTTTTTTTGCGACA
>r_glmY/Z3_Pwa_SCC3193
TGTCGCAAAAAAACGACA
>f_glmZ1_Pcc21
TGTCGCCATTCAGAGACG
>r_glmZ1_Pcc21
CGTCTCTGAATGGCGACA
>f_glmZ2_Pcc21
TGTCTCTTTTTTGCGACA
>r_glmZ2_Pcc21
TGTCGCAAAAAAGAGACA
>f_glmZ1_Pat21A
TGTCTCTTTTTTGAGACA
>r_glmZ1_Pat21A
TGTCTCAAAAAAGAGACA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           BlkEBlkS       @�      @�0     @��     ????   A�V�5`  A�V�5`  GlrR.options                                                                                                                                                                                                                    ////
// nhmmer options
////


// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 9.4 9.4


// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
#=GF GA 9.0 9.0


//Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 8.7 8.7


// use the gathering threshold from the calibrated profile
nhmmer.--cut_ga


////
// HmmGen options
////


// the alignment length
HmmGen.-L 18


// the site is palindromic
HmmGen.-p


// don't pick up locus_tag from next locus
HmmGenBlkEBlkS      @�              .-n


// ignore sites inside ORFs (and risk missing some real ones!)
HmmGen.-i 


// feature key
HmmGen.-f protein_bind


// feature qualifier
HmmGen.-q bound_moiety#GlrR


// MASTgen p-value cutoff
mastGen.-V 


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           BlkEBlkS       @�              @{�     ????   A�V�5`  A�V�5`  GlrR.info                                                                                                                                                                                                                       GlrR is an enhancer-binding protein (EBP) required for transcription activation at the RpoN-dependent promoter of small RNA gene glmY. In some strains it may also regulate another sRNA gene, glmZ.

The profile was built starting with three GlrR binding sites from E.coli described in RegulonDB and iteratively adding Pectobacterium/Dickeya sites. 

The final profile is built from 14 non-redundant sites and their reverse complements. 


                                                                                                                                                                                                                                                                                                          BlkEBlkS       @�      @�0     @б�    ????   A�V�5�  A�V�5�  meme.txt                                                                                                                                                                                                                        ********************************************************************************
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
f_glmY/Z1_SCRI10BlkEBlkS      @�      @�     43       1.0000     18  r_glmY/Z1_SCRI1043       1.0000     18  
f_glmY/Z2_Pcc21          1.0000     18  r_glmY/Z2_Pcc21          1.0000     18  
f_glmY/Z3_Pcc21          1.0000     18  r_glmY/Z3_Pcc21          1.0000     18  
f_glmY/Z2_Pca3-2         1.0000     18  r_glmY/Z2_Pca3-2         1.0000     18  
f_glmY/Z2_SCRI1043       1.0000     18  r_glmY/Z2_SCRI1043       1.0000     18  
f_glmY/Z3_SCRI1043       1.0000     18  r_glmY/Z3_SCRI1043       1.0000     18  
f_glmY/Z1_Dda3937        1.0000     18  r_glmY/Z1_Dda3937        1.0000     18  
f_glmY/Z2_Dda3937        1.0000     18  r_glmY/Z2_Dda3937        1.0000     18  
f_glmY/Z1_Pwa_SCC3193    1.0000     18  r_glmY/Z1_Pwa_SCC3193    1.0000     18  
f_glmY/Z2_Pwa_SCC3193    1.0000     18  r_glmY/Z2_Pwa_SCC3193    1.0000     18  
f_glmY/Z3_Pwa_SCC3193    1.0000     18  r_glmY/Z3_Pwa_SCC3193    1.0000     18  
f_glmZ1_Pcc21            1.0000     18  r_glmZ1_Pcc21            1.0000     18  
f_glmZ2_Pcc21            1.0000     BlkEBlkS      @�      @�     18  r_glmZ2_Pcc21            1.0000     18  
f_glmZ1_Pat21A           1.0000     18  r_glmZ1_Pat21A           1.0000     18  
********************************************************************************

********************************************************************************
COMMAND LINE SUMMARY
********************************************************************************
This information can also be useful in the event you wish to report a
problem with the MEME software.

command: meme -nmotifs 1 -dna -text -pal -revcomp /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=         zoops    nmotifs=         1    evt=           inf
object function=  E-value of product of p-values
width:  minw=            8    maxw=           18    minic=        0.00
width:  wg=             11    ws=              1    endgaps=       yes
nsites: minsites=        2    maxsites=       28    wnsites=       0.8
theta:  prob=            1 BlkEBlkS      @�      @�        spmap=         uni    spfuzz=        0.5
global: substring=     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter=        50
        distance=    1e-05
data:   n=             504    N=              28
strands: + -
sample: seed=            0    seqfrac=         1
Letter frequencies in dataset:
A 0.304 C 0.196 G 0.196 T 0.304 
Background letter frequencies (from dataset with add-one prior applied):
A 0.303 C 0.197 G 0.197 T 0.303 
********************************************************************************


********************************************************************************
MOTIF  1 MEME	width =  18  sites =  28  llr = 435  E-value = 5.2e-149
********************************************************************************
--------------------------------------------------------------------------------
	Motif 1 Description
--------------------------------------------------------------------------------
BlkEBlkS      @�      @�     Simplified        A  ::::1:26732724:a:9
pos.-specific     C  1::a:71:::1:14::a:
probability       G  :a::41:1:::17:a::1
matrix            T  9:a:42733762:1::::

         bits    2.3  * *          * * 
                 2.1  * *          * * 
                 1.9  * *          * * 
                 1.6  ***          *** 
Relative         1.4 ****          ****
Entropy          1.2 **** *      * ****
(22.4 bits)      0.9 **** *      * ****
                 0.7 **** ** ** ** ****
                 0.5 ******************
                 0.2 ******************
                 0.0 ------------------

Multilevel           TGTCGCTAATTAGAGACA
consensus                TTATTAATAC    
sequence                               
                                       
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 sites sorted by position p-value
-------------------------BlkEBlkS      @�      @�     -------------------------------------------------------
Sequence name            Strand  Start   P-value                   Site     
-------------            ------  ----- ---------            ------------------
r_glmY/Z2_SCRI1043           +      1  1.14e-09          . TGTCACTAATTAGAGACA           
f_glmY/Z2_SCRI1043           -      1  1.14e-09          . TGTCACTAATTAGAGACA           
r_glmY/Z2_Pca3-2             +      1  1.14e-09          . TGTCACTAATTAGAGACA           
f_glmY/Z2_Pca3-2             -      1  1.14e-09          . TGTCACTAATTAGAGACA           
r_glmZ2_Pcc21                +      1  8.25e-09          . TGTCGCAAAAAAGAGACA           
f_glmZ2_Pcc21                -      1  8.25e-09          . TGTCGCAAAAAAGAGACA           
r_glmY/Z2_Pcc21              +      1  9.38e-09          . TGTCACCAATTAGAGACA           
f_glmY/Z2_Pcc21              -      1  9.38e-09          . TGTCACCAATTAGAGACA           
r_glmZ1_Pat21A               +      1  1.33e-08          . TGTCTCAAABlkEBlkS      @�      @�     AAAGAGACA           
f_glmZ1_Pat21A               -      1  1.33e-08          . TGTCTCAAAAAAGAGACA           
r_glmY/Z1_Pwa_SCC3193        -      1  3.30e-08          . TGTCTGTTTTTAGCGACA           
f_glmY/Z1_Pwa_SCC3193        +      1  3.30e-08          . TGTCTGTTTTTAGCGACA           
r_glmY/Z1_SCRI1043           -      1  3.30e-08          . TGTCTGTTTTTAGCGACA           
f_glmY/Z1_SCRI1043           +      1  3.30e-08          . TGTCTGTTTTTAGCGACA           
r_glmY/Z3_Pwa_SCC3193        -      1  4.07e-08          . TGTCGTTTTTTTGCGACA           
f_glmY/Z3_Pwa_SCC3193        +      1  4.07e-08          . TGTCGTTTTTTTGCGACA           
r_glmY/Z2_Pwa_SCC3193        +      1  6.57e-08          . TGTCATCAATTAGAGACA           
f_glmY/Z2_Pwa_SCC3193        -      1  6.57e-08          . TGTCATCAATTAGAGACA           
r_glmY/Z2_Dda3937            +      1  6.57e-08          . TGTCGTTGATTTGAGACA           
f_glmY/Z2_Dda3937            -      1  6.57e-08          . TGTCGTTGATTTGAGACA    BlkEBlkS      @�      @�            
r_glmY/Z1_Dda3937            -      1  8.48e-08          . TGTCTTTCTTTAGCGACA           
f_glmY/Z1_Dda3937            +      1  8.48e-08          . TGTCTTTCTTTAGCGACA           
r_glmZ1_Pcc21                +      1  1.29e-07          . CGTCTCTGAATGGCGACA           
f_glmZ1_Pcc21                -      1  1.29e-07          . CGTCTCTGAATGGCGACA           
r_glmY/Z3_SCRI1043           +      1  1.76e-07          . CGTCGCAAAAAAACGACA           
f_glmY/Z3_SCRI1043           -      1  1.76e-07          . CGTCGCAAAAAAACGACA           
r_glmY/Z3_Pcc21              +      1  1.76e-07          . CGTCGCAAAAAAACGACA           
f_glmY/Z3_Pcc21              -      1  1.76e-07          . CGTCGCAAAAAAACGACA           
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 block diagrams
--------------------------------------------------------------------------------
SEQUBlkEBlkS      	@�      @�     ENCE NAME            POSITION P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
r_glmY/Z2_SCRI1043                1.1e-09  [+1]
f_glmY/Z2_SCRI1043                1.1e-09  [-1]
r_glmY/Z2_Pca3-2                  1.1e-09  [+1]
f_glmY/Z2_Pca3-2                  1.1e-09  [-1]
r_glmZ2_Pcc21                     8.3e-09  [+1]
f_glmZ2_Pcc21                     8.3e-09  [-1]
r_glmY/Z2_Pcc21                   9.4e-09  [+1]
f_glmY/Z2_Pcc21                   9.4e-09  [-1]
r_glmZ1_Pat21A                    1.3e-08  [+1]
f_glmZ1_Pat21A                    1.3e-08  [-1]
r_glmY/Z1_Pwa_SCC3193             3.3e-08  [-1]
f_glmY/Z1_Pwa_SCC3193             3.3e-08  [+1]
r_glmY/Z1_SCRI1043                3.3e-08  [-1]
f_glmY/Z1_SCRI1043                3.3e-08  [+1]
r_glmY/Z3_Pwa_SCC3193             4.1e-08  [-1]
f_glmY/Z3_Pwa_SCC3193             4.1e-08  [+1]
r_glmY/Z2_Pwa_SCC3193             6.6e-08  [+1]
f_glmY/Z2_Pwa_SCC3193             6.6e-08  [-1]
r_glmY/Z2_Dda3937 BlkEBlkS      
@�      @�                     6.6e-08  [+1]
f_glmY/Z2_Dda3937                 6.6e-08  [-1]
r_glmY/Z1_Dda3937                 8.5e-08  [-1]
f_glmY/Z1_Dda3937                 8.5e-08  [+1]
r_glmZ1_Pcc21                     1.3e-07  [+1]
f_glmZ1_Pcc21                     1.3e-07  [-1]
r_glmY/Z3_SCRI1043                1.8e-07  [+1]
f_glmY/Z3_SCRI1043                1.8e-07  [-1]
r_glmY/Z3_Pcc21                   1.8e-07  [+1]
f_glmY/Z3_Pcc21                   1.8e-07  [-1]
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 in BLOCKS format
--------------------------------------------------------------------------------
BL   MOTIF 1 width=18 seqs=28
r_glmY/Z2_SCRI1043       (    1) TGTCACTAATTAGAGACA  1 
f_glmY/Z2_SCRI1043       (    1) TGTCACTAATTAGAGACA  1 
r_glmY/Z2_Pca3-2         (    1) TGTCACTAATTAGAGACA  1 
f_glmY/Z2_Pca3-2         (    1) TGTCACTAATTAGAGACA  1 
r_glmZBlkEBlkS      @�      @�     2_Pcc21            (    1) TGTCGCAAAAAAGAGACA  1 
f_glmZ2_Pcc21            (    1) TGTCGCAAAAAAGAGACA  1 
r_glmY/Z2_Pcc21          (    1) TGTCACCAATTAGAGACA  1 
f_glmY/Z2_Pcc21          (    1) TGTCACCAATTAGAGACA  1 
r_glmZ1_Pat21A           (    1) TGTCTCAAAAAAGAGACA  1 
f_glmZ1_Pat21A           (    1) TGTCTCAAAAAAGAGACA  1 
r_glmY/Z1_Pwa_SCC3193    (    1) TGTCTGTTTTTAGCGACA  1 
f_glmY/Z1_Pwa_SCC3193    (    1) TGTCTGTTTTTAGCGACA  1 
r_glmY/Z1_SCRI1043       (    1) TGTCTGTTTTTAGCGACA  1 
f_glmY/Z1_SCRI1043       (    1) TGTCTGTTTTTAGCGACA  1 
r_glmY/Z3_Pwa_SCC3193    (    1) TGTCGTTTTTTTGCGACA  1 
f_glmY/Z3_Pwa_SCC3193    (    1) TGTCGTTTTTTTGCGACA  1 
r_glmY/Z2_Pwa_SCC3193    (    1) TGTCATCAATTAGAGACA  1 
f_glmY/Z2_Pwa_SCC3193    (    1) TGTCATCAATTAGAGACA  1 
r_glmY/Z2_Dda3937        (    1) TGTCGTTGATTTGAGACA  1 
f_glmY/Z2_Dda3937        (    1) TGTCGTTGATTTGAGACA  1 
r_glmY/Z1_Dda3937        (    1) TGTCTTTCTTTAGCGACA  1 
f_glmY/Z1_Dda3937        (    1) TGTCTTTCTTTAGBlkEBlkS      @�      @�     CGACA  1 
r_glmZ1_Pcc21            (    1) CGTCTCTGAATGGCGACA  1 
f_glmZ1_Pcc21            (    1) CGTCTCTGAATGGCGACA  1 
r_glmY/Z3_SCRI1043       (    1) CGTCGCAAAAAAACGACA  1 
f_glmY/Z3_SCRI1043       (    1) CGTCGCAAAAAAACGACA  1 
r_glmY/Z3_Pcc21          (    1) CGTCGCAAAAAAACGACA  1 
f_glmY/Z3_Pcc21          (    1) CGTCGCAAAAAAACGACA  1 
//

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific scoring matrix
--------------------------------------------------------------------------------
log-odds matrix: alength= 4 w= 18 n= 28 bayes= 1.53051 E= 5.2e-149 
 -1145    -88  -1145    156 
 -1145  -1145    234  -1145 
 -1145  -1145  -1145    172 
 -1145    234  -1145  -1145 
  -108  -1145    112     50 
 -1145    186   -146    -50 
   -50    -88  -1145    116 
   108   -246   -146    -28 
   116  -1148  -1148      8 
     8  -1146  -1146    116BlkEBlkS      @�      @�      
   -28   -146   -246    108 
   116  -1147    -88    -50 
   -50   -146    186  -1147 
    50    112  -1147   -108 
 -1147  -1147    234  -1147 
   172  -1147  -1147  -1147 
 -1147    234  -1147  -1147 
   156  -1147    -88  -1147 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific probability matrix
--------------------------------------------------------------------------------
letter-probability matrix: alength= 4 w= 18 nsites= 28 E= 5.2e-149 
 0.000000  0.107143  0.000000  0.892857 
 0.000000  0.000000  1.000000  0.000000 
 0.000000  0.000000  0.000000  1.000000 
 0.000000  1.000000  0.000000  0.000000 
 0.142857  0.000000  0.428571  0.428571 
 0.000000  0.714286  0.071429  0.214286 
 0.214286  0.107143  0.000000  0.678571 
 0.642857  0.035714  0.071429  0.250000 
 0.678570  0.000000  0.000000  0.321427 
 0.321428  0.000000  0.000000  BlkEBlkS      @�      @�     0.678571 
 0.249999  0.071428  0.035713  0.642856 
 0.678570  0.000000  0.107142  0.214285 
 0.214285  0.071428  0.714285  0.000000 
 0.428570  0.428570  0.000000  0.142856 
 0.000000  0.000000  0.999999  0.000000 
 0.999999  0.000000  0.000000  0.000000 
 0.000000  0.999999  0.000000  0.000000 
 0.892856  0.000000  0.107142  0.000000 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 regular expression
--------------------------------------------------------------------------------
TGTC[GT][CT][TA][AT][AT][TA][TA][AT][GA][AC]GACA
--------------------------------------------------------------------------------




Time  0.11 secs.

********************************************************************************


********************************************************************************
SUMMARY OF MOTIFS
************************************************BlkEBlkS      @�      @�     ********************************

--------------------------------------------------------------------------------
	Combined block diagrams: non-overlapping sites with p-value < 0.0001
--------------------------------------------------------------------------------
SEQUENCE NAME            COMBINED P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
f_glmY/Z1_SCRI1043               6.60e-08  [+1(3.30e-08)]
r_glmY/Z1_SCRI1043               6.60e-08  [+1(3.30e-08)]
f_glmY/Z2_Pcc21                  1.88e-08  [+1(9.38e-09)]
r_glmY/Z2_Pcc21                  1.88e-08  [+1(9.38e-09)]
f_glmY/Z3_Pcc21                  3.52e-07  [+1(1.76e-07)]
r_glmY/Z3_Pcc21                  3.52e-07  [+1(1.76e-07)]
f_glmY/Z2_Pca3-2                 2.28e-09  [+1(1.14e-09)]
r_glmY/Z2_Pca3-2                 2.28e-09  [+1(1.14e-09)]
f_glmY/Z2_SCRI1043               2.28e-09  [+1(1.14e-09)]
r_glmY/Z2_SCRI1043               2.28e-09  [+1(1.14e-09)]
f_glmY/Z3_SCRI1043              BlkEBlkS      @�      @�      3.52e-07  [+1(1.76e-07)]
r_glmY/Z3_SCRI1043               3.52e-07  [+1(1.76e-07)]
f_glmY/Z1_Dda3937                1.70e-07  [+1(8.48e-08)]
r_glmY/Z1_Dda3937                1.70e-07  [+1(8.48e-08)]
f_glmY/Z2_Dda3937                1.31e-07  [+1(6.57e-08)]
r_glmY/Z2_Dda3937                1.31e-07  [+1(6.57e-08)]
f_glmY/Z1_Pwa_SCC3193            6.60e-08  [+1(3.30e-08)]
r_glmY/Z1_Pwa_SCC3193            6.60e-08  [+1(3.30e-08)]
f_glmY/Z2_Pwa_SCC3193            1.31e-07  [+1(6.57e-08)]
r_glmY/Z2_Pwa_SCC3193            1.31e-07  [+1(6.57e-08)]
f_glmY/Z3_Pwa_SCC3193            8.15e-08  [+1(4.07e-08)]
r_glmY/Z3_Pwa_SCC3193            8.15e-08  [+1(4.07e-08)]
f_glmZ1_Pcc21                    2.58e-07  [+1(1.29e-07)]
r_glmZ1_Pcc21                    2.58e-07  [+1(1.29e-07)]
f_glmZ2_Pcc21                    1.65e-08  [+1(8.25e-09)]
r_glmZ2_Pcc21                    1.65e-08  [+1(8.25e-09)]
f_glmZ1_Pat21A                   2.67e-08  [+1(1.33e-08)]
r_glmZ1_Pat21A                   2.67eBlkEBlkS      @�              -08  [+1(1.33e-08)]
--------------------------------------------------------------------------------

********************************************************************************


********************************************************************************
Stopped because nmotifs = 1 reached.
********************************************************************************

CPU: Ptushka.local

********************************************************************************
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          BlkEBlkS       @�      @�     @��     ????   A�V�5�  A�V�5�  GlrR.hmm                                                                                                                                                                                                                        HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  18
MAXL  71
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Sat Jan  9 20:44:28 2016
NSEQ  28
EFFN  28.000000
CKSUM 3328612652
GA    9.00
TC    9.40
NC    8.70
STATS LOCAL MSV       -6.2877  0.76404
STATS LOCAL VITERBI   -6.3908  0.76404
STATS LOCAL FORWARD   -2.3931  0.76404
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.23094  1.57908  1.57356  1.22244
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  0.00000        *
      1   5.15874  1.98131  5.41560  0.16027      1 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.006BlkEBlkS      @�      @�     64  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
      2   5.37905  6.34555  0.00858  6.12884      2 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
      3   5.54055  5.19238  5.65649  0.01306      3 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
      4   5.45508  0.01506  5.61874  4.95563      4 C - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
      5   1.92988  3.43153  0.83321  0.94715      5 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
      6   4.29067  0.39737  2.52371  1.45219      6 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
      7   1.54499  2.03287  3.83988  0.45534      BlkEBlkS      @�      @�     7 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
      8   0.58176  2.58355  2.20942  1.36330      8 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
      9   0.43334  4.67075  5.05228  1.09095      9 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
     10   1.09941  4.58680  5.01241  0.43064     10 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
     11   1.38803  2.22544  2.57459  0.56876     11 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
     12   0.48948  3.43319  2.01939  1.50493     12 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.2623BlkEBlkS      @�      @�     6  1.09861  0.40547
     13   1.54420  2.63809  0.35939  4.07923     13 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
     14   0.92194  0.82857  3.86352  1.93387     14 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
     15   5.37905  6.34555  0.00858  6.12884     15 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
     16   0.00650  6.50881  5.73891  6.33413     16 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
     17   5.45508  0.01506  5.61874  4.95563     17 C - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
     18   0.14459  6.22238  2.03798  6.05376     18 a - - -
          1.38629  1.38629 BlkEBlkS      @�               1.38629  1.38629
          0.00333  5.70711        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   BlkEBlkS      @�              BMap      0         0         0        0         0        0         0         0         0        $0        (0        ,0        00        40        80        <0      	  @0      
  D0        H0        L0        P0        T0        X0        \0        `0         d0        h0        l0        p0        t0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      BlkE