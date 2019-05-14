from numpy.linalg import cholesky
from scipy.linalg import cho_solve
import numpy as np

A = np.array([[6.,15.,55.],[15.,55.,225.],[55.,225.,979.]])

L = cholesky(A)
print('Matriz B')
print(L)

b = np.array([2.,1.,3.])

u = cho_solve((L,True),b)

print('Solucion')
print(u)
