VFSv   BlkS       @D      @�          @BlkEBlkS       @�              @8      fold    A�]�   A�]�   /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�              @��     ????   A�]�   A�]�   PhoB.fasta                                                                                                                                                                                                                      >pitA_21A repressed 6x at starvation 16.1
AGTCAAAAAAATGTCATATTTTG
>pitA_3-2
AGTCAAAAAAATGTCATATTTCG
>pitA_Dda3937
AGTCAAAATAATGTCATATTTTG
>pitA_PwaSCC3193
AGTCAAAAAAATGTCATATTTTC
>phoB_21A_Dda_Pwa induced 3x at starvation 16.8
TTTCATAAATCTGTCATAAAACT
>pstS_21A_Pwa_3-2 induced 7x 11.1
TGTCACCAAATTGTCCTATTTTT
>pstS2_21A induced 7x 16.1
TGTCATAAAACTGTCATGTTGTG
>pstS2_3-2
TGTCATAAAACTGTCATATTGCG
>pstS_Dda3937
TGTCACACAACTGTCATATTAAG
>pstS_21A_Pwa induced 7x 11.1
TGTCACCAAATTGTCCTATTTTT
>pstS1_PwaSCC3193
TGTAATAAAACTGTCATATTCCG
>pstS1_Pcc21
TGTCACCAAACTGTCCTATTTTT                                                                                                                                                                           BlkEBlkS       @�      @�`     @�@     ????   A�]�   A�]�   PhoB.options                                                                                                                                                                                                                    ////
// nhmmer options
////


// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 14.9 14.9


// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
#=GF GA 12.9 12.9


//Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 11 11


// use the gathering threshold from the calibrated profile
nhmmer.--cut_ga


////
// HmmGen options
////


// the alignment length
HmmGen.-L 23


// don't pick up locus_tag from next locus
HmmGen.-n


// feature key
HmmGen.-f proteiBlkEBlkS      @�              n_bind


// feature qualifier
HmmGen.-q bound_moiety#PhoB


// MASTgen p-value cutoff
mastGen.-V 1e-6


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        BlkEBlkS       @�      @�0     @�\     ????   A�]�   A�]�   PhoB.info                                                                                                                                                                                                                       PhoB  activates expression of the phosphorus uptake and metabolism genes in response to environmental phosphate and may repress some of the genes for periplasmic proteins. This profile was built starting with E. coli sites described by Blanco et al. (Structure 10: 701–713. doi: 10.1016/s0969-2126(02)00761-x). The original profile was used to search P. atrosepticum 21A genome, and the resulting hits were verified for phosphate-responsive expression by RNA-seq data of Kwenda et al. (DOI 10.1186/s12864-016-2376-0 
) from phosphate starved cultures.  This resulted in just three obvious phosphate-responsive transcription units with upstream PhoB sites. These units include pitA, coding for low affinity Pi transporter (strongly repBlkEBlkS      @�              ressed), pstSCABphoU coding for phosphate transport system and phosphate-responsive non-transcriptional regulator (strongly induced) and phoBR coding for the two-component regulatory system (moderately induced).  The final profile includes orthologous sites from P. carotovorum, P. wasabiae and D. dadantii. 


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�      @�0     @�&�    ????   A�]�   A�]�   meme.txt                                                                                                                                                                                                                        ********************************************************************************
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
pitA_21A        BlkEBlkS      @�      @�              1.0000     23  pitA_3-2                 1.0000     23  
pitA_Dda3937             1.0000     23  pitA_PwaSCC3193          1.0000     23  
phoB_21A_Dda_Pwa         1.0000     23  pstS_21A_Pwa_3-2         1.0000     23  
pstS2_21A                1.0000     23  pstS2_3-2                1.0000     23  
pstS_Dda3937             1.0000     23  pstS_21A_Pwa             1.0000     23  
pstS1_PwaSCC3193         1.0000     23  pstS1_Pcc21              1.0000     23  
********************************************************************************

********************************************************************************
COMMAND LINE SUMMARY
********************************************************************************
This information can also be useful in the event you wish to report a
problem with the MEME software.

command: meme -nmotifs 1 -dna -text -pal -revcomp /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=    BlkEBlkS      @�      @�          zoops    nmotifs=         1    evt=           inf
object function=  E-value of product of p-values
width:  minw=            8    maxw=           23    minic=        0.00
width:  wg=             11    ws=              1    endgaps=       yes
nsites: minsites=        2    maxsites=       12    wnsites=       0.8
theta:  prob=            1    spmap=         uni    spfuzz=        0.5
global: substring=     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter=        50
        distance=    1e-05
data:   n=             276    N=              12
strands: + -
sample: seed=            0    seqfrac=         1
Letter frequencies in dataset:
A 0.357 C 0.143 G 0.143 T 0.357 
Background letter frequencies (from dataset with add-one prior applied):
A 0.355 C 0.145 G 0.145 T 0.355 
********************************************************************************


***********************************************************************BlkEBlkS      @�      @�     *********
MOTIF  1 MEME	width =  21  sites =  12  llr = 148  E-value = 2.1e-025
********************************************************************************
--------------------------------------------------------------------------------
	Motif 1 Description
--------------------------------------------------------------------------------
Simplified        A  335a2955a251::4:6::61
pos.-specific     C  :15:21:::7:::51:::::6
probability       G  6:::::15:::7:::12:51:
matrix            T  16::6:4::152a5592a533

         bits    2.8                      
                 2.5                      
                 2.2                      
                 2.0                      
Relative         1.7                      
Entropy          1.4          * *         
(17.7 bits)      1.1 *  * *  ** **  * *  *
                 0.8 * ** * *** *** * ** *
                 0.6 * **** ******* **** *
                 0.3 ****** ******* ******
                 0.0 ---------------------

MBlkEBlkS      @�      @�     ultilevel           GTAATAAGACTGTCTTATTAC
consensus            AAC C TA  A  TA G GTT
sequence                                  
                                          
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 sites sorted by position p-value
--------------------------------------------------------------------------------
Sequence name            Strand  Start   P-value                    Site       
-------------            ------  ----- ---------            ---------------------
pstS2_3-2                    -      2  1.90e-09          C GCAATATGACAGTTTTATGAC A         
pstS1_PwaSCC3193             -      2  1.85e-08          C GGAATATGACAGTTTTATTAC A         
pstS2_21A                    -      2  3.31e-08          C ACAACATGACAGTTTTATGAC A         
pstS1_Pcc21                  +      2  1.00e-07          T GTCACCAAACTGTCCTATTTT T         
pitA_BlkEBlkS      @�      @�     3-2                     -      2  1.85e-07          C GAAATATGACATTTTTTTGAC T         
pstS_Dda3937                 +      2  2.48e-07          T GTCACACAACTGTCATATTAA G         
pitA_PwaSCC3193              -      2  1.06e-06          G AAAATATGACATTTTTTTGAC T         
pitA_21A                     -      2  1.06e-06          C AAAATATGACATTTTTTTGAC T         
pstS_21A_Pwa                 -      2  2.39e-06          A AAAATAGGACAATTTGGTGAC A         
pstS_21A_Pwa_3-2             -      2  2.39e-06          A AAAATAGGACAATTTGGTGAC A         
pitA_Dda3937                 +      2  8.36e-06          A GTCAAAATAATGTCATATTTT G         
phoB_21A_Dda_Pwa             -      2  7.79e-05          A GTTTTATGACAGATTTATGAA A         
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 block diagrams
--------------------------------------------------------------------------BlkEBlkS      @�      @�     ------
SEQUENCE NAME            POSITION P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
pstS2_3-2                         1.9e-09  1_[-1]_1
pstS1_PwaSCC3193                  1.8e-08  1_[-1]_1
pstS2_21A                         3.3e-08  1_[-1]_1
pstS1_Pcc21                         1e-07  1_[+1]_1
pitA_3-2                          1.9e-07  1_[-1]_1
pstS_Dda3937                      2.5e-07  1_[+1]_1
pitA_PwaSCC3193                   1.1e-06  1_[-1]_1
pitA_21A                          1.1e-06  1_[-1]_1
pstS_21A_Pwa                      2.4e-06  1_[-1]_1
pstS_21A_Pwa_3-2                  2.4e-06  1_[-1]_1
pitA_Dda3937                      8.4e-06  1_[+1]_1
phoB_21A_Dda_Pwa                  7.8e-05  1_[-1]_1
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 in BLOCKS format
----------------------------------------------------------BlkEBlkS      @�      @�     ----------------------
BL   MOTIF 1 width=21 seqs=12
pstS2_3-2                (    2) GCAATATGACAGTTTTATGAC  1 
pstS1_PwaSCC3193         (    2) GGAATATGACAGTTTTATTAC  1 
pstS2_21A                (    2) ACAACATGACAGTTTTATGAC  1 
pstS1_Pcc21              (    2) GTCACCAAACTGTCCTATTTT  1 
pitA_3-2                 (    2) GAAATATGACATTTTTTTGAC  1 
pstS_Dda3937             (    2) GTCACACAACTGTCATATTAA  1 
pitA_PwaSCC3193          (    2) AAAATATGACATTTTTTTGAC  1 
pitA_21A                 (    2) AAAATATGACATTTTTTTGAC  1 
pstS_21A_Pwa             (    2) AAAATAGGACAATTTGGTGAC  1 
pstS_21A_Pwa_3-2         (    2) AAAATAGGACAATTTGGTGAC  1 
pitA_Dda3937             (    2) GTCAAAATAATGTCATATTTT  1 
phoB_21A_Dda_Pwa         (    2) GTTTTATGACAGATTTATGAA  1 
//

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific scoring matrix
----------------------BlkEBlkS      	@�      @�     ----------------------------------------------------------
log-odds matrix: alength= 4 w= 21 n= 36 bayes= 1 E= 2.1e-025 
   -28  -1023    211   -209 
   -28    -79   -179     71 
    49    166  -1023   -308 
   143  -1023  -1023   -308 
  -109     53  -1023     81 
   130    -21  -1023  -1023 
    37   -179    -21      8 
    37  -1023    179   -308 
   143  -1023  -1023   -308 
  -109    237  -1025   -209 
    49  -1025  -1024     49 
  -209  -1024    237   -109 
  -308  -1024  -1024    143 
  -308    179  -1024     37 
     8    -21   -179     37 
 -1023  -1024    -21    130 
    81  -1024     53   -109 
  -308  -1024  -1024    143 
  -308  -1024    166     49 
    71   -179    -79    -28 
  -209    211  -1024    -28 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific probability matrix
-----------------------------------------------------BlkEBlkS      
@�      @�     ---------------------------
letter-probability matrix: alength= 4 w= 21 nsites= 12 E= 2.1e-025 
 0.291667  0.000000  0.625000  0.083333 
 0.291667  0.083333  0.041667  0.583333 
 0.500000  0.458333  0.000000  0.041667 
 0.958333  0.000000  0.000000  0.041667 
 0.166667  0.208333  0.000000  0.625000 
 0.875000  0.125000  0.000000  0.000000 
 0.458333  0.041667  0.125000  0.375000 
 0.458333  0.000000  0.500000  0.041667 
 0.958333  0.000000  0.000000  0.041667 
 0.166665  0.749998  0.000000  0.083332 
 0.499999  0.000000  0.000000  0.500000 
 0.083333  0.000000  0.749999  0.166666 
 0.041666  0.000000  0.000000  0.958332 
 0.041666  0.499999  0.000000  0.458332 
 0.374999  0.124999  0.041666  0.458332 
 0.000000  0.000000  0.124999  0.874999 
 0.624999  0.000000  0.208332  0.166666 
 0.041666  0.000000  0.000000  0.958332 
 0.041666  0.000000  0.458332  0.499999 
 0.583332  0.041666  0.083332  0.291666 
 0.083332  0.624999  0.000000  0.291666 
-----------------------------------BlkEBlkS      @�      @�     ---------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 regular expression
--------------------------------------------------------------------------------
[GA][TA][AC]A[TC]A[AT][GA]AC[TA]GT[CT][TA]T[AG]T[TG][AT][CT]
--------------------------------------------------------------------------------




Time  0.05 secs.

********************************************************************************


********************************************************************************
SUMMARY OF MOTIFS
********************************************************************************

--------------------------------------------------------------------------------
	Combined block diagrams: non-overlapping sites with p-value < 0.0001
--------------------------------------------------------------------------------
SEQUENCE NAME            COMBINED P-VALUE  MOTIF DIAGRAM
-------------            -------------BlkEBlkS      @�      @�     ---  -------------
pitA_21A                         6.35e-06  1_[+1(1.06e-06)]_1
pitA_3-2                         1.11e-06  1_[+1(1.85e-07)]_1
pitA_Dda3937                     5.01e-05  1_[+1(8.36e-06)]_1
pitA_PwaSCC3193                  6.35e-06  1_[+1(1.06e-06)]_1
phoB_21A_Dda_Pwa                 4.67e-04  1_[+1(7.79e-05)]_1
pstS_21A_Pwa_3-2                 1.43e-05  1_[+1(2.39e-06)]_1
pstS2_21A                        1.99e-07  1_[+1(3.31e-08)]_1
pstS2_3-2                        1.14e-08  1_[+1(1.90e-09)]_1
pstS_Dda3937                     1.49e-06  1_[+1(2.48e-07)]_1
pstS_21A_Pwa                     1.43e-05  1_[+1(2.39e-06)]_1
pstS1_PwaSCC3193                 1.11e-07  1_[+1(1.85e-08)]_1
pstS1_Pcc21                      6.00e-07  1_[+1(1.00e-07)]_1
--------------------------------------------------------------------------------

********************************************************************************


****************************************************************BlkEBlkS      @�              ****************
Stopped because nmotifs = 1 reached.
********************************************************************************

CPU: Ptushka.local

********************************************************************************
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   BlkEBlkS       @�      @�     @�T     ????   A�]�   A�]�   PhoB.hmm                                                                                                                                                                                                                        HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  23
MAXL  82
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Sun Feb 21 20:36:49 2016
NSEQ  12
EFFN  12.000000
CKSUM 914277906
GA    12.90
TC    14.90
NC    11.00
STATS LOCAL MSV       -6.5944  0.74948
STATS LOCAL VITERBI   -6.9720  0.74948
STATS LOCAL FORWARD   -3.1255  0.74948
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.11357  1.73246  2.03460  1.01051
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  0.00000        *
      1   1.26118  3.30545  3.52004  0.43017      1 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.0BlkEBlkS      @�      @�     1418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
      2   3.30741  3.89144  0.21731  1.97837      2 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
      3   4.59901  4.13181  4.73921  0.03548      3 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
      4   2.32276  0.14413  4.46256  3.70131      4 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
      5   0.01742  5.40797  4.86508  5.28317      5 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
      6   1.27595  1.21845  2.73216  1.02147      6 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
      7   0.33186  1.46443  3.92659  3.45801    BlkEBlkS      @�      @�       7 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
      8   0.16297  2.18799  4.22265  3.74726      8 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
      9   0.14348  3.91897  4.21633  2.31212      9 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
     10   0.23055  3.66642  3.92480  1.82890     10 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
     11   1.27593  0.73904  2.91295  1.66630     11 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
     12   4.59901  4.13181  4.73921  0.03548     12 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26BlkEBlkS      @�      @�     236  1.09861  0.40547
     13   4.22155  5.14877  0.02793  4.95282     13 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
     14   4.59901  4.13181  4.73921  0.03548     14 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
     15   4.57386  0.03799  4.75770  3.99677     15 C - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
     16   0.33186  1.46443  3.92659  3.45801     16 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
     17   4.59901  4.13181  4.73921  0.03548     17 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
     18   0.11721  4.78232  2.38315  4.60853     18 a - - -
          1.38629  1.3862BlkEBlkS      @�              9  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
     19   1.86591  3.50463  3.85794  0.23058     19 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
     20   1.86591  3.50463  3.85794  0.23058     20 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
     21   1.39490  1.98759  1.72048  0.82980     21 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
     22   2.03540  1.07676  2.98235  0.73815     22 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.01418  4.95583  4.95583  1.46634  0.26236  1.09861  0.40547
     23   2.70358  2.15261  0.74496  1.07265     23 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00712  4.94876        *  1.46634  0.26236  0.00000        *
//
            BlkEBlkS      @�              BMap      0         0         0         0        0         0        0         0         0        $0        (0        ,0        00        40        80        <0      	  @0      
  D0        H0        L0        P0         T0        X0        \0        `0        d0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      BlkE