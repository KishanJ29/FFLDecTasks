 library ieee;
	use ieee.std_logic_1164.all;
	use ieee.Numeric_std.all;
	use ieee.fixed_pkg.all; 
	use ieee.float_pkg.all;
 entity ClkDiv is 
	port( clk,clr  :in std_logic;
			DivOut : out std_logic);
 end ClkDiv;

architecture RTL of ClkDiv is
	signal count: unsigned(3 downto 0); --Counter Varible
      begin
  clockcountdivide: process(Clk,clr)
					begin
					  if(clr = '1' or count = "1010") then
						  count<= "0000";
					elsif rising_edge(Clk) then
						if count< "0101" then
							DivOut <= '1';
						 	count <= count + "1"; 
						else 
							DivOut <= '0';
						 	count <= count + "1"; 
						end if;
						
					end if;
		end process clockcountdivide;  
end RTL;
 
-----------------------------------------------------------------------------------------
--		Alternate General Method 
-----------------------------------------------------------------------------------------
-- 	begin 
--	   if (count = T/2)
		count = 0;
--		DivOut = not(DivOut);
--	   else
--		DivOut = DivOut;
--		count = count + 1;
--	   end if 
------------------------------------------------------------------------------------------		