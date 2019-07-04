library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_unsigned.all;

 entity FullAddBahave is 
	port( a, b , c : in std_logic;
	      sum , carry : out std_logic);
 end FullAddBahave;
 
  architecture dataflow of FullAdder is 
    begin
	sum <=  a xor b xor c ;
	carry <= ( a and b ) or (a and c) or ( b and c);
  end dataflow; 
