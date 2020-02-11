%%
% For more details:
% A. Elkelesh, M. Ebada, S. Cammerer, and S. ten Brink, “Decoder-Tailored Polar Code Design Using the Genetic Algorithm,” IEEE Transactions on Communications, vol. 67, no. 7, pp. 4521–4534, July 2019.
% DOI: 10.1109/TCOMM.2019.2908870
% IEEE URL: https://ieeexplore.ieee.org/document/8680016
% arXiv URL: https://arxiv.org/pdf/1901.10464.pdf
% elkelesh@inue.uni-stuttgart.de
%%

function A_new = population_update(A,BERs)
% See Algorithm 4 in the paper

[~,idx]=sort(BERs);
A_new=zeros(20,size(A,2));

A_new(1:5,:) = A( idx(1:5),: );

for i=1:5
    A_new(5+i,:) = mutation(A_new(i,:));
end

A_new(11,:) = crossover(A_new(1,:),A_new(2,:));
A_new(12,:) = crossover(A_new(1,:),A_new(3,:));
A_new(13,:) = crossover(A_new(1,:),A_new(4,:));
A_new(14,:) = crossover(A_new(1,:),A_new(5,:));

A_new(15,:) = crossover(A_new(2,:),A_new(3,:));
A_new(16,:) = crossover(A_new(2,:),A_new(4,:));
A_new(17,:) = crossover(A_new(2,:),A_new(5,:));

A_new(18,:) = crossover(A_new(3,:),A_new(4,:));
A_new(19,:) = crossover(A_new(3,:),A_new(5,:));

A_new(20,:) = crossover(A_new(4,:),A_new(5,:));
end