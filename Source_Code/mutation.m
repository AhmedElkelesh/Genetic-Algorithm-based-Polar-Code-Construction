%%
% For more details:
% A. Elkelesh, M. Ebada, S. Cammerer, and S. ten Brink, “Decoder-Tailored Polar Code Design Using the Genetic Algorithm,” IEEE Transactions on Communications, vol. 67, no. 7, pp. 4521–4534, July 2019.
% DOI: 10.1109/TCOMM.2019.2908870
% IEEE URL: https://ieeexplore.ieee.org/document/8680016
% arXiv URL: https://arxiv.org/pdf/1901.10464.pdf
% elkelesh@inue.uni-stuttgart.de
%%

function A2 = mutation(A1)
% See Fig. 3a and Algorithm 5 in the paper

infoPos = find(A1==1);
frozenPos = find(A1==0);
A1(datasample(infoPos,1))=0;
A1(datasample(frozenPos,1))=1;
A2=A1;
end