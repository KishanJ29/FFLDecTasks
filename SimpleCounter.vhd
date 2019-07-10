
library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
    use ieee.fixed_pkg.all; 
	use ieee.float_pkg.all;
entity count is 
	 port(Clk, clr  : in std_logic;
	      op : out unsigned(2 downto 0));
     end count; 

  architecture behave of count is
--      signal count: unsigned(2 downto 0);
--      begin
--          process(Clk, clr)
--              begin
--                  if clr = '1'  then 
--                     count <= "000";
--                   elsif rising_edge(Clk) then
--                      count <= count + "1";
--                   end if;
--               end process;
--               op <= count;
		 signal count,add :ufixed(3 DOWNTO -3);
		 begin 
			count <= count + add;
           end behave;