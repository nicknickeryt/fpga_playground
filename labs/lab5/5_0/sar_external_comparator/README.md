# SAR ADC
This is a simple example of a 4-bit SAR ADC testbench implementation in Verilog.\
This one required an external digital comparator, so we can use real analog voltage in the future or increase the resolution of Vin in testbench.\
The procedure is started with setting 'start' to high for at least 1 clock cycle.\

In testbench, 8-bit input voltage must be converted to 4-bit comparable voltage for the comparator to be able to compare it with DAC output voltage. So we divide the 8-bit Vin by 16 (vinComparable = Vin/16.\
You can do it vice-versa too. We multiply the 4-bit DAC output volage by 16 (sarComparable = sar*16).\
Then we can simply compare the voltages, write the result into a comparator 1-bit register which is being passed into the sar module.

As we compare the so-called 'digital volages', keep bit/drop bit procedure is being executed.\

We always begin with 1000.\n
If Vin>=Vdac, we keep a bit (1100).\
If Vin<Vdac, we drop a bit (0100).\

The cycle continues until the LSB bit is reached, then EOC is set to 1 and the ADC conversion is considered to be finished.