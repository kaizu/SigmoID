VFSv   BlkS       @D      @�           �BlkEBlkS       @�              @8      fold    A�A{�`  A�A{�`  /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�              @��     ????   A�A{�`  A�A{�`  HyfR_Pectobacterium.fasta                                                                                                                                                                                                       >f_hyfA_3-2 proximal
TCGGCAAAAATGACGA
>r_hyfA_3-2 proximal
TCGTCATTTTTGCCGA
>f_hyfA_3937_1 2.4 proximal
TCGACATTAGTGACGA
>r_hyfA_3937_1 2.4 proximal
TCGTCACTAATGTCGA
>f_hyfA_3937_2 2.1 distal
TCGACACTTTTGACGA
>r_hyfA_3937_2 2.1 distal
TCGTCAAAAGTGTCGA
>f_hyfA_SCRI_3 distal
TCGACACTTATGACGA
>r_hyfA_SCRI_3 distal
TCGTCATAAGTGTCGA
>f_hyfA_SCRI_1
TCGACACTCGCGGCAC
>r_hyfA_SCRI_1
GTGCCGCGAGTGTCGA
>f_hyfA_SCRI_2
TAGACAAAAGTGACGA
>r_hyfA_SCRI_2
TCGTCACTTTTGTCTA
>f_hyfA_Ech1591_1
TCGACACTAATGTCGA
>r_hyfA_Ech1591_1
TCGACATTAGTGTCGA
>f_hyfA_Ech1591_2
TCGTCAAAAGTGTCGA
>r_hyfA_Ech1591_2
TCGACACTTTTGACGA
>f_hyfA_Ech703_1
TCGACACTTTTGACGA
>r_hyfA_Ech703_1
TCGTCAAAAGTGTCGA
>f_hyfA_Ech586_1
TCGTCACTAATGTCGA
>r_hyfA_Ech586_1
TCGACATTAGTGACGA
  BlkEBlkS       @�      @�`     @�(     ????   A�A{�`  A�A{�`  HyfR_Pectobacterium.options                                                                                                                                                                                                     // a space is strictly required between a switch and its value 

////
// alignment options
////

// these are added to alignment when converting to Stockholm format

// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 9.8 9.8

// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
// (second number isn't used but is still required)
#=GF GA 9.0 9.0

// Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 7.0 7.0

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

// the alignment length required by HmmGen
HmmGen.-L 16

// the site is palindromic
HmmGen.-p

// ignore sites inside ORFs (a bit unsafe)
HmmGen.-i

// feature key
HmmGen.-f protein_bind

// feature qualifiers
HmmGen.-q bound_moiety#HyfR                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      BlkEBlkS       @�              @y0     ????   A�A{�`  A�A{�`  HyfR_Pectobacterium.info                                                                                                                                                                                                        HyfR is an enhancer-binding protein (EBP) required for transcription activation at the RpoN-dependent promoter of the hyfABCDEFGHIJhycI hydrogenase operon.

The profile was built starting with a single HyfR binding site from E.coli described in RegulonDB and iteratively adding Pectobacterium/Dickeya sites. 

The final profile is built from 10 non-redundant sites and their reverse complements. 


                                                                                                                                                                                                                                                                                                                                                 BlkEBlkS       @�      @�0     @��     ????   A�A{ƀ  A�A{ƀ  HyfR_Pectobacterium.logodata                                                                                                                                                                                                    ## LogoData
# First column is position number, counting from zero
# Subsequent columns are raw symbol counts
# Entropy is mean entropy measured in nats.
# Low and High are the 95% confidence limits.
# Weight is the fraction of non-gap symbols in the column.
#	
#	A 	C 	G 	T 	Entropy	Low	High	Weight
1 	0 	0 	1 	19 	0.9777 	0.6344 	1.3210 	1.0000
2 	1 	18 	0 	1 	0.8455 	0.4848 	1.2062 	1.0000
3 	0 	0 	20 	0 	1.1122 	0.7950 	1.4294 	1.0000
4 	10 	1 	1 	8 	0.3623 	0.1595 	0.6470 	1.0000
5 	0 	20 	0 	0 	1.1122 	0.7950 	1.4294 	1.0000
6 	19 	0 	1 	0 	0.9777 	0.6344 	1.3210 	1.0000
7 	5 	10 	0 	5 	0.3146 	0.1178 	0.5114 	1.0000
8 	6 	0 	1 	13 	0.5162 	0.2453 	0.7871 	1.0000
9 	13 	1 	0 	6 	0.5162 	0.2453 	0.7871 	1.0000
10 	5 	0 	10 	BlkEBlkS      @�              5 	0.3146 	0.1178 	0.5114 	1.0000
11 	0 	1 	0 	19 	0.9777 	0.6344 	1.3210 	1.0000
12 	0 	0 	20 	0 	1.1122 	0.7950 	1.4294 	1.0000
13 	8 	1 	1 	10 	0.3623 	0.1595 	0.6470 	1.0000
14 	0 	20 	0 	0 	1.1122 	0.7950 	1.4294 	1.0000
15 	1 	0 	18 	1 	0.8455 	0.4848 	1.2062 	1.0000
16 	19 	1 	0 	0 	0.9777 	0.6344 	1.3210 	1.0000
# End LogoData
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               BlkEBlkS       @�      @�     @��     ????   A�A{ƀ  A�A{ƀ  HyfR_Pectobacterium.hmm                                                                                                                                                                                                         HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  16
MAXL  70
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Tue Sep  1 22:59:00 2015
NSEQ  20
EFFN  20.000000
CKSUM 1255157410
GA    9.00
TC    9.80
NC    7.00
STATS LOCAL MSV       -6.4144  0.78101
STATS LOCAL VITERBI   -6.6061  0.78101
STATS LOCAL FORWARD   -2.0819  0.78101
HMM          A        C        G        T   
            m->m     m->i     m->d     i->m     i->i     d->m     d->d
  COMPO   1.41860  1.35935  1.35362  1.41545
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  0.00000        *
      1   4.65536  4.37420  1.92257  0.18433      1 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.009BlkEBlkS      @�      @�     05  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      2   2.71853  0.26848  4.43034  1.84782      2 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      3   4.91221  5.86733  0.01376  5.65990      3 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      4   0.85115  1.81323  2.34445  1.15820      4 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      5   5.10685  0.02173  5.27971  4.57065      5 C - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      6   0.16917  5.58082  1.91479  5.40524      6 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      7   1.51508  0.61101  3.49524  1.57473      BlkEBlkS      @�      @�     7 c - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      8   1.37167  3.02509  1.81358  0.62606      8 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
      9   0.61359  1.82744  3.28928  1.34518      9 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     10   1.63978  3.38084  0.57019  1.57726     10 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     11   4.73968  1.85227  4.97991  0.18934     11 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     12   4.91221  5.86733  0.01376  5.65990     12 G - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.2623BlkEBlkS      @�              6  1.09861  0.40547
     13   1.18428  2.36406  1.79726  0.83415     13 t - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     14   5.10685  0.02173  5.27971  4.57065     14 C - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     15   1.91876  4.13445  0.25306  2.80052     15 g - - -
          1.38629  1.38629  1.38629  1.38629
          0.00905  5.40268  5.40268  1.46634  0.26236  1.09861  0.40547
     16   0.18698  1.88954  4.96245  4.39006     16 a - - -
          1.38629  1.38629  1.38629  1.38629
          0.00454  5.39816        *  1.46634  0.26236  0.00000        *
//
                                                                                                                                                                                                                                                                     BlkEBlkS      @�              BMap      0         0         0         0        0         0         0        0          0        $0        (0        ,0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              BlkE