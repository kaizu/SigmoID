SigmoID
=======

This is a simple GUI written in Xojo to ease annotation of sigma-factor and transcription factor binding sites in bacterial genome sequences.
Functions:
- visualise binding site alignments with sequence logo;
- integrated access to RegPrecise and RegulonDB
- extend, shorten and mask alignments;
- create hmm profiles from alignments;
- search bacterial genome sequences with calibrated (and uncalibrated) hmm profiles;
- annotate promoters and transcription factor binding sites in GenBank-formatted genomes;
- view regulatory sites in genomic context with the integrated genome browser;
- verify annotation via the integrated database search.

This version includes over 30 calibrated profiles (including 5 for sigma factors) optimised for enterobacterial phytopathogens Pectobacterium spp. and Dickeya dadantii. Efficiency of these profiles may decrease for other bacteria.

The actual searches are done by nhmmer or mast which are included or could be configured to run from default installations on the user system.

Adding annotations to GenBank files and some other functions are implemented as python scripts, hence BioPython (version 1.64 and up) is required (as well as Python 2.7.x).

At the moment SigmoID is known to work on OS X (10.8 and 10.9 tested), 32-bit Ubuntu (12.04 and 14.04) and Windows (Vista-10, with some problems may run on XP). Other 32-bit Linux distributions may work provided Xojo requirements are met. 32-bit SigmoID version runs on 64-bit Linux distributions provided 32-bit libraries are installed; web browser related features require loading 32-bit WebKit libraries (see SigmoID.sh). 64-bit Linux version compiles and mostly works, but currently can't load calibrated profiles due to Xojo issue.     

Additional info and short instructions are in the help file.

Compiled applications for all supported platforms are located in the 'Builds - Sigmoid.xojo_project' folder.
