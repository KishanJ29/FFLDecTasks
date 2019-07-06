	library ieee;
		use ieee.std_logic_1164.all;
		use ieee.numeric_std.all;

entity TypeConversions is 
--	port( 
--		  intO : out integer;
--		  svO : out std_logic_vector(7 downto 0);
--		  ssiO : out signed(7 downto 0);
--		  usiO : out unsigned(7 downto 0));
  end TypeConversions;

architecture dataflow of TypeConversions is 
	signal    int :  integer;
	signal	  sv :   std_logic_vector(7 downto 0);
	signal	  ssi :  signed(7 downto 0);
	signal	  usi :  unsigned(7 downto 0);
	
   begin
------------------------------------------------------------------------------------
--Uncomment and run one Round at a Time
-- Refrence can be found at http://www.bitweenie.com/listings/vhdl-type-conversion/
------------------------------------------------------------------------------------
-----------------------------------------------------------------------
		--Round 1
----------------------------------------------------------------------- 
--     usi <= to_unsigned(int,8);
--	 sv <= std_logic_vector(usi);
--	 ssi <= signed(sv);
--	 int <= to_integer(ssi);
 -----------------------------------------------------------------------
		--Round 2
------------------------------------------------------------------------    
-- 	int <= to_integer(usi);
--	ssi<= to_signed(int,8);
--	sv <= std_logic_vector(ssi);
--	usi <= unsigned(sv);
 ------------------------------------------------------------------------ 

 		int <= to_integer(ssi);   
  	end dataflow;