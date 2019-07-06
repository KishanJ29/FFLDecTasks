
library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

entity UpDown is 
	 port(clk, clr ,Dir : in std_logic;	--Dir -> Shows the Direction of the counter i.e Up/Down
	      op : out unsigned(2 downto 0));
     end UpDown; 

  architecture behave of UpDown is
      signal count: integer;
	  
      begin
          process(clk, clr, Dir)
              begin
                  if clr = '1' then 
                     count <=0;
                   elsif rising_edge(clk) then
                     		if dir = '1' then
							 count <= count + 1;
					 		else
							 count <= count - 1;
					   	end if;
                  end if ;
                end process;
               op <= to_unsigned(count,3);
           end behave;
