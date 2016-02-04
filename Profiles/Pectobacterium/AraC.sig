VFSv   BlkS       @D      @�          �BlkEBlkS       @�              @8      fold    A�Z\4�  A�Z\4�  /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�      @�`     @�     ????   A�Z\4�  A�Z\4�  AraC.fasta                                                                                                                                                                                                                      >f_ECA2274 VIMSSId=606664 Pos=-176 Score=7.10563
TGACAGGTTTGTGCATANNNNTAGCAAATTTAACCAAT
>r_ECA2274 VIMSSId=606664 Pos=-176 Score=7.10563
ATTGGTTAAATTTGCTANNNNTATGCACAAACCTGTCA
>f_ECA2273 VIMSSId=606663 Pos=-235 Score=7.10563
ATTGGTTAAATTTGCTANNNNTATGCACAAACCTGTCA
>r_ECA2273 VIMSSId=606663 Pos=-235 Score=7.10563
TGACAGGTTTGTGCATANNNNTAGCAAATTTAACCAAT
>f_araF_Pca3-2
TGACAGGTTTGTGCATACATTTAGCGAATTTAACCAAT
>r_araF_Pca3-2
ATTGGTTAAATTCGCTAAATGTATGCACAAACCTGTCA
>f_araB_Pca3-2
CGACAGAAAAATACATACTTCCAGCTAACCGCTCCTCA
>r_araB_Pca3-2
TGAGGAGCGGTTAGCTGGAAGTATGTATTTTTCTGTCG
>f_araB_Pat21A
CGACAGAAAAATACATACTTCTAGCTAACCACTCCTAA
>r_araB_Pat21A
TTAGGAGTGGTTAGCTAGAAGTATGTATTTTTCTGTCG
>f_araF_Pat21A
TGACAGGTTTGTGCATACATTTAGCAAATTTAACCAAT
>r_araBlkEBlkS      @�              F_Pat21A
ATTGGTTAAATTTGCTAAATGTATGCACAAACCTGTCA
>f_araB_Ech3937
TGAGGAGCGGTTGGCTGGAAGTATGCATTTTTCTGTCA
>r_araB_Ech3937
TGACAGAAAAATGCATACTTCCAGCCAACCGCTCCTCA
>f_araF_Ech3937
GCTGGTTAAATTCGCTGAATCTATGTACGAATCGGCTG
>r_araF_Ech3937
CAGCCGATTCGTACATAGATTCAGCGAATTTAACCAGC
>f_araB_PcaPC1
TTAGGAGCGGTTAGCTGGAAGTATGTATTTTTCTGTCG
>r_araB_PcaPC1
CGACAGAAAAATACATACTTCCAGCTAACCGCTCCTAA
>f_araF_PcaPC1
ATTGGTTAAAATCGCTAAATGTATGTACAAACCTGCCA
>r_araF_PcaPC1
TGGCAGGTTTGTACATACATTTAGCGATTTTAACCAAT
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            BlkEBlkS       @�      @�0     @��     ????   A�Z\4�  A�Z\4�  AraC.options                                                                                                                                                                                                                    ////
// nhmmer options
////


// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 15 15


// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
#=GF GA 13 13


//Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 11 11


// use the gathering threshold from the calibrated profile
nhmmer.--cut_ga


////
// HmmGen options
////


// the alignment length
HmmGen.-L 38


// the site is palindromic
HmmGen.-p


// don't pick up locus_tag from next locus
HmmGen.-n


BlkEBlkS      @�              // ignore sites inside ORFs (and risk missing some real ones!)
HmmGen.-i 


// feature key
HmmGen.-f protein_bind


// feature qualifier
HmmGen.-q bound_moiety#AraC


// MASTgen p-value cutoff
mastGen.-V 1e-7


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             BlkEBlkS       @�              @z�     ????   A�Z\4�  A�Z\4�  AraC.info                                                                                                                                                                                                                       AraC controls genes involved in arabinose catabolism and transport. The site for this regulator is poorly defined. According to RegulonDB, it is a direct 17 bp repeat, while RegPrecise describes it as a palindrome. In pectobacteria, we could only detect palindromic sites in correct positions and these are represented by this profile. The profile should match only two sites per genome between the divergent araB and araF genes.                                                                                                                                                                                                                                                                                                                   BlkEBlkS       @�      @�0     @��     ????   A�Z\4�  A�Z\4�  meme.txt                                                                                                                                                                                                                        ********************************************************************************
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
f_ECA2274       BlkEBlkS      @�      @�              1.0000     38  r_ECA2274                1.0000     38  
f_ECA2273                1.0000     38  r_ECA2273                1.0000     38  
f_araF_Pca3-2            1.0000     38  r_araF_Pca3-2            1.0000     38  
f_araB_Pca3-2            1.0000     38  r_araB_Pca3-2            1.0000     38  
f_araB_Pat21A            1.0000     38  r_araB_Pat21A            1.0000     38  
f_araF_Pat21A            1.0000     38  r_araF_Pat21A            1.0000     38  
f_araB_Ech3937           1.0000     38  r_araB_Ech3937           1.0000     38  
f_araF_Ech3937           1.0000     38  r_araF_Ech3937           1.0000     38  
f_araB_PcaPC1            1.0000     38  r_araB_PcaPC1            1.0000     38  
f_araF_PcaPC1            1.0000     38  r_araF_PcaPC1            1.0000     38  
********************************************************************************

********************************************************************************
COMMAND LINE SUMMARY
**************BlkEBlkS      @�      @�     ******************************************************************
This information can also be useful in the event you wish to report a
problem with the MEME software.

command: meme -nmotifs 1 -dna -text -pal -revcomp /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=         zoops    nmotifs=         1    evt=           inf
object function=  E-value of product of p-values
width:  minw=            8    maxw=           38    minic=        0.00
width:  wg=             11    ws=              1    endgaps=       yes
nsites: minsites=        2    maxsites=       20    wnsites=       0.8
theta:  prob=            1    spmap=         uni    spfuzz=        0.5
global: substring=     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter=        50
        distance=    1e-05
data:   n=             760    N=              20
strands: + -
sample: seed=            0    seqfrac=         1
BlkEBlkS      @�      @�     Letter frequencies in dataset:
A 0.308 C 0.192 G 0.192 T 0.308 
Background letter frequencies (from dataset with add-one prior applied):
A 0.308 C 0.192 G 0.192 T 0.308 
********************************************************************************


********************************************************************************
MOTIF  1 MEME	width =  36  sites =  20  llr = 376  E-value = 7.5e-085
********************************************************************************
--------------------------------------------------------------------------------
	Motif 1 Description
--------------------------------------------------------------------------------
Simplified        A  16:5235553:4:5:83731:a::1a423333::33
pos.-specific     C  1:51::2:1::255::4::32::53:322:455515
probability       G  615555:223:35::23::4::551::::1:::5::
matrix            T  43::334335a2::a:13738:5:4:2555224:6:

         bits    2.4                                     
                 2.1             BlkEBlkS      @�      @�                             
                 1.9                                     
                 1.7           *   *      *   *          
Relative         1.4   *       * * *      * * *       *  
Entropy          1.2   *       * * **    ** * *       *  
(27.1 bits)      1.0   **      * ****    **** *      **  
                 0.7 * **      * ****    **** *      ** *
                 0.5 *******  ** ************ **  *******
                 0.2 ************************************
                 0.0 ------------------------------------

Multilevel           GACGGGAAATTACATACATGTAGCTAATTTCCCCTC
consensus            TTGATTTTTG GGC GGTAC  TGC CAAAAATGAA
sequence                 AA GGA      A  T      T   T     
                                                         
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 sites sorted by position p-value
-------BlkEBlkS      @�      @�     -------------------------------------------------------------------------
Sequence name            Strand  Start   P-value                            Site              
-------------            ------  ----- ---------            ------------------------------------
r_araF_Pca3-2                +      2  4.90e-11          A TTGGTTAAATTCGCTAAATGTATGCACAAACCTGTC A         
f_araF_Pca3-2                -      2  4.90e-11          A TTGGTTAAATTCGCTAAATGTATGCACAAACCTGTC A         
r_araB_Ech3937               -      2  5.58e-11          T GAGGAGCGGTTGGCTGGAAGTATGCATTTTTCTGTC A         
f_araB_Ech3937               +      2  5.58e-11          T GAGGAGCGGTTGGCTGGAAGTATGCATTTTTCTGTC A         
r_araB_Pat21A                +      2  6.34e-11          T TAGGAGTGGTTAGCTAGAAGTATGTATTTTTCTGTC G         
f_araB_Pat21A                -      2  6.34e-11          T TAGGAGTGGTTAGCTAGAAGTATGTATTTTTCTGTC G         
r_araB_Pca3-2                +      2  9.23e-11          T GAGGAGCGGTTAGCTGGAAGTATGTBlkEBlkS      @�      @�     ATTTTTCTGTC G         
f_araB_Pca3-2                -      2  9.23e-11          T GAGGAGCGGTTAGCTGGAAGTATGTATTTTTCTGTC G         
r_araF_Pat21A                +      2  1.04e-10          A TTGGTTAAATTTGCTAAATGTATGCACAAACCTGTC A         
f_araF_Pat21A                -      2  1.04e-10          A TTGGTTAAATTTGCTAAATGTATGCACAAACCTGTC A         
r_araB_PcaPC1                -      2  3.27e-10          T TAGGAGCGGTTAGCTGGAAGTATGTATTTTTCTGTC G         
f_araB_PcaPC1                +      2  3.27e-10          T TAGGAGCGGTTAGCTGGAAGTATGTATTTTTCTGTC G         
r_araF_PcaPC1                -      2  7.43e-10          A TTGGTTAAAATCGCTAAATGTATGTACAAACCTGCC A         
f_araF_PcaPC1                +      2  7.43e-10          A TTGGTTAAAATCGCTAAATGTATGTACAAACCTGCC A         
r_ECA2273                    -      2  4.93e-09          A TTGGTTAAATTTGCTAXXXXTATGCACAAACCTGTC A         
f_ECA2273                    +      2  4.93e-09          A TTGGTTAAATTTGCTANNNNTATGCACAAACCTGTC A         
r_ECA2BlkEBlkS      @�      @�     274                    +      2  4.93e-09          A TTGGTTAAATTTGCTANNNNTATGCACAAACCTGTC A         
f_ECA2274                    -      2  4.93e-09          A TTGGTTAAATTTGCTAXXXXTATGCACAAACCTGTC A         
r_araF_Ech3937               +      2  2.29e-07          C AGCCGATTCGTACATAGATTCAGCGAATTTAACCAG C         
f_araF_Ech3937               -      2  2.29e-07          C AGCCGATTCGTACATAGATTCAGCGAATTTAACCAG C         
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 block diagrams
--------------------------------------------------------------------------------
SEQUENCE NAME            POSITION P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
r_araF_Pca3-2                     4.9e-11  1_[+1]_1
f_araF_Pca3-2                     4.9e-11  1_[-1]_1
r_araB_Ech3937                    5.6e-11  1_[-1]_1
f_araB_Ech3937                  BlkEBlkS      	@�      @�       5.6e-11  1_[+1]_1
r_araB_Pat21A                     6.3e-11  1_[+1]_1
f_araB_Pat21A                     6.3e-11  1_[-1]_1
r_araB_Pca3-2                     9.2e-11  1_[+1]_1
f_araB_Pca3-2                     9.2e-11  1_[-1]_1
r_araF_Pat21A                       1e-10  1_[+1]_1
f_araF_Pat21A                       1e-10  1_[-1]_1
r_araB_PcaPC1                     3.3e-10  1_[-1]_1
f_araB_PcaPC1                     3.3e-10  1_[+1]_1
r_araF_PcaPC1                     7.4e-10  1_[-1]_1
f_araF_PcaPC1                     7.4e-10  1_[+1]_1
r_ECA2273                         4.9e-09  1_[-1]_1
f_ECA2273                         4.9e-09  1_[+1]_1
r_ECA2274                         4.9e-09  1_[+1]_1
f_ECA2274                         4.9e-09  1_[-1]_1
r_araF_Ech3937                    2.3e-07  1_[+1]_1
f_araF_Ech3937                    2.3e-07  1_[-1]_1
--------------------------------------------------------------------------------

----------------------------------------------------------BlkEBlkS      
@�      @�     ----------------------
	Motif 1 in BLOCKS format
--------------------------------------------------------------------------------
BL   MOTIF 1 width=36 seqs=20
r_araF_Pca3-2            (    2) TTGGTTAAATTCGCTAAATGTATGCACAAACCTGTC  1 
f_araF_Pca3-2            (    2) TTGGTTAAATTCGCTAAATGTATGCACAAACCTGTC  1 
r_araB_Ech3937           (    2) GAGGAGCGGTTGGCTGGAAGTATGCATTTTTCTGTC  1 
f_araB_Ech3937           (    2) GAGGAGCGGTTGGCTGGAAGTATGCATTTTTCTGTC  1 
r_araB_Pat21A            (    2) TAGGAGTGGTTAGCTAGAAGTATGTATTTTTCTGTC  1 
f_araB_Pat21A            (    2) TAGGAGTGGTTAGCTAGAAGTATGTATTTTTCTGTC  1 
r_araB_Pca3-2            (    2) GAGGAGCGGTTAGCTGGAAGTATGTATTTTTCTGTC  1 
f_araB_Pca3-2            (    2) GAGGAGCGGTTAGCTGGAAGTATGTATTTTTCTGTC  1 
r_araF_Pat21A            (    2) TTGGTTAAATTTGCTAAATGTATGCACAAACCTGTC  1 
f_araF_Pat21A            (    2) TTGGTTAAATTTGCTAAATGTATGCACAAACCTGTC  1 
r_araB_PcaPC1            (    2) TAGGAGCGGTTAGCTGGAAGTATGTATTTTTCTGTC  1 
f_araB_PcaPC1     BlkEBlkS      @�      @�            (    2) TAGGAGCGGTTAGCTGGAAGTATGTATTTTTCTGTC  1 
r_araF_PcaPC1            (    2) TTGGTTAAAATCGCTAAATGTATGTACAAACCTGCC  1 
f_araF_PcaPC1            (    2) TTGGTTAAAATCGCTAAATGTATGTACAAACCTGCC  1 
r_ECA2273                (    2) TTGGTTAAATTTGCTAXXXXTATGCACAAACCTGTC  1 
f_ECA2273                (    2) TTGGTTAAATTTGCTAXXXXTATGCACAAACCTGTC  1 
r_ECA2274                (    2) TTGGTTAAATTTGCTAXXXXTATGCACAAACCTGTC  1 
f_ECA2274                (    2) TTGGTTAAATTTGCTAXXXXTATGCACAAACCTGTC  1 
r_araF_Ech3937           (    2) AGCCGATTCGTACATAGATTCAGCGAATTTAACCAG  1 
f_araF_Ech3937           (    2) AGCCGATTCGTACATAGATTCAGCGAATTTAACCAG  1 
//

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific scoring matrix
--------------------------------------------------------------------------------
log-odds matrix: alength= 4 w= 36 n= 60 bayes= 1 E= 7.BlkEBlkS      @�      @�     5e-085 
  -262   -194    151     19 
    96  -1097    -94     -4 
 -1097    138    138  -1097 
    55   -194    138  -1097 
   -62  -1097    138     -4 
   -30  -1097    123     -4 
    70    -36  -1097     19 
    70  -1097      6     -4 
    70   -194      6    -30 
   -30  -1097     64     55 
 -1097  -1097  -1097    170 
    38    -36     64   -104 
 -1097    138    138  -1097 
    70    138  -1097  -1097 
 -1097  -1097  -1097    170 
   138  -1097      6  -1097 
   -23    101     58   -232 
   110   -232   -232    -23 
   -23   -232   -232    110 
  -232     58    101    -23 
 -1098      6  -1098    138 
   170  -1098  -1098  -1098 
 -1098  -1098    138     70 
 -1098    138    138  -1098 
  -104     64    -36     38 
   170  -1098  -1098  -1098 
    55     64  -1098    -30 
   -30      6   -194     70 
    -4      6  -1098     70 
    19  -1098    -36     70 
    -4    123  -1098    -30 
    -4    138  -1098    -62 
 -1098    138   -194     55 
 -1098    138    138  -1098BlkEBlkS      @�      @�      
    -4    -94  -1098     96 
    19    151   -194   -262 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific probability matrix
--------------------------------------------------------------------------------
letter-probability matrix: alength= 4 w= 36 nsites= 20 E= 7.5e-085 
 0.050000  0.050000  0.550000  0.350000 
 0.600000  0.000000  0.100000  0.300000 
 0.000000  0.500000  0.500000  0.000000 
 0.450000  0.050000  0.500000  0.000000 
 0.200000  0.000000  0.500000  0.300000 
 0.250000  0.000000  0.450000  0.300000 
 0.500000  0.150000  0.000000  0.350000 
 0.500000  0.000000  0.200000  0.300000 
 0.500000  0.050000  0.200000  0.250000 
 0.250000  0.000000  0.300000  0.450000 
 0.000000  0.000000  0.000000  1.000000 
 0.400000  0.150000  0.300000  0.150000 
 0.000000  0.500000  0.500000  0.000000 
 0.500000  0.500000  0.000000  0.000000 
BlkEBlkS      @�      @�      0.000000  0.000000  0.000000  1.000000 
 0.800000  0.000000  0.200000  0.000000 
 0.261518  0.388482  0.288482  0.061518 
 0.661517  0.038480  0.038480  0.261517 
 0.261518  0.038481  0.038481  0.661518 
 0.061517  0.288481  0.388481  0.261517 
 0.000000  0.199999  0.000000  0.799999 
 0.999999  0.000000  0.000000  0.000000 
 0.000000  0.000000  0.499999  0.499999 
 0.000000  0.499999  0.499999  0.000000 
 0.149999  0.299999  0.149999  0.399999 
 0.999999  0.000000  0.000000  0.000000 
 0.449999  0.299999  0.000000  0.249999 
 0.249999  0.199999  0.049999  0.499999 
 0.299999  0.199999  0.000000  0.499999 
 0.349999  0.000000  0.149999  0.499999 
 0.299999  0.449999  0.000000  0.249999 
 0.299999  0.499999  0.000000  0.199999 
 0.000000  0.499999  0.049999  0.449999 
 0.000000  0.499999  0.499999  0.000000 
 0.299999  0.099999  0.000000  0.599999 
 0.349999  0.549999  0.049999  0.049999 
--------------------------------------------------------------------------------

--------BlkEBlkS      @�      @�     ------------------------------------------------------------------------
	Motif 1 regular expression
--------------------------------------------------------------------------------
[GT][AT][CG][GA][GTA][GTA][AT][ATG][ATG][TGA]T[AG][CG][AC]T[AG][CGA][AT][TA][GCT]TA[GT][CG][TC]A[ACT][TA][TA][TA][CAT][CA][CT][CG][TA][CA]
--------------------------------------------------------------------------------




Time  0.28 secs.

********************************************************************************


********************************************************************************
SUMMARY OF MOTIFS
********************************************************************************

--------------------------------------------------------------------------------
	Combined block diagrams: non-overlapping sites with p-value < 0.0001
--------------------------------------------------------------------------------
SEQUENCE NAME            COMBINED P-VALUE  MOTIF DIAGRAM
-------------  BlkEBlkS      @�      @�               ----------------  -------------
f_ECA2274                        2.96e-08  1_[+1(4.93e-09)]_1
r_ECA2274                        2.96e-08  1_[+1(4.93e-09)]_1
f_ECA2273                        2.96e-08  1_[+1(4.93e-09)]_1
r_ECA2273                        2.96e-08  1_[+1(4.93e-09)]_1
f_araF_Pca3-2                    2.94e-10  1_[+1(4.90e-11)]_1
r_araF_Pca3-2                    2.94e-10  1_[+1(4.90e-11)]_1
f_araB_Pca3-2                    5.54e-10  1_[+1(9.23e-11)]_1
r_araB_Pca3-2                    5.54e-10  1_[+1(9.23e-11)]_1
f_araB_Pat21A                    3.81e-10  1_[+1(6.34e-11)]_1
r_araB_Pat21A                    3.81e-10  1_[+1(6.34e-11)]_1
f_araF_Pat21A                    6.26e-10  1_[+1(1.04e-10)]_1
r_araF_Pat21A                    6.26e-10  1_[+1(1.04e-10)]_1
f_araB_Ech3937                   3.35e-10  1_[+1(5.58e-11)]_1
r_araB_Ech3937                   3.35e-10  1_[+1(5.58e-11)]_1
f_araF_Ech3937                   1.37e-06  1_[+1(2.29e-07)]_1
r_araF_Ech3937      BlkEBlkS      @�                           1.37e-06  1_[+1(2.29e-07)]_1
f_araB_PcaPC1                    1.96e-09  1_[+1(3.27e-10)]_1
r_araB_PcaPC1                    1.96e-09  1_[+1(3.27e-10)]_1
f_araF_PcaPC1                    4.46e-09  1_[+1(7.43e-10)]_1
r_araF_PcaPC1                    4.46e-09  1_[+1(7.43e-10)]_1
--------------------------------------------------------------------------------

********************************************************************************


********************************************************************************
Stopped because nmotifs = 1 reached.
********************************************************************************

CPU: Ptushka.local

********************************************************************************
                                                                                                                                                                                                                                            BlkEBlkS       @�      @�     @��     ????   A�Z\4�  A�Z\4�  AraC.hmm                                                                                                                                                                                                                        HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  38
MAXL  98
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Sat Jan 30 21:54:45 2016
NSEQ  20
EFFN  20.000000
CKSUM 1455539480
GA    13.00
TC    15.00
NC    11.00
STATS LOCAL MSV       -7.6545  0.75996
STATS LOCAL VITERBI   -8.3518  0.75996
STATS LOCAL FORWARD   -2.9999  0.75996
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.22541  1.59200  1.58840  1.20867
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  0.00000        *
      1   1.46471  1.48558  2.13348  0.85788      1 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.BlkEBlkS      @�      @�     00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      2   2.09923  2.18203  0.78227  1.18002      2 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      3   0.69530  3.03066  1.88432  1.20112      3 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      4   4.58163  0.71735  0.71826  4.26038      4 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      5   1.00406  2.38253  0.68642  3.27222      5 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      6   1.59118  3.15381  0.76186  1.24887      6 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      7   1.31339  3.05498  0.94005  1.22636   BlkEBlkS      @�      @�        7 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      8   0.78949  1.79754  3.22049  1.07798      8 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      9   0.81049  2.99554  1.58441  1.20303      9 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     10   0.82148  2.15356  1.58408  1.43124     10 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     11   1.40210  2.99292  1.23387  0.88524     11 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     12   5.18007  4.77052  5.30682  0.01925     12 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.2BlkEBlkS      @�      @�     6236  1.09861  0.40547
     13   0.96476  1.68561  1.33105  1.77552     13 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     14   4.58163  0.71735  0.71826  4.26038     14 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     15   0.72460  0.71162  4.75652  4.13277     15 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     16   5.18007  4.77052  5.30682  0.01925     16 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     17   0.28028  5.38224  1.45136  5.18878     17 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     18   1.34933  1.08657  1.19911  2.28520     18 c - - -
          1.38629  1.386BlkEBlkS      @�      @�     29  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     19   0.54516  2.47168  2.46227  1.38404     19 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     20   1.41718  2.47263  2.46495  0.53064     20 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     21   2.36249  1.21574  1.07305  1.31916     21 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     22   4.68616  1.43065  4.91996  0.29528     22 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     23   0.00946  6.09180  5.39984  5.93846     23 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     24   4.22BlkEBlkS      @�      @�     507  4.19522  0.71985  0.72674     24 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     25   4.58163  0.71735  0.71826  4.26038     25 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     26   1.82199  1.34459  1.66997  0.94316     26 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     27   0.00946  6.09180  5.39984  5.93846     27 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     28   0.88073  1.23010  3.21716  1.37362     28 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     29   1.46480  1.59840  2.13394  0.80232     29 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.0090BlkEBlkS      @�      @�     5  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     30   1.22511  1.59197  3.21255  0.77112     30 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     31   1.11090  3.00005  1.78306  0.79224     31 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     32   1.22485  0.94971  3.24682  1.27137     32 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     33   1.22396  0.77947  3.35166  1.54995     33 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     34   3.48295  0.75835  2.32518  0.90862     34 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     35   4.58163  0.71735  0.71826  4.26038     35BlkEBlkS      @�               c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     36   1.22449  1.90338  3.27492  0.65545     36 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     37   1.19008  0.80137  2.14944  2.03608     37 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     38   0.87818  2.15374  1.47200  1.43153     38 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  5.39816        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                                                                                                                                                                            BlkEBlkS      @�              BMap   !   0         0         0        0         0        0         0         0         0        $0        (0        ,0        00        40        80        <0      	  @0      
  D0        H0        L0        P0        T0        X0        \0        `0         d0        h0        l0        p0        t0        x0        |0        �0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  BlkE