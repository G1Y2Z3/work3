VERILOG = iverilog
TARGET = voting.vcd

$(TARGET) : voting.vvp
	vvp voting.vvp

voting.vvp: voting_tb.v voting.v
	$(VERILOG) -o voting.vvp voting.v voting_tb.v

clean:
	del $(TARGET)