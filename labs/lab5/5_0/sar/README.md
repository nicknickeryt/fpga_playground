# SAR ADC
This is a simple example of a 4-bit SAR ADC testbench implementation in Verilog.\
The procedure is started with setting 'start' to high for at least 1 clock cycle.\
4-bit input voltage is being compared with 4-bit DAC output voltage,\
As we compare the so-called 'digital volages', keep bit/drop bit procedure is being executed.\
We always begin with 1000.\n
If Vin>=Vdac, we keep a bit (1100).\
If Vin<Vdac, we drop a bit (0100).\
The cycle continues until the LSB bit is reached, then EOC is set to 1 and the ADC conversion is considered to be finished.