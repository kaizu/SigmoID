VFSv   BlkS       @D      @�           �BlkEBlkS       @�              @8      fold    A�6��   A�6��   /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�      @�`     @��     ????   A�6��   A�6��   PhoP2_Pectobacterium.fasta                                                                                                                                                                                                      >cutC_SCRI1043&3-2 hmm1-0 hmm2-8.7
TTTATGTCATGTTTAT
>cutC_BCS7 hmm1-8.1 hmm2-8.7
TTTATGTCATGTTTAT
>evr_SCRI1043 hmm1-0 hmm2-8.2
TTTATTCATGGTTTAA
>expI_3-2  hmm1-0 hmm2-10.1
TTTATCATATGTTTAT
>expI_SCRI hmm1-0 hmm2-10.1
TTTATCATATGTTTAT
>mgtB_SCRI1043_3-2 hmm1-0 hmm2-5.9
TTGACGTCCGGTTTAG
>mgtB_BCS7_02240 hmm1-0 hmm2-5.9 Mg ABC transporter ATPase
TTGACGTTCGGTTTAG
>mdh_BCS7_3-2 hmm1-8.0 hmm2-8.2 Malate dehydrogenase
TTTATATTCTGTTTAT
>mdh_SCRI1043 hmm1-7.9 hmm2-7.7 Malate dehydrogenase
TTTATATTCTGTTTAT
>pehA2_3-2 found only with Pca_hmm2-9.8
TTTATTATTTATTTAT
>pehA1_BCS7 hmm1-0 hmm2-7.3
TTTATTATTTGTTTAT
>pehA4_PC1
TTGATACTTCATTTAA
>pel_3-2_OA04_24940 hmm1-0 hmm2-7.3 (7.8 with latest)
TTTATCACTTATTTAG
>rimO_BCS7_3-2 hmm1-0 hmm2-8.1
TBlkEBlkS      @�              TTATTTTCTGTTTAT
>ECA0436_SCRI1043 hmm1-0 hmm2-5.9 MCP just in front of mgtB
TTTATTGATTATTGAT
>OA04_05070 hmm1-0 hmm2-8.7 MCP just in front of mgtB
TTTATTAATTATTGAT
>OA04_38810_3-2 hmm1-0 hmm2-9.3 MCP
TTTATCTTGTGTTTAA
>BCS7_18365 hmm1-0 hmm2-8.6 RNA methyltransferase
TTGATTTATTGTTGAT
>OA04_32540 hmm2-11.6 hypothetical protein
TTTATTTTAGGTTTAT
>OA04_32540_2 hmm2-10.2 hypothetical protein
TTGATGGTTTGTTTAT
>rscR_3-2 hmm2-8.8
TTGATTATATATTTAT
>OA04_28640 hmm2-8.9 MCP
GTTATTTTTTATTTAT
>OA04_26160 hmm2-8.6 sugar transporter ABC sub (two gene operon)
CTTATCTTATGTTTAT
>OA04_32340 hmm2-10.1  hypothetical protein
TTTATTCTATATTTAT
>pehA1_PC1 hmm2-9.1 (3-2:8.9)
ATTATTTTATATTTAA
>pehA2_PC1 hmm2-12.6
TTTATCTTTTGTTTAT
>pehA3_PC1 hmm2-8.5
ATTATATTTTATTTAA
>pehA3_3-2 hmm2-11.5
ATTATTTTTTATTTAA
>PC1_1159 hmm2-9.4 MCP
CTTATTGTTTGTTTAT
>cutC_PC1 hmm1-0 hmm2-8.2
ATTATGTCATGTTTAT
>PC1_3483 hmm2-11.7 NUDIX hydrolase
TTTATTTTTTATTTAA

                                                                    BlkEBlkS       @�      @�0     @�$     ????   A�6��   A�6��   PhoP2_Pectobacterium.options                                                                                                                                                                                                    // a space is strictly required between a switch and its value 

////
// alignment options
////

// these are added to alignment when converting to Stockholm format

// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
// (second number isn't used but is still required)
#=GF GA 8.5 8.5

// Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 8.21 8.21

// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 8.7 8.7

////
// hmmbuild options
////

////
// nhmmer BlkEBlkS      @�              options
////

// use the gathering cutoff threshold from the calibrated profile
nhmmer.--cut_ga 

////
// HmmGen options
////

// the alignment is extended, so incomplete match is allowed
HmmGen.-L 15:16


// ignore sites inside ORFs (some still could be there)
HmmGen.-i

// feature key
HmmGen.-f protein_bind

// feature qualifiers
HmmGen.-q bound_moiety#PhoP                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       BlkEBlkS       @�      @�0     @��     ????   A�6��   A�6��   PhoP2_Pectobacterium.info                                                                                                                                                                                                       PhoP is a known regulator of magnesium transport and virulence genes with a rather large regulons in characterised cases. The PhoP binding sites seem to vary significantly, so several profiles seem to be required to detect most of them. The two PhoP profiles were built starting with E.coli and Salmonella sites described by Harari O. et al. in PLoS Comput Biol 6(7): e1000862. doi:10.1371/journal.pcbi.1000862. The binding site sequences were taken from the Figure S2: Subtractive Submotif 1 for the PhoP1 profile and Subtractive Submotif 2 for the PhoP2 profile. The original PhoP1 and PhoP2 profiles were used to search Pectobacterium carotovorum 3-2 and Pectobacterium atrosepticum SCRI1043 genomes, and high scoring hits clearly reBlkEBlkS      @�              lated to magnesium transport/magnesium-dependent enzymes/virulence were retained to build final profiles. Ho sensible hits were found in pectobacteria when Subtractive Submotif 3 was used.

Indirect experimental evidence only supports the presence of PhoP binding site in front of the pehA gene.

Both profiles have to be used as the results produced by them are significantly different. 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           BlkEBlkS       @�      @�     @��     ????   A�6��   A�6��   PhoP2_Pectobacterium.logodata                                                                                                                                                                                                   ## LogoData
# First column is position number, counting from zero
# Subsequent columns are raw symbol counts
# Entropy is mean entropy measured in nats.
# Low and High are the 95% confidence limits.
# Weight is the fraction of non-gap symbols in the column.
#	
#	A 	C 	G 	T 	Entropy	Low	High	Weight
1 	4 	2 	1 	24 	0.5998 	0.3047 	0.8948 	1.0000
2 	0 	0 	0 	31 	1.1846 	0.9402 	1.4290 	1.0000
3 	0 	0 	6 	25 	0.7769 	0.5271 	1.0268 	1.0000
4 	31 	0 	0 	0 	1.1846 	0.9402 	1.4290 	1.0000
5 	0 	2 	0 	29 	0.9999 	0.7205 	1.2793 	1.0000
6 	4 	6 	6 	15 	0.1637 	0.0397 	0.3738 	1.0000
7 	7 	3 	3 	18 	0.2928 	0.1133 	0.5560 	1.0000
8 	4 	5 	0 	22 	0.5317 	0.2787 	0.7846 	1.0000
9 	10 	5 	1 	15 	0.2709 	0.1202 	0.4818 	1.0000
10 	0 	1 	4 	BlkEBlkS      @�              26 	0.7736 	0.4873 	1.0599 	1.0000
11 	12 	0 	19 	0 	0.6177 	0.4342 	0.8013 	1.0000
12 	0 	0 	0 	31 	1.1846 	0.9402 	1.4290 	1.0000
13 	0 	0 	0 	31 	1.1846 	0.9402 	1.4290 	1.0000
14 	0 	0 	3 	28 	0.9313 	0.6542 	1.2084 	1.0000
15 	31 	0 	0 	0 	1.1846 	0.9402 	1.4290 	1.0000
16 	7 	0 	3 	21 	0.5092 	0.2704 	0.7481 	1.0000
# End LogoData
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             BlkEBlkS       @�      @�     @��     ????   A�6��   A�6��   PhoP2_Pectobacterium.hmm                                                                                                                                                                                                        HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  16
MAXL  68
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Sun Jun 28 15:09:29 2015
NSEQ  31
EFFN  31.000000
CKSUM 1530253183
GA    8.50
TC    8.70
NC    8.21
STATS LOCAL MSV       -6.4532  0.77492
STATS LOCAL VITERBI   -6.8270  0.77492
STATS LOCAL FORWARD   -2.1697  0.77492
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.49428  2.68871  2.13873  0.52794
          1.38629  1.38629  1.38629  1.38629
          0.00604  5.80513  5.80513  1.46634  0.26236  0.00000        *
      1   1.99495  2.43244  2.73998  0.34026      1 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.006BlkEBlkS      @�      @�     04  5.80513  5.80513  1.46634  0.26236  1.09861  0.40547
      2   5.64836  5.32076  5.76095  0.01163      2 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00604  5.80513  5.80513  1.46634  0.26236  1.09861  0.40547
      3   5.22495  4.96400  1.33151  0.32358      3 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00604  5.80513  5.80513  1.46634  0.26236  1.09861  0.40547
      4   0.00582  6.63172  5.84090  6.45079      4 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00604  5.80513  5.80513  1.46634  0.26236  1.09861  0.40547
      5   5.28140  2.11496  5.54173  0.13885      5 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00604  5.80513  5.80513  1.46634  0.26236  1.09861  0.40547
      6   1.83311  1.68426  1.48090  0.85081      6 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00604  5.80513  5.80513  1.46634  0.26236  1.09861  0.40547
      7   1.57336  1.98568  2.06494  0.63764      BlkEBlkS      @�      @�     7 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00604  5.80513  5.80513  1.46634  0.26236  1.09861  0.40547
      8   1.83152  1.69675  4.01824  0.44853      8 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00604  5.80513  5.80513  1.46634  0.26236  1.09861  0.40547
      9   1.30348  1.64119  2.62707  0.77138      9 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00604  5.80513  5.80513  1.46634  0.26236  1.09861  0.40547
     10   4.19728  2.64073  1.74122  0.30334     10 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00604  5.80513  5.80513  1.46634  0.26236  1.09861  0.40547
     11   0.97438  5.37529  0.49080  5.14799     11 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00604  5.80513  5.80513  1.46634  0.26236  1.09861  0.40547
     12   5.64836  5.32076  5.76095  0.01163     12 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00604  5.80513  5.80513  1.46634  0.2623BlkEBlkS      @�              6  1.09861  0.40547
     13   5.64836  5.32076  5.76095  0.01163     13 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.00604  5.80513  5.80513  1.46634  0.26236  1.09861  0.40547
     14   5.41990  5.06056  2.13471  0.13817     14 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00604  5.80513  5.80513  1.46634  0.26236  1.09861  0.40547
     15   0.00582  6.63172  5.84090  6.45079     15 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.00604  5.80513  5.80513  1.46634  0.26236  1.09861  0.40547
     16   1.40848  3.43338  1.84489  0.57064     16 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00303  5.80212        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                                                                                                     BlkEBlkS      @�              BMap      0         0         0        0         0        0         0        0          0        $0         (0        ,0        00        40                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      BlkE