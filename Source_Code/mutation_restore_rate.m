%%
% For more details:
% A. Elkelesh, M. Ebada, S. Cammerer, and S. ten Brink, “Decoder-Tailored Polar Code Design Using the Genetic Algorithm,” IEEE Transactions on Communications, vol. 67, no. 7, pp. 4521–4534, July 2019.
% DOI: 10.1109/TCOMM.2019.2908870
% IEEE URL: https://ieeexplore.ieee.org/document/8680016
% arXiv URL: https://arxiv.org/pdf/1901.10464.pdf
% elkelesh@inue.uni-stuttgart.de
%%

function A2 = mutation_restore_rate(A1,rate)
% See Fig. 3b in the paper

flag = ( sum(A1)/length(A1) ) ~= rate;
while flag
    infoPos = find(A1==1);
    frozenPos = find(A1==0);
    if ( sum(A1)/length(A1) ) > rate
        A1(datasample(infoPos,1))=0;
    else
        A1(datasample(frozenPos,1))=1;
    end
    flag = ( sum(A1)/length(A1) ) ~= rate;
end
A2=A1;
end