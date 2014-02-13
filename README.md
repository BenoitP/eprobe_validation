eprobe_validation
=================

Additional data on CPU energy probe validation experiments.

This directory contains:

README.md 	This file.
GenHis.sh   script to generate again figures and statistical reports.
His_Main.R  Main R script.
His_Plot.R  R script to generate data.
Read_DATA.R R script to read raw power data.
microBGen/  Contains assembly code of micro-benchmarks.
input/      Contains raw power data for each test platform.
LOG/        Contains statistical analysis reports for each test platform.
PDF/        Contains power difference increase histograms for each test platform.

The input/ LOG/ and PDF/ directories are organized by test machine. Each of them 
has the sub-directories IB and SB that contains data related to the IvyBridge and
the SandyBridge machines respectively.

Data generation
---------------

The repository contains already all data on CPU energy probe validation
experiments. To generate again the histograms and statistical analysis 
reports, the different steps are given below.

1. Install GNU R software on your machine.

2. Run the bash script:
	% ./GenHis.sh
