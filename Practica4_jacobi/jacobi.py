import numpy as np

ITERATION_LIMIT = 100000

# initialize the matrix
A = np.array([[2., 1.],
              [5., 7.]])

A = np.array([[5.00000000,      0.300000012,      0.400000006, 0.500000000,      0.600000024     , 0.699999988],
  [0.300000012,       5.00000000,      0.500000000,      0.600000024,      0.699999988,      0.800000012],
  [0.400000006,      0.500000000,       5.00000000,      0.699999988,      0.800000012,      0.899999976],
  [0.500000000,      0.600000024,      0.699999988,       5.00000000,      0.899999976,       1.00000000],
  [0.600000024,      0.699999988,      0.800000012,      0.899999976,       5.00000000,       1.10000002],
  [0.699999988,      0.800000012,      0.899999976,       1.00000000,       1.10000002,       5.00000000]]   )
# initialize the RHS vector
b = np.array([2.,2.,2.,2.,2.,2.])

# prints the system
print("System:")
for i in range(A.shape[0]):
    row = ["{}*x{}".format(A[i, j], j + 1) for j in range(A.shape[1])]
    print(" + ".join(row), "=", b[i])
print()

x = np.zeros_like(b)
for it_count in range(ITERATION_LIMIT):
    print("Current solution:", x)
    x_new = np.zeros_like(x)

    for i in range(A.shape[0]):
        s1 = np.dot(A[i, :i], x[:i])
        s2 = np.dot(A[i, i + 1:], x[i + 1:])
        x_new[i] = (b[i] - s1 - s2) / A[i, i]

    if np.allclose(x, x_new, atol=1e-6, rtol=0.):
        break
    err1 = 0
    for i in range(6):
        err1 += np.abs(x_new[i]-x[i])

    x = x_new
    print('err1')
    print(err1)
    print(it_count)

print("Solution:")
print(x)
error = np.dot(A, x) - b
print("Error:")
print(error)
print(np.sqrt(np.dot(error,error)))
