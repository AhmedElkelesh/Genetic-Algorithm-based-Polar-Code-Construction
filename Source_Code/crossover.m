%%
% For more details:
% A. Elkelesh, M. Ebada, S. Cammerer, and S. ten Brink, “Decoder-Tailored Polar Code Design Using the Genetic Algorithm,” IEEE Transactions on Communications, vol. 67, no. 7, pp. 4521–4534, July 2019.
% DOI: 10.1109/TCOMM.2019.2908870
% IEEE URL: https://ieeexplore.ieee.org/document/8680016
% arXiv URL: https://arxiv.org/pdf/1901.10464.pdf
% elkelesh@inue.uni-stuttgart.de
%%

function A3 = crossover(A1,A2)
% See Fig. 3b and Algorithm 6 in the paper

A3=zeros(size(A1));
flag = randsrc(1,1,[0 1;0.5 0.5]);
if flag
    A3(1:length(A3)/2) = A1(1:length(A3)/2);
    A3(1+length(A3)/2:end) = A2(1+length(A3)/2:end);
else
    A3(1:length(A3)/2) = A2(1:length(A3)/2);
    A3(1+length(A3)/2:end) = A1(1+length(A3)/2:end);
end
if sum(A3)~=sum(A2)
    A3 = mutation_restore_rate(A3,(sum(A2)/length(A2)));
end
end