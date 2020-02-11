%%
% For more details:
% A. Elkelesh, M. Ebada, S. Cammerer, and S. ten Brink, “Decoder-Tailored Polar Code Design Using the Genetic Algorithm,” IEEE Transactions on Communications, vol. 67, no. 7, pp. 4521–4534, July 2019.
% DOI: 10.1109/TCOMM.2019.2908870
% IEEE URL: https://ieeexplore.ieee.org/document/8680016
% arXiv URL: https://arxiv.org/pdf/1901.10464.pdf
% elkelesh@inue.uni-stuttgart.de
%%

function BERs = compute_BER(A)
% See Fig. 2 in the paper (i.e., the blue box) and Algorithm 3

% We are not providing our GPU-accelerated error-rate computation framework!
% 
% compute_BER (i.e., Algorithm 3 in the paper) is a function which computes 
% the BER of more than one polar code (each defined by a certain logical 
% vector called A which defines the frozen and non-frozen positions).
% 
% Inputs:
% - N: codelength
% - k: code dimension
% - rate: code rate
% - A: Different A-vectors each representing a unique polar code 
% (i.e., population individuals)
% - nb_CWs: number of codewords to be simulated
% - Modulation Scheme
% - type of channel and design_SNR: the channel parameters; the GenAlg design SNR
% - decoder: decoder type (e.g., SC, BP, SCL, CRC-Aided SCL,...etc)
% - dec_parameter: decoder parameter (e.g., maximum number of BP iterations, 
% list size, CRC length, CRC polynomial,...etc)
% 
% Output:
% - BERs: vector of BERs containing the BER per polar code with the above 
% mentioned [code/modulation/channel/decoder]-parameters

end