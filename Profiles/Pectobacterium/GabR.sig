VFSv   BlkS       @D      @�          LBlkEBlkS       @�              @8      fold    A�b�؀  A�b�؀  /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�              @~�     ????   A�b�؀  A�b�؀  GabR.fasta                                                                                                                                                                                                                      >EAM_2305(gabT) Score=10.4 Pos=-181 [Erwinia amylovora ATCC 49946]
TTGGTTCCNNNNNNNNNNNNNNNCTGGCTCTNNNNNNNAAAACCCC
>ECA2053(gabT) Score=12.1 Pos=-145 [Erwinia carotovora subsp. atroseptica SCRI1043]
GTGGATCCNNNNNNNNNNNNNNNCTGGCACTNNNNNNNAGAACCAT
>KPN_03825(gabT) Score=12.4 Pos=-118 [Klebsiella pneumoniae subsp. pneumoniae MGH 78578]
TTGGATCCNNNNNNNNNNNNNNNTTGGTACTNNNNNNNAGGGCCAA
>Spro_4306(gabT) Score=12.7 Pos=-128 [Serratia proteamaculans 568]
TTGGATCCNNNNNNNNNNNNNNNCTGGCTCTNNNNNNNAGGGCCAC                                                                                                                                                                                                                                                  BlkEBlkS       @�      @�`     @�`     ????   A�b�؀  A�b�؀  GabR.options                                                                                                                                                                                                                    ////
// nhmmer options
////


// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 19.1 19.1


// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
#=GF GA 14.7 14.7


//Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 10.3 10.3


// use the gathering threshold from the calibrated profile
nhmmer.--cut_ga


////
// HmmGen options
////


// the alignment length
HmmGen.-L 46


// don't pick up locus_tag from next locus
HmmGen.-n


// feature key
HmmGen.-f prBlkEBlkS      @�              otein_bind


// feature qualifier
HmmGen.-q bound_moiety#GabR


// MASTgen p-value cutoff
mastGen.-V 1e-7


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    BlkEBlkS       @�              @s`     ????   A�b�؀  A�b�؀  GabR.info                                                                                                                                                                                                                          GabR controls gamma-aminobutyrate utilization and is present in some enterobacteria. In enterobacteria, this regulator and its binding site were computationally predicted and included in RegPrecise 4.0 without experimental confirmation.
    This profile is based on RegPrecise data for Enterobacteriaceae.

                                                                                                                                                                                                                                                                                                                                                                                                                                          BlkEBlkS       @�      @�0     @�k�    ????   A�b�ؠ  A�b�ؠ  meme.txt                                                                                                                                                                                                                        ********************************************************************************
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
EAM_2305(gabT)  BlkEBlkS      @�      @�              1.0000     46  ECA2053(gabT)            1.0000     46  
KPN_03825(gabT)          1.0000     46  Spro_4306(gabT)          1.0000     46  
********************************************************************************

********************************************************************************
COMMAND LINE SUMMARY
********************************************************************************
This information can also be useful in the event you wish to report a
problem with the MEME software.

command: meme -nmotifs 1 -dna -text -pal -revcomp /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=         zoops    nmotifs=         1    evt=           inf
object function=  E-value of product of p-values
width:  minw=            8    maxw=           46    minic=        0.00
width:  wg=             11    ws=              1    endgaps=       yes
nsites: minsites=        2    maxsites=        4    wnsites=       0.8
theta: BlkEBlkS      @�      @�      prob=            1    spmap=         uni    spfuzz=        0.5
global: substring=     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter=        50
        distance=    1e-05
data:   n=             184    N=               4
strands: + -
sample: seed=            0    seqfrac=         1
Letter frequencies in dataset:
A 0.236 C 0.264 G 0.264 T 0.236 
Background letter frequencies (from dataset with add-one prior applied):
A 0.237 C 0.263 G 0.263 T 0.237 
********************************************************************************


********************************************************************************
MOTIF  1 MEME	width =  21  sites =   4  llr = 58  E-value = 1.5e+001
********************************************************************************
--------------------------------------------------------------------------------
	Motif 1 Description
--------------------------------------------------------------BlkEBlkS      @�      @�     ------------------
Simplified        A  ::::3::2222222a154::9
pos.-specific     C  :::639:3333333::::aa1
probability       G  1aa::::3333333:926:::
matrix            T  9::451a2222222::2::::

         bits    2.1       *       *      
                 1.9  **   *       *   ** 
                 1.7  **   *       *   ** 
                 1.5 ***  **       **  ***
Relative         1.2 ***  **       **  ***
Entropy          1.0 **** **       ** ****
(20.8 bits)      0.8 **** **       ** ****
                 0.6 *******       *******
                 0.4 *******       *******
                 0.2 *******       *******
                 0.0 ---------------------

Multilevel           TGGCTCTCCCGCCCAGAGCCA
consensus               TA  GGGCGGG  GA   
sequence                 C  AAATAAA  T    
                            TTTATTT       
--------------------------------------------------------------------------------

------------------------------------------------------------------------BlkEBlkS      @�      @�     --------
	Motif 1 sites sorted by position p-value
--------------------------------------------------------------------------------
Sequence name            Strand  Start   P-value                    Site       
-------------            ------  ----- ---------            ---------------------
Spro_4306(gabT)              -     25  3.18e-08          G TGGCCCTXXXXXXXAGAGCCA GXXXXXXXXX
ECA2053(gabT)                +     25  4.64e-08 NNNNNNNNNC TGGCACTNNNNNNNAGAACCA T         
KPN_03825(gabT)              +     25  1.25e-07 NNNNNNNNNT TGGTACTNNNNNNNAGGGCCA A         
EAM_2305(gabT)               -     25  7.46e-07          G GGGTTTTXXXXXXXAGAGCCA GXXXXXXXXX
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 block diagrams
--------------------------------------------------------------------------------
SEQUENCE NAME            POSITION P-VALUE  MOTIF DIAGRAM
-----BlkEBlkS      @�      @�     --------            ----------------  -------------
Spro_4306(gabT)                   3.2e-08  24_[-1]_1
ECA2053(gabT)                     4.6e-08  24_[+1]_1
KPN_03825(gabT)                   1.3e-07  24_[+1]_1
EAM_2305(gabT)                    7.5e-07  24_[-1]_1
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 in BLOCKS format
--------------------------------------------------------------------------------
BL   MOTIF 1 width=21 seqs=4
Spro_4306(gabT)          (   25) TGGCCCTXXXXXXXAGAGCCA  1 
ECA2053(gabT)            (   25) TGGCACTXXXXXXXAGAACCA  1 
KPN_03825(gabT)          (   25) TGGTACTXXXXXXXAGGGCCA  1 
EAM_2305(gabT)           (   25) GGGTTTTXXXXXXXAGAGCCA  1 
//

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specificBlkEBlkS      @�      @�      scoring matrix
--------------------------------------------------------------------------------
log-odds matrix: alength= 4 w= 21 n= 104 bayes= 5.40372 E= 1.5e+001 
  -865   -865   -107    188 
  -865   -865    192   -865 
  -865   -865    192   -865 
  -865    125   -865     66 
     8     -7   -865    108 
  -865    173   -865    -92 
  -865   -865   -865    208 
     0      0      0      0 
     0      0      0      0 
     0      0      0      0 
     0      0      0      0 
     0      0      0      0 
     0      0      0      0 
     0      0      0      0 
   208   -865   -865   -865 
   -92   -865    173   -865 
   108   -865     -7      8 
    66   -865    125   -865 
  -865    192   -865   -865 
  -865    192   -865   -865 
   188   -107   -865   -865 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific probability matrix
--------BlkEBlkS      @�      @�     ------------------------------------------------------------------------
letter-probability matrix: alength= 4 w= 21 nsites= 4 E= 1.5e+001 
 0.000000  0.000000  0.125000  0.875000 
 0.000000  0.000000  1.000000  0.000000 
 0.000000  0.000000  1.000000  0.000000 
 0.000000  0.625000  0.000000  0.375000 
 0.250000  0.250000  0.000000  0.500000 
 0.000000  0.875000  0.000000  0.125000 
 0.000000  0.000000  0.000000  1.000000 
 0.236702  0.263298  0.263298  0.236702 
 0.236702  0.263298  0.263298  0.236702 
 0.236701  0.263296  0.263296  0.236701 
 0.236701  0.263296  0.263297  0.236702 
 0.236702  0.263297  0.263297  0.236702 
 0.236701  0.263297  0.263297  0.236701 
 0.236701  0.263297  0.263297  0.236701 
 0.999999  0.000000  0.000000  0.000000 
 0.124999  0.000000  0.874999  0.000000 
 0.499999  0.000000  0.249999  0.249999 
 0.374999  0.000000  0.624999  0.000000 
 0.000000  0.999999  0.000000  0.000000 
 0.000000  0.999999  0.000000  0.000000 
 0.874999  0.124999  0.000000  0BlkEBlkS      	@�      @�     .000000 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 regular expression
--------------------------------------------------------------------------------
TGG[CT][TAC]CT[CGAT][CGAT][CGAT][GCTA][CGAT][CGAT][CGAT]AG[AGT][GA]CCA
--------------------------------------------------------------------------------




Time  0.04 secs.

********************************************************************************


********************************************************************************
SUMMARY OF MOTIFS
********************************************************************************

--------------------------------------------------------------------------------
	Combined block diagrams: non-overlapping sites with p-value < 0.0001
--------------------------------------------------------------------------------
SEQUENCE NAME            COMBINED P-VALUEBlkEBlkS      
@�                MOTIF DIAGRAM
-------------            ----------------  -------------
EAM_2305(gabT)                   3.88e-05  24_[+1(7.46e-07)]_1
ECA2053(gabT)                    2.41e-06  24_[+1(4.64e-08)]_1
KPN_03825(gabT)                  6.52e-06  24_[+1(1.25e-07)]_1
Spro_4306(gabT)                  1.65e-06  24_[+1(3.18e-08)]_1
--------------------------------------------------------------------------------

********************************************************************************


********************************************************************************
Stopped because nmotifs = 1 reached.
********************************************************************************

CPU: Ptushka.local

********************************************************************************
                                                                                                                                                                                                         BlkEBlkS       @�      @�     @��    ????   A�b�ؠ  A�b�ؠ  GabR.hmm                                                                                                                                                                                                                        HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  46
MAXL  121
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Sun Mar 20 11:49:25 2016
NSEQ  4
EFFN  4.000000
CKSUM 1197494009
GA    14.70
TC    19.10
NC    10.30
STATS LOCAL MSV       -8.8603  0.76100
STATS LOCAL VITERBI   -9.7347  0.76100
STATS LOCAL FORWARD   -2.7543  0.76100
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.52127  1.33875  1.37432  1.32283
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  0.00000        *
      1   2.21024  2.25531  1.42215  0.60827      1 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.0BlkEBlkS      @�      @�     3279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      2   3.08173  2.76116  3.21166  0.16180      2 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      3   2.99290  3.67523  0.11220  3.48524      3 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      4   2.99290  3.67523  0.11220  3.48524      4 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      5   0.66099  2.25181  2.29363  1.28176      5 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      6   3.08173  2.76116  3.21166  0.16180      6 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      7   3.26153  0.14464  3.42672  2.75134    BlkEBlkS      @�      @�       7 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      8   3.26153  0.14464  3.42672  2.75134      8 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
      9   1.37551  1.46357  1.41008  1.30285      9 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     10   1.37551  1.46357  1.41008  1.30285     10 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     11   1.37551  1.46357  1.41008  1.30285     11 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     12   1.37551  1.46357  1.41008  1.30285     12 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26BlkEBlkS      @�      @�     236  1.09861  0.40547
     13   1.37551  1.46357  1.41008  1.30285     13 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     14   1.37551  1.46357  1.41008  1.30285     14 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     15   1.37551  1.46357  1.41008  1.30285     15 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     16   1.37551  1.46357  1.41008  1.30285     16 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     17   1.37551  1.46357  1.41008  1.30285     17 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     18   1.37551  1.46357  1.41008  1.30285     18 t - - -
          1.38629  1.3862BlkEBlkS      @�      @�     9  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     19   1.37551  1.46357  1.41008  1.30285     19 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     20   1.37551  1.46357  1.41008  1.30285     20 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     21   1.37551  1.46357  1.41008  1.30285     21 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     22   1.37551  1.46357  1.41008  1.30285     22 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     23   1.37551  1.46357  1.41008  1.30285     23 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     24   2.621BlkEBlkS      @�      @�     12  0.53410  2.76595  1.27954     24 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     25   3.08173  2.76116  3.21166  0.16180     25 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     26   2.99290  3.67523  0.11220  3.48524     26 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     27   2.99290  3.67523  0.11220  3.48524     27 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     28   2.62112  0.53410  2.76595  1.27954     28 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     29   0.95790  2.19066  2.23083  0.92377     29 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279BlkEBlkS      @�      @�       4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     30   3.26153  0.14464  3.42672  2.75134     30 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     31   3.08173  2.76116  3.21166  0.16180     31 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     32   1.37551  1.46357  1.41008  1.30285     32 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     33   1.37551  1.46357  1.41008  1.30285     33 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     34   1.37551  1.46357  1.41008  1.30285     34 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     35   1.37551  1.46357  1.41008  1.30285     35 BlkEBlkS      @�      @�     t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     36   1.37551  1.46357  1.41008  1.30285     36 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     37   1.37551  1.46357  1.41008  1.30285     37 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     38   1.37551  1.46357  1.41008  1.30285     38 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     39   0.09846  3.58835  3.37856  3.44116     39 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     40   1.47410  2.85100  0.44691  2.60873     40 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236 BlkEBlkS      @�      @�      1.09861  0.40547
     41   0.98182  2.59340  0.78784  2.34567     41 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     42   0.98182  2.59340  0.78784  2.34567     42 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     43   3.26153  0.14464  3.42672  2.75134     43 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     44   3.26153  0.14464  3.42672  2.75134     44 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     45   0.64354  1.35403  2.37723  2.09097     45 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.03279  4.12713  4.12713  1.46634  0.26236  1.09861  0.40547
     46   1.37159  1.03758  2.11771  1.30313     46 c - - -
          1.38629  1.38629  1BlkEBlkS      	@�              .38629  1.38629
          0.01653  4.11087        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     BlkEBlkS      @�              BMap      0         0         0         0        0         0         0        0         0        $0        (0        ,0        00        40        80      	  <0      
  @0         D0        H0        L0        P0        T0        X0        \0        `0        d0      	  h0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          BlkE