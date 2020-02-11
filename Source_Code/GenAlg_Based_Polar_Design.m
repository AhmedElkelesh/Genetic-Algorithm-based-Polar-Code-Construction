%%
% For more details:
% A. Elkelesh, M. Ebada, S. Cammerer, and S. ten Brink, “Decoder-Tailored Polar Code Design Using the Genetic Algorithm,” IEEE Transactions on Communications, vol. 67, no. 7, pp. 4521–4534, July 2019.
% DOI: 10.1109/TCOMM.2019.2908870
% IEEE URL: https://ieeexplore.ieee.org/document/8680016
% arXiv URL: https://arxiv.org/pdf/1901.10464.pdf
% elkelesh@inue.uni-stuttgart.de
%%

function GenAlg_Based_Polar_Design
% See Fig. 2 and Algorithm 1 in the paper

rng('shuffle');

% Output from Algorithm 2 in the paper (i.e., initial population) 
% To get started, we use Bhattacharyya-based design at different design SNRs
% and RM-Polar-based design
data = load('population1.mat');
N = data.N;
k = data.k;
A = data.A;
clear data;

%%%%% Population 1
pop_index = 1;
name = ['population' num2str(pop_index) '.mat'];
[BERs] = compute_BER(A);
save(name,'A','BERs');

while true
    %%%%% Population N_pop
    pop_index = pop_index + 1;
    name = ['population' num2str(pop_index) '.mat'];
    A = population_update(A,BERs);
    A=logical(A);
    [BERs] = compute_BER(A);
    save(name,'A','BERs');
end
end