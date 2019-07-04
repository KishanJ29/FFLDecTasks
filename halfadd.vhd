library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_unsigned.all;

 entity halfadd is 
	port( a, b : in std_logic;
	      sum , carry : out std_logic);
 end halfadd;
 
	 architecture dataflow of halfadd is 
	    begin
		sum <=  a xor b ;
		carry <= ( a and b );
	  end dataflow; 
