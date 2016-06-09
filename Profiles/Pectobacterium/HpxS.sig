VFSv   BlkS       @D      @�          BlkEBlkS       @�              @8      fold    A�n�`  A�n�`  /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�              @��     ????   A�n�`  A�n�`  HpxS.fasta                                                                                                                                                                                                                      >Ech1591_2_site_1 offset= 1
CCGGTTTTGTATACAATCCATC
>Ech703_3_site_1 offset= 1
CCTGTTTTGTATACAATCCATG
>Ech1591_site_1 offset= 1
TGAATTTTGTATACAATAAATT
>dda3937_site_1 offset= 1
TGAATTTTGTATACAATAAATT
>Ech586_site_1 offset= 1
TGAATTTTGTATACAATAATTT
>Pcc21_2_site_1 offset= 1
TGAATATTGTATACAGTCTCTG
>Pcc21_site_1 offset= 1 RC
TAAAATATGTATACAAGAAATT
>Ech703_2_site_1 offset= 1
GGGTTTTTGTATACATTGTATT
>PC1_site_1 offset= 1 RC
TAAAATACGTATACAAGAGATT
>3-2_site_1 offset= 1 RC
TAAAACACGTATACAAAAAATT
>Ech703_site_1 offset= 1
GTTTTTATGTATACGATTTATT                                                                                                                                                                                                     BlkEBlkS       @�      @�`     @�      ????   A�n�`  A�n�`  HpxS.options                                                                                                                                                                                                                    ////
// nhmmer options
////


// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 11.1 11.1


// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
#=GF GA 11 11


//Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 10.5 10.5


// use the gathering threshold from the calibrated profile
nhmmer.--cut_ga


////
// HmmGen options
////


// the alignment length
HmmGen.-L 22


// don't pick up locus_tag from next locus
HmmGen.-n


// feature key
HmmGen.-f proteiBlkEBlkS      @�              n_bind


// feature qualifier
HmmGen.-q bound_moiety#HpxS


// MASTgen p-value cutoff
mastGen.-V 


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            BlkEBlkS       @�              @��     ????   A�n�`  A�n�`  HpxS.info                                                                                                                                                                                                                          HpxS is the GntR family regulator for allantoin utilization. The allantoin utilization genes controlled by HpxR are present in some enterobacterial strains. In pectobacteria, only P. carotovorum strains seem to have these genes.
  This profile is based on RegPrecise 4 data for Enterobacteriaceae. The site seems to be an imperfect palindrome and the profile works better without the -p switch. The profile is a bit noisy and may pick up 1-2 false positive sites in some strains. 
   MEME defaults do not work with this alignment, so mast search within SigmoID should not be used with this profile.                                                                                                                                       BlkEBlkS       @�      @�0     @Ř�    ????   A�n�`  A�n�`  meme.txt                                                                                                                                                                                                                        ********************************************************************************
MEME - Motif discovery tool
********************************************************************************
MEME version 4.10.1 (Release date: Wed Mar 25 11:40:43 2015 +1000)

For further information on how to interpret these results or to get
a copy of the MEME software please access http://meme-suite.org .

This file may be used as input to the MAST algorithm for searching
sequence databases for matches to groups of motifs.  MAST is available
for interactive use and downloading at http://meme-suite.org .
********************************************************************************


***********************************************************BlkEBlkS      @�      @�0     *********************
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
Ech1591_2_site_1BlkEBlkS      @�      @�              1.0000     22  Ech703_3_site_1          1.0000     22  
Ech1591_site_1           1.0000     22  dda3937_site_1           1.0000     22  
Ech586_site_1            1.0000     22  Pcc21_2_site_1           1.0000     22  
Pcc21_site_1             1.0000     22  Ech703_2_site_1          1.0000     22  
PC1_site_1               1.0000     22  3-2_site_1               1.0000     22  
Ech703_site_1            1.0000     22  
********************************************************************************

********************************************************************************
COMMAND LINE SUMMARY
********************************************************************************
This information can also be useful in the event you wish to report a
problem with the MEME software.

command: meme -nmotifs 1 -dna -text -pal -revcomp /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=         zoops    nmotifs=         1    evt=BlkEBlkS      @�      @�                inf
object function=  E-value of product of p-values
width:  minw=            8    maxw=           22    minic=        0.00
width:  wg=             11    ws=              1    endgaps=       yes
nsites: minsites=        2    maxsites=       11    wnsites=       0.8
theta:  prob=            1    spmap=         uni    spfuzz=        0.5
global: substring=     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter=        50
        distance=    1e-05
data:   n=             242    N=              11
strands: + -
sample: seed=            0    seqfrac=         1
Letter frequencies in dataset:
A 0.386 C 0.114 G 0.114 T 0.386 
Background letter frequencies (from dataset with add-one prior applied):
A 0.384 C 0.116 G 0.116 T 0.384 
********************************************************************************


********************************************************************************
MOTIF  1 MEME	width =   8  sitBlkEBlkS      @�      @�     es =  11  llr = 105  E-value = 2.0e-019
********************************************************************************
--------------------------------------------------------------------------------
	Motif 1 Description
--------------------------------------------------------------------------------
Simplified        A  :::a:a:9
pos.-specific     C  1:::::a:
probability       G  :a:::::1
matrix            T  9:a:a:::

         bits    3.1  *    * 
                 2.8  *    * 
                 2.5  *    * 
                 2.2  *    * 
Relative         1.9  *    * 
Entropy          1.6  *    * 
(13.8 bits)      1.2  ****** 
                 0.9 ********
                 0.6 ********
                 0.3 ********
                 0.0 --------

Multilevel           TGTATACA
consensus                    
sequence                     
                             
--------------------------------------------------------------------------------

----------------------------------BlkEBlkS      @�      @�     ----------------------------------------------
	Motif 1 sites sorted by position p-value
--------------------------------------------------------------------------------
Sequence name            Strand  Start   P-value              Site
-------------            ------  ----- ---------            --------
Ech703_2_site_1              +      8  4.31e-05    GGGTTTT TGTATACA TTGTATT   
Pcc21_site_1                 +      8  4.31e-05    TAAAATA TGTATACA AGAAATT   
Pcc21_2_site_1               +      8  4.31e-05    TGAATAT TGTATACA GTCTCTG   
Ech586_site_1                +      8  4.31e-05    TGAATTT TGTATACA ATAATTT   
dda3937_site_1               +      8  4.31e-05    TGAATTT TGTATACA ATAAATT   
Ech1591_site_1               +      8  4.31e-05    TGAATTT TGTATACA ATAAATT   
Ech703_3_site_1              +      8  4.31e-05    CCTGTTT TGTATACA ATCCATG   
Ech1591_2_site_1             +      8  4.31e-05    CCGGTTT TGTATACA ATCCATC   
Ech703_site_1                -      8  6.92e-05    AATBlkEBlkS      @�      @�     AAAT CGTATACA TAAAAAC   
3-2_site_1                   +      8  6.92e-05    TAAAACA CGTATACA AAAAATT   
PC1_site_1                   +      8  6.92e-05    TAAAATA CGTATACA AGAGATT   
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 block diagrams
--------------------------------------------------------------------------------
SEQUENCE NAME            POSITION P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
Ech703_2_site_1                   4.3e-05  7_[+1]_7
Pcc21_site_1                      4.3e-05  7_[+1]_7
Pcc21_2_site_1                    4.3e-05  7_[+1]_7
Ech586_site_1                     4.3e-05  7_[+1]_7
dda3937_site_1                    4.3e-05  7_[+1]_7
Ech1591_site_1                    4.3e-05  7_[+1]_7
Ech703_3_site_1                   4.3e-05  7_[+1]_7
Ech1591_2_site_1                  4.3e-05  7_[+1]_7
Ech703_siteBlkEBlkS      @�      @�     _1                     6.9e-05  7_[-1]_7
3-2_site_1                        6.9e-05  7_[+1]_7
PC1_site_1                        6.9e-05  7_[+1]_7
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 in BLOCKS format
--------------------------------------------------------------------------------
BL   MOTIF 1 width=8 seqs=11
Ech703_2_site_1          (    8) TGTATACA  1 
Pcc21_site_1             (    8) TGTATACA  1 
Pcc21_2_site_1           (    8) TGTATACA  1 
Ech586_site_1            (    8) TGTATACA  1 
dda3937_site_1           (    8) TGTATACA  1 
Ech1591_site_1           (    8) TGTATACA  1 
Ech703_3_site_1          (    8) TGTATACA  1 
Ech1591_2_site_1         (    8) TGTATACA  1 
Ech703_site_1            (    8) CGTATACA  1 
3-2_site_1               (    8) CGTATACA  1 
PC1_site_1               (    8) CGTATACA  1 
//

--------------------------------------BlkEBlkS      @�      @�     ------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific scoring matrix
--------------------------------------------------------------------------------
log-odds matrix: alength= 4 w= 8 n= 165 bayes= 5.40671 E= 2.0e-019 
 -1010     23  -1010    117 
 -1010  -1010    311  -1010 
 -1010  -1010  -1010    138 
   138  -1013  -1013  -1011 
 -1011  -1011  -1011    138 
   138  -1012  -1012  -1011 
 -1011    311  -1012  -1011 
   117  -1012     23  -1011 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific probability matrix
--------------------------------------------------------------------------------
letter-probability matrix: alength= 4 w= 8 nsites= 11 E= 2.0e-019 
 0.000000  0.136364  0.000000  0.863636 
 0.000000  0.000000  1.000000  0.000000 
 0.00BlkEBlkS      	@�      @�     0000  0.000000  0.000000  1.000000 
 0.999998  0.000000  0.000000  0.000000 
 0.000000  0.000000  0.000000  0.999999 
 0.999999  0.000000  0.000000  0.000000 
 0.000000  0.999999  0.000000  0.000000 
 0.863635  0.000000  0.136363  0.000000 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 regular expression
--------------------------------------------------------------------------------
TGTATACA
--------------------------------------------------------------------------------




Time  0.05 secs.

********************************************************************************


********************************************************************************
SUMMARY OF MOTIFS
********************************************************************************

--------------------------------------------------------------------------------
	Combined block diagraBlkEBlkS      
@�      @�     ms: non-overlapping sites with p-value < 0.0001
--------------------------------------------------------------------------------
SEQUENCE NAME            COMBINED P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
Ech1591_2_site_1                 1.29e-03  7_[+1(4.31e-05)]_7
Ech703_3_site_1                  1.29e-03  7_[+1(4.31e-05)]_7
Ech1591_site_1                   1.29e-03  7_[+1(4.31e-05)]_7
dda3937_site_1                   1.29e-03  7_[+1(4.31e-05)]_7
Ech586_site_1                    1.29e-03  7_[+1(4.31e-05)]_7
Pcc21_2_site_1                   1.29e-03  7_[+1(4.31e-05)]_7
Pcc21_site_1                     1.29e-03  7_[+1(4.31e-05)]_7
Ech703_2_site_1                  1.29e-03  7_[+1(4.31e-05)]_7
PC1_site_1                       2.07e-03  7_[+1(6.92e-05)]_7
3-2_site_1                       2.07e-03  7_[+1(6.92e-05)]_7
Ech703_site_1                    2.07e-03  7_[+1(6.92e-05)]_7
-------------------------------------------------------------------BlkEBlkS      @�              -------------

********************************************************************************


********************************************************************************
Stopped because nmotifs = 1 reached.
********************************************************************************

CPU: Ptushka-3.local

********************************************************************************
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               BlkEBlkS       @�      @�     @��     ????   A�n�`  A�n�`  HpxS.hmm                                                                                                                                                                                                                        HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  22
MAXL  81
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Sun May 29 09:28:59 2016
NSEQ  11
EFFN  11.000000
CKSUM 2487906477
GA    11.00
TC    11.10
NC    10.50
STATS LOCAL MSV       -6.9401  0.76749
STATS LOCAL VITERBI   -7.1432  0.76749
STATS LOCAL FORWARD   -2.9250  0.76749
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.12255  1.98617  1.90994  0.94355
          1.38629  1.38629  1.38629  1.38629
          0.01527  4.88280  4.88280  1.46634  0.26236  0.00000        *
      1   2.58210  1.58616  1.49814  0.70092      1 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.BlkEBlkS      @�      @�     01527  4.88280  4.88280  1.46634  0.26236  1.09861  0.40547
      2   1.32117  1.60839  1.04179  1.71401      2 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.01527  4.88280  4.88280  1.46634  0.26236  1.09861  0.40547
      3   0.75502  2.57621  1.53117  1.43694      3 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.01527  4.88280  4.88280  1.46634  0.26236  1.09861  0.40547
      4   0.75460  2.57414  1.56488  1.40866      4 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.01527  4.88280  4.88280  1.46634  0.26236  1.09861  0.40547
      5   1.31157  3.20072  3.40511  0.42058      5 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.01527  4.88280  4.88280  1.46634  0.26236  1.09861  0.40547
      6   1.96844  1.96315  3.03841  0.39750      6 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.01527  4.88280  4.88280  1.46634  0.26236  1.09861  0.40547
      7   0.99655  3.12905  3.28758  0.59830   BlkEBlkS      @�      @�        7 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.01527  4.88280  4.88280  1.46634  0.26236  1.09861  0.40547
      8   3.83145  1.53194  4.02189  0.29533      8 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.01527  4.88280  4.88280  1.46634  0.26236  1.09861  0.40547
      9   4.11022  5.02945  0.03138  4.83512      9 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.01527  4.88280  4.88280  1.46634  0.26236  1.09861  0.40547
     10   4.49221  4.02221  4.63392  0.03960     10 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.01527  4.88280  4.88280  1.46634  0.26236  1.09861  0.40547
     11   0.01951  5.28189  4.76831  5.16032     11 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.01527  4.88280  4.88280  1.46634  0.26236  1.09861  0.40547
     12   4.49221  4.02221  4.63392  0.03960     12 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.01527  4.88280  4.88280  1.46634  0.2BlkEBlkS      @�      @�     6236  1.09861  0.40547
     13   0.01951  5.28189  4.76831  5.16032     13 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.01527  4.88280  4.88280  1.46634  0.26236  1.09861  0.40547
     14   4.48071  0.04185  4.66574  3.89957     14 C - - -
          1.38629  1.38629  1.38629  1.38629
          0.01527  4.88280  4.88280  1.46634  0.26236  1.09861  0.40547
     15   0.17012  4.43199  2.03942  4.23748     15 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.01527  4.88280  4.88280  1.46634  0.26236  1.09861  0.40547
     16   0.45348  2.75372  1.92077  1.86818     16 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.01527  4.88280  4.88280  1.46634  0.26236  1.09861  0.40547
     17   1.88150  2.64210  1.66388  0.53269     17 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.01527  4.88280  4.88280  1.46634  0.26236  1.09861  0.40547
     18   0.93152  1.29671  1.89750  1.70006     18 a - - -
          1.38629  1.386BlkEBlkS      @�              29  1.38629  1.38629
          0.01527  4.88280  4.88280  1.46634  0.26236  1.09861  0.40547
     19   1.09591  1.59399  1.92933  1.14757     19 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.01527  4.88280  4.88280  1.46634  0.26236  1.09861  0.40547
     20   0.37471  1.94384  3.09754  2.08588     20 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.01527  4.88280  4.88280  1.46634  0.26236  1.09861  0.40547
     21   4.49221  4.02221  4.63392  0.03960     21 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.01527  4.88280  4.88280  1.46634  0.26236  1.09861  0.40547
     22   2.68333  1.97538  1.56925  0.53656     22 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  4.87520        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                            BlkEBlkS      @�              BMap      0         0         0         0        0         0         0        0         0        $0        (0        ,0        00        40        80      	  <0      
  @0        D0         H0        L0        P0        T0        X0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          BlkE