n = 10000; % maximum n of nxn square matrix
step = 100; % step size (for iteration of kxk submatrices of A)

A = rand(n,n); % random nxn matrix for experimental performance purposes
v = rand(n,1); % random nx1 matrix for experimental performance purposes

T = [];
sizeA = [];

for k = 500:step:n
    AA = A(1:k, 1:k); % generates kxk submatrix of A
    vv = v(1:k); % generates kx1 subvector of v

    t=cputime; % takes current cputime since start of program
    b=AA*vv; % calculates vector product of kxk submatrix of A and kx1 subvector of v
    tt = cputime - t; % takes the time elapsed during the matrix-vector multiplication and stores it in tt

    T = [T, tt]; % appends tt to list of kxk matrix-vector multiplication CPU times for increasing k
    sizeA = [sizeA, k]; % appends size k of kxk matrix and kx1 vector to list of matrix/vector sizes
end

plot(sizeA, T, 'o'); % plots the increase in CPU processing time for our range of matrix-vector multiplications of increasing k.