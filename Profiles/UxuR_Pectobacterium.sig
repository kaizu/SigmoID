VFSv   BlkS       @D      @��        	  �BlkEBlkS       @�              @<      fold    A�@��`  A�@��`  /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        BlkEBlkS       @�      @�`     @�x     ????   A�@��`  A�@��`  UxuR_Pectobacterium.fasta                                                                                                                                                                                                       >f_exuR_Pca3-2
ATTAAGTGGTATAACAAATCAT
>r_exuR_Pca3-2
ATGATTTGTTATACCACTTAAT
>f_exuR_PcoBCS7
ATTAAGTGGTATAACAAATCAT
>r_exuR_PcoBCS7
ATGATTTGTTATACCACTTAAT
>f_uxuA_Pca3-2_PcoBCS7
TGTAATTGGTCAATCAATTCGT
>r_uxuA_Pca3-2_PcoBCS7
ACGAATTGATTGACCAATTACA
>f_exuT/uxaC_Pca3-2
ATAATTTGTCATACAACTTTAA
>r_exuT/uxaC_Pca3-2
TTAAAGTTGTATGACAAATTAT
>f_exuT/uxaC_PcoBCS7
TTAAAGTTGTATGACAAATTAT
>r_exuT/uxaC_PcoBCS7
ATAATTTGTCATACAACTTTAA
>f_lfaT_Pca3-2 OA04_19130 exuT-like transporter (there's another exuT!), next is (glucan?) alfa-glucosidase
TCATTTTGGTAAACCAATTTCA
>r_lfaT_Pca3-2 OA04_19130 exuT-like transporter (there's another exuT!), next is (glucan?) alfa-glucosidase
TGAAATTGGTTTACCAAAATGA
>f_lfaT_Pcc21
TCGATTTGGTAAACCAATTTCA
>r_lfaT_Pcc21
TGABlkEBlkS      @�              AATTGGTTTACCAAATCGA
>f_exuR_Dda3937
TGTAAGTGGTATAACAAATCTA
>r_exuR_Dda3937
TAGATTTGTTATACCACTTACA
>f_exuT/uxaC_Dda3937_Dze1591
ATAATTTGTCATACCAATTTAA
>r_exuT/uxaC_Dda3937_Dze1591
TTAAATTGGTATGACAAATTAT
>f_exuR_SCRI1043
ATTAAGTGGTATAACAAATCAT
>r_exuR_SCRI1043
ATGATTTGTTATACCACTTAAT
>f_uxuA_SCRI1043
TGTAATTGGTCAATCAATTTGT
>r_uxuA_SCRI1043
ACAAATTGATTGACCAATTACA
>f_lfaT_Pwa_SCC3193
TCAATTTGGTAAACCAATTTCA
>r_lfaT_Pwa_SCC3193
TGAAATTGGTTTACCAAATTGA
>f_lfaT_JG10-08
TCAATTTGGTAAACCAATTCCA
>r_lfaT_JG10-08
TGGAATTGGTTTACCAAATTGA
>f_gntR_PC1????
ATTAAGTGGTATAACAAATCAT
>r_gntR_PC1????
ATGATTTGTTATACCACTTAAT
>f_lfaT_PC1
TCAATTTGGTAAACCAATTTCA
>r_lfaT_PC1
TGAAATTGGTTTACCAAATTGA
>f_lfaT_Dze1591
GCGTATTGTTATACCACTCGGC
>r_lfaT_Dze1591
GCCGAGTGGTATAACAATACGC
>f_exuR_Dze1591
TGTAGGTGGTATAACAAATTTA
>r_exuR_Dze1591
TAAATTTGTTATACCACCTACA
                                                                                                                                                                  BlkEBlkS       @�      @�0     @��     ????   A�@��`  A�@��`  UxuR_Pectobacterium.options                                                                                                                                                                                                     // a space is strictly required between a switch and its value 

////
// alignment options
////

// these are added to alignment when converting to Stockholm format

// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 9.3 9.3

// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
// (second number isn't used but is still required)
#=GF GA 8.9 8.9

// Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 8.6 8.6

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

HmmGen.-L 22

// the site is palindromic
HmmGen.-p

// ignore sites inside ORFs (a bit unsafe)
HmmGen.-i

// feature key
HmmGen.-f protein_bind

// feature qualifiers
HmmGen.-q bound_moiety#UxuR

////
// MastGen options
////

// MAST p-value
MastGen.-V 0.0000006

// all other options for MastGen are the same as for hmmGen                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                BlkEBlkS       @�              @�@     ????   A�@��`  A�@��`  UxuR_Pectobacterium.info                                                                                                                                                                                                        UxuR repressor regulates glucuronate utilisation and usually controls at least four operons.
 
hmm profile made of UxuR-Enterobacteriales binding sites  present in regPrecise version 3.2 was used to search genomes of Pectobacterium and Dickeya strains. Manually selected sites were added, the resulting alignment was extened by 2 bp from each side. The final profile is built from 17 nonredundant sequences from 10 Pectobacterium and Dickeya strains and their reverse complements. The profile should hopely work well in all pectolytic enterobacteria.

                                                                                                                                                                                        BlkEBlkS       @�      @�0     @�q�    ????   A�@��`  A�@��`  meme.txt                                                                                                                                                                                                                        ********************************************************************************
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
f_exuR_Pca3-2   BlkEBlkS      @�      @�              1.0000     22  r_exuR_Pca3-2            1.0000     22  
f_exuR_PcoBCS7           1.0000     22  r_exuR_PcoBCS7           1.0000     22  
f_uxuA_Pca3-2_PcoBCS7    1.0000     22  r_uxuA_Pca3-2_PcoBCS7    1.0000     22  
f_exuT/uxaC_Pca3-2       1.0000     22  r_exuT/uxaC_Pca3-2       1.0000     22  
f_exuT/uxaC_PcoBCS7      1.0000     22  r_exuT/uxaC_PcoBCS7      1.0000     22  
f_lfaT_Pca3-2            1.0000     22  r_lfaT_Pca3-2            1.0000     22  
f_lfaT_Pcc21             1.0000     22  r_lfaT_Pcc21             1.0000     22  
f_exuR_Dda3937           1.0000     22  r_exuR_Dda3937           1.0000     22  
f_exuT/uxaC_Dda3937_Dze1 1.0000     22  r_exuT/uxaC_Dda3937_Dze1 1.0000     22  
f_exuR_SCRI1043          1.0000     22  r_exuR_SCRI1043          1.0000     22  
f_uxuA_SCRI1043          1.0000     22  r_uxuA_SCRI1043          1.0000     22  
f_lfaT_Pwa_SCC3193       1.0000     22  r_lfaT_Pwa_SCC3193       1.0000     22  
f_lfaT_JG10-08           1.0000     BlkEBlkS      @�      @�     22  r_lfaT_JG10-08           1.0000     22  
f_gntR_PC1????           1.0000     22  r_gntR_PC1????           1.0000     22  
f_lfaT_PC1               1.0000     22  r_lfaT_PC1               1.0000     22  
f_lfaT_Dze1591           1.0000     22  r_lfaT_Dze1591           1.0000     22  
f_exuR_Dze1591           1.0000     22  r_exuR_Dze1591           1.0000     22  
********************************************************************************

********************************************************************************
COMMAND LINE SUMMARY
********************************************************************************
This information can also be useful in the event you wish to report a
problem with the MEME software.

command: meme -nmotifs 1 -dna -text -pal /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=         zoops    nmotifs=         1    evt=           inf
object function=  E-value of product of p-values
width:BlkEBlkS      @�      @�       minw=            8    maxw=           22    minic=        0.00
width:  wg=             11    ws=              1    endgaps=       yes
nsites: minsites=        2    maxsites=       34    wnsites=       0.8
theta:  prob=            1    spmap=         uni    spfuzz=        0.5
global: substring=     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter=        50
        distance=    1e-05
data:   n=             748    N=              34
strands: +
sample: seed=            0    seqfrac=         1
Letter frequencies in dataset:
A 0.366 C 0.134 G 0.134 T 0.366 
Background letter frequencies (from dataset with add-one prior applied):
A 0.366 C 0.134 G 0.134 T 0.366 
********************************************************************************


********************************************************************************
MOTIF  1 MEME	width =  22  sites =  34  llr = 475  E-value = 2.2e-156
********************************BlkEBlkS      @�      @�     ************************************************
--------------------------------------------------------------------------------
	Motif 1 Description
--------------------------------------------------------------------------------
Simplified        A  41596:::1:72931a741246
pos.-specific     C  :3:::::::11::69:3::331
probability       G  133::3:96::11:::::::3:
matrix            T  642147a13927:1:::69514

         bits    2.9                       
                 2.6        *      *       
                 2.3        *      *       
                 2.0        *      *       
Relative         1.7        *      *       
Entropy          1.4       **      **      
(20.2 bits)      1.2       ****  ****      
                 0.9    * *****  ***** *   
                 0.6    * ************ *   
                 0.3 **********************
                 0.0 ----------------------

Multilevel           TTAAATTGGTATACCAATTTAA
consensus            ACG TG  T TA A  CA CCT
sequence  BlkEBlkS      @�      @�                 GT                AG 
                                           
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 sites sorted by position p-value
--------------------------------------------------------------------------------
Sequence name             Start   P-value                     Site       
-------------             ----- ---------            ----------------------
r_lfaT_JG10-08                1  6.26e-10          . TGGAATTGGTTTACCAAATTGA           
f_lfaT_JG10-08                1  6.26e-10          . TCAATTTGGTAAACCAATTCCA           
r_lfaT_Pcc21                  1  6.26e-10          . TGAAATTGGTTTACCAAATCGA           
f_lfaT_Pcc21                  1  6.26e-10          . TCGATTTGGTAAACCAATTTCA           
r_lfaT_PC1                    1  1.30e-09          . TGAAATTGGTTTACCAAATTGA           
f_lfaT_PC1                    1  1.30e-09  BlkEBlkS      @�      @�             . TCAATTTGGTAAACCAATTTCA           
r_lfaT_Pwa_SCC3193            1  1.30e-09          . TGAAATTGGTTTACCAAATTGA           
f_lfaT_Pwa_SCC3193            1  1.30e-09          . TCAATTTGGTAAACCAATTTCA           
r_gntR_PC1????                1  5.34e-08          . ATGATTTGTTATACCACTTAAT           
f_gntR_PC1????                1  5.34e-08          . ATTAAGTGGTATAACAAATCAT           
r_exuR_SCRI1043               1  5.34e-08          . ATGATTTGTTATACCACTTAAT           
f_exuR_SCRI1043               1  5.34e-08          . ATTAAGTGGTATAACAAATCAT           
r_exuR_PcoBCS7                1  5.34e-08          . ATGATTTGTTATACCACTTAAT           
f_exuR_PcoBCS7                1  5.34e-08          . ATTAAGTGGTATAACAAATCAT           
r_exuR_Pca3-2                 1  5.34e-08          . ATGATTTGTTATACCACTTAAT           
f_exuR_Pca3-2                 1  5.34e-08          . ATTAAGTGGTATAACAAATCAT           
r_lfaT_Pca3-2                 1  5.96e-08          . TGAAATTGGTTTACCAAAATGA   BlkEBlkS      @�      @�             
f_lfaT_Pca3-2                 1  5.96e-08          . TCATTTTGGTAAACCAATTTCA           
r_exuT/uxaC_Dda3937_Dze1      1  9.25e-08          . TTAAATTGGTATGACAAATTAT           
f_exuT/uxaC_Dda3937_Dze1      1  9.25e-08          . ATAATTTGTCATACCAATTTAA           
r_exuR_Dda3937                1  1.03e-07          . TAGATTTGTTATACCACTTACA           
f_exuR_Dda3937                1  1.03e-07          . TGTAAGTGGTATAACAAATCTA           
r_uxuA_Pca3-2_PcoBCS7         1  6.69e-07          . ACGAATTGATTGACCAATTACA           
f_uxuA_Pca3-2_PcoBCS7         1  6.69e-07          . TGTAATTGGTCAATCAATTCGT           
r_exuR_Dze1591                1  8.58e-07          . TAAATTTGTTATACCACCTACA           
f_exuR_Dze1591                1  8.58e-07          . TGTAGGTGGTATAACAAATTTA           
r_uxuA_SCRI1043               1  9.28e-07          . ACAAATTGATTGACCAATTACA           
f_uxuA_SCRI1043               1  9.28e-07          . TGTAATTGGTCAATCAATTTGT           
r_exuT/uxaC_PcoBCS7       BlkEBlkS      	@�      @�         1  2.46e-06          . ATAATTTGTCATACAACTTTAA           
f_exuT/uxaC_PcoBCS7           1  2.46e-06          . TTAAAGTTGTATGACAAATTAT           
r_exuT/uxaC_Pca3-2            1  2.46e-06          . TTAAAGTTGTATGACAAATTAT           
f_exuT/uxaC_Pca3-2            1  2.46e-06          . ATAATTTGTCATACAACTTTAA           
r_lfaT_Dze1591                1  9.37e-06          . GCCGAGTGGTATAACAATACGC           
f_lfaT_Dze1591                1  9.37e-06          . GCGTATTGTTATACCACTCGGC           
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 block diagrams
--------------------------------------------------------------------------------
SEQUENCE NAME            POSITION P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
r_lfaT_JG10-08                    6.3e-10  [+1]
f_lfaT_JG10-08                    6.3e-10  [+1]
r_lfaT_Pcc21      BlkEBlkS      
@�      @�                     6.3e-10  [+1]
f_lfaT_Pcc21                      6.3e-10  [+1]
r_lfaT_PC1                        1.3e-09  [+1]
f_lfaT_PC1                        1.3e-09  [+1]
r_lfaT_Pwa_SCC3193                1.3e-09  [+1]
f_lfaT_Pwa_SCC3193                1.3e-09  [+1]
r_gntR_PC1????                    5.3e-08  [+1]
f_gntR_PC1????                    5.3e-08  [+1]
r_exuR_SCRI1043                   5.3e-08  [+1]
f_exuR_SCRI1043                   5.3e-08  [+1]
r_exuR_PcoBCS7                    5.3e-08  [+1]
f_exuR_PcoBCS7                    5.3e-08  [+1]
r_exuR_Pca3-2                     5.3e-08  [+1]
f_exuR_Pca3-2                     5.3e-08  [+1]
r_lfaT_Pca3-2                       6e-08  [+1]
f_lfaT_Pca3-2                       6e-08  [+1]
r_exuT/uxaC_Dda3937_Dze1          9.3e-08  [+1]
f_exuT/uxaC_Dda3937_Dze1          9.3e-08  [+1]
r_exuR_Dda3937                      1e-07  [+1]
f_exuR_Dda3937                      1e-07  [+1]
r_uxuA_Pca3-2_PcoBCS7             6.7e-07  [+1]
f_BlkEBlkS      @�      @�     uxuA_Pca3-2_PcoBCS7             6.7e-07  [+1]
r_exuR_Dze1591                    8.6e-07  [+1]
f_exuR_Dze1591                    8.6e-07  [+1]
r_uxuA_SCRI1043                   9.3e-07  [+1]
f_uxuA_SCRI1043                   9.3e-07  [+1]
r_exuT/uxaC_PcoBCS7               2.5e-06  [+1]
f_exuT/uxaC_PcoBCS7               2.5e-06  [+1]
r_exuT/uxaC_Pca3-2                2.5e-06  [+1]
f_exuT/uxaC_Pca3-2                2.5e-06  [+1]
r_lfaT_Dze1591                    9.4e-06  [+1]
f_lfaT_Dze1591                    9.4e-06  [+1]
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 in BLOCKS format
--------------------------------------------------------------------------------
BL   MOTIF 1 width=22 seqs=34
r_lfaT_JG10-08           (    1) TGGAATTGGTTTACCAAATTGA  1 
f_lfaT_JG10-08           (    1) TCAATTTGGTAAACCAATTCCA  1 
r_lfaT_Pcc21             (    1) TGAAATTGGTTTABlkEBlkS      @�      @�     CCAAATCGA  1 
f_lfaT_Pcc21             (    1) TCGATTTGGTAAACCAATTTCA  1 
r_lfaT_PC1               (    1) TGAAATTGGTTTACCAAATTGA  1 
f_lfaT_PC1               (    1) TCAATTTGGTAAACCAATTTCA  1 
r_lfaT_Pwa_SCC3193       (    1) TGAAATTGGTTTACCAAATTGA  1 
f_lfaT_Pwa_SCC3193       (    1) TCAATTTGGTAAACCAATTTCA  1 
r_gntR_PC1????           (    1) ATGATTTGTTATACCACTTAAT  1 
f_gntR_PC1????           (    1) ATTAAGTGGTATAACAAATCAT  1 
r_exuR_SCRI1043          (    1) ATGATTTGTTATACCACTTAAT  1 
f_exuR_SCRI1043          (    1) ATTAAGTGGTATAACAAATCAT  1 
r_exuR_PcoBCS7           (    1) ATGATTTGTTATACCACTTAAT  1 
f_exuR_PcoBCS7           (    1) ATTAAGTGGTATAACAAATCAT  1 
r_exuR_Pca3-2            (    1) ATGATTTGTTATACCACTTAAT  1 
f_exuR_Pca3-2            (    1) ATTAAGTGGTATAACAAATCAT  1 
r_lfaT_Pca3-2            (    1) TGAAATTGGTTTACCAAAATGA  1 
f_lfaT_Pca3-2            (    1) TCATTTTGGTAAACCAATTTCA  1 
r_exuT/uxaC_Dda3937_Dze1 (    1) TTAAATTGGTATGACAAATTAT  1 
f_exuT/uxaC_Dda393BlkEBlkS      @�      @�     7_Dze1 (    1) ATAATTTGTCATACCAATTTAA  1 
r_exuR_Dda3937           (    1) TAGATTTGTTATACCACTTACA  1 
f_exuR_Dda3937           (    1) TGTAAGTGGTATAACAAATCTA  1 
r_uxuA_Pca3-2_PcoBCS7    (    1) ACGAATTGATTGACCAATTACA  1 
f_uxuA_Pca3-2_PcoBCS7    (    1) TGTAATTGGTCAATCAATTCGT  1 
r_exuR_Dze1591           (    1) TAAATTTGTTATACCACCTACA  1 
f_exuR_Dze1591           (    1) TGTAGGTGGTATAACAAATTTA  1 
r_uxuA_SCRI1043          (    1) ACAAATTGATTGACCAATTACA  1 
f_uxuA_SCRI1043          (    1) TGTAATTGGTCAATCAATTTGT  1 
r_exuT/uxaC_PcoBCS7      (    1) ATAATTTGTCATACAACTTTAA  1 
f_exuT/uxaC_PcoBCS7      (    1) TTAAAGTTGTATGACAAATTAT  1 
r_exuT/uxaC_Pca3-2       (    1) TTAAAGTTGTATGACAAATTAT  1 
f_exuT/uxaC_Pca3-2       (    1) ATAATTTGTCATACAACTTTAA  1 
r_lfaT_Dze1591           (    1) GCCGAGTGGTATAACAATACGC  1 
f_lfaT_Dze1591           (    1) GCGTATTGTTATACCACTCGGC  1 
//

--------------------------------------------------------------------------------

------------------------BlkEBlkS      @�      @�     --------------------------------------------------------
	Motif 1 position-specific scoring matrix
--------------------------------------------------------------------------------
log-odds matrix: alength= 4 w= 22 n= 34 bayes= -664.386 E= 2.2e-156 
     6  -1173   -119     61 
  -263     98     98     17 
    36   -219     98    -64 
   132  -1173   -219   -263 
    61  -1173   -219     17 
 -1173  -1173     98    101 
 -1173  -1173  -1173    145 
 -1173  -1173    281   -263 
  -263  -1173    227    -31 
 -1173    -61  -1173    132 
   101   -119  -1179    -83 
   -83  -1175   -119    101 
   132  -1177    -61  -1175 
   -31    227  -1177   -263 
  -263    281  -1177  -1175 
   145  -1177  -1177  -1175 
   101     98  -1177  -1175 
    17   -219  -1177     61 
  -263   -219  -1177    132 
   -64     98   -219     36 
    17     98     98   -263 
    61   -119  -1177      6 
--------------------------------------------------------------------------------

-----------------------BlkEBlkS      @�      @�     ---------------------------------------------------------
	Motif 1 position-specific probability matrix
--------------------------------------------------------------------------------
letter-probability matrix: alength= 4 w= 22 nsites= 34 E= 2.2e-156 
 0.382353  0.000000  0.058824  0.558824 
 0.058824  0.264706  0.264706  0.411765 
 0.470588  0.029412  0.264706  0.235294 
 0.911765  0.000000  0.029412  0.058824 
 0.558824  0.000000  0.029412  0.411765 
 0.000000  0.000000  0.264706  0.735294 
 0.000000  0.000000  0.000000  1.000000 
 0.000000  0.000000  0.941176  0.058824 
 0.058824  0.000000  0.647059  0.294118 
 0.000000  0.088235  0.000000  0.911765 
 0.735293  0.058822  0.000000  0.205881 
 0.205882  0.000000  0.058823  0.735294 
 0.911764  0.000000  0.088234  0.000000 
 0.294117  0.647058  0.000000  0.058823 
 0.058823  0.941175  0.000000  0.000000 
 0.999999  0.000000  0.000000  0.000000 
 0.735293  0.264705  0.000000  0.000000 
 0.411764  0.029411  0.000000  0.558823 
 BlkEBlkS      @�      @�     0.058823  0.029411  0.000000  0.911764 
 0.235293  0.264705  0.029411  0.470587 
 0.411764  0.264705  0.264705  0.058823 
 0.558823  0.058823  0.000000  0.382352 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 regular expression
--------------------------------------------------------------------------------
[TA][TCG][AGT]A[AT][TG]TG[GT]T[AT][TA]A[CA]CA[AC][TA]T[TCA][ACG][AT]
--------------------------------------------------------------------------------




Time  0.17 secs.

********************************************************************************


********************************************************************************
SUMMARY OF MOTIFS
********************************************************************************

--------------------------------------------------------------------------------
	Combined block diagrams: non-overlappinBlkEBlkS      @�      @�     g sites with p-value < 0.0001
--------------------------------------------------------------------------------
SEQUENCE NAME            COMBINED P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
f_exuR_Pca3-2                    5.34e-08  [+1(5.34e-08)]
r_exuR_Pca3-2                    5.34e-08  [+1(5.34e-08)]
f_exuR_PcoBCS7                   5.34e-08  [+1(5.34e-08)]
r_exuR_PcoBCS7                   5.34e-08  [+1(5.34e-08)]
f_uxuA_Pca3-2_PcoBCS7            6.69e-07  [+1(6.69e-07)]
r_uxuA_Pca3-2_PcoBCS7            6.69e-07  [+1(6.69e-07)]
f_exuT/uxaC_Pca3-2               2.46e-06  [+1(2.46e-06)]
r_exuT/uxaC_Pca3-2               2.46e-06  [+1(2.46e-06)]
f_exuT/uxaC_PcoBCS7              2.46e-06  [+1(2.46e-06)]
r_exuT/uxaC_PcoBCS7              2.46e-06  [+1(2.46e-06)]
f_lfaT_Pca3-2                    5.96e-08  [+1(5.96e-08)]
r_lfaT_Pca3-2                    5.96e-08  [+1(5.96e-08)]
f_lfaT_Pcc21                     6.26e-10  [+1(6.26e-10)]
r_lfaT_Pcc21 BlkEBlkS      @�      @�                         6.26e-10  [+1(6.26e-10)]
f_exuR_Dda3937                   1.03e-07  [+1(1.03e-07)]
r_exuR_Dda3937                   1.03e-07  [+1(1.03e-07)]
f_exuT/uxaC_Dda3937_Dze1         9.25e-08  [+1(9.25e-08)]
r_exuT/uxaC_Dda3937_Dze1         9.25e-08  [+1(9.25e-08)]
f_exuR_SCRI1043                  5.34e-08  [+1(5.34e-08)]
r_exuR_SCRI1043                  5.34e-08  [+1(5.34e-08)]
f_uxuA_SCRI1043                  9.28e-07  [+1(9.28e-07)]
r_uxuA_SCRI1043                  9.28e-07  [+1(9.28e-07)]
f_lfaT_Pwa_SCC3193               1.30e-09  [+1(1.30e-09)]
r_lfaT_Pwa_SCC3193               1.30e-09  [+1(1.30e-09)]
f_lfaT_JG10-08                   6.26e-10  [+1(6.26e-10)]
r_lfaT_JG10-08                   6.26e-10  [+1(6.26e-10)]
f_gntR_PC1????                   5.34e-08  [+1(5.34e-08)]
r_gntR_PC1????                   5.34e-08  [+1(5.34e-08)]
f_lfaT_PC1                       1.30e-09  [+1(1.30e-09)]
r_lfaT_PC1                       1.30e-09  [+1(1.30e-09)]
f_lfaT_Dze1591     BlkEBlkS      @�                            9.37e-06  [+1(9.37e-06)]
r_lfaT_Dze1591                   9.37e-06  [+1(9.37e-06)]
f_exuR_Dze1591                   8.58e-07  [+1(8.58e-07)]
r_exuR_Dze1591                   8.58e-07  [+1(8.58e-07)]
--------------------------------------------------------------------------------
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          BlkEBlkS       @�      @�     @�\     ????   A�@��`  A�@��`  UxuR_Pectobacterium.logodata                                                                                                                                                                                                    ## LogoData
# First column is position number, counting from zero
# Subsequent columns are raw symbol counts
# Entropy is mean entropy measured in nats.
# Low and High are the 95% confidence limits.
# Weight is the fraction of non-gap symbols in the column.
#	
#	A 	C 	G 	T 	Entropy	Low	High	Weight
1 	13 	0 	2 	19 	0.4785 	0.2869 	0.6702 	1.0000
2 	2 	9 	9 	14 	0.1718 	0.0601 	0.3412 	1.0000
3 	16 	1 	9 	8 	0.2435 	0.1100 	0.4292 	1.0000
4 	31 	0 	1 	2 	0.9279 	0.6419 	1.2139 	1.0000
5 	19 	0 	1 	14 	0.5323 	0.3449 	0.7197 	1.0000
6 	0 	0 	9 	25 	0.7056 	0.4927 	0.9184 	1.0000
7 	0 	0 	0 	34 	1.1977 	0.9673 	1.4281 	1.0000
8 	0 	0 	32 	2 	1.0232 	0.7568 	1.2896 	1.0000
9 	2 	0 	22 	10 	0.5253 	0.3094 	0.7411 	1.0000
10 	0 	3 	0BlkEBlkS      @�               	31 	0.9575 	0.6917 	1.2233 	1.0000
11 	25 	2 	0 	7 	0.6073 	0.3595 	0.8551 	1.0000
12 	7 	0 	2 	25 	0.6073 	0.3595 	0.8551 	1.0000
13 	31 	0 	3 	0 	0.9575 	0.6917 	1.2233 	1.0000
14 	10 	22 	0 	2 	0.5253 	0.3094 	0.7411 	1.0000
15 	2 	32 	0 	0 	1.0232 	0.7568 	1.2896 	1.0000
16 	34 	0 	0 	0 	1.1977 	0.9673 	1.4281 	1.0000
17 	25 	9 	0 	0 	0.7056 	0.4927 	0.9184 	1.0000
18 	14 	1 	0 	19 	0.5323 	0.3449 	0.7197 	1.0000
19 	2 	1 	0 	31 	0.9279 	0.6419 	1.2139 	1.0000
20 	8 	9 	1 	16 	0.2435 	0.1100 	0.4292 	1.0000
21 	14 	9 	9 	2 	0.1718 	0.0601 	0.3412 	1.0000
22 	19 	2 	0 	13 	0.4785 	0.2869 	0.6702 	1.0000
# End LogoData
                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�      @�     @��     ????   A�@��`  A�@��`  UxuR_Pectobacterium.hmm                                                                                                                                                                                                         HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  22
MAXL  75
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Thu Aug 27 21:56:11 2015
NSEQ  34
EFFN  34.000000
CKSUM 474484172
GA    8.90
TC    9.30
NC    8.60
STATS LOCAL MSV       -6.4530  0.76658
STATS LOCAL VITERBI   -7.0074  0.76658
STATS LOCAL FORWARD   -2.8355  0.76658
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.04833  1.89549  1.90720  1.04772
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  0.00000        *
      1   1.09727  3.49949  1.91645  0.71564      1 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.0055BlkEBlkS      @�      @�     4  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      2   2.32991  1.21341  1.41735  1.01291      2 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      3   0.86784  2.38537  1.37205  1.45028      3 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      4   0.21601  4.30371  2.58022  2.25380      4 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      5   0.57165  3.84063  2.85889  1.03115      5 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      6   5.35723  5.10108  1.22069  0.36504      6 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      7   5.74595  5.43762  5.85551  0.01046      7BlkEBlkS      @�      @�      T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      8   4.58010  5.31711  0.09593  2.57292      8 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
      9   2.44054  4.04240  0.51588  1.20947      9 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     10   5.38662  2.20838  5.64910  0.12554     10 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     11   0.33115  2.48376  4.38418  1.68200     11 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     12   1.69113  3.81577  2.47415  0.34329     12 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236BlkEBlkS      @�      @�       1.09861  0.40547
     13   0.11212  6.55924  2.27334  6.38959     13 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     14   1.15182  0.52654  4.61260  2.48447     14 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     15   2.55466  0.09226  5.75201  4.92799     15 C - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     16   0.00527  6.74219  5.93337  6.55574     16 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     17   0.36891  1.21096  5.63053  4.95946     17 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     18   1.04009  2.86775  4.26933  0.55207     18 t - - -
          1.38629  1.38629  BlkEBlkS      @�              1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     19   2.31239  2.53600  4.82201  0.20611     19 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     20   1.47230  1.38009  2.36939  0.85447     20 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     21   1.02832  1.42609  1.20441  2.28007     21 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00554  5.89164  5.89164  1.46634  0.26236  1.09861  0.40547
     22   0.70780  1.92925  3.87850  1.07490     22 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00277  5.88888        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                                BlkEBlkS      @�              BMap   "   0         0         0        0         0        0         0         0         0        $0        (0        ,0        00        40        80        <0      	  @0      
  D0        H0        L0        P0        T0        X0        \0        `0        d0        h0         l0        p0         t0        x0        |0        �0        �0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      BlkE