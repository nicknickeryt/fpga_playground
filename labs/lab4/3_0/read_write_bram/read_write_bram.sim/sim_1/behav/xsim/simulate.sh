#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2024.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : AMD Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Mon Dec 09 18:32:02 CET 2024
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
echo "xsim bram_tb_behav -key {Behavioral:sim_1:Functional:bram_tb} -tclbatch bram_tb.tcl -view /home/nick/Dokumenty/AGH/CUE/Verilog/repo/fpga_playground/labs/lab4/3_0/rear_write_bram/bram_tb_behav.wcfg -log simulate.log"
xsim bram_tb_behav -key {Behavioral:sim_1:Functional:bram_tb} -tclbatch bram_tb.tcl -view /home/nick/Dokumenty/AGH/CUE/Verilog/repo/fpga_playground/labs/lab4/3_0/rear_write_bram/bram_tb_behav.wcfg -log simulate.log

