#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2024.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : AMD Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Thu Dec 19 22:36:31 CET 2024
# SW Build 5076996 on Wed May 22 18:36:09 MDT 2024
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim sar_tb_behav -key {Behavioral:sim_1:Functional:sar_tb} -tclbatch sar_tb.tcl -view /home/nick/Dokumenty/AGH/CUE/Verilog/repo/fpga_playground/labs/lab5/5_0/sar/sar_tb_behav.wcfg -log simulate.log"
xsim sar_tb_behav -key {Behavioral:sim_1:Functional:sar_tb} -tclbatch sar_tb.tcl -view /home/nick/Dokumenty/AGH/CUE/Verilog/repo/fpga_playground/labs/lab5/5_0/sar/sar_tb_behav.wcfg -log simulate.log

