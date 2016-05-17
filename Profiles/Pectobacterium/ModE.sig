VFSv   BlkS       @D      @�          pBlkEBlkS       @�              @8      fold    A�X���  A�X���  /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�      @�`     @��     ????   A�X���  A�X���  ModE.fasta                                                                                                                                                                                                                      >f_ECA2817 VIMSSId=607209 Pos=-256 Score=6.5089
CGCTATATATTATCTTATATATCG
>r_ECA2817 VIMSSId=607209 Pos=-256 Score=6.5089
CGATATATAAGATAATATATAGCG
>f_moaA_Pat21A
CGATATATAAGATAATATATAGCG
>r_moaA_Pat21A
CGCTATATATTATCTTATATATCG
>f_ECA0060 VIMSSId=604411 Pos=-44 Score=6.60032
CGTTATATTATTTAATATATAACG
>r_ECA0060 VIMSSId=604411 Pos=-44 Score=6.60032
CGTTATATATTAAATAATATAACG
>f_yghW_Pat21A
CGTTATATCATTTAATATATAACG
>r_yghW_Pat21A
CGTTATATATTAAATGATATAACG
>f_ECA3565 VIMSSId=607987 Pos=-61 Score=6.32233
CGATATATAAAAAATTACATATCG
>r_ECA3565 VIMSSId=607987 Pos=-61 Score=6.32233
CGATATGTAATTTTTTATATATCG
>f_GZ59_35880 Pat21A TonB dependent outer mebrane transporter for molybdenum
CGATATATAAAGAGTTATATATCG
>r_GZ59_35880 Pat21A TonB dependent BlkEBlkS      @�              outer mebrane transporter for molybdenum
CGATATATAACTCTTTATATATCG
>f_ECA3096 VIMSSId=607493 Pos=-41 Score=6.33925
CGCTGTATTATTTTATATATAACG
>r_ECA3096 VIMSSId=607493 Pos=-41 Score=6.33925
CGTTATATATAAAATAATACAGCG
>f_GZ59_31040 Pat21A putative transporter
CGTTATATATAAAATAATACAGCG
>r_GZ59_31040 Pat21A putative transporter
CGCTGTATTATTTTATATATAACG
>f_ECA1393 VIMSSId=605780 Pos=-44 Score=6.36131 modA_Pat21A
CGTTATATTATTATTTACACAACG
>r_ECA1393 VIMSSId=605780 Pos=-44 Score=6.36131 modA_Pat21A
CGTTGTGTAAATAATAATATAACG
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            BlkEBlkS       @�      @�0     @��     ????   A�X���  A�X���  ModE.options                                                                                                                                                                                                                    ////
// nhmmer options
////


// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 17 17


// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
#=GF GA 15 15


//Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 13.2 13.2


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
HmmGen.-BlkEBlkS      @�              n


// ignore sites inside ORFs (and risk missing some real ones!)
HmmGen.-i 


// feature key
HmmGen.-f protein_bind


// feature qualifier
HmmGen.-q bound_moiety#ModE


// MASTgen p-value cutoff
mastGen.-V 


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             BlkEBlkS       @�      @�0     @�8     ????   A�X���  A�X���  ModE.info                                                                                                                                                                                                                       This profile is built from RegPrecise data for P. atrosepticum strain SCRI1043 with addition of orthologous sites from P. atrosepticum 21A.

RegPrecise info:
ModE is a dual regulator that controls transcription of genes involved in the homeostasis of molybdenum. ModE-dependent regulation was experimentally characterized in Escherichia coli. ModE regulon includes molybdenum transporters, genes involved in the synthesis of molybdenum cofactors (e.g., molybdopterin guanine dinucleotide in E. coli), and some molybdenum-containing enzymes. The regulatory effect of ModE is induced when E. coli is grown under anaerobic growth conditions and when the physiological inducer, molybdenum, binds to ModE and promotes the dimerization of theBlkEBlkS      @�               ModE-Mo complex. We used a comparative genomics approach to reconstruct transcriptional regulons controlled by ModE orthologs in different lineages of Proteobacteria.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�      @�     @�2�    ????   A�X���  A�X���  meme.txt                                                                                                                                                                                                                        ********************************************************************************
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
f_ECA2817       BlkEBlkS      @�      @�              1.0000     24  r_ECA2817                1.0000     24  
f_moaA_Pat21A            1.0000     24  r_moaA_Pat21A            1.0000     24  
f_ECA0060                1.0000     24  r_ECA0060                1.0000     24  
f_yghW_Pat21A            1.0000     24  r_yghW_Pat21A            1.0000     24  
f_ECA3565                1.0000     24  r_ECA3565                1.0000     24  
f_GZ59_35880             1.0000     24  r_GZ59_35880             1.0000     24  
f_ECA3096                1.0000     24  r_ECA3096                1.0000     24  
f_GZ59_31040             1.0000     24  r_GZ59_31040             1.0000     24  
f_ECA1393                1.0000     24  r_ECA1393                1.0000     24  
********************************************************************************

********************************************************************************
COMMAND LINE SUMMARY
********************************************************************************
This informatiBlkEBlkS      @�      @�     on can also be useful in the event you wish to report a
problem with the MEME software.

command: meme -nmotifs 1 -dna -text -pal -revcomp /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=         zoops    nmotifs=         1    evt=           inf
object function=  E-value of product of p-values
width:  minw=            8    maxw=           24    minic=        0.00
width:  wg=             11    ws=              1    endgaps=       yes
nsites: minsites=        2    maxsites=       18    wnsites=       0.8
theta:  prob=            1    spmap=         uni    spfuzz=        0.5
global: substring=     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter=        50
        distance=    1e-05
data:   n=             432    N=              18
strands: + -
sample: seed=            0    seqfrac=         1
Letter frequencies in dataset:
A 0.384 C 0.116 G 0.116 T 0.384 
Background letterBlkEBlkS      @�      @�      frequencies (from dataset with add-one prior applied):
A 0.383 C 0.117 G 0.117 T 0.383 
********************************************************************************


********************************************************************************
MOTIF  1 MEME	width =  24  sites =  18  llr = 347  E-value = 3.3e-104
********************************************************************************
--------------------------------------------------------------------------------
	Motif 1 Description
--------------------------------------------------------------------------------
Simplified        A  ::3:8:9:77354632a:a:a4::
pos.-specific     C  a:2:::::1:1:11:::1:2::a:
probability       G  :a::2:1:::11:1:1:::::2:a
matrix            T  ::4a:a:a23645377:9:8:3::

         bits    3.1 **                    **
                 2.8 **                    **
                 2.5 **                    **
                 2.2 **                    **
Relative         1.9 **             BlkEBlkS      @�      @�            **
Entropy          1.5 **                    **
(27.8 bits)      1.2 ** * * *        * * * **
                 0.9 ** *****        ***** **
                 0.6 ** ***** *    * ***** **
                 0.3 ********** ** **********
                 0.0 ------------------------

Multilevel           CGTTATATAATATATTATATAACG
consensus              A     TTATATAA     T  
sequence               C                  G  
                                             
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 sites sorted by position p-value
--------------------------------------------------------------------------------
Sequence name            Strand  Start   P-value                      Site        
-------------            ------  ----- ---------            ------------------------
r_moaA_Pat21A                -      1  1.11e-10          . CGATATATBlkEBlkS      @�      @�     AAGATAATATATAGCG           
f_moaA_Pat21A                +      1  1.11e-10          . CGATATATAAGATAATATATAGCG           
r_ECA2817                    +      1  1.11e-10          . CGATATATAAGATAATATATAGCG           
f_ECA2817                    -      1  1.11e-10          . CGATATATAAGATAATATATAGCG           
r_ECA0060                    -      1  7.08e-10          . CGTTATATTATTTAATATATAACG           
f_ECA0060                    +      1  7.08e-10          . CGTTATATTATTTAATATATAACG           
r_yghW_Pat21A                -      1  9.11e-10          . CGTTATATCATTTAATATATAACG           
f_yghW_Pat21A                +      1  9.11e-10          . CGTTATATCATTTAATATATAACG           
r_ECA3565                    +      1  1.04e-09          . CGATATGTAATTTTTTATATATCG           
f_ECA3565                    -      1  1.04e-09          . CGATATGTAATTTTTTATATATCG           
r_GZ59_31040                 +      1  1.80e-09          . CGCTGTATTATTTTATATATAACG           
f_GZ59_31040  BlkEBlkS      @�      @�                    -      1  1.80e-09          . CGCTGTATTATTTTATATATAACG           
r_ECA3096                    -      1  1.80e-09          . CGCTGTATTATTTTATATATAACG           
f_ECA3096                    +      1  1.80e-09          . CGCTGTATTATTTTATATATAACG           
r_ECA1393                    +      1  3.54e-09          . CGTTGTGTAAATAATAATATAACG           
f_ECA1393                    -      1  3.54e-09          . CGTTGTGTAAATAATAATATAACG           
r_GZ59_35880                 +      1  3.80e-09          . CGATATATAACTCTTTATATATCG           
f_GZ59_35880                 -      1  3.80e-09          . CGATATATAACTCTTTATATATCG           
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 block diagrams
--------------------------------------------------------------------------------
SEQUENCE NAME            POSITION P-VALUE  MOTIF DIAGRAM
-------------   BlkEBlkS      @�      @�              ----------------  -------------
r_moaA_Pat21A                     1.1e-10  [-1]
f_moaA_Pat21A                     1.1e-10  [+1]
r_ECA2817                         1.1e-10  [+1]
f_ECA2817                         1.1e-10  [-1]
r_ECA0060                         7.1e-10  [-1]
f_ECA0060                         7.1e-10  [+1]
r_yghW_Pat21A                     9.1e-10  [-1]
f_yghW_Pat21A                     9.1e-10  [+1]
r_ECA3565                           1e-09  [+1]
f_ECA3565                           1e-09  [-1]
r_GZ59_31040                      1.8e-09  [+1]
f_GZ59_31040                      1.8e-09  [-1]
r_ECA3096                         1.8e-09  [-1]
f_ECA3096                         1.8e-09  [+1]
r_ECA1393                         3.5e-09  [+1]
f_ECA1393                         3.5e-09  [-1]
r_GZ59_35880                      3.8e-09  [+1]
f_GZ59_35880                      3.8e-09  [-1]
--------------------------------------------------------------------------------

-----BlkEBlkS      	@�      @�     ---------------------------------------------------------------------------
	Motif 1 in BLOCKS format
--------------------------------------------------------------------------------
BL   MOTIF 1 width=24 seqs=18
r_moaA_Pat21A            (    1) CGATATATAAGATAATATATAGCG  1 
f_moaA_Pat21A            (    1) CGATATATAAGATAATATATAGCG  1 
r_ECA2817                (    1) CGATATATAAGATAATATATAGCG  1 
f_ECA2817                (    1) CGATATATAAGATAATATATAGCG  1 
r_ECA0060                (    1) CGTTATATTATTTAATATATAACG  1 
f_ECA0060                (    1) CGTTATATTATTTAATATATAACG  1 
r_yghW_Pat21A            (    1) CGTTATATCATTTAATATATAACG  1 
f_yghW_Pat21A            (    1) CGTTATATCATTTAATATATAACG  1 
r_ECA3565                (    1) CGATATGTAATTTTTTATATATCG  1 
f_ECA3565                (    1) CGATATGTAATTTTTTATATATCG  1 
r_GZ59_31040             (    1) CGCTGTATTATTTTATATATAACG  1 
f_GZ59_31040             (    1) CGCTGTATTATTTTATATATAACG  1 
r_ECA3096                (    1) CGBlkEBlkS      
@�      @�     CTGTATTATTTTATATATAACG  1 
f_ECA3096                (    1) CGCTGTATTATTTTATATATAACG  1 
r_ECA1393                (    1) CGTTGTGTAAATAATAATATAACG  1 
f_ECA1393                (    1) CGTTGTGTAAATAATAATATAACG  1 
r_GZ59_35880             (    1) CGATATATAACTCTTTATATATCG  1 
f_GZ59_35880             (    1) CGATATATAACTCTTTATATATCG  1 
//

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific scoring matrix
--------------------------------------------------------------------------------
log-odds matrix: alength= 4 w= 24 n= 18 bayes= 1.29956 E= 3.3e-104 
 -1081    310  -1081  -1081 
 -1081  -1081    310  -1081 
   -20     93  -1081     21 
 -1081  -1081  -1081    138 
   112  -1081     51  -1081 
 -1081  -1081  -1081    138 
   121  -1081     -7  -1081 
 -1081  -1081  -1081    138 
    91   -107  -1081    -78 
    80  -1081  -1081    -20 
   -46 BlkEBlkS      @�      @�       -107     -7     54 
    38  -1085   -107     21 
    21   -107  -1083     38 
    54     -7   -107    -46 
   -20  -1084  -1084     80 
   -78  -1084   -107     91 
   138  -1084  -1084  -1082 
 -1082     -7  -1084    121 
   138  -1084  -1084  -1082 
 -1082     51  -1084    112 
   138  -1084  -1084  -1082 
    21  -1084     93    -20 
 -1082    310  -1084  -1082 
 -1082  -1084    310  -1082 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific probability matrix
--------------------------------------------------------------------------------
letter-probability matrix: alength= 4 w= 24 nsites= 18 E= 3.3e-104 
 0.000000  1.000000  0.000000  0.000000 
 0.000000  0.000000  1.000000  0.000000 
 0.333333  0.222222  0.000000  0.444444 
 0.000000  0.000000  0.000000  1.000000 
 0.833333  0.000000  0.166667  0.000000 
 0.000000  0.000000  0.000000 BlkEBlkS      @�      @�      1.000000 
 0.888889  0.000000  0.111111  0.000000 
 0.000000  0.000000  0.000000  1.000000 
 0.722222  0.055556  0.000000  0.222222 
 0.666667  0.000000  0.000000  0.333333 
 0.277778  0.055556  0.111111  0.555556 
 0.499999  0.000000  0.055554  0.444443 
 0.444444  0.055555  0.000000  0.500000 
 0.555555  0.111110  0.055555  0.277777 
 0.333332  0.000000  0.000000  0.666666 
 0.222221  0.000000  0.055555  0.722221 
 0.999999  0.000000  0.000000  0.000000 
 0.000000  0.111110  0.000000  0.888888 
 0.999999  0.000000  0.000000  0.000000 
 0.000000  0.166666  0.000000  0.833332 
 0.999999  0.000000  0.000000  0.000000 
 0.444443  0.000000  0.222221  0.333332 
 0.000000  0.999999  0.000000  0.000000 
 0.000000  0.000000  0.999999  0.000000 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 regular expression
----------------------------------------------------BlkEBlkS      @�      @�     ----------------------------
CG[TAC]TATAT[AT][AT][TA][AT][TA][AT][TA][TA]ATATA[ATG]CG
--------------------------------------------------------------------------------




Time  0.12 secs.

********************************************************************************


********************************************************************************
SUMMARY OF MOTIFS
********************************************************************************

--------------------------------------------------------------------------------
	Combined block diagrams: non-overlapping sites with p-value < 0.0001
--------------------------------------------------------------------------------
SEQUENCE NAME            COMBINED P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
f_ECA2817                        2.22e-10  [+1(1.11e-10)]
r_ECA2817                        2.22e-10  [+1(1.11e-10)]
f_moaA_Pat21A                    2.22e-10  [+1(1.11e-10)]
r_moaA_Pat21A      BlkEBlkS      @�      @�                   2.22e-10  [+1(1.11e-10)]
f_ECA0060                        1.42e-09  [+1(7.08e-10)]
r_ECA0060                        1.42e-09  [+1(7.08e-10)]
f_yghW_Pat21A                    1.82e-09  [+1(9.11e-10)]
r_yghW_Pat21A                    1.82e-09  [+1(9.11e-10)]
f_ECA3565                        2.09e-09  [+1(1.04e-09)]
r_ECA3565                        2.09e-09  [+1(1.04e-09)]
f_GZ59_35880                     7.59e-09  [+1(3.80e-09)]
r_GZ59_35880                     7.59e-09  [+1(3.80e-09)]
f_ECA3096                        3.61e-09  [+1(1.80e-09)]
r_ECA3096                        3.61e-09  [+1(1.80e-09)]
f_GZ59_31040                     3.61e-09  [+1(1.80e-09)]
r_GZ59_31040                     3.61e-09  [+1(1.80e-09)]
f_ECA1393                        7.07e-09  [+1(3.54e-09)]
r_ECA1393                        7.07e-09  [+1(3.54e-09)]
--------------------------------------------------------------------------------

***********************************************************BlkEBlkS      @�              *********************


********************************************************************************
Stopped because nmotifs = 1 reached.
********************************************************************************

CPU: Ptushka.local

********************************************************************************
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           BlkEBlkS       @�      @�     @�     ????   A�X���  A�X���  ModE.hmm                                                                                                                                                                                                                        HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  24
MAXL  81
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Tue Jan 19 20:36:46 2016
NSEQ  18
EFFN  18.000000
CKSUM 2836780202
GA    15.00
TC    17.00
NC    13.20
STATS LOCAL MSV       -7.3324  0.74400
STATS LOCAL VITERBI   -7.3035  0.74400
STATS LOCAL FORWARD   -2.7386  0.74400
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.00310  2.00740  2.01667  1.00560
          1.38629  1.38629  1.38629  1.38629
          0.00995  5.30827  5.30827  1.46634  0.26236  0.00000        *
      1   4.99785  0.02437  5.17336  4.45143      1 C - - -
          1.38629  1.38629  1.38629  1.38629
          0.BlkEBlkS      @�      @�     00995  5.30827  5.30827  1.46634  0.26236  1.09861  0.40547
      2   4.76621  5.71727  0.01596  5.51247      2 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.00995  5.30827  5.30827  1.46634  0.26236  1.09861  0.40547
      3   1.12541  1.52497  3.08235  0.88673      3 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00995  5.30827  5.30827  1.46634  0.26236  1.09861  0.40547
      4   5.06484  4.63897  5.19479  0.02176      4 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00995  5.30827  5.30827  1.46634  0.26236  1.09861  0.40547
      5   0.20698  5.29378  1.73790  5.10743      5 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00995  5.30827  5.30827  1.46634  0.26236  1.09861  0.40547
      6   5.06484  4.63897  5.19479  0.02176      6 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00995  5.30827  5.30827  1.46634  0.26236  1.09861  0.40547
      7   0.13814  5.45640  2.12281  5.28577   BlkEBlkS      @�      @�        7 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00995  5.30827  5.30827  1.46634  0.26236  1.09861  0.40547
      8   5.06484  4.63897  5.19479  0.02176      8 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00995  5.30827  5.30827  1.46634  0.26236  1.09861  0.40547
      9   0.43306  2.43262  3.44039  1.46266      9 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00995  5.30827  5.30827  1.46634  0.26236  1.09861  0.40547
     10   0.42979  3.96693  4.23960  1.15198     10 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00995  5.30827  5.30827  1.46634  0.26236  1.09861  0.40547
     11   1.25985  2.22658  1.99332  0.75043     11 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00995  5.30827  5.30827  1.46634  0.26236  1.09861  0.40547
     12   0.85459  2.99925  2.27477  0.86299     12 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00995  5.30827  5.30827  1.46634  0.2BlkEBlkS      @�      @�     6236  1.09861  0.40547
     13   0.86753  2.31236  3.23082  0.81767     13 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00995  5.30827  5.30827  1.46634  0.26236  1.09861  0.40547
     14   0.76810  2.01253  2.20601  1.22991     14 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00995  5.30827  5.30827  1.46634  0.26236  1.09861  0.40547
     15   1.16858  3.89149  4.19734  0.42504     15 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00995  5.30827  5.30827  1.46634  0.26236  1.09861  0.40547
     16   1.48903  3.11323  2.40605  0.44663     16 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00995  5.30827  5.30827  1.46634  0.26236  1.09861  0.40547
     17   0.01067  5.95691  5.29245  5.81020     17 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00995  5.30827  5.30827  1.46634  0.26236  1.09861  0.40547
     18   4.62928  2.02974  4.86616  0.16115     18 t - - -
          1.38629  1.386BlkEBlkS      @�      @�     29  1.38629  1.38629
          0.00995  5.30827  5.30827  1.46634  0.26236  1.09861  0.40547
     19   0.01067  5.95691  5.29245  5.81020     19 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00995  5.30827  5.30827  1.46634  0.26236  1.09861  0.40547
     20   4.57745  1.68908  4.80830  0.22707     20 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00995  5.30827  5.30827  1.46634  0.26236  1.09861  0.40547
     21   0.01067  5.95691  5.29245  5.81020     21 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00995  5.30827  5.30827  1.46634  0.26236  1.09861  0.40547
     22   0.92642  2.90058  1.51798  1.10900     22 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00995  5.30827  5.30827  1.46634  0.26236  1.09861  0.40547
     23   4.99785  0.02437  5.17336  4.45143     23 C - - -
          1.38629  1.38629  1.38629  1.38629
          0.00995  5.30827  5.30827  1.46634  0.26236  1.09861  0.40547
     24   4.76BlkEBlkS      @�              621  5.71727  0.01596  5.51247     24 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.00499  5.30331        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          BlkEBlkS      @�              BMap      0         0         0        0         0        0         0        0          0        $0        (0        ,0        00        40        80        <0        @0      	  D0      
  H0        L0        P0        T0        X0        \0         `0        d0        h0        l0        p0        t0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      BlkE