#!/bin/bash

# Generate statistics for the IvyBridge machine
#----------------------------------------------
# Compute power difference increase between DPM and RAPL for the following parameters:
# 1) CPU frequency
# 2) Number of cores
# 3) Hyper-Threading
Rscript His_Main.R 1 

# Compute power difference increase between DPM and RAPL for the following parameter:
# 1) Temperature: Cold vs Warm CPU at a fixed CPU frequency and using 1 core. 
Rscript His_Main.R 1 1

# Generate statistics for the IvyBridge machine
#----------------------------------------------
# Compute power difference increase between DPM and RAPL for the following parameters:
# 1) CPU frequency
# 2) Number of cores
Rscript His_Main.R 2 

# Compute power difference increase between DPM and RAPL for the following parameter:
# 1) Temperature: Cold vs Warm CPU at a fixed CPU frequency and using 1 core 
Rscript His_Main.R 2 1

# Compute power difference increase between DPM and RAPL for the following parameters:
# 1) idleness: state 0 (c-state OFF) 
# 2) idleness: state 1 (c-state C1)
# 3) idleness: state 2 (c-state C2)
# 4) idleness: state 3 (c-state C3)
Rscript His_Main.R 2 2 0
Rscript His_Main.R 2 2 1
Rscript His_Main.R 2 2 2
Rscript His_Main.R 2 2 3
