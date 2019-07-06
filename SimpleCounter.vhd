
library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

entity count is 
	 port(clk, clr  : in std_logic;
	      op : out signed(2 downto 0));
     end count; 

  architecture behave of count is
      signal count: integer;
      begin
          process(clk, clr)
              begin
                  if clr = '1' then 
                     count <=0;
                   elsif rising_edge(clk) then
                       count <= count + 1;
                   end if;
               end process;
               op <= to_signed(count,3);
           end behave;