VFSv   BlkS       @D      @�        	  �BlkEBlkS       @�              @<      fold    A�@��`  A�@��`  /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        BlkEBlkS       @�      @�`     @�     ????   A�@��`  A�@��`  MetR_Pectobacterium.fasta                                                                                                                                                                                                       >f_ECA4244(metF) 3-2 10.8 Score=4.8 Pos=-156 [Erwinia carotovora subsp. atroseptica SCRI1043]
ATCATGAACTTTTTTCATTTA
>r_ECA4244(metF) 3-2 10.8 Score=4.8 Pos=-156 [Erwinia carotovora subsp. atroseptica SCRI1043]
TAAATGAAAAAAGTTCATGAT
>f_ECA0181(metE metR) 3-2 Score=4.7 Pos=-106 [Erwinia carotovora subsp. atroseptica SCRI1043]
ATCATGAGAGTCCTTCACAGT
>r_ECA0181(metE metR) 3-2 Score=4.7 Pos=-106 [Erwinia carotovora subsp. atroseptica SCRI1043]
ACTGTGAAGGACTCTCATGAT
>f_ECA3992(metA) Score=4.9 Pos=-112 [Erwinia carotovora subsp. atroseptica SCRI1043]
CTCGTGAAACATTTTCACCTT
>r_ECA3992(metA) Score=4.9 Pos=-112 [Erwinia carotovora subsp. atroseptica SCRI1043]
AAGGTGAAAATGTTTCACGAG
>f_ECA3125(PF08908) Score=4.4 Pos=-181 [Erwinia carotovoraBlkEBlkS      @�      @�`      subsp. atroseptica SCRI1043]
ATCATGAATATAATTCATCTT
>r_ECA3125(PF08908) Score=4.4 Pos=-181 [Erwinia carotovora subsp. atroseptica SCRI1043]
AAGATGAATTATATTCATGAT
>f_ECA1113(metE2) Score=4.4 Pos=-202 [Erwinia carotovora subsp. atroseptica SCRI1043]
TACATGAATTTTATTCACGTG
>r_ECA1113(metE2) Score=4.4 Pos=-202 [Erwinia carotovora subsp. atroseptica SCRI1043]
CACGTGAATAAAATTCATGTA
>f_ECA0180(metR) Score=3.8 Pos=-173 [Erwinia carotovora subsp. atroseptica SCRI1043]
TTCCTGCGCTTTTTTCAGTTC
>r_ECA0180(metR) Score=3.8 Pos=-173 [Erwinia carotovora subsp. atroseptica SCRI1043]
GAACTGAAAAAAGCGCAGGAA
>f_ECA3987(metH) Score=4.7 Pos=-98 [Erwinia carotovora subsp. atroseptica SCRI1043]
TACCTGAAAAAGTCTCATGCT
>r_ECA3987(metH) Score=4.7 Pos=-98 [Erwinia carotovora subsp. atroseptica SCRI1043]
AGCATGAGACTTTTTCAGGTA
>f_metC_SCRI1043 11.8
TACCTGAAATATTTTCACCTA
>r_metC_SCRI1043 11.8
TAGGTGAAAATATTTCAGGTA
>f_metA_Pca3-2_PwaSCC3193 9.5
ACAGTGAAACATTTTCACCTT
>r_metA_Pca3-2_PwaSCC3193 9.5
AAGGTGAAAATGTTTCACBlkEBlkS      @�              TGT
>f_metH_Pca3-2 8.1
AGCATGAGACTTTTTCAGATC
>r_metH_Pca3-2 8.1
GATCTGAAAAAGTCTCATGCT
>f_metE2_Pca3-2
CACGTGAACTTTCTTCATGTT
>r_metE2_Pca3-2
AACATGAAGAAAGTTCACGTG
>f_metE2_2_Pca3-2
ATCATGAAGATGGCTCATGTC
>r_metE2_2_Pca3-2
GACATGAGCCATCTTCATGAT
>f_OA04_21030_Pca3-2 ABC transporter substrate binding protein (?)
AAATTGAAATTATTTCATAAG
>r_OA04_21030_Pca3-2 ABC transporter substrate binding protein (?)
CTTATGAAATAATTTCAATTT
>f_OA04_01940_Pca3-2 AA transporter convergent with metR 8.0
TGACTGAAATTCATTCAGCTA
>r_OA04_01940_Pca3-2 AA transporter convergent with metR 8.0
TAGCTGAATGAATTTCAGTCA
>f_metF_PwaSCC3193
ATCATGAATTTTTTTCATTTA
>r_metF_PwaSCC3193
TAAATGAAAAAAATTCATGAT
>f_metE2_PwaSCC3193
AACATGAATTTTTTTCACGTG
>r_metE2_PwaSCC3193
CACGTGAAAAAAATTCATGTT
>f_metE_PwaSCC3193
AGCATGAGACTTTTTCAGGTC
>r_metE_PwaSCC3193
GACCTGAAAAAGTCTCATGCT                                                                                                                                                               BlkEBlkS       @�      @�0     @�|     ????   A�@��`  A�@��`  MetR_Pectobacterium.options                                                                                                                                                                                                     // a space is strictly required between a switch and its value 

////
// alignment options
////

// these are added to alignment when converting to Stockholm format

// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 9.1 9.1

// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
// (second number isn't used but is still required)
#=GF GA 9.0 9.0

// Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 8.7 8.7

////
// hmmbuild options
////

////
// nhmmer opBlkEBlkS      @�              tions
////

// use the gathering cutoff threshold from the calibrated profile
nhmmer.--cut_ga 

////
// HmmGen options
////

HmmGen.-L 21

// the site is palindromic
HmmGen.-p

// ignore sites inside ORFs (a bit unsafe)
HmmGen.-i

// feature key
HmmGen.-f protein_bind

// feature qualifiers
HmmGen.-q bound_moiety#MetR

////
// MastGen options
////

// MAST p-value
MastGen.-V 0.000007

// all other options for MastGen are the same as for hmmGen                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 BlkEBlkS       @�              @z@     ????   A�@��`  A�@��`  MetR_Pectobacterium.info                                                                                                                                                                                                        MetR is the regulator of methionine metabolism responsive to homocysteine.

hmm profile made of 15 Pectobacterium atrosepticum SCRI1043 MetR binding sites present in regPrecise version 3.2 was used to search genomes of Pectobacterium strains. 

The final profile is built from 18 nonredundant sequences from Pectobacterium atrosepticum SCRI 1043, P. carotovorum 3-2 and P. wasabiae SCC3193 and their reverse complements.                                                                                                                                                                                                                                                                                                                            BlkEBlkS       @�      @�     @�v�    ????   A�@��`  A�@��`  meme.txt                                                                                                                                                                                                                        ********************************************************************************
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
f_ECA4244(metF) BlkEBlkS      @�      @�              1.0000     21  r_ECA4244(metF)          1.0000     21  
f_ECA0181(metE)          1.0000     21  r_ECA0181(metE)          1.0000     21  
f_ECA3992(metA)          1.0000     21  r_ECA3992(metA)          1.0000     21  
f_ECA3125(PF08908)       1.0000     21  r_ECA3125(PF08908)       1.0000     21  
f_ECA1113(metE2)         1.0000     21  r_ECA1113(metE2)         1.0000     21  
f_ECA0180(metR)          1.0000     21  r_ECA0180(metR)          1.0000     21  
f_ECA0180_2(metR)        1.0000     21  r_ECA0180_2(metR)        1.0000     21  
f_ECA3987(metH)          1.0000     21  r_ECA3987(metH)          1.0000     21  
f_metC_SCRI1043          1.0000     21  r_metC_SCRI1043          1.0000     21  
f_metA_Pca3-2_PwaSCC3193 1.0000     21  r_metA_Pca3-2_PwaSCC3193 1.0000     21  
f_metH_Pca3-2            1.0000     21  r_metH_Pca3-2            1.0000     21  
f_metE2_Pca3-2           1.0000     21  r_metE2_Pca3-2           1.0000     21  
f_OA04_21030_Pca3-2      1.0000     BlkEBlkS      @�      @�     21  r_OA04_21030_Pca3-2      1.0000     21  
f_OA04_01940_Pca3-2      1.0000     21  r_OA04_01940_Pca3-2      1.0000     21  
f_OA04_20500_Pca3-2      1.0000     21  r_OA04_20500_Pca3-2      1.0000     21  
f_metF_PwaSCC3193        1.0000     21  r_metF_PwaSCC3193        1.0000     21  
f_metE2_PwaSCC3193       1.0000     21  r_metE2_PwaSCC3193       1.0000     21  
f_metE_PwaSCC3193        1.0000     21  r_metE_PwaSCC3193        1.0000     21  
********************************************************************************

********************************************************************************
COMMAND LINE SUMMARY
********************************************************************************
This information can also be useful in the event you wish to report a
problem with the MEME software.

command: meme -nmotifs 1 -dna -text -pal /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=         zoops    nmotifs=       BlkEBlkS      @�      @�       1    evt=           inf
object function=  E-value of product of p-values
width:  minw=            8    maxw=           21    minic=        0.00
width:  wg=             11    ws=              1    endgaps=       yes
nsites: minsites=        2    maxsites=       36    wnsites=       0.8
theta:  prob=            1    spmap=         uni    spfuzz=        0.5
global: substring=     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter=        50
        distance=    1e-05
data:   n=             756    N=              36
strands: +
sample: seed=            0    seqfrac=         1
Letter frequencies in dataset:
A 0.345 C 0.155 G 0.155 T 0.345 
Background letter frequencies (from dataset with add-one prior applied):
A 0.345 C 0.155 G 0.155 T 0.345 
********************************************************************************


********************************************************************************
MOTIF  1 MEME	width =BlkEBlkS      @�      @�       17  sites =  36  llr = 407  E-value = 5.2e-115
********************************************************************************
--------------------------------------------------------------------------------
	Motif 1 Description
--------------------------------------------------------------------------------
Simplified        A  24::a864542:::a11
pos.-specific     C  52::::11:112:a:31
probability       G  13:a:211:11::::25
matrix            T  11a:::245468a::42

         bits    2.7    *         *   
                 2.4    *         *   
                 2.1    *         *   
                 1.9    *         *   
Relative         1.6   **         **  
Entropy          1.3   ***       ***  
(16.3 bits)      1.1   ****     ****  
                 0.8   ****     ****  
                 0.5 * ****  *  **** *
                 0.3 ******* * *******
                 0.0 -----------------

Multilevel           CATGAAAATATTTCATG
consensus             G     TAT     C 
sequence      BlkEBlkS      @�      @�             C             G 
                                      
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 sites sorted by position p-value
--------------------------------------------------------------------------------
Sequence name             Start   P-value                  Site     
-------------             ----- ---------            -----------------
r_metE_PwaSCC3193             3  8.32e-08         GA CCTGAAAAAGTCTCATG CT        
f_metE_PwaSCC3193             3  8.32e-08         AG CATGAGACTTTTTCAGG TC        
r_metE2_PwaSCC3193            3  8.32e-08         CA CGTGAAAAAAATTCATG TT        
f_metE2_PwaSCC3193            3  8.32e-08         AA CATGAATTTTTTTCACG TG        
r_ECA3987(metH)               3  8.32e-08         AG CATGAGACTTTTTCAGG TA        
f_ECA3987(metH)               3  8.32e-08         TA CCTGAAAAAGTCTCATG CT        
r_metC_SCRBlkEBlkS      @�      @�     I1043               3  1.05e-07         TA GGTGAAAATATTTCAGG TA        
f_metC_SCRI1043               3  1.05e-07         TA CCTGAAATATTTTCACC TA        
r_ECA3992(metA)               3  1.05e-07         AA GGTGAAAATGTTTCACG AG        
f_ECA3992(metA)               3  1.05e-07         CT CGTGAAACATTTTCACC TT        
r_ECA1113(metE2)              3  6.94e-07         CA CGTGAATAAAATTCATG TA        
f_ECA1113(metE2)              3  6.94e-07         TA CATGAATTTTATTCACG TG        
r_metE2_Pca3-2                3  8.88e-07         AA CATGAAGAAAGTTCACG TG        
f_metE2_Pca3-2                3  8.88e-07         CA CGTGAACTTTCTTCATG TT        
r_metA_Pca3-2_PwaSCC3193      3  1.62e-06         AA GGTGAAAATGTTTCACT GT        
f_metA_Pca3-2_PwaSCC3193      3  1.62e-06         AC AGTGAAACATTTTCACC TT        
r_metF_PwaSCC3193             3  2.10e-06         TA AATGAAAAAAATTCATG AT        
f_metF_PwaSCC3193             3  2.10e-06         AT CATGAATTTTTTTCATT TA        
r_metH_Pca3-2     BlkEBlkS      @�      @�                 3  2.10e-06         GA TCTGAAAAAGTCTCATG CT        
f_metH_Pca3-2                 3  2.10e-06         AG CATGAGACTTTTTCAGA TC        
r_ECA4244(metF)               3  2.37e-06         TA AATGAAAAAAGTTCATG AT        
f_ECA4244(metF)               3  2.37e-06         AT CATGAACTTTTTTCATT TA        
r_ECA3125(PF08908)            3  4.83e-06         AA GATGAATTATATTCATG AT        
f_ECA3125(PF08908)            3  4.83e-06         AT CATGAATATAATTCATC TT        
r_ECA0180_2(metR)             3  7.63e-06         AT CATGAGAGTCCTTCACA GT        
f_ECA0180_2(metR)             3  7.63e-06         AC TGTGAAGGACTCTCATG AT        
r_ECA0181(metE)               3  7.63e-06         AC TGTGAAGGACTCTCATG AT        
f_ECA0181(metE)               3  7.63e-06         AT CATGAGAGTCCTTCACA GT        
r_OA04_01940_Pca3-2           3  8.32e-06         TA GCTGAATGAATTTCAGT CA        
f_OA04_01940_Pca3-2           3  8.32e-06         TG ACTGAAATTCATTCAGC TA        
r_OA04_20500_Pca3-2       BlkEBlkS      	@�      @�         3  2.47e-05         AT TTTGAAATTATTTCATT TG        
f_OA04_20500_Pca3-2           3  2.47e-05         CA AATGAAATAATTTCAAA AT        
r_OA04_21030_Pca3-2           3  2.47e-05         CT TATGAAATAATTTCAAT TT        
f_OA04_21030_Pca3-2           3  2.47e-05         AA ATTGAAATTATTTCATA AG        
r_ECA0180(metR)               3  3.19e-05         GA ACTGAAAAAAGCGCAGG AA        
f_ECA0180(metR)               3  3.19e-05         TT CCTGCGCTTTTTTCAGT TC        
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 block diagrams
--------------------------------------------------------------------------------
SEQUENCE NAME            POSITION P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
r_metE_PwaSCC3193                 8.3e-08  2_[+1]_2
f_metE_PwaSCC3193                 8.3e-08  2_[+1]_2
r_metE2_PwaSCC3193                8.3e-0BlkEBlkS      
@�      @�     8  2_[+1]_2
f_metE2_PwaSCC3193                8.3e-08  2_[+1]_2
r_ECA3987(metH)                   8.3e-08  2_[+1]_2
f_ECA3987(metH)                   8.3e-08  2_[+1]_2
r_metC_SCRI1043                   1.1e-07  2_[+1]_2
f_metC_SCRI1043                   1.1e-07  2_[+1]_2
r_ECA3992(metA)                   1.1e-07  2_[+1]_2
f_ECA3992(metA)                   1.1e-07  2_[+1]_2
r_ECA1113(metE2)                  6.9e-07  2_[+1]_2
f_ECA1113(metE2)                  6.9e-07  2_[+1]_2
r_metE2_Pca3-2                    8.9e-07  2_[+1]_2
f_metE2_Pca3-2                    8.9e-07  2_[+1]_2
r_metA_Pca3-2_PwaSCC3193          1.6e-06  2_[+1]_2
f_metA_Pca3-2_PwaSCC3193          1.6e-06  2_[+1]_2
r_metF_PwaSCC3193                 2.1e-06  2_[+1]_2
f_metF_PwaSCC3193                 2.1e-06  2_[+1]_2
r_metH_Pca3-2                     2.1e-06  2_[+1]_2
f_metH_Pca3-2                     2.1e-06  2_[+1]_2
r_ECA4244(metF)                   2.4e-06  2_[+1]_2
f_ECA4244(metF)                   2.4e-06  2BlkEBlkS      @�      @�     _[+1]_2
r_ECA3125(PF08908)                4.8e-06  2_[+1]_2
f_ECA3125(PF08908)                4.8e-06  2_[+1]_2
r_ECA0180_2(metR)                 7.6e-06  2_[+1]_2
f_ECA0180_2(metR)                 7.6e-06  2_[+1]_2
r_ECA0181(metE)                   7.6e-06  2_[+1]_2
f_ECA0181(metE)                   7.6e-06  2_[+1]_2
r_OA04_01940_Pca3-2               8.3e-06  2_[+1]_2
f_OA04_01940_Pca3-2               8.3e-06  2_[+1]_2
r_OA04_20500_Pca3-2               2.5e-05  2_[+1]_2
f_OA04_20500_Pca3-2               2.5e-05  2_[+1]_2
r_OA04_21030_Pca3-2               2.5e-05  2_[+1]_2
f_OA04_21030_Pca3-2               2.5e-05  2_[+1]_2
r_ECA0180(metR)                   3.2e-05  2_[+1]_2
f_ECA0180(metR)                   3.2e-05  2_[+1]_2
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 in BLOCKS format
-------------------------------------------------------------------BlkEBlkS      @�      @�     -------------
BL   MOTIF 1 width=17 seqs=36
r_metE_PwaSCC3193        (    3) CCTGAAAAAGTCTCATG  1 
f_metE_PwaSCC3193        (    3) CATGAGACTTTTTCAGG  1 
r_metE2_PwaSCC3193       (    3) CGTGAAAAAAATTCATG  1 
f_metE2_PwaSCC3193       (    3) CATGAATTTTTTTCACG  1 
r_ECA3987(metH)          (    3) CATGAGACTTTTTCAGG  1 
f_ECA3987(metH)          (    3) CCTGAAAAAGTCTCATG  1 
r_metC_SCRI1043          (    3) GGTGAAAATATTTCAGG  1 
f_metC_SCRI1043          (    3) CCTGAAATATTTTCACC  1 
r_ECA3992(metA)          (    3) GGTGAAAATGTTTCACG  1 
f_ECA3992(metA)          (    3) CGTGAAACATTTTCACC  1 
r_ECA1113(metE2)         (    3) CGTGAATAAAATTCATG  1 
f_ECA1113(metE2)         (    3) CATGAATTTTATTCACG  1 
r_metE2_Pca3-2           (    3) CATGAAGAAAGTTCACG  1 
f_metE2_Pca3-2           (    3) CGTGAACTTTCTTCATG  1 
r_metA_Pca3-2_PwaSCC3193 (    3) GGTGAAAATGTTTCACT  1 
f_metA_Pca3-2_PwaSCC3193 (    3) AGTGAAACATTTTCACC  1 
r_metF_PwaSCC3193        (    3) AATGAAAAAAATTCATG  1 
f_metF_PwaSCCBlkEBlkS      @�      @�     3193        (    3) CATGAATTTTTTTCATT  1 
r_metH_Pca3-2            (    3) TCTGAAAAAGTCTCATG  1 
f_metH_Pca3-2            (    3) CATGAGACTTTTTCAGA  1 
r_ECA4244(metF)          (    3) AATGAAAAAAGTTCATG  1 
f_ECA4244(metF)          (    3) CATGAACTTTTTTCATT  1 
r_ECA3125(PF08908)       (    3) GATGAATTATATTCATG  1 
f_ECA3125(PF08908)       (    3) CATGAATATAATTCATC  1 
r_ECA0180_2(metR)        (    3) CATGAGAGTCCTTCACA  1 
f_ECA0180_2(metR)        (    3) TGTGAAGGACTCTCATG  1 
r_ECA0181(metE)          (    3) TGTGAAGGACTCTCATG  1 
f_ECA0181(metE)          (    3) CATGAGAGTCCTTCACA  1 
r_OA04_01940_Pca3-2      (    3) GCTGAATGAATTTCAGT  1 
f_OA04_01940_Pca3-2      (    3) ACTGAAATTCATTCAGC  1 
r_OA04_20500_Pca3-2      (    3) TTTGAAATTATTTCATT  1 
f_OA04_20500_Pca3-2      (    3) AATGAAATAATTTCAAA  1 
r_OA04_21030_Pca3-2      (    3) TATGAAATAATTTCAAT  1 
f_OA04_21030_Pca3-2      (    3) ATTGAAATTATTTCATA  1 
r_ECA0180(metR)          (    3) ACTGAAAAAAGCGCAGG  1 
f_ECA0180(metR)BlkEBlkS      @�      @�               (    3) CCTGCGCTTTTTTCAGT  1 
//

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific scoring matrix
--------------------------------------------------------------------------------
log-odds matrix: alength= 4 w= 17 n= 180 bayes= 2 E= 5.2e-115 
   -83    176    -16   -131 
    37     52     84   -263 
 -1181  -1181  -1181    154 
 -1181  -1181    269  -1181 
   150   -248  -1181  -1181 
   127  -1181     10  -1181 
    89    -90    -90    -83 
     7    -16    -16      7 
    54  -1187  -1183     54 
     7    -16    -16      7 
   -83    -90    -90     89 
 -1183     10  -1185    127 
 -1183  -1185   -248    150 
 -1183    269  -1185  -1183 
   154  -1185  -1185  -1183 
  -263     84     52     37 
  -131    -16    176    -83 
--------------------------------------------------------------------------------

------------------------BlkEBlkS      @�      @�     --------------------------------------------------------
	Motif 1 position-specific probability matrix
--------------------------------------------------------------------------------
letter-probability matrix: alength= 4 w= 17 nsites= 36 E= 5.2e-115 
 0.194444  0.527778  0.138889  0.138889 
 0.444444  0.222222  0.277778  0.055556 
 0.000000  0.000000  0.000000  1.000000 
 0.000000  0.000000  1.000000  0.000000 
 0.972222  0.027778  0.000000  0.000000 
 0.833333  0.000000  0.166667  0.000000 
 0.638889  0.083333  0.083333  0.194444 
 0.361110  0.138887  0.138887  0.361110 
 0.499999  0.000000  0.000000  0.500000 
 0.361111  0.138888  0.138888  0.361111 
 0.194443  0.083332  0.083332  0.638888 
 0.000000  0.166666  0.000000  0.833332 
 0.000000  0.000000  0.027777  0.972221 
 0.000000  0.999999  0.000000  0.000000 
 0.999999  0.000000  0.000000  0.000000 
 0.055555  0.277777  0.222221  0.444443 
 0.138888  0.138888  0.527777  0.194443 
-------------------------------------------BlkEBlkS      @�      @�     -------------------------------------

--------------------------------------------------------------------------------
	Motif 1 regular expression
--------------------------------------------------------------------------------
C[AGC]TGAAA[AT][TA][AT]TTTCA[TCG]G
--------------------------------------------------------------------------------




Time  0.19 secs.

********************************************************************************


********************************************************************************
SUMMARY OF MOTIFS
********************************************************************************

--------------------------------------------------------------------------------
	Combined block diagrams: non-overlapping sites with p-value < 0.0001
--------------------------------------------------------------------------------
SEQUENCE NAME            COMBINED P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
f_ECA4244(metF)BlkEBlkS      @�      @�                       1.19e-05  2_[+1(2.37e-06)]_2
r_ECA4244(metF)                  1.19e-05  2_[+1(2.37e-06)]_2
f_ECA0181(metE)                  3.82e-05  2_[+1(7.63e-06)]_2
r_ECA0181(metE)                  3.82e-05  2_[+1(7.63e-06)]_2
f_ECA3992(metA)                  5.27e-07  2_[+1(1.05e-07)]_2
r_ECA3992(metA)                  5.27e-07  2_[+1(1.05e-07)]_2
f_ECA3125(PF08908)               2.42e-05  2_[+1(4.83e-06)]_2
r_ECA3125(PF08908)               2.42e-05  2_[+1(4.83e-06)]_2
f_ECA1113(metE2)                 3.47e-06  2_[+1(6.94e-07)]_2
r_ECA1113(metE2)                 3.47e-06  2_[+1(6.94e-07)]_2
f_ECA0180(metR)                  1.60e-04  2_[+1(3.19e-05)]_2
r_ECA0180(metR)                  1.60e-04  2_[+1(3.19e-05)]_2
f_ECA0180_2(metR)                3.82e-05  2_[+1(7.63e-06)]_2
r_ECA0180_2(metR)                3.82e-05  2_[+1(7.63e-06)]_2
f_ECA3987(metH)                  4.16e-07  2_[+1(8.32e-08)]_2
r_ECA3987(metH)                  4.16e-07  2_[+1(8.32e-08)]_2
f_metC_SCRI1043BlkEBlkS      @�      @�                       5.27e-07  2_[+1(1.05e-07)]_2
r_metC_SCRI1043                  5.27e-07  2_[+1(1.05e-07)]_2
f_metA_Pca3-2_PwaSCC3193         8.08e-06  2_[+1(1.62e-06)]_2
r_metA_Pca3-2_PwaSCC3193         8.08e-06  2_[+1(1.62e-06)]_2
f_metH_Pca3-2                    1.05e-05  2_[+1(2.10e-06)]_2
r_metH_Pca3-2                    1.05e-05  2_[+1(2.10e-06)]_2
f_metE2_Pca3-2                   4.44e-06  2_[+1(8.88e-07)]_2
r_metE2_Pca3-2                   4.44e-06  2_[+1(8.88e-07)]_2
f_OA04_21030_Pca3-2              1.24e-04  2_[+1(2.47e-05)]_2
r_OA04_21030_Pca3-2              1.24e-04  2_[+1(2.47e-05)]_2
f_OA04_01940_Pca3-2              4.16e-05  2_[+1(8.32e-06)]_2
r_OA04_01940_Pca3-2              4.16e-05  2_[+1(8.32e-06)]_2
f_OA04_20500_Pca3-2              1.24e-04  2_[+1(2.47e-05)]_2
r_OA04_20500_Pca3-2              1.24e-04  2_[+1(2.47e-05)]_2
f_metF_PwaSCC3193                1.05e-05  2_[+1(2.10e-06)]_2
r_metF_PwaSCC3193                1.05e-05  2_[+1(2.10e-06)]_2
f_metE2_PwaSCC3BlkEBlkS      @�              193               4.16e-07  2_[+1(8.32e-08)]_2
r_metE2_PwaSCC3193               4.16e-07  2_[+1(8.32e-08)]_2
f_metE_PwaSCC3193                4.16e-07  2_[+1(8.32e-08)]_2
r_metE_PwaSCC3193                4.16e-07  2_[+1(8.32e-08)]_2
--------------------------------------------------------------------------------
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      BlkEBlkS       @�      @�     @��     ????   A�@��`  A�@��`  MetR_Pectobacterium.logodata                                                                                                                                                                                                    ## LogoData
# First column is position number, counting from zero
# Subsequent columns are raw symbol counts
# Entropy is mean entropy measured in nats.
# Low and High are the 95% confidence limits.
# Weight is the fraction of non-gap symbols in the column.
#	
#	A 	C 	G 	T 	Entropy	Low	High	Weight
1 	16 	5 	4 	9 	0.1706 	0.0480 	0.3696 	1.0000
2 	20 	2 	4 	8 	0.3196 	0.1399 	0.5722 	1.0000
3 	6 	20 	5 	3 	0.2831 	0.1090 	0.5389 	1.0000
4 	16 	8 	9 	1 	0.2435 	0.1100 	0.4292 	1.0000
5 	0 	0 	0 	34 	1.1977 	0.9673 	1.4281 	1.0000
6 	0 	0 	34 	0 	1.1977 	0.9673 	1.4281 	1.0000
7 	33 	1 	0 	0 	1.1008 	0.8420 	1.3595 	1.0000
8 	28 	0 	6 	0 	0.8073 	0.5631 	1.0515 	1.0000
9 	20 	4 	3 	7 	0.2925 	0.1164 	0.5483 	1.0000
10 	14 	6 	3 	BlkEBlkS      @�              11 	0.1602 	0.0477 	0.3396 	1.0000
11 	17 	0 	0 	17 	0.6002 	0.4409 	0.7594 	1.0000
12 	11 	3 	6 	14 	0.1602 	0.0477 	0.3396 	1.0000
13 	7 	3 	4 	20 	0.2925 	0.1164 	0.5483 	1.0000
14 	0 	6 	0 	28 	0.8073 	0.5631 	1.0515 	1.0000
15 	0 	0 	1 	33 	1.1008 	0.8420 	1.3595 	1.0000
16 	0 	34 	0 	0 	1.1977 	0.9673 	1.4281 	1.0000
17 	34 	0 	0 	0 	1.1977 	0.9673 	1.4281 	1.0000
18 	1 	9 	8 	16 	0.2435 	0.1100 	0.4292 	1.0000
19 	3 	5 	20 	6 	0.2831 	0.1090 	0.5389 	1.0000
20 	8 	4 	2 	20 	0.3196 	0.1399 	0.5722 	1.0000
21 	9 	4 	5 	16 	0.1706 	0.0480 	0.3696 	1.0000
# End LogoData
                                                                                                                                                                                                                                                                                                                                                                                                                            BlkEBlkS       @�      @�     @��     ????   A�@��`  A�@��`  MetR_Pectobacterium.hmm                                                                                                                                                                                                         HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  21
MAXL  74
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Thu Aug 27 21:52:43 2015
NSEQ  34
EFFN  34.000000
CKSUM 2848360282
GA    9.00
TC    9.10
NC    8.70
STATS LOCAL MSV       -6.9426  0.77945
STATS LOCAL VITERBI   -7.4301  0.77945
STATS LOCAL FORWARD   -2.1078  0.77945
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.11543  1.76873  1.76108  1.10921
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  0.00000        *
      1   0.84586  1.90614  1.83888  1.33498      1 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.005BlkEBlkS      @�      @�     54  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      2   0.68132  2.35482  2.00000  1.33254      2 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      3   1.57467  0.67881  1.91469  1.97819      3 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      4   0.89051  1.31202  1.41308  2.56544      4 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      5   5.74595  5.43762  5.85551  0.01046      5 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      6   5.64305  6.61640  0.00657  6.39385      6 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      7   0.06801  2.84724  5.80350  5.35442      BlkEBlkS      @�      @�     7 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      8   0.24497  6.43250  1.54300  6.25181      8 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      9   0.61506  1.89960  2.11442  1.66570      9 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     10   0.99796  1.71695  2.01722  1.14340     10 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     11   0.70774  4.88928  5.31705  0.70358     11 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     12   1.15983  2.03048  1.70682  0.98418     12 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.2623BlkEBlkS      @�      @��     6  1.09861  0.40547
     13   1.69331  2.12731  1.88883  0.60571     13 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     14   5.35116  1.52355  5.61213  0.25661     14 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     15   5.64200  5.24177  2.88231  0.06704     15 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     16   5.65680  0.01217  5.81481  5.18083     16 C - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     17   0.00527  6.74219  5.93337  6.55574     17 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     18   2.63610  1.42146  1.30547  0.87718     18 t - - -
          1.38629  1.38629 BlkEBlkS      @�               1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     19   2.02317  1.94246  0.66221  1.56684     19 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     20   1.35247  2.01256  2.34019  0.67052     20 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     21   1.35481  1.85024  1.89435  0.83382     21 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00277  5.88888        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                                                                                                                                                                                                                BlkEBlkS      @�              BMap   #   0         0         0        0        0         0        0         0          0        $0        (0        ,0        00        40        80        <0        @0      	  D0      
  H0        L0        P0        T0        X0        \0        `0        d0        h0        l0         p0        t0         x0        |0        �0        �0        �0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          BlkE