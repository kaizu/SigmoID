VFSv   BlkS       @D      @�          |BlkEBlkS       @�              @8      fold    A�\�   A�\�   /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�      @�`     @��     ????   A�\�   A�\�   FruR.fasta                                                                                                                                                                                                                      >f_PA3563 VIMSSId=60013 Pos=-92 Score=5.33729
GCTGAATCGATTCACT
>r_PA3563 VIMSSId=60013 Pos=-92 Score=5.33729
AGTGAATCGATTCAGC
>f_PA3562 VIMSSId=60012 Pos=-251 Score=4.90286
AGTGAATCGATTCAGC
>r_PA3562 VIMSSId=60012 Pos=-251 Score=4.90286
GCTGAATCGATTCACT
>f_PSEEN0932 VIMSSId=2047115 Pos=-142 Score=4.54756
GATTAAACGATTCAGC
>r_PSEEN0932 VIMSSId=2047115 Pos=-142 Score=4.54756
GCTGAATCGTTTAATC
>f_PSEEN0931 VIMSSId=2047114 Pos=-170 Score=4.95554
GCTGAATCGTTTAATC
>r_PSEEN0931 VIMSSId=2047114 Pos=-170 Score=4.95554
GATTAAACGATTCAGC
>f_PP0792 VIMSSId=216489 Pos=-171 Score=4.84739
GCTGAAACGTTTAATC
>r_PP0792 VIMSSId=216489 Pos=-171 Score=4.84739
GATTAAACGTTTCAGC
>f_PP0793 VIMSSId=216490 Pos=-129 Score=4.54756
GATTAAACGTTTCAGC
>r_PP0793 VBlkEBlkS      @�      @�`     IMSSId=216490 Pos=-129 Score=4.54756
GCTGAAACGTTTAATC
>f_PSPTO0954 VIMSSId=333972 Pos=-166 Score=4.54756
GATTAAACGATTCAGC
>r_PSPTO0954 VIMSSId=333972 Pos=-166 Score=4.54756
GCTGAATCGTTTAATC
>f_PSPTO0953 VIMSSId=333971 Pos=-204 Score=4.95554
GCTGAATCGTTTAATC
>r_PSPTO0953 VIMSSId=333971 Pos=-204 Score=4.95554
GATTAAACGATTCAGC
>f_PFL_0859 VIMSSId=871496 Pos=-157 Score=4.54756
GATTAAACGTTTCAGC
>r_PFL_0859 VIMSSId=871496 Pos=-157 Score=4.54756
GCTGAAACGTTTAATC
>f_PFL_0858 VIMSSId=871495 Pos=-160 Score=4.84739
GCTGAAACGTTTAATC
>r_PFL_0858 VIMSSId=871495 Pos=-160 Score=4.84739
GATTAAACGTTTCAGC
>f_Pmen_0785 VIMSSId=3613976 Pos=-119 Score=5.12872
GCTGAAACGATTCATC
>r_Pmen_0785 VIMSSId=3613976 Pos=-119 Score=5.12872
GATGAATCGTTTCAGC
>f_Pmen_0786 VIMSSId=3613977 Pos=-121 Score=4.96723
GATGAATCGTTTCAGC
>r_Pmen_0786 VIMSSId=3613977 Pos=-121 Score=4.96723
GCTGAAACGATTCATC
>f_PST_0988 VIMSSId=3558752 Pos=-105 Score=5.51014
GCTGAAACGTTTCAGC
>r_PST_0988 VIMSSId=3558752 Pos=-105 Score=5.51014
GCTBlkEBlkS      @�              GAAACGTTTCAGC
>f_PST_0987 VIMSSId=3558751 Pos=-89 Score=5.51014
GCTGAAACGTTTCAGC
>r_PST_0987 VIMSSId=3558751 Pos=-89 Score=5.51014
GCTGAAACGTTTCAGC
>f_Avin_12190 VIMSSId=6917664 Pos=-109 Score=4.79471
AGTGAAACGATTCAGC
>r_Avin_12190 VIMSSId=6917664 Pos=-109 Score=4.79471
GCTGAATCGTTTCACT
>f_Avin_12180 VIMSSId=6917663 Pos=-81 Score=5.33729
GCTGAATCGTTTCACT
>r_Avin_12180 VIMSSId=6917663 Pos=-81 Score=5.33729
AGTGAAACGATTCAGC
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      BlkEBlkS       @�      @�0     @��     ????   A�\�   A�\�   FruR.options                                                                                                                                                                                                                    ////
// nhmmer options
////


// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 12.5 12.5


// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
#=GF GA 12 12


//Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 11.4 11.4


// use the gathering threshold from the calibrated profile
nhmmer.--cut_ga


////
// HmmGen options
////


// the alignment length
HmmGen.-L 16


// the site is palindromic
HmmGen.-p


// don't pick up locus_tag from next locus
HmmGBlkEBlkS      @�              en.-n


// ignore sites inside ORFs (and risk missing some real ones!)
HmmGen.-i 


// feature key
HmmGen.-f protein_bind


// feature qualifier
HmmGen.-q bound_moiety#FruR


// MASTgen p-value cutoff
mastGen.-V 2e-8


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     BlkEBlkS       @�              @a�     ????   A�\�   A�\�   FruR.info                                                                                                                                                                                                                       FruR controls two divergent fructose utilisation operons binding to a single site in between.
This profile was built from RegPrecise 3.0 data                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   BlkEBlkS       @�      @�     @ф     ????   A�\�@  A�\�@  meme.txt                                                                                                                                                                                                                        ********************************************************************************
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
f_PA3563        BlkEBlkS      @�      @�              1.0000     16  r_PA3563                 1.0000     16  
f_PA3562                 1.0000     16  r_PA3562                 1.0000     16  
f_PSEEN0932              1.0000     16  r_PSEEN0932              1.0000     16  
f_PSEEN0931              1.0000     16  r_PSEEN0931              1.0000     16  
f_PP0792                 1.0000     16  r_PP0792                 1.0000     16  
f_PP0793                 1.0000     16  r_PP0793                 1.0000     16  
f_PSPTO0954              1.0000     16  r_PSPTO0954              1.0000     16  
f_PSPTO0953              1.0000     16  r_PSPTO0953              1.0000     16  
f_PFL_0859               1.0000     16  r_PFL_0859               1.0000     16  
f_PFL_0858               1.0000     16  r_PFL_0858               1.0000     16  
f_Pmen_0785              1.0000     16  r_Pmen_0785              1.0000     16  
f_Pmen_0786              1.0000     16  r_Pmen_0786              1.0000     16  
f_PST_0988               1.0000     BlkEBlkS      @�      @�     16  r_PST_0988               1.0000     16  
f_PST_0987               1.0000     16  r_PST_0987               1.0000     16  
f_Avin_12190             1.0000     16  r_Avin_12190             1.0000     16  
f_Avin_12180             1.0000     16  r_Avin_12180             1.0000     16  
********************************************************************************

********************************************************************************
COMMAND LINE SUMMARY
********************************************************************************
This information can also be useful in the event you wish to report a
problem with the MEME software.

command: meme -nmotifs 1 -dna -text -pal -revcomp /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=         zoops    nmotifs=         1    evt=           inf
object function=  E-value of product of p-values
width:  minw=            8    maxw=           16    minic=        0.00
width: BlkEBlkS      @�      @�      wg=             11    ws=              1    endgaps=       yes
nsites: minsites=        2    maxsites=       32    wnsites=       0.8
theta:  prob=            1    spmap=         uni    spfuzz=        0.5
global: substring=     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter=        50
        distance=    1e-05
data:   n=             512    N=              32
strands: + -
sample: seed=            0    seqfrac=         1
Letter frequencies in dataset:
A 0.293 C 0.207 G 0.207 T 0.293 
Background letter frequencies (from dataset with add-one prior applied):
A 0.293 C 0.207 G 0.207 T 0.293 
********************************************************************************


********************************************************************************
MOTIF  1 MEME	width =  16  sites =  32  llr = 539  E-value = 2.6e-198
********************************************************************************
---------------------BlkEBlkS      @�      @�     -----------------------------------------------------------
	Motif 1 Description
--------------------------------------------------------------------------------
Simplified        A  13::aa6::4::2a::
pos.-specific     C  :6:::::a::::7:19
probability       G  91:8::::a:::::6:
matrix            T  ::a3::4::6aa::31

         bits    2.3        **       
                 2.0        **       
                 1.8   * ** ** ** *  
                 1.6 * * ** ** ** * *
Relative         1.4 * **** ** **** *
Entropy          1.1 * **** ** **** *
(24.3 bits)      0.9 * ************ *
                 0.7 ****************
                 0.5 ****************
                 0.2 ****************
                 0.0 ----------------

Multilevel           GCTGAAACGTTTCAGC
consensus             A T  T  A  A T 
sequence                             
                                     
--------------------------------------------------------------------------------

------------------------BlkEBlkS      @�      @�     --------------------------------------------------------
	Motif 1 sites sorted by position p-value
--------------------------------------------------------------------------------
Sequence name            Strand  Start   P-value                  Site    
-------------            ------  ----- ---------            ----------------
r_PST_0987                   +      1  1.83e-10          . GCTGAAACGTTTCAGC           
f_PST_0987                   +      1  1.83e-10          . GCTGAAACGTTTCAGC           
r_PST_0988                   +      1  1.83e-10          . GCTGAAACGTTTCAGC           
f_PST_0988                   +      1  1.83e-10          . GCTGAAACGTTTCAGC           
r_Pmen_0786                  -      1  3.17e-09          . GATGAATCGTTTCAGC           
f_Pmen_0786                  +      1  3.17e-09          . GATGAATCGTTTCAGC           
r_Pmen_0785                  +      1  3.17e-09          . GATGAATCGTTTCAGC           
f_Pmen_0785                  -      1  3.17e-09    BlkEBlkS      @�      @�           . GATGAATCGTTTCAGC           
r_PFL_0858                   +      1  7.81e-09          . GATTAAACGTTTCAGC           
f_PFL_0858                   -      1  7.81e-09          . GATTAAACGTTTCAGC           
r_PFL_0859                   -      1  7.81e-09          . GATTAAACGTTTCAGC           
f_PFL_0859                   +      1  7.81e-09          . GATTAAACGTTTCAGC           
r_PP0793                     -      1  7.81e-09          . GATTAAACGTTTCAGC           
f_PP0793                     +      1  7.81e-09          . GATTAAACGTTTCAGC           
r_PP0792                     +      1  7.81e-09          . GATTAAACGTTTCAGC           
f_PP0792                     -      1  7.81e-09          . GATTAAACGTTTCAGC           
r_PSPTO0953                  +      1  1.53e-08          . GATTAAACGATTCAGC           
f_PSPTO0953                  -      1  1.53e-08          . GATTAAACGATTCAGC           
r_PSPTO0954                  -      1  1.53e-08          . GATTAAACGATTCAGC           BlkEBlkS      @�      @�     
f_PSPTO0954                  +      1  1.53e-08          . GATTAAACGATTCAGC           
r_PSEEN0931                  +      1  1.53e-08          . GATTAAACGATTCAGC           
f_PSEEN0931                  -      1  1.53e-08          . GATTAAACGATTCAGC           
r_PSEEN0932                  -      1  1.53e-08          . GATTAAACGATTCAGC           
f_PSEEN0932                  +      1  1.53e-08          . GATTAAACGATTCAGC           
r_Avin_12180                 +      1  4.70e-08          . AGTGAAACGATTCAGC           
f_Avin_12180                 -      1  4.70e-08          . AGTGAAACGATTCAGC           
r_Avin_12190                 -      1  4.70e-08          . AGTGAAACGATTCAGC           
f_Avin_12190                 +      1  4.70e-08          . AGTGAAACGATTCAGC           
r_PA3562                     -      1  6.53e-08          . AGTGAATCGATTCAGC           
f_PA3562                     +      1  6.53e-08          . AGTGAATCGATTCAGC           
r_PA3563                     +    BlkEBlkS      	@�      @�       1  6.53e-08          . AGTGAATCGATTCAGC           
f_PA3563                     -      1  6.53e-08          . AGTGAATCGATTCAGC           
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 block diagrams
--------------------------------------------------------------------------------
SEQUENCE NAME            POSITION P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
r_PST_0987                        1.8e-10  [+1]
f_PST_0987                        1.8e-10  [+1]
r_PST_0988                        1.8e-10  [+1]
f_PST_0988                        1.8e-10  [+1]
r_Pmen_0786                       3.2e-09  [-1]
f_Pmen_0786                       3.2e-09  [+1]
r_Pmen_0785                       3.2e-09  [+1]
f_Pmen_0785                       3.2e-09  [-1]
r_PFL_0858                        7.8e-09  [+1]
f_PFL_0858                        7.8eBlkEBlkS      
@�      @�     -09  [-1]
r_PFL_0859                        7.8e-09  [-1]
f_PFL_0859                        7.8e-09  [+1]
r_PP0793                          7.8e-09  [-1]
f_PP0793                          7.8e-09  [+1]
r_PP0792                          7.8e-09  [+1]
f_PP0792                          7.8e-09  [-1]
r_PSPTO0953                       1.5e-08  [+1]
f_PSPTO0953                       1.5e-08  [-1]
r_PSPTO0954                       1.5e-08  [-1]
f_PSPTO0954                       1.5e-08  [+1]
r_PSEEN0931                       1.5e-08  [+1]
f_PSEEN0931                       1.5e-08  [-1]
r_PSEEN0932                       1.5e-08  [-1]
f_PSEEN0932                       1.5e-08  [+1]
r_Avin_12180                      4.7e-08  [+1]
f_Avin_12180                      4.7e-08  [-1]
r_Avin_12190                      4.7e-08  [-1]
f_Avin_12190                      4.7e-08  [+1]
r_PA3562                          6.5e-08  [-1]
f_PA3562                          6.5e-08  [+1]
r_PA3563              BlkEBlkS      @�      @�                 6.5e-08  [+1]
f_PA3563                          6.5e-08  [-1]
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 in BLOCKS format
--------------------------------------------------------------------------------
BL   MOTIF 1 width=16 seqs=32
r_PST_0987               (    1) GCTGAAACGTTTCAGC  1 
f_PST_0987               (    1) GCTGAAACGTTTCAGC  1 
r_PST_0988               (    1) GCTGAAACGTTTCAGC  1 
f_PST_0988               (    1) GCTGAAACGTTTCAGC  1 
r_Pmen_0786              (    1) GATGAATCGTTTCAGC  1 
f_Pmen_0786              (    1) GATGAATCGTTTCAGC  1 
r_Pmen_0785              (    1) GATGAATCGTTTCAGC  1 
f_Pmen_0785              (    1) GATGAATCGTTTCAGC  1 
r_PFL_0858               (    1) GATTAAACGTTTCAGC  1 
f_PFL_0858               (    1) GATTAAACGTTTCAGC  1 
r_PFL_0859               (    1) GATTAAACGTTTCAGC  1 
f_PFL_0859              BlkEBlkS      @�      @�      (    1) GATTAAACGTTTCAGC  1 
r_PP0793                 (    1) GATTAAACGTTTCAGC  1 
f_PP0793                 (    1) GATTAAACGTTTCAGC  1 
r_PP0792                 (    1) GATTAAACGTTTCAGC  1 
f_PP0792                 (    1) GATTAAACGTTTCAGC  1 
r_PSPTO0953              (    1) GATTAAACGATTCAGC  1 
f_PSPTO0953              (    1) GATTAAACGATTCAGC  1 
r_PSPTO0954              (    1) GATTAAACGATTCAGC  1 
f_PSPTO0954              (    1) GATTAAACGATTCAGC  1 
r_PSEEN0931              (    1) GATTAAACGATTCAGC  1 
f_PSEEN0931              (    1) GATTAAACGATTCAGC  1 
r_PSEEN0932              (    1) GATTAAACGATTCAGC  1 
f_PSEEN0932              (    1) GATTAAACGATTCAGC  1 
r_Avin_12180             (    1) AGTGAAACGATTCAGC  1 
f_Avin_12180             (    1) AGTGAAACGATTCAGC  1 
r_Avin_12190             (    1) AGTGAAACGATTCAGC  1 
f_Avin_12190             (    1) AGTGAAACGATTCAGC  1 
r_PA3562                 (    1) AGTGAATCGATTCAGC  1 
f_PA3562                 (    1) AGTGAATCGATBlkEBlkS      @�      @�     TCAGC  1 
r_PA3563                 (    1) AGTGAATCGATTCAGC  1 
f_PA3563                 (    1) AGTGAATCGATTCAGC  1 
//

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific scoring matrix
--------------------------------------------------------------------------------
log-odds matrix: alength= 4 w= 16 n= 32 bayes= 1.58496 E= 2.6e-198 
  -123  -1164    208  -1164 
     9    144    -73  -1164 
 -1164  -1164  -1164    177 
 -1164  -1164    185    -23 
   177  -1164  -1164  -1164 
   177  -1164  -1164  -1164 
   109  -1164  -1164     36 
 -1167    227  -1168  -1167 
 -1165  -1166    227  -1165 
    36  -1167  -1167    109 
 -1166  -1167  -1167    177 
 -1166  -1167  -1167    177 
   -23    185  -1167  -1166 
   177  -1167  -1167  -1166 
 -1166    -73    144      9 
 -1166    208  -1167   -123 
----------------------------------------------------BlkEBlkS      @�      @�     ----------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific probability matrix
--------------------------------------------------------------------------------
letter-probability matrix: alength= 4 w= 16 nsites= 32 E= 2.6e-198 
 0.125000  0.000000  0.875000  0.000000 
 0.312500  0.562500  0.125000  0.000000 
 0.000000  0.000000  0.000000  1.000000 
 0.000000  0.000000  0.750000  0.250000 
 1.000000  0.000000  0.000000  0.000000 
 1.000000  0.000000  0.000000  0.000000 
 0.625000  0.000000  0.000000  0.375000 
 0.000000  0.999998  0.000000  0.000000 
 0.000000  0.000000  0.999999  0.000000 
 0.374999  0.000000  0.000000  0.624999 
 0.000000  0.000000  0.000000  0.999999 
 0.000000  0.000000  0.000000  0.999999 
 0.249999  0.749999  0.000000  0.000000 
 0.999999  0.000000  0.000000  0.000000 
 0.000000  0.124999  0.562499  0.312499 
 0.000000  0.874999  0.000000  0.124999 
------------------------------BlkEBlkS      @�      @�     --------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 regular expression
--------------------------------------------------------------------------------
G[CA]T[GT]AA[AT]CG[TA]TT[CA]A[GT]C
--------------------------------------------------------------------------------




Time  0.08 secs.

********************************************************************************


********************************************************************************
SUMMARY OF MOTIFS
********************************************************************************

--------------------------------------------------------------------------------
	Combined block diagrams: non-overlapping sites with p-value < 0.0001
--------------------------------------------------------------------------------
SEQUENCE NAME            COMBINED P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
f_BlkEBlkS      @�      @�     PA3563                         1.31e-07  [+1(6.53e-08)]
r_PA3563                         1.31e-07  [+1(6.53e-08)]
f_PA3562                         1.31e-07  [+1(6.53e-08)]
r_PA3562                         1.31e-07  [+1(6.53e-08)]
f_PSEEN0932                      3.06e-08  [+1(1.53e-08)]
r_PSEEN0932                      3.06e-08  [+1(1.53e-08)]
f_PSEEN0931                      3.06e-08  [+1(1.53e-08)]
r_PSEEN0931                      3.06e-08  [+1(1.53e-08)]
f_PP0792                         1.56e-08  [+1(7.81e-09)]
r_PP0792                         1.56e-08  [+1(7.81e-09)]
f_PP0793                         1.56e-08  [+1(7.81e-09)]
r_PP0793                         1.56e-08  [+1(7.81e-09)]
f_PSPTO0954                      3.06e-08  [+1(1.53e-08)]
r_PSPTO0954                      3.06e-08  [+1(1.53e-08)]
f_PSPTO0953                      3.06e-08  [+1(1.53e-08)]
r_PSPTO0953                      3.06e-08  [+1(1.53e-08)]
f_PFL_0859                       1.56e-08  [+1(7.81e-09)]
r_PFL_08BlkEBlkS      @�      @�     59                       1.56e-08  [+1(7.81e-09)]
f_PFL_0858                       1.56e-08  [+1(7.81e-09)]
r_PFL_0858                       1.56e-08  [+1(7.81e-09)]
f_Pmen_0785                      6.34e-09  [+1(3.17e-09)]
r_Pmen_0785                      6.34e-09  [+1(3.17e-09)]
f_Pmen_0786                      6.34e-09  [+1(3.17e-09)]
r_Pmen_0786                      6.34e-09  [+1(3.17e-09)]
f_PST_0988                       3.66e-10  [+1(1.83e-10)]
r_PST_0988                       3.66e-10  [+1(1.83e-10)]
f_PST_0987                       3.66e-10  [+1(1.83e-10)]
r_PST_0987                       3.66e-10  [+1(1.83e-10)]
f_Avin_12190                     9.41e-08  [+1(4.70e-08)]
r_Avin_12190                     9.41e-08  [+1(4.70e-08)]
f_Avin_12180                     9.41e-08  [+1(4.70e-08)]
r_Avin_12180                     9.41e-08  [+1(4.70e-08)]
--------------------------------------------------------------------------------

************************************************BlkEBlkS      @�              ********************************


********************************************************************************
Stopped because nmotifs = 1 reached.
********************************************************************************

CPU: Ptushka.local

********************************************************************************
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                BlkEBlkS       @�      @�     @��     ????   A�\�@  A�\�@  FruR.hmm                                                                                                                                                                                                                        HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  16
MAXL  68
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Sun Feb 14 17:23:14 2016
NSEQ  32
EFFN  32.000000
CKSUM 1133436294
GA    12.00
TC    12.50
NC    11.40
STATS LOCAL MSV       -5.6469  0.75637
STATS LOCAL VITERBI   -5.9783  0.75637
STATS LOCAL FORWARD   -3.4482  0.75637
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.22618  1.57689  1.57549  1.22736
          1.38629  1.38629  1.38629  1.38629
          0.00587  5.83481  5.83481  1.46634  0.26236  0.00000        *
      1   1.87767  5.13388  0.18187  4.89918      1 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.BlkEBlkS      @�      @�     00587  5.83481  5.83481  1.46634  0.26236  1.09861  0.40547
      2   1.23676  0.65529  1.83162  3.49894      2 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00587  5.83481  5.83481  1.46634  0.26236  1.09861  0.40547
      3   5.68192  5.36088  5.79347  0.01121      3 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00587  5.83481  5.83481  1.46634  0.26236  1.09861  0.40547
      4   4.74326  5.12152  0.28598  1.45223      4 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00587  5.83481  5.83481  1.46634  0.26236  1.09861  0.40547
      5   0.00562  6.66980  5.87269  6.48696      5 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00587  5.83481  5.83481  1.46634  0.26236  1.09861  0.40547
      6   0.00562  6.66980  5.87269  6.48696      6 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00587  5.83481  5.83481  1.46634  0.26236  1.09861  0.40547
      7   0.54156  4.83163  5.23906  0.90416   BlkEBlkS      @�      @�        7 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00587  5.83481  5.83481  1.46634  0.26236  1.09861  0.40547
      8   5.59374  0.01301  5.75353  5.11028      8 C - - -
          1.38629  1.38629  1.38629  1.38629
          0.00587  5.83481  5.83481  1.46634  0.26236  1.09861  0.40547
      9   5.56133  6.53246  0.00714  6.31176      9 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.00587  5.83481  5.83481  1.46634  0.26236  1.09861  0.40547
     10   0.91006  4.78371  5.21715  0.53834     10 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00587  5.83481  5.83481  1.46634  0.26236  1.09861  0.40547
     11   5.68192  5.36088  5.79347  0.01121     11 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00587  5.83481  5.83481  1.46634  0.26236  1.09861  0.40547
     12   5.68192  5.36088  5.79347  0.01121     12 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00587  5.83481  5.83481  1.46634  0.2BlkEBlkS      @�              6236  1.09861  0.40547
     13   1.43533  0.28745  5.60300  4.81529     13 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00587  5.83481  5.83481  1.46634  0.26236  1.09861  0.40547
     14   0.00562  6.66980  5.87269  6.48696     14 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00587  5.83481  5.83481  1.46634  0.26236  1.09861  0.40547
     15   3.70686  1.82531  0.65222  1.22626     15 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00587  5.83481  5.83481  1.46634  0.26236  1.09861  0.40547
     16   5.33121  0.18347  5.59992  1.83833     16 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00294  5.83188        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                                                                                                  BlkEBlkS      @�              BMap      0         0         0        0        0         0        0         0          0        $0        (0        ,0        00        40        80        <0        @0      	  D0      
  H0        L0        P0        T0        X0        \0        `0        d0        h0         l0        p0        t0        x0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          BlkE