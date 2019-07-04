library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_unsigned.all;

 entity or_gate is 
	port( a, b : in std_logic;
	      c : out std_logic);
 end or_gate;
 
	 architecture dataflow of or_gate is 
	    begin
		c <= a or b;
          end dataflow;
