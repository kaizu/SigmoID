VFSv   BlkS       @D      @�          �BlkEBlkS       @�              @8      fold    A�iq~`  A�iq~`  /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�      @�`     @��     ????   A�iq~`  A�iq~`  PecS.fasta                                                                                                                                                                                                                      >f_pecS_Dda3937_Ech583
aagAATCTTAACGTCAAGATAaat
>r_pecS_Dda3937_Ech583
attTATCTTGACGTTAAGATTctt
>f_pecS_Ech703
aagTATCTTAACGTCAAGATAaat
>r_pecS_Ech703
attTATCTTGACGTTAAGATActt
>f_pecS_3-2
aatTACCTTGAAGTCAAGATAaat
>r_pecS_3-2
attTATCTTGACTTCAAGGTAatt
>f_pecS_21A_SCC3193_PC1
ATTTATCTTGACTTCAAGGTAATT
>r_pecS_21A_SCC3193_PC1
AATTACCTTGAAGTCAAGATAAAT
>f_pecM_21A
TAGTATCTTGAATTGAAGGTAAAG
>r_pecM_21A
CTTTACCTTCAATTCAAGATACTA
>f_pecM_3-2
TGATATCTTGAATTGAAGGTAAAG
>r_pecM_3-2
CTTTACCTTCAATTCAAGATATCA
>f_pecM_PC1
TAATATCTTGAATTGAAGGTAAAG
>r_pecM_PC1
CTTTACCTTCAATTCAAGATATTA
>f_pecM_SCC3193
TAATATCTTGAATTAAAGGTAAAG
>r_pecM_SCC3193
CTTTACCTTTAATTCAAGATATTA
>f_cynX1_3-2
aagATTCTTTATGTGAAGATAatg
>r_cynX1_3-2
catTATCTTCACATAAAGAATctt
>f_cynX1BlkEBlkS      @�              _PC1
AAGATTCTTTATGTGAAGATATTG
>r_cynX1_PC1
CAATATCTTCACATAAAGAATCTT
>f_cynX2_3-2_21A_PC1
tttTATCTTGACGTTAAGATTctt
>r_cynX2_3-2_21A_PC1
aagAATCTTAACGTCAAGATAaaa
>f_cynX_SCC3193
TTTTATCTTGACGTGAAGATTCTT
>r_cynX_SCC3193
AAGAATCTTCACGTCAAGATAAAA
>f_"dosP"_3-2
CTGAACCTTAACGTAAAGATAAAG
>r_"dosP"_3-2
CTTTATCTTTACGTTAAGGTTCAG
>f_"dosP"_21A
CTGAACCTTAACGGAAAGATAAAG
>r_"dosP"_21A
CTTTATCTTTCCGTTAAGGTTCAG
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  BlkEBlkS       @�      @�0     @��     ????   A�iq~`  A�iq~`  PecS.options                                                                                                                                                                                                                    ////
// nhmmer options
////


// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 17.3 17.3


// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
#=GF GA 13.2 13.2


//Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 12.6 12.6


// use the gathering threshold from the calibrated profile
nhmmer.--cut_ga


////
// HmmGen options
////


// the alignment length
HmmGen.-L 24


// the site is palindromic
HmmGen.-p


// don't pick up locus_tag from next locus
BlkEBlkS      @�              HmmGen.-n


// feature key
HmmGen.-f protein_bind


// feature qualifier
HmmGen.-q bound_moiety#PecS


// MASTgen p-value cutoff
mastGen.-V 1e-7


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             BlkEBlkS       @�      @�0     @��     ????   A�iq~`  A�iq~`  PecS.info                                                                                                                                                                                                                          PecS is a MarR family transcriptional regulator that was shown to control a large group of virulence factors in Dickeya dadantii, including pectate lyases, polygalacturonases, cellulases, harpin and blue pigment indigoidine. A consensus binding site for PecS was suggested by Rouanet et al. (DOI: 10.1074/jbc.M403343200) based on multiple lines of evidence (SELEX, EMSA and DNAse I footprinting). The suggested site, however, has very low information content an HMM/PWM profiles built from the data Rouanet et al. cannot identify even the highest affinity sites.
   Native ligands sensed by PecS in A.tumefaciens, urate and xanthine, have  been identified by Perera and Grove (doi:10.1016/j.jmb.2010.07.053). A recent work of the samBlkEBlkS      @�              e authors (doi:10.1002/pro.588) suggested binding site for PecS in both A. tumefaciens and D. dadantii. This site is a 18 bp palindrome with high information content and is different from the one suggested earlier by Rouanet et al.
   The profile in this .sig is based on the work of Perera and Grove and is calibrated to find binding sites in front of pecS and 1-2 efflux transporter genes (pecM and cynX). This profile cannot find any sites in front of pectolytic enzyme genes or their known regulators, even with very low threshold.                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�      @�     @ѓ�    ????   A�iq~�  A�iq~�  meme.txt                                                                                                                                                                                                                        ********************************************************************************
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
f_pecS_Dda3937_EBlkEBlkS      @�      @�     ch583    1.0000     24  r_pecS_Dda3937_Ech583    1.0000     24  
f_pecS_Ech703            1.0000     24  r_pecS_Ech703            1.0000     24  
f_pecS_3-2               1.0000     24  r_pecS_3-2               1.0000     24  
f_pecS_21A_SCC3193_PC1   1.0000     24  r_pecS_21A_SCC3193_PC1   1.0000     24  
f_pecM_21A               1.0000     24  r_pecM_21A               1.0000     24  
f_pecM_3-2               1.0000     24  r_pecM_3-2               1.0000     24  
f_pecM_PC1               1.0000     24  r_pecM_PC1               1.0000     24  
f_pecM_SCC3193           1.0000     24  r_pecM_SCC3193           1.0000     24  
f_cynX1_3-2              1.0000     24  r_cynX1_3-2              1.0000     24  
f_cynX1_PC1              1.0000     24  r_cynX1_PC1              1.0000     24  
f_cynX2_3-2_21A_PC1      1.0000     24  r_cynX2_3-2_21A_PC1      1.0000     24  
f_cynX_SCC3193           1.0000     24  r_cynX_SCC3193           1.0000     24  
f_"dosP"_3-2             1.0000     BlkEBlkS      @�      @�     24  r_"dosP"_3-2             1.0000     24  
f_"dosP"_21A             1.0000     24  r_"dosP"_21A             1.0000     24  
********************************************************************************

********************************************************************************
COMMAND LINE SUMMARY
********************************************************************************
This information can also be useful in the event you wish to report a
problem with the MEME software.

command: meme -nmotifs 1 -dna -text -pal -revcomp /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=         zoops    nmotifs=         1    evt=           inf
object function=  E-value of product of p-values
width:  minw=            8    maxw=           24    minic=        0.00
width:  wg=             11    ws=              1    endgaps=       yes
nsites: minsites=        2    maxsites=       28    wnsites=       0.8
theta:  prob=            1 BlkEBlkS      @�      @�        spmap=         uni    spfuzz=        0.5
global: substring=     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter=        50
        distance=    1e-05
data:   n=             672    N=              28
strands: + -
sample: seed=            0    seqfrac=         1
Letter frequencies in dataset:
A 0.365 C 0.135 G 0.135 T 0.365 
Background letter frequencies (from dataset with add-one prior applied):
A 0.364 C 0.136 G 0.136 T 0.364 
********************************************************************************


********************************************************************************
MOTIF  1 MEME	width =  24  sites =  28  llr = 488  E-value = 3.7e-158
********************************************************************************
--------------------------------------------------------------------------------
	Motif 1 Description
--------------------------------------------------------------------------------
BlkEBlkS      @�      @�     Simplified        A  45139::::2a41:2aa:717552
pos.-specific     C  4::::3a::2:6::4::::::3::
probability       G  ::3::::::4::6:2::a3::::4
matrix            T  255817:aa2:14a2::::92154

         bits    2.9       *          *      
                 2.6       *          *      
                 2.3       *          *      
                 2.0       *          *      
Relative         1.7       *          *      
Entropy          1.4       ***      ***      
(25.1 bits)      1.2     * *** *  * *** *    
                 0.9     ***** **** *****    
                 0.6 * ******************** *
                 0.3 ************************
                 0.0 ------------------------

Multilevel           ATTTATCTTGACGTCAAGATAAAT
consensus            CAGA C   C AT G   G TCTG
sequence             T                      A
                                             
--------------------------------------------------------------------------------

----------------------------------BlkEBlkS      @�      @�     ----------------------------------------------
	Motif 1 sites sorted by position p-value
--------------------------------------------------------------------------------
Sequence name            Strand  Start   P-value                      Site        
-------------            ------  ----- ---------            ------------------------
r_pecS_Ech703                -      1  1.25e-10          . AAGTATCTTAACGTCAAGATAAAT           
f_pecS_Ech703                +      1  1.25e-10          . AAGTATCTTAACGTCAAGATAAAT           
r_pecS_21A_SCC3193_PC1       +      1  1.46e-10          . AATTACCTTGAAGTCAAGATAAAT           
f_pecS_21A_SCC3193_PC1       -      1  1.46e-10          . AATTACCTTGAAGTCAAGATAAAT           
r_pecS_3-2                   -      1  1.46e-10          . AATTACCTTGAAGTCAAGATAAAT           
f_pecS_3-2                   +      1  1.46e-10          . AATTACCTTGAAGTCAAGATAAAT           
r_cynX_SCC3193               +      1  3.64e-10          . AAGAATCTTCACGTCAAGATAAAA BlkEBlkS      @�      @�               
f_cynX_SCC3193               -      1  3.64e-10          . AAGAATCTTCACGTCAAGATAAAA           
r_pecS_Dda3937_Ech583        -      1  6.26e-10          . AAGAATCTTAACGTCAAGATAAAT           
f_pecS_Dda3937_Ech583        +      1  6.26e-10          . AAGAATCTTAACGTCAAGATAAAT           
r_"dosP"_3-2                 -      1  7.17e-10          . CTGAACCTTAACGTAAAGATAAAG           
f_"dosP"_3-2                 +      1  7.17e-10          . CTGAACCTTAACGTAAAGATAAAG           
r_pecM_21A                   +      1  1.19e-09          . CTTTACCTTCAATTCAAGATACTA           
f_pecM_21A                   -      1  1.19e-09          . CTTTACCTTCAATTCAAGATACTA           
r_cynX2_3-2_21A_PC1          +      1  1.55e-09          . AAGAATCTTAACGTCAAGATAAAA           
f_cynX2_3-2_21A_PC1          -      1  1.55e-09          . AAGAATCTTAACGTCAAGATAAAA           
r_pecM_PC1                   -      1  8.91e-09          . TAATATCTTGAATTGAAGGTAAAG           
f_pecM_PC1                   + BlkEBlkS      @�      @�          1  8.91e-09          . TAATATCTTGAATTGAAGGTAAAG           
r_"dosP"_21A                 +      1  9.81e-09          . CTTTATCTTTCCGTTAAGGTTCAG           
f_"dosP"_21A                 -      1  9.81e-09          . CTTTATCTTTCCGTTAAGGTTCAG           
r_pecM_SCC3193               -      1  2.42e-08          . TAATATCTTGAATTAAAGGTAAAG           
f_pecM_SCC3193               +      1  2.42e-08          . TAATATCTTGAATTAAAGGTAAAG           
r_pecM_3-2                   -      1  3.33e-08          . TGATATCTTGAATTGAAGGTAAAG           
f_pecM_3-2                   +      1  3.33e-08          . TGATATCTTGAATTGAAGGTAAAG           
r_cynX1_3-2                  -      1  1.09e-07          . AAGATTCTTTATGTGAAGATAATG           
f_cynX1_3-2                  +      1  1.09e-07          . AAGATTCTTTATGTGAAGATAATG           
r_cynX1_PC1                  +      1  2.24e-07          . CAATATCTTCACATAAAGAATCTT           
f_cynX1_PC1                  -      1  2.24e-07          . CAATATCTTCACATBlkEBlkS      	@�      @�     AAAGAATCTT           
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 block diagrams
--------------------------------------------------------------------------------
SEQUENCE NAME            POSITION P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
r_pecS_Ech703                     1.3e-10  [-1]
f_pecS_Ech703                     1.3e-10  [+1]
r_pecS_21A_SCC3193_PC1            1.5e-10  [+1]
f_pecS_21A_SCC3193_PC1            1.5e-10  [-1]
r_pecS_3-2                        1.5e-10  [-1]
f_pecS_3-2                        1.5e-10  [+1]
r_cynX_SCC3193                    3.6e-10  [+1]
f_cynX_SCC3193                    3.6e-10  [-1]
r_pecS_Dda3937_Ech583             6.3e-10  [-1]
f_pecS_Dda3937_Ech583             6.3e-10  [+1]
r_"dosP"_3-2                      7.2e-10  [-1]
f_"dosP"_3-2                      7.2e-10  [+1]
r_pecM_21A  BlkEBlkS      
@�      @�                           1.2e-09  [+1]
f_pecM_21A                        1.2e-09  [-1]
r_cynX2_3-2_21A_PC1               1.6e-09  [+1]
f_cynX2_3-2_21A_PC1               1.6e-09  [-1]
r_pecM_PC1                        8.9e-09  [-1]
f_pecM_PC1                        8.9e-09  [+1]
r_"dosP"_21A                      9.8e-09  [+1]
f_"dosP"_21A                      9.8e-09  [-1]
r_pecM_SCC3193                    2.4e-08  [-1]
f_pecM_SCC3193                    2.4e-08  [+1]
r_pecM_3-2                        3.3e-08  [-1]
f_pecM_3-2                        3.3e-08  [+1]
r_cynX1_3-2                       1.1e-07  [-1]
f_cynX1_3-2                       1.1e-07  [+1]
r_cynX1_PC1                       2.2e-07  [+1]
f_cynX1_PC1                       2.2e-07  [-1]
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 in BLOCKS format
-----------------------------------------------BlkEBlkS      @�      @�     ---------------------------------
BL   MOTIF 1 width=24 seqs=28
r_pecS_Ech703            (    1) AAGTATCTTAACGTCAAGATAAAT  1 
f_pecS_Ech703            (    1) AAGTATCTTAACGTCAAGATAAAT  1 
r_pecS_21A_SCC3193_PC1   (    1) AATTACCTTGAAGTCAAGATAAAT  1 
f_pecS_21A_SCC3193_PC1   (    1) AATTACCTTGAAGTCAAGATAAAT  1 
r_pecS_3-2               (    1) AATTACCTTGAAGTCAAGATAAAT  1 
f_pecS_3-2               (    1) AATTACCTTGAAGTCAAGATAAAT  1 
r_cynX_SCC3193           (    1) AAGAATCTTCACGTCAAGATAAAA  1 
f_cynX_SCC3193           (    1) AAGAATCTTCACGTCAAGATAAAA  1 
r_pecS_Dda3937_Ech583    (    1) AAGAATCTTAACGTCAAGATAAAT  1 
f_pecS_Dda3937_Ech583    (    1) AAGAATCTTAACGTCAAGATAAAT  1 
r_"dosP"_3-2             (    1) CTGAACCTTAACGTAAAGATAAAG  1 
f_"dosP"_3-2             (    1) CTGAACCTTAACGTAAAGATAAAG  1 
r_pecM_21A               (    1) CTTTACCTTCAATTCAAGATACTA  1 
f_pecM_21A               (    1) CTTTACCTTCAATTCAAGATACTA  1 
r_cynX2_3-2_21A_PC1      (    1) AAGAATCTTAACGTCAAGATAAAA  1BlkEBlkS      @�      @�      
f_cynX2_3-2_21A_PC1      (    1) AAGAATCTTAACGTCAAGATAAAA  1 
r_pecM_PC1               (    1) TAATATCTTGAATTGAAGGTAAAG  1 
f_pecM_PC1               (    1) TAATATCTTGAATTGAAGGTAAAG  1 
r_"dosP"_21A             (    1) CTTTATCTTTCCGTTAAGGTTCAG  1 
f_"dosP"_21A             (    1) CTTTATCTTTCCGTTAAGGTTCAG  1 
r_pecM_SCC3193           (    1) TAATATCTTGAATTAAAGGTAAAG  1 
f_pecM_SCC3193           (    1) TAATATCTTGAATTAAAGGTAAAG  1 
r_pecM_3-2               (    1) TGATATCTTGAATTGAAGGTAAAG  1 
f_pecM_3-2               (    1) TGATATCTTGAATTGAAGGTAAAG  1 
r_cynX1_3-2              (    1) AAGATTCTTTATGTGAAGATAATG  1 
f_cynX1_3-2              (    1) AAGATTCTTTATGTGAAGATAATG  1 
r_cynX1_PC1              (    1) CAATATCTTCACATAAAGAATCTT  1 
f_cynX1_PC1              (    1) CAATATCTTCACATAAAGAATCTT  1 
//

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 positionBlkEBlkS      @�      @�     -specific scoring matrix
--------------------------------------------------------------------------------
log-odds matrix: alength= 4 w= 24 n= 28 bayes= -664.386 E= 3.7e-158 
    24    139  -1145    -76 
    35  -1145   -193     46 
  -135  -1145    124     56 
   -54  -1145  -1145    104 
   135  -1145  -1145   -235 
 -1145    107  -1145     97 
 -1145    288  -1145  -1145 
 -1145  -1145  -1145    146 
 -1145  -1145  -1145    146 
  -103     65    165   -103 
   141   -193  -1145  -1145 
    -3    207  -1150   -235 
  -235  -1147    207     -3 
 -1146  -1148   -193    141 
  -103    165     65   -103 
   146  -1148  -1148  -1146 
   146  -1148  -1148  -1146 
 -1146  -1148    288  -1146 
    97  -1148    107  -1146 
  -235  -1148  -1148    135 
   104  -1148  -1148    -54 
    56    124  -1148   -135 
    46   -193  -1148     35 
   -76  -1148    139     24 
--------------------------------------------------------------------------------

---------------------------------------BlkEBlkS      @�      @�     -----------------------------------------
	Motif 1 position-specific probability matrix
--------------------------------------------------------------------------------
letter-probability matrix: alength= 4 w= 24 nsites= 28 E= 3.7e-158 
 0.428571  0.357143  0.000000  0.214286 
 0.464286  0.000000  0.035714  0.500000 
 0.142857  0.000000  0.321429  0.535714 
 0.250000  0.000000  0.000000  0.750000 
 0.928571  0.000000  0.000000  0.071429 
 0.000000  0.285714  0.000000  0.714286 
 0.000000  1.000000  0.000000  0.000000 
 0.000000  0.000000  0.000000  1.000000 
 0.000000  0.000000  0.000000  1.000000 
 0.178571  0.214286  0.428571  0.178571 
 0.964286  0.035714  0.000000  0.000000 
 0.357141  0.571427  0.000000  0.071427 
 0.071428  0.000000  0.571428  0.357142 
 0.000000  0.000000  0.035713  0.964285 
 0.178570  0.428570  0.214285  0.178570 
 0.999999  0.000000  0.000000  0.000000 
 0.999999  0.000000  0.000000  0.000000 
 0.000000  0.000000  0.999999  0.000000 
 0.714285  0.0000BlkEBlkS      @�      @�     00  0.285713  0.000000 
 0.071428  0.000000  0.000000  0.928570 
 0.749999  0.000000  0.000000  0.249999 
 0.535713  0.321428  0.000000  0.142856 
 0.499999  0.035713  0.000000  0.464285 
 0.214285  0.000000  0.357142  0.428570 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 regular expression
--------------------------------------------------------------------------------
[ACT][TA][TG][TA]A[TC]CTT[GC]A[CA][GT]T[CG]AAG[AG]T[AT][AC][AT][TGA]
--------------------------------------------------------------------------------




Time  0.19 secs.

********************************************************************************


********************************************************************************
SUMMARY OF MOTIFS
********************************************************************************

-------------------------------------------------------BlkEBlkS      @�      @�     -------------------------
	Combined block diagrams: non-overlapping sites with p-value < 0.0001
--------------------------------------------------------------------------------
SEQUENCE NAME            COMBINED P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
f_pecS_Dda3937_Ech583            1.25e-09  [+1(6.26e-10)]
r_pecS_Dda3937_Ech583            1.25e-09  [+1(6.26e-10)]
f_pecS_Ech703                    2.51e-10  [+1(1.25e-10)]
r_pecS_Ech703                    2.51e-10  [+1(1.25e-10)]
f_pecS_3-2                       2.92e-10  [+1(1.46e-10)]
r_pecS_3-2                       2.92e-10  [+1(1.46e-10)]
f_pecS_21A_SCC3193_PC1           2.92e-10  [+1(1.46e-10)]
r_pecS_21A_SCC3193_PC1           2.92e-10  [+1(1.46e-10)]
f_pecM_21A                       2.39e-09  [+1(1.19e-09)]
r_pecM_21A                       2.39e-09  [+1(1.19e-09)]
f_pecM_3-2                       6.67e-08  [+1(3.33e-08)]
r_pecM_3-2                       6.67e-08  [+1(3.33e-08)]
f_pecBlkEBlkS      @�      @�     M_PC1                       1.78e-08  [+1(8.91e-09)]
r_pecM_PC1                       1.78e-08  [+1(8.91e-09)]
f_pecM_SCC3193                   4.84e-08  [+1(2.42e-08)]
r_pecM_SCC3193                   4.84e-08  [+1(2.42e-08)]
f_cynX1_3-2                      2.18e-07  [+1(1.09e-07)]
r_cynX1_3-2                      2.18e-07  [+1(1.09e-07)]
f_cynX1_PC1                      4.48e-07  [+1(2.24e-07)]
r_cynX1_PC1                      4.48e-07  [+1(2.24e-07)]
f_cynX2_3-2_21A_PC1              3.10e-09  [+1(1.55e-09)]
r_cynX2_3-2_21A_PC1              3.10e-09  [+1(1.55e-09)]
f_cynX_SCC3193                   7.27e-10  [+1(3.64e-10)]
r_cynX_SCC3193                   7.27e-10  [+1(3.64e-10)]
f_"dosP"_3-2                     1.43e-09  [+1(7.17e-10)]
r_"dosP"_3-2                     1.43e-09  [+1(7.17e-10)]
f_"dosP"_21A                     1.96e-08  [+1(9.81e-09)]
r_"dosP"_21A                     1.96e-08  [+1(9.81e-09)]
---------------------------------------------------------------------BlkEBlkS      @�              -----------

********************************************************************************


********************************************************************************
Stopped because nmotifs = 1 reached.
********************************************************************************

CPU: Ptushka-3.local

********************************************************************************
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 BlkEBlkS       @�      @�     @�     ????   A�iq~�  A�iq~�  PecS.hmm                                                                                                                                                                                                                        HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  24
MAXL  79
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Sun May  1 10:33:24 2016
NSEQ  28
EFFN  28.000000
CKSUM 3906085310
GA    13.20
TC    17.30
NC    12.60
STATS LOCAL MSV       -6.7327  0.75017
STATS LOCAL VITERBI   -6.8194  0.75017
STATS LOCAL FORWARD   -2.7618  0.75017
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.02864  1.93895  1.95168  1.03110
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  0.00000        *
      1   1.00426  0.93691  3.67313  1.53040      1 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.BlkEBlkS      @�      @�     00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
      2   0.82875  3.51953  2.66823  0.76697      2 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
      3   1.73263  3.32391  1.14474  0.75744      3 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
      4   1.30814  4.61892  5.08161  0.33743      4 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
      5   0.11613  5.11020  5.49320  2.30772      5 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
      6   5.10691  1.23913  5.35876  0.35724      6 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
      7   5.45508  0.01506  5.61874  4.95563   BlkEBlkS      @�      @�        7 C - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
      8   5.54055  5.19238  5.65649  0.01306      8 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
      9   5.54055  5.19238  5.65649  0.01306      9 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
     10   1.66251  1.45505  1.05474  1.47551     10 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
     11   0.07033  2.84394  5.58427  5.12213     11 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
     12   1.09657  0.62434  4.08902  2.17493     12 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.2BlkEBlkS      @�      @�     6236  1.09861  0.40547
     13   2.16009  3.64599  0.61554  1.14495     13 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
     14   5.40379  4.98829  2.88813  0.06935     14 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
     15   1.50069  1.06355  1.44400  1.63059     15 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
     16   0.00650  6.50881  5.73891  6.33413     16 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
     17   0.00650  6.50881  5.73891  6.33413     17 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
     18   5.37905  6.34555  0.00858  6.12884     18 G - - -
          1.38629  1.386BlkEBlkS      @�      @�     29  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
     19   0.34773  5.97126  1.24455  5.78037     19 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
     20   2.31986  4.78408  5.41526  0.11777     20 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
     21   0.33899  4.74426  5.13646  1.29854     21 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
     22   0.74167  1.13300  3.72510  1.72874     22 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
     23   0.76665  2.69876  3.88680  0.80378     23 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00664  5.71043  5.71043  1.46634  0.26236  1.09861  0.40547
     24   1.55BlkEBlkS      @�              098  3.34461  0.93930  1.01670     24 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00333  5.70711        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          BlkEBlkS      @�              BMap   !   0         0         0        0         0        0         0        0          0        $0        (0        ,0        00        40        80        <0        @0      	  D0      
  H0        L0        P0        T0        X0        \0        `0        d0        h0         l0        p0        t0        x0        |0        �0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  BlkE