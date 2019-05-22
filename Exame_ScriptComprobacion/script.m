clear; close all; clc;

n = 3;

A = zeros(n,2);
b = zeros(n,1);
b

%% Tipical Via?o para inicializar matriz
for i = 1:n
  for j = 1:n
    if(i == j) 
	A(i,j) = 2;
    elseif(i == j+1)
	A(i,j) = 3;
    else
	A(i,j) = 4;
    endif
  end
end



for i = 1:n
  if(i == 1)
    b(i) = 1;
  else
    b(i) = 2;
  endif
end

fprintf('Matriz A: \n');	
A

fprintf('Termo independente b: \n');	
b

fprintf('Solucion Sistema: \n');
inv(A)*b

fprintf('Determinante A: \n');
det(A)

fprintf('Inversa A: \n');
inv(A)

fprintf('Condicionamento matriz A (norma 1): \n');
cond(A)

fprintf('Autovalores de A: \n');
eig(A)

fprintf('Norma matriz A (1): \n');
norm(A, 1)

fprintf('Factorizacion LU: \n');
[L, U, P] = lu (A);

fprintf('L: \n');
L

fprintf('U: \n');
U

fprintf('Factorizacion Cholesky: \n');
R = chol(A);
R

