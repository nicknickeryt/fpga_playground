#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2024.1 (64-bit)
#
# Filename    : compile.sh
# Simulator   : AMD Vivado Simulator
# Description : Script for compiling the simulation design source files
#
# Generated by Vivado on Thu Dec 12 01:13:43 CET 2024
# SW Build 5076996 on Wed May 22 18:36:09 MDT 2024
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
#
# usage: compile.sh
#
# ****************************************************************************
set -Eeuo pipefail
# compile Verilog/System Verilog design sources
echo "xvlog --incr --relax -prj quadro_addrbus_ram_dist_tb_vlog.prj"
xvlog --incr --relax -prj quadro_addrbus_ram_dist_tb_vlog.prj 2>&1 | tee compile.log

echo "Waiting for jobs to finish..."
echo "No pending jobs, compilation finished."