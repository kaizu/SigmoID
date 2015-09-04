VFSv   BlkS       @D      @�           �BlkEBlkS       @�              @8      fold    A�Ae��  A�Ae��  /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�              @z@     ????   A�Ae��  A�Ae��  HrpS_Pectobacterium.fasta                                                                                                                                                                                                       >f_3-2
ATTGCAAGAACTTGCAAT
>r_3-2
ATTGCAAGTTCTTGCAAT
>f_SCRI1043_21A
ATTGCAATAACTTGCAAT
>r_SCRI1043_21A
ATTGCAAGTTATTGCAAT
>f_Dda3937
TCTGCAAAAGCTTGCAAT
>r_Dda3937
ATTGCAAGCTTTTGCAGA
>f_Ech586
ATTGCAAACTCTTGCAGA
>r_Ech586
TCTGCAAGAGTTTGCAAT
>f_Ech1591
TCTGCAAAAGTTTGCAAT
>r_Ech1591
ATTGCAAACTTTTGCAGA
>f_PC1_Pcc21
ATTGCAAGTTATTGCAAT
>r_PC1_Pcc21
ATTGCAATAACTTGCAAT
>f_BC_S7
ATTGCAAGTTCTTGCAAT
>r_BC_S7
ATTGCAAGAACTTGCAAT
                                                                                                                                                                                                                                                                                                                            BlkEBlkS       @�      @�`     @�8     ????   A�Ae��  A�Ae��  HrpS_Pectobacterium.options                                                                                                                                                                                                     // a space is strictly required between a switch and its value 

////
// alignment options
////

// these are added to alignment when converting to Stockholm format

// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 14.3 14.3

// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
// (second number isn't used but is still required)
#=GF GA 11.9 11.9

// Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 9.6 9.6

////
// hmmbuild options
////

////
// nhmmeBlkEBlkS      @�              r options
////

// use the gathering cutoff threshold from the calibrated profile
nhmmer.--cut_ga 

////
// HmmGen options
////

// the alignment length required by HmmGen
HmmGen.-L 18

// the site is palindromic
HmmGen.-p

// ignore sites inside ORFs (a bit unsafe)
HmmGen.-i

// feature key
HmmGen.-f protein_bind

// feature qualifiers
HmmGen.-q bound_moiety#HrpS                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  BlkEBlkS       @�              @x      ????   A�Ae��  A�Ae��  HrpS_Pectobacterium.info                                                                                                                                                                                                        HrpS is an enhancer-binding protein (EBP) required for transcription activation at the RpoN-dependent promoter of hrpL, the master regulator of the type III secretion system genes.

The HrpS binding sites in front of Pectobacterium/Dickeya hrpL genes were identified with the help of MEME. 

The final profile is built from 7 non-redundant sites and their reverse complements. 


                                                                                                                                                                                                                                                                                                                                                                    BlkEBlkS       @�      @�0     @�4     ????   A�Ae�   A�Ae�   HrpS_Pectobacterium.logodata                                                                                                                                                                                                    ## LogoData
# First column is position number, counting from zero
# Subsequent columns are raw symbol counts
# Entropy is mean entropy measured in nats.
# Low and High are the 95% confidence limits.
# Weight is the fraction of non-gap symbols in the column.
#	
#	A 	C 	G 	T 	Entropy	Low	High	Weight
1 	11 	0 	0 	3 	0.6751 	0.3277 	1.0225 	1.0000
2 	0 	3 	0 	11 	0.6751 	0.3277 	1.0225 	1.0000
3 	0 	0 	0 	14 	1.0405 	0.6590 	1.4220 	1.0000
4 	0 	0 	14 	0 	1.0405 	0.6590 	1.4220 	1.0000
5 	0 	14 	0 	0 	1.0405 	0.6590 	1.4220 	1.0000
6 	14 	0 	0 	0 	1.0405 	0.6590 	1.4220 	1.0000
7 	14 	0 	0 	0 	1.0405 	0.6590 	1.4220 	1.0000
8 	4 	0 	8 	2 	0.3770 	0.1553 	0.6952 	1.0000
9 	7 	3 	0 	4 	0.3159 	0.1274 	0.5884 	1.0000
10 	4 	0 	3 	7 	BlkEBlkS      @�              0.3159 	0.1274 	0.5884 	1.0000
11 	2 	8 	0 	4 	0.3770 	0.1553 	0.6952 	1.0000
12 	0 	0 	0 	14 	1.0405 	0.6590 	1.4220 	1.0000
13 	0 	0 	0 	14 	1.0405 	0.6590 	1.4220 	1.0000
14 	0 	0 	14 	0 	1.0405 	0.6590 	1.4220 	1.0000
15 	0 	14 	0 	0 	1.0405 	0.6590 	1.4220 	1.0000
16 	14 	0 	0 	0 	1.0405 	0.6590 	1.4220 	1.0000
17 	11 	0 	3 	0 	0.6751 	0.3277 	1.0225 	1.0000
18 	3 	0 	0 	11 	0.6751 	0.3277 	1.0225 	1.0000
# End LogoData
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   BlkEBlkS       @�      @�     @��     ????   A�Ae�   A�Ae�   HrpS_Pectobacterium.hmm                                                                                                                                                                                                         HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  18
MAXL  75
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Tue Sep  1 10:18:48 2015
NSEQ  14
EFFN  14.000000
CKSUM 3405313567
GA    11.90
TC    14.30
NC    9.60
STATS LOCAL MSV       -5.9489  0.75568
STATS LOCAL VITERBI   -6.7267  0.75568
STATS LOCAL FORWARD   -2.7169  0.75568
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.12874  1.73437  1.72746  1.13223
          1.38629  1.38629  1.38629  1.38629
          0.01242  5.08760  5.08760  1.46634  0.26236  0.00000        *
      1   0.34206  3.68113  3.92084  1.40782      1 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.0BlkEBlkS      @�      @�     1242  5.08760  5.08760  1.46634  0.26236  1.09861  0.40547
      2   4.16608  1.38901  4.37210  0.32498      2 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.01242  5.08760  5.08760  1.46634  0.26236  1.09861  0.40547
      3   4.78148  4.32511  4.91830  0.02935      3 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.01242  5.08760  5.08760  1.46634  0.26236  1.09861  0.40547
      4   4.42423  5.36264  0.02265  5.16358      4 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.01242  5.08760  5.08760  1.46634  0.26236  1.09861  0.40547
      5   4.73649  0.03206  4.91761  4.16908      5 C - - -
          1.38629  1.38629  1.38629  1.38629
          0.01242  5.08760  5.08760  1.46634  0.26236  1.09861  0.40547
      6   0.01437  5.62334  5.03121  5.49125      6 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.01242  5.08760  5.08760  1.46634  0.26236  1.09861  0.40547
      7   0.01437  5.62334  5.03121  5.49125    BlkEBlkS      @�      @�       7 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.01242  5.08760  5.08760  1.46634  0.26236  1.09861  0.40547
      8   1.25512  3.05374  0.66646  1.86915      8 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.01242  5.08760  5.08760  1.46634  0.26236  1.09861  0.40547
      9   0.82990  1.43476  2.86886  1.31314      9 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.01242  5.08760  5.08760  1.46634  0.26236  1.09861  0.40547
     10   1.35127  2.71406  1.43056  0.83092     10 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.01242  5.08760  5.08760  1.46634  0.26236  1.09861  0.40547
     11   1.83889  0.73377  3.10008  1.15243     11 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.01242  5.08760  5.08760  1.46634  0.26236  1.09861  0.40547
     12   4.78148  4.32511  4.91830  0.02935     12 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.01242  5.08760  5.08760  1.46634  0.26BlkEBlkS      @�      @�     236  1.09861  0.40547
     13   4.78148  4.32511  4.91830  0.02935     13 T - - -
          1.38629  1.38629  1.38629  1.38629
          0.01242  5.08760  5.08760  1.46634  0.26236  1.09861  0.40547
     14   4.42423  5.36264  0.02265  5.16358     14 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.01242  5.08760  5.08760  1.46634  0.26236  1.09861  0.40547
     15   4.73649  0.03206  4.91761  4.16908     15 C - - -
          1.38629  1.38629  1.38629  1.38629
          0.01242  5.08760  5.08760  1.46634  0.26236  1.09861  0.40547
     16   0.01437  5.62334  5.03121  5.49125     16 A - - -
          1.38629  1.38629  1.38629  1.38629
          0.01242  5.08760  5.08760  1.46634  0.26236  1.09861  0.40547
     17   0.31193  4.58551  1.40579  4.37459     17 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.01242  5.08760  5.08760  1.46634  0.26236  1.09861  0.40547
     18   1.43428  3.57964  3.86783  0.33838     18 t - - -
          1.38629  1.3862BlkEBlkS      @�              9  1.38629  1.38629
          0.00623  5.08140        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 BlkEBlkS      @�              BMap      0         0         0         0        0         0         0        0          0        $0        (0        ,0        00                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  BlkE