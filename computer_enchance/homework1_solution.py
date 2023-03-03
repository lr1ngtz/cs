import sys
from itertools import zip_longest


def decode(args):
    """
    Takes binary file and returnes
    decoded instructions
    """
    
    binary_file = args[1]
    instructions_set = []
    words = {'000': 'ax', '001': 'cx', '010': 'dx', '011': 'bx', '100': 'sp', '101': 'bp', '110': 'si', '111': 'di'}
    btes = {'000': 'al', '001': 'cl', '010': 'dl', '011': 'bl', '100': 'ah', '101': 'ch', '110': 'dh', '111': 'dh'}
    
    with open(binary_file, 'rb') as file:
        for el in file.readline():
            instructions_set.append(bin(el)[2:])

    instructions_set = list(zip(*[iter(instructions_set)] * 2))
    result_set = []
    for el in instructions_set:
        reg1 = str(el[1][5:8])
        reg2 = str(el[1][2:5])
        if el[0][-1] == '1':
            res = f'mov {words.get(reg1)}, {words.get(reg2)}'
            result_set.append(res)
        else:
            res = f'mov {btes.get(reg1)}, {btes.get(reg2)}'
            result_set.append(res)

    result = 'bits 16\n' + '\n'.join(result_set)
    return result
        


print(decode(sys.argv))
