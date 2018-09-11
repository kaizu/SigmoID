import sys
import argparse

def createParser():

    parser = argparse.ArgumentParser(
             prog='motif_work_2.py',
             usage='\n%(prog)s <input_file> <output_file>',
             description='''This script divides motifs into two parts''',
             epilog='''(c) Ulyana Kravchenko, 2018.''')
    parser.add_argument('input_file',
                       help='''path to input MEME file.''')
    parser.add_argument('output_file',
                        help='''path to output MEME file.''')
    parser.add_argument('-v','--version', action='version', version='%(prog)s 2.0 (September 11, 2018)')
    return parser

args = createParser()
enter = args.parse_args()

try:
    input_meme = open(enter.input_file, 'r')
except IOError:
    sys.exit('Open error! Please check your meme input file!')

file = []
for line in input_meme:
    file.append(line)
    
final = []

index = 0
while 'MOTIF' not in file[index]: 
    final.append(file[index])
    index = index + 1     

while index < len(file)-1: 
    rec_1 = []
    name_st = file[index].find("MOTIF ")    
    name_end = file[index].find("-family")
    name = file[index][name_st:name_end+7]
    rec_1.append(name + " l")
    rec_1.append('\n')
    rec_1.append('\n')
            
    rec_2 = []
    name_st = file[index].find("MOTIF ")    
    name_end = file[index].find("-family")
    name = file[index][name_st:name_end+7]
    rec_2.append(name + " r")
    rec_2.append('\n')
    rec_2.append('\n')

    index = index + 2 
    
    m = file[index]
    Motif_len_st = m.find("w= ")    
    Motif_len_end = m.find(" nsites")
    Motif_f = m[Motif_len_st+3:Motif_len_end]
    Motif_f = int(Motif_f)
    number = int(Motif_f/2)
    
    temp = 0 
    if Motif_f % 2 == 0:
        temp = 0
    else:
        temp = 1
    
    p = m[0:Motif_len_st+3]
    p = p + str(number+temp) 
    p = p + m[Motif_len_end:]
    
    rec_1.append(p)
    rec_2.append(p)   
    
    rec_1.extend(file[index+1:index+number+1+temp])
    rec_2.extend(file[index+number+1:index+Motif_f+1])
                                
               
    index = index + 1 + Motif_f
    rec_1.extend(file[index:index+2])
    rec_2.extend(file[index:index+2])

    final.extend(rec_1)
    final.append('\n')
    final.extend(rec_2)
    final.append('\n')
    index = index + 3

with open(enter.output_file, 'w') as output_file:
    for line in final:
        output_file.write(line) 
