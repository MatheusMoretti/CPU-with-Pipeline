library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity MEM_WB is
	port(
			clock: in	std_logic;
	
			-- 2 bits para o sinal de controle WB
			wbIn: in std_logic_vector(0 to 1);
			wbOut: out	std_logic_vector(0 to 1) := "00";
			
			-- 32 bits para o  readData
			readDataIn: in std_logic_vector(0 to 31);
			readDataOut: out	std_logic_vector(0 to 31) := "00000000000000000000000000000000";
			
			-- 32 bits para o  endereço
			addrIn: in	std_logic_vector(0 to 31);
			addrOut: out std_logic_vector(0 to 31) := "00000000000000000000000000000000";
			
			-- 5 bits para o  RegDst
			regDstIn: in std_logic_vector(0 to 4);
			regDstOut: out	std_logic_vector(0 to 4) := "00000"
		);
			
end MEM_WB;

architecture MEMWB of MEM_WB is

begin
	process(clock)
	begin
		if (clock'event and clock = '1') then
			wbOut <= wbIn;
			readDataOut <= readDataIn;
			addrOut <= addrIn;
			regDstOut <= regDstIn;
		end if;
	end process;
end;