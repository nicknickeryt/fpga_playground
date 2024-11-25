#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2024.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : AMD Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Mon Nov 25 19:37:04 CET 2024
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
echo "xsim counter_modulo_n_async_reset_tb_behav -key {Behavioral:sim_1:Functional:counter_modulo_n_async_reset_tb} -tclbatch counter_modulo_n_async_reset_tb.tcl -log simulate.log"
xsim counter_modulo_n_async_reset_tb_behav -key {Behavioral:sim_1:Functional:counter_modulo_n_async_reset_tb} -tclbatch counter_modulo_n_async_reset_tb.tcl -log simulate.log

