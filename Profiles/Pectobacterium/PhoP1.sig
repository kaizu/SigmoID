VFSv   BlkS       @D      @�          XBlkEBlkS       @�              @8      fold    A�V��  A�V��  /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�      @�`     @�8     ????   A�V��  A�V��  PhoP1.fasta                                                                                                                                                                                                                     >citM_3-2 hmm1-8.1 hmm2-6.3 magnesium citrate transporter (no site in SCRI)
TTTAGACACCGTTTAA
>fliL_3-2 hmm1-10.2 hmm2-0
TTTATTGTTGGTTTAA
>fliL_BCS7 hmm1-7.5 hmm2-0
TTTATTGTTGGTTTCA
>fliL_SCRI1043 hmm1-7.0 hmm2-6.3
TTTATTGCTGGTTTCA
>gudP_SCRI1043 hmm1-9.0 hmm2-7.0 glucarate transporter (could regulate divergent galactarate dehydratase garD)
TTTATTATTTGTTTAT
>gudP_BCS7_3-2 hmm1-9.4 hmm2-6.3
TTTATTATTGGTTTAT
>mntH_3-2 hmm1-9.8 hmm2-8.4
TTTATATCTTGTTAAG
>mntH_PC1
TTTATATTTTGTTAAG
>mdh_BCS7_3-2 hmm1-8.0 hmm2-8.2 Malate dehydrogenase
TTTATATTCTGTTTAT
>mdh_SCRI1043 hmm1-7.9 hmm2-7.7 Malate dehydrogenase
TTTATATTCTGTTTAT
>nsrR1_3-2 hmm1-8.3 hmm2-0 nitrosative stress response genes repressor (no site in SCRI)
TTTATTATCTGTTAAT
>nsrR2_3-BlkEBlkS      @�              2 hmm1-8.9 hmm2-0 overlaps with nsrR1
TTTACGCCTGGTTTAT
>phoP_3-2 hmm1-11.4 hmm2-9.6 (pehR)
TTTATACCCGGTTTAC
>phoP_BCS7 hmm1-11.6 hmm2-9.6 (pehR)
TTTATACTCGGTTTAC
>phoP_SCRI hmm1-10.5 hmm2-8.6 (pehR)
TTTATACCCGGTTTAC
>OA04_35700 hmm1-8.8 sulfite reductase hemoprotein
GTTATTTTCGGTTTAA
>OA04_5950 hmm1-9.0 transcriptional regulator
TTTATTTTTGGTTGTT
>OA04_5950 hmm1-9.5 MCP 
TTTATAGTTTGTTTCG
>OA04_31430 hmm1-8.8 digua cyc
TTTATTTCTTGTTTCT
>pehA_PC1 hmm1-8.1
TTTATCTTTTGTTTAT
>PC1_1082 ? hmm1-9.6 monovalent cation:proton antiporter
TTTATTCTCTGTTTTC
>fadI_PC1 ? hmm1-9.8 acetyl-CoA C-acyltransferase
TTTATTTTCGGTTAAC
>expI_PC1 hmm1-8.4
TTTATGTTTGGTTTTC
>acnA_3-2 hmm1-9.1
GTTATTTTTTGTTTGT
                                                                                                                                                                                                                                                                                                                  BlkEBlkS       @�      @�0     @��     ????   A�V��  A�V��  PhoP1.options                                                                                                                                                                                                                   ////
// nhmmer options
////


// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 8.8 8.8


// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
#=GF GA 8.6 8.6


//Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 8.51 8.51


// use the gathering threshold from the calibrated profile
nhmmer.--cut_ga


////
// HmmGen options
////


// the alignment length
HmmGen.-L 16


// don't pick up locus_tag from next locus
HmmGen.-n


// ignore sites inside ORFs (anBlkEBlkS      @�              d risk missing some real ones!)
HmmGen.-i 


// feature key
HmmGen.-f protein_bind


// feature qualifier
HmmGen.-q bound_moiety#PhoP


// MASTgen p-value cutoff
mastGen.-V 3e-6


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            BlkEBlkS       @�      @�0     @�`     ????   A�V��  A�V��  PhoP1.info                                                                                                                                                                                                                      PhoP is a known regulator of magnesium transport and virulence genes with a rather large regulons in characterised cases. The PhoP binding sites seem to vary significantly, so several profiles seem to be required to detect most of them. The two PhoP profiles were built starting with E.coli and Salmonella sites described by Harari O. et al. in PLoS Comput Biol 6(7): e1000862. doi:10.1371/journal.pcbi.1000862. The binding site sequences were taken from the Figure S2: Subtractive Submotif 1 for the PhoP1 profile and Subtractive Submotif 2 for the PhoP2 profile. The original PhoP1 and PhoP2 profiles were used to search Pectobacterium carotovorum and Pectobacterium atrosepticum genomes, and high scoring hits clearly related to magnBlkEBlkS      @�              esium transport/magnesium-dependent enzymes/virulence were retained to build final profiles. Ho sensible hits were found in pectobacteria when Subtractive Submotif 3 was used.

Indirect experimental evidence only supports the presence of PhoP binding site in front of the pehA gene.

Both profiles have to be used as the results produced by them are significantly different. 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        BlkEBlkS       @�      @�     @�k�    ????   A�V�   A�V�   meme.txt                                                                                                                                                                                                                        ********************************************************************************
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
citM_3-2        BlkEBlkS      @�      @�              1.0000     16  fliL_3-2                 1.0000     16  
fliL_BCS7                1.0000     16  fliL_SCRI1043            1.0000     16  
gudP_SCRI1043            1.0000     16  gudP_BCS7_3-2            1.0000     16  
mntH_3-2                 1.0000     16  mntH_PC1                 1.0000     16  
mdh_BCS7_3-2             1.0000     16  mdh_SCRI1043             1.0000     16  
nsrR1_3-2                1.0000     16  nsrR2_3-2                1.0000     16  
phoP_3-2                 1.0000     16  phoP_BCS7                1.0000     16  
phoP_SCRI                1.0000     16  OA04_35700               1.0000     16  
OA04_5950                1.0000     16  OA04_31430               1.0000     16  
pehA_PC1                 1.0000     16  PC1_1082                 1.0000     16  
fadI_PC1                 1.0000     16  expI_PC1                 1.0000     16  
acnA_3-2                 1.0000     16  
****************************************************************************BlkEBlkS      @�      @�     ****

********************************************************************************
COMMAND LINE SUMMARY
********************************************************************************
This information can also be useful in the event you wish to report a
problem with the MEME software.

command: meme -nmotifs 1 -dna -text /private/var/folders/1k/4vs0wmnd75371kbm6p5jbmxr0000gn/T/TemporaryItems/alignment.tmp 

model:  mod=         zoops    nmotifs=         1    evt=           inf
object function=  E-value of product of p-values
width:  minw=            8    maxw=           16    minic=        0.00
width:  wg=             11    ws=              1    endgaps=       yes
nsites: minsites=        2    maxsites=       23    wnsites=       0.8
theta:  prob=            1    spmap=         uni    spfuzz=        0.5
global: substring=     yes    branching=      no    wbranch=        no
em:     prior=   dirichlet    b=            0.01    maxiter=        50
        distance=    1e-05
datBlkEBlkS      @�      @�     a:   n=             368    N=              23
strands: +
sample: seed=            0    seqfrac=         1
Letter frequencies in dataset:
A 0.163 C 0.092 G 0.128 T 0.617 
Background letter frequencies (from dataset with add-one prior applied):
A 0.164 C 0.094 G 0.129 T 0.613 
********************************************************************************


********************************************************************************
MOTIF  1 MEME	width =  15  sites =  23  llr = 209  E-value = 3.5e-056
********************************************************************************
--------------------------------------------------------------------------------
	Motif 1 Description
--------------------------------------------------------------------------------
Simplified        A  :::a:31::::::27
pos.-specific     C  ::::::334:::::1
probability       G  1::::11::5a::::
matrix            T  9aa:955764:aa81

         bits    3.4                
                 3.1           *BlkEBlkS      @�      @�         
                 2.7    *      *    
                 2.4    *      *    
Relative         2.0    *      *    
Entropy          1.7    *      *    
(13.1 bits)      1.4    *      *    
                 1.0    *    * *   *
                 0.7  ***    ***** *
                 0.3 ***** *********
                 0.0 ---------------

Multilevel           TTTATTTTTGGTTTA
consensus                 ACCCT     
sequence                            
                                    
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 sites sorted by position p-value
--------------------------------------------------------------------------------
Sequence name             Start   P-value                 Site    
-------------             ----- ---------            ---------------
phoP_SCRI                     1  1.99e-09          . TTTATACCCGGTTTA C         
phoBlkEBlkS      @�      @�     P_3-2                      1  1.99e-09          . TTTATACCCGGTTTA C         
phoP_BCS7                     1  2.34e-08          . TTTATACTCGGTTTA C         
fadI_PC1                      1  2.36e-06          . TTTATTTTCGGTTAA C         
mdh_SCRI1043                  1  6.18e-06          . TTTATATTCTGTTTA T         
mdh_BCS7_3-2                  1  6.18e-06          . TTTATATTCTGTTTA T         
OA04_35700                    1  6.56e-06          . GTTATTTTCGGTTTA A         
nsrR2_3-2                     1  6.56e-06          . TTTACGCCTGGTTTA T         
fliL_3-2                      1  1.26e-05          . TTTATTGTTGGTTTA A         
mntH_3-2                      1  1.36e-05          . TTTATATCTTGTTAA G         
gudP_BCS7_3-2                 1  1.91e-05          . TTTATTATTGGTTTA T         
fliL_SCRI1043                 1  1.91e-05          . TTTATTGCTGGTTTC A         
nsrR1_3-2                     1  2.43e-05          . TTTATTATCTGTTAA T         
mntH_PC1                      1  4.BlkEBlkS      @�      @�     68e-05          . TTTATATTTTGTTAA G         
fliL_BCS7                     1  4.92e-05          . TTTATTGTTGGTTTC A         
citM_3-2                      1  5.11e-05          . TTTAGACACCGTTTA A         
gudP_SCRI1043                 1  9.37e-05          . TTTATTATTTGTTTA T         
PC1_1082                      1  9.93e-05          . TTTATTCTCTGTTTT C         
OA04_31430                    1  1.12e-04          . TTTATTTCTTGTTTC T         
pehA_PC1                      1  1.44e-04          . TTTATCTTTTGTTTA T         
expI_PC1                      1  2.67e-04          . TTTATGTTTGGTTTT C         
OA04_5950                     1  4.36e-04          . TTTATTTTTGGTTGT T         
acnA_3-2                      1  5.80e-04          . GTTATTTTTTGTTTG T         
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 block diagrams
----------------------------------------BlkEBlkS      @�      @�     ----------------------------------------
SEQUENCE NAME            POSITION P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
phoP_SCRI                           2e-09  [+1]_1
phoP_3-2                            2e-09  [+1]_1
phoP_BCS7                         2.3e-08  [+1]_1
fadI_PC1                          2.4e-06  [+1]_1
mdh_SCRI1043                      6.2e-06  [+1]_1
mdh_BCS7_3-2                      6.2e-06  [+1]_1
OA04_35700                        6.6e-06  [+1]_1
nsrR2_3-2                         6.6e-06  [+1]_1
fliL_3-2                          1.3e-05  [+1]_1
mntH_3-2                          1.4e-05  [+1]_1
gudP_BCS7_3-2                     1.9e-05  [+1]_1
fliL_SCRI1043                     1.9e-05  [+1]_1
nsrR1_3-2                         2.4e-05  [+1]_1
mntH_PC1                          4.7e-05  [+1]_1
fliL_BCS7                         4.9e-05  [+1]_1
citM_3-2                          5.1e-05  [+1]_1
gudP_SCRI1043                     9.4BlkEBlkS      	@�      @�     e-05  [+1]_1
PC1_1082                          9.9e-05  [+1]_1
OA04_31430                        0.00011  [+1]_1
pehA_PC1                          0.00014  [+1]_1
expI_PC1                          0.00027  [+1]_1
OA04_5950                         0.00044  [+1]_1
acnA_3-2                          0.00058  [+1]_1
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 in BLOCKS format
--------------------------------------------------------------------------------
BL   MOTIF 1 width=15 seqs=23
phoP_SCRI                (    1) TTTATACCCGGTTTA  1 
phoP_3-2                 (    1) TTTATACCCGGTTTA  1 
phoP_BCS7                (    1) TTTATACTCGGTTTA  1 
fadI_PC1                 (    1) TTTATTTTCGGTTAA  1 
mdh_SCRI1043             (    1) TTTATATTCTGTTTA  1 
mdh_BCS7_3-2             (    1) TTTATATTCTGTTTA  1 
OA04_35700               (    1) GTTATTTTCGGTTTA  1 
nsrR2_3-BlkEBlkS      
@�      @�     2                (    1) TTTACGCCTGGTTTA  1 
fliL_3-2                 (    1) TTTATTGTTGGTTTA  1 
mntH_3-2                 (    1) TTTATATCTTGTTAA  1 
gudP_BCS7_3-2            (    1) TTTATTATTGGTTTA  1 
fliL_SCRI1043            (    1) TTTATTGCTGGTTTC  1 
nsrR1_3-2                (    1) TTTATTATCTGTTAA  1 
mntH_PC1                 (    1) TTTATATTTTGTTAA  1 
fliL_BCS7                (    1) TTTATTGTTGGTTTC  1 
citM_3-2                 (    1) TTTAGACACCGTTTA  1 
gudP_SCRI1043            (    1) TTTATTATTTGTTTA  1 
PC1_1082                 (    1) TTTATTCTCTGTTTT  1 
OA04_31430               (    1) TTTATTTCTTGTTTC  1 
pehA_PC1                 (    1) TTTATCTTTTGTTTA  1 
expI_PC1                 (    1) TTTATGTTTGGTTTT  1 
OA04_5950                (    1) TTTATTTTTGGTTGT  1 
acnA_3-2                 (    1) GTTATTTTTTGTTTG  1 
//

--------------------------------------------------------------------------------

------------------------------------------------------------------BlkEBlkS      @�      @�     --------------
	Motif 1 position-specific scoring matrix
--------------------------------------------------------------------------------
log-odds matrix: alength= 4 w= 15 n= 46 bayes= 0.716928 E= 3.5e-056 
 -1117  -1117    -57     57 
 -1117  -1117  -1117     71 
 -1117  -1117  -1117     71 
   261  -1117  -1117  -1117 
 -1117   -111   -157     57 
   108   -111    -57    -23 
   -33    147      2    -36 
  -191    147  -1117     18 
 -1117    221  -1117    -12 
 -1117   -111    202    -50 
 -1117  -1117    295  -1117 
 -1117  -1117  -1117     71 
 -1117  -1117  -1117     71 
     8  -1117   -157     35 
   208     47   -157   -223 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 position-specific probability matrix
--------------------------------------------------------------------------------
letter-probability matrix: alength= 4 w= 15 nsites= 23 E= 3.BlkEBlkS      @�      @�     5e-056 
 0.000000  0.000000  0.086957  0.913043 
 0.000000  0.000000  0.000000  1.000000 
 0.000000  0.000000  0.000000  1.000000 
 1.000000  0.000000  0.000000  0.000000 
 0.000000  0.043478  0.043478  0.913043 
 0.347826  0.043478  0.086957  0.521739 
 0.130435  0.260870  0.130435  0.478261 
 0.043478  0.260870  0.000000  0.695652 
 0.000000  0.434783  0.000000  0.565217 
 0.000000  0.043478  0.521739  0.434783 
 0.000000  0.000000  1.000000  0.000000 
 0.000000  0.000000  0.000000  1.000000 
 0.000000  0.000000  0.000000  1.000000 
 0.173913  0.000000  0.043478  0.782609 
 0.695652  0.130435  0.043478  0.130435 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	Motif 1 regular expression
--------------------------------------------------------------------------------
TTTAT[TA][TC][TC][TC][GT]GTTTA
------------------------------------------------------------------BlkEBlkS      @�      @�     --------------




Time  0.03 secs.

********************************************************************************


********************************************************************************
SUMMARY OF MOTIFS
********************************************************************************

--------------------------------------------------------------------------------
	Combined block diagrams: non-overlapping sites with p-value < 0.0001
--------------------------------------------------------------------------------
SEQUENCE NAME            COMBINED P-VALUE  MOTIF DIAGRAM
-------------            ----------------  -------------
citM_3-2                         1.02e-04  [+1(5.11e-05)]_1
fliL_3-2                         2.52e-05  [+1(1.26e-05)]_1
fliL_BCS7                        9.83e-05  [+1(4.92e-05)]_1
fliL_SCRI1043                    3.81e-05  [+1(1.91e-05)]_1
gudP_SCRI1043                    1.87e-04  [+1(9.37e-05)]_1
gudP_BCS7_3-2                    3.81e-05  [+BlkEBlkS      @�      @�     1(1.91e-05)]_1
mntH_3-2                         2.72e-05  [+1(1.36e-05)]_1
mntH_PC1                         9.35e-05  [+1(4.68e-05)]_1
mdh_BCS7_3-2                     1.24e-05  [+1(6.18e-06)]_1
mdh_SCRI1043                     1.24e-05  [+1(6.18e-06)]_1
nsrR1_3-2                        4.85e-05  [+1(2.43e-05)]_1
nsrR2_3-2                        1.31e-05  [+1(6.56e-06)]_1
phoP_3-2                         3.98e-09  [+1(1.99e-09)]_1
phoP_BCS7                        4.69e-08  [+1(2.34e-08)]_1
phoP_SCRI                        3.98e-09  [+1(1.99e-09)]_1
OA04_35700                       1.31e-05  [+1(6.56e-06)]_1
OA04_5950                        8.73e-04  16
OA04_31430                       2.25e-04  16
pehA_PC1                         2.88e-04  16
PC1_1082                         1.99e-04  [+1(9.93e-05)]_1
fadI_PC1                         4.71e-06  [+1(2.36e-06)]_1
expI_PC1                         5.34e-04  16
acnA_3-2                         1.16e-03  16
---------------------------BlkEBlkS      @�              -----------------------------------------------------

********************************************************************************


********************************************************************************
Stopped because nmotifs = 1 reached.
********************************************************************************

CPU: Ptushka.local

********************************************************************************
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�      @�     @��     ????   A�V�   A�V�   PhoP1.hmm                                                                                                                                                                                                                       HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  16
MAXL  69
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Sun Jan 10 01:28:49 2016
NSEQ  24
EFFN  24.000000
CKSUM 1687157560
GA    8.60
TC    8.80
NC    8.51
STATS LOCAL MSV       -6.0970  0.77618
STATS LOCAL VITERBI   -6.5678  0.77618
STATS LOCAL FORWARD   -2.0161  0.77618
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.78423  2.24194  1.92989  0.54359
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  0.00000        *
      1   5.06232  4.70642  2.23302  0.13076      1 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.007BlkEBlkS      @�      @�     66  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
      2   5.37643  4.99868  5.49739  0.01559      2 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
      3   5.37643  4.99868  5.49739  0.01559      3 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
      4   0.00771  6.32002  5.58407  6.15505      4 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
      5   4.12702  2.55522  2.31283  0.21417      5 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
      6   1.04926  2.50415  2.05255  0.82177      6 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
      7   1.98280  1.28237  1.79602  0.86993      BlkEBlkS      @�      @�     7 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
      8   2.24024  1.40059  3.86396  0.46820      8 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
      9   4.89834  0.88280  5.14059  0.55676      9 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
     10   3.38881  2.18537  0.80264  0.90222     10 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
     11   5.16583  6.12720  0.01065  5.91491     11 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
     12   5.37643  4.99868  5.49739  0.01559     12 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.2623BlkEBlkS      @�              6  1.09861  0.40547
     13   5.37643  4.99868  5.49739  0.01559     13 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
     14   1.81008  3.55277  2.60601  0.30940     14 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
     15   0.54980  1.80401  2.36509  1.80571     15 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00766  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
     16   1.38850  1.52070  1.95176  0.94169     16 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00384  5.56452        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                                                                                                     BlkEBlkS      @�              BMap      0         0         0        0         0        0         0        0          0        $0        (0        ,0        00        40        80        <0        @0      	  D0      
  H0        L0        P0        T0        X0        \0         `0        d0        h0        l0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              BlkE