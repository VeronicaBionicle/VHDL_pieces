import numpy as np

op_codes = ['+','-', '<<1','>>1','^255', '&','|','^']
test_size = 10

filename = "D:\\altera\\simulations\\alu_kp\\test_data.tv"
myfile = open(filename, 'w')

for op_index, op_code in enumerate(op_codes):  #commands
    if op_code not in ['<<1', '>>1', '^255']:
        a, b = np.random.randint(255, size = (2, test_size))
    else:
        a = np.random.randint(255, size = test_size)
        b = [1]*test_size
    for i in range(test_size):
        result = eval( str(a[i]) + op_code + str(b[i]) if op_code not in ['<<1', '>>1', '^255'] else str(a[i]) + op_code )
        carry_out = int((result > 255 or result < 0) or (op_code == '>>1' and a[i]%2 != 0))
        myfile.write('{}_{}_{}_{}_{}\n'.format(
                    np.binary_repr(op_index, width=3),
                    np.binary_repr(a[i], width=8),
                    np.binary_repr(b[i], width=8),
                    np.binary_repr(result&255, width=8),
                    carry_out))
myfile.close()