# Genetic-Algorithm-based-Polar-Code-Construction
This repository contains a MATLAB implementation of a generic Genetic Algorithm (GenAlg)-based method to design polar codes (i.e., finding the frozen/non-frozen positions) tailored to the used decoder (e.g., BP, SCL, sphere,...).

The frozen/non-frozen positions are optimized to minimize the error-rate (BER or BLER) at a specific design SNR. However, using other performance metrics is possible.

The resulting polar codes (i.e., frozen/non-frozen sets) are tailored to the specific simulated scenario (i.e., decoder type, channel, modulation, quantization,...).

References
--------------------

We provide the source code and the resulting polar code constructions from the papers: 

* Decoder-Tailored Polar Code Design Using the Genetic Algorithm 

A. Elkelesh, M. Ebada, S. Cammerer, and S. ten Brink, “Decoder-Tailored Polar Code Design Using the Genetic Algorithm,” IEEE Transactions on Communications, vol. 67, no. 7, pp. 4521–4534, July 2019.

DOI: 10.1109/TCOMM.2019.2908870

IEEE URL: https://ieeexplore.ieee.org/document/8680016

arXiv URL: https://arxiv.org/pdf/1901.10464.pdf

```
@ARTICLE{GenAlg_Polar_TCOM_2019, 
	author={A. {Elkelesh} and M. {Ebada} and S. {Cammerer} and S. {ten Brink}}, 
	journal={IEEE Trans. Commun.}, 
	title={{Decoder-Tailored Polar Code Design Using the Genetic Algorithm}}, 
	year={2019}, 
	volume={67}, 
	number={7}, 
	pages={4521-4534}, 
	keywords={Iterative decoding;Maximum likelihood decoding;Complexity theory;Optimization;Polar codes;channel polarization;polar code construction;Reed–Muller codes;genetic algorithm;evolutionary algorithms;artificial intelligence}, 
	doi={10.1109/TCOMM.2019.2908870}, 
	ISSN={0090-6778}, 
	month={July},
	}
  ```
  
* Genetic Algorithm-based Polar Code Construction for the AWGN Channel

A. Elkelesh, M. Ebada, S. Cammerer and S. ten Brink, "Genetic Algorithm-based Polar Code Construction for the AWGN Channel," 12th International ITG Conference on Systems, Communications and Coding (SCC 2019), Rostock, Germany, Feb. 2019, pp. 1-6.

DOI: 10.30420/454862007

IEEE URL: https://ieeexplore.ieee.org/document/8661304

arXiv URL: https://arxiv.org/pdf/1901.06444.pdf

  ```
@INPROCEEDINGS{GenAlg_Polar_SCC_2019, 
	author={A. {Elkelesh} and M. {Ebada} and S. {Cammerer} and S. {ten Brink}}, 
	booktitle={IEEE Inter. ITG Conf. on Syst., Commun. and Coding (SCC)}, 
	title={{Genetic Algorithm-based Polar Code Construction for the AWGN Channel}}, 
	year={2019}, 
	month={Feb.},
	}
  ```  
  
How to extract the polar code specs from the population1.mat file?
--------------------

* N is the codelength

* k is the code dimension

* A is the initial population of different polar codes (i.e., different frozen/non-frozen positions); each polar code is defined by a [1 X N] logical vector where:

	* 0 means a Frozen bit-position

	* 1 means a Non-frozen bit-position

	* Sum of A should be equal to k
