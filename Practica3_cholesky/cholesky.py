from numpy.linalg import cholesky,det
from scipy.linalg import cho_solve

import numpy as np

def is_pos_def(x):
    return np.all(np.linalg.eigvals(x) > 0)


A = np.array([[5.00000000,      0.300000012,      0.400000006, 0.500000000,      0.600000024     , 0.699999988],
  [0.300000012,       5.00000000,      0.500000000,      0.600000024,      0.699999988,      0.800000012],
  [0.400000006,      0.500000000,       5.00000000,      0.699999988,      0.800000012,      0.899999976],
  [0.500000000,      0.600000024,      0.699999988,       5.00000000,      0.899999976,       1.00000000],
  [0.600000024,      0.699999988,      0.800000012,      0.899999976,       5.00000000,       1.10000002],
  [0.699999988,      0.800000012,      0.899999976,       1.00000000,       1.10000002,       5.00000000]]   )
# initialize the RHS vector
b = np.array([2.,2.,2.,2.,2.,2.])

print('det')
print(det(A))

print(is_pos_def(A))
L = cholesky(A)
print('Matriz B')
print(L)

u = cho_solve((L,True),b)

print('Solucion')
print(u)

error = np.dot(A, u) - b
print("Error:")
print(error)
print(np.sqrt(np.dot(error,error)))
