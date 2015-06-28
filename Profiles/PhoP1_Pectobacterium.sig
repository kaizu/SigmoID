VFSv   BlkS       @D      @�           �BlkEBlkS       @�              @8      fold    A�6�р  A�6�р  /                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         BlkEBlkS       @�      @�`     @�8     ????   A�6�р  A�6�р  PhoP1_Pectobacterium.fasta                                                                                                                                                                                                      >citM_3-2 hmm1-8.1 hmm2-6.3 magnesium citrate transporter (no site in SCRI)
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
                                                                                                                                                                                                                                                                                                                  BlkEBlkS       @�      @�0     @�$     ????   A�6�р  A�6�р  PhoP1_Pectobacterium.options                                                                                                                                                                                                    // a space is strictly required between a switch and its value 

////
// alignment options
////

// these are added to alignment when converting to Stockholm format

// Gathering threshold. Bit score per-sequence cutoff used in gathering the members of the alignment
// (second number isn't used but is still required)
#=GF GA 8.6 8.6

// Noise cutoff. Bit score per-sequence cutoff, set according to the highest scores seen for unrelated sequences
#=GF NC 8.51 8.51

// Trusted cutoff. Bit score per-sequence cutoff, set according to the lowest scores seen for true homologous sequences that were above the GA gathering thresholds, when gathering members of the alignment
#=GF TC 8.8 8.8

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
HmmGen.-L 14:16


// ignore sites inside ORFs (some still could be there)
HmmGen.-i

// feature key
HmmGen.-f protein_bind

// feature qualifiers
HmmGen.-q bound_moiety#PhoP                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       BlkEBlkS       @�      @�0     @��     ????   A�6�р  A�6�р  PhoP1_Pectobacterium.info                                                                                                                                                                                                       PhoP is a known regulator of magnesium transport and virulence genes with a rather large regulons in characterised cases. The PhoP binding sites seem to vary significantly, so several profiles seem to be required to detect most of them. The two PhoP profiles were built starting with E.coli and Salmonella sites described by Harari O. et al. in PLoS Comput Biol 6(7): e1000862. doi:10.1371/journal.pcbi.1000862. The binding site sequences were taken from the Figure S2: Subtractive Submotif 1 for the PhoP1 profile and Subtractive Submotif 2 for the PhoP2 profile. The original PhoP1 and PhoP2 profiles were used to search Pectobacterium carotovorum 3-2 and Pectobacterium atrosepticum SCRI1043 genomes, and high scoring hits clearly reBlkEBlkS      @�              lated to magnesium transport/magnesium-dependent enzymes/virulence were retained to build final profiles. Ho sensible hits were found in pectobacteria when Subtractive Submotif 3 was used.

Indirect experimental evidence only supports the presence of PhoP binding site in front of the pehA gene.

Both profiles have to be used as the results produced by them are significantly different. 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           BlkEBlkS       @�      @�     @��     ????   A�6�р  A�6�р  PhoP1_Pectobacterium.logodata                                                                                                                                                                                                   ## LogoData
# First column is position number, counting from zero
# Subsequent columns are raw symbol counts
# Entropy is mean entropy measured in nats.
# Low and High are the 95% confidence limits.
# Weight is the fraction of non-gap symbols in the column.
#	
#	A 	C 	G 	T 	Entropy	Low	High	Weight
1 	0 	0 	2 	22 	0.9300 	0.6149 	1.2452 	1.0000
2 	0 	0 	0 	24 	1.1444 	0.8587 	1.4302 	1.0000
3 	0 	0 	0 	24 	1.1444 	0.8587 	1.4302 	1.0000
4 	24 	0 	0 	0 	1.1444 	0.8587 	1.4302 	1.0000
5 	0 	1 	1 	22 	0.9044 	0.5701 	1.2387 	1.0000
6 	9 	1 	2 	12 	0.3305 	0.1448 	0.5915 	1.0000
7 	3 	6 	4 	11 	0.1608 	0.0339 	0.3847 	1.0000
8 	1 	6 	0 	17 	0.5826 	0.3107 	0.8544 	1.0000
9 	0 	10 	0 	14 	0.5894 	0.3847 	0.7941 	1.0000
10 	0 	1 	12 BlkEBlkS      @�              	11 	0.4828 	0.2669 	0.6987 	1.0000
11 	0 	0 	24 	0 	1.1444 	0.8587 	1.4302 	1.0000
12 	0 	0 	0 	24 	1.1444 	0.8587 	1.4302 	1.0000
13 	0 	0 	0 	24 	1.1444 	0.8587 	1.4302 	1.0000
14 	4 	0 	1 	19 	0.6761 	0.3704 	0.9818 	1.0000
15 	16 	4 	1 	3 	0.4136 	0.1802 	0.7423 	1.0000
16 	5 	6 	3 	10 	0.1305 	0.0233 	0.3281 	1.0000
# End LogoData
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             BlkEBlkS       @�      @�     @��     ????   A�6�Ѡ  A�6�Ѡ  PhoP1_Pectobacterium.hmm                                                                                                                                                                                                        HMMER3/f [3.1b1 | May 2013]
NAME  stock
LENG  16
MAXL  69
ALPH  DNA
RF    no
MM    no
CONS  yes
CS    no
MAP   yes
DATE  Sun Jun 28 15:09:01 2015
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
          0.007BlkEBlkS      @�      @�     66  5.56834  5.56834  1.46634  0.26236  1.09861  0.40547
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
      7   1.98280  1.28237  1.79602  0.86993      BlkEBlkS      @�      @�     7 t - - -
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
                                                                                                                                                                                                                                                                     BlkEBlkS      @�              BMap      0         0         0        0         0        0         0        0          0        $0         (0        ,0        00        40                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      BlkE