% Author: Ibrohim Nosirov
% Date: 2023-02-17
% I try to numericallly examine the vectors in the nullspace of a sensing
% matrix.

% create random matrix A (this is a good sensing matrix)
A = randn(10,20);
% create the basis for the nullspace
nullSpaceA = null(A);

% create another, this time bad, sensing matrix B
B = [diag(A),ones(10)];
% create the basis for the nullspace
nullSpaceB = null(B)