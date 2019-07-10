	library ieee;
		use ieee.std_logic_1164.all;
		use ieee.numeric_std.all;
		use ieee.fixed_pkg.all; 
		use ieee.float_pkg.all;

entity ClkDivCount is 
	 port(Clk, GClr  : in std_logic;
	      DivClk : out std_logic);
     end ClkDivCount; 
		
 Architecture structure of ClkDivCount is 
	  component count is 
		 port(clk, clr  : in std_logic;
		      op : out unsigned(2 downto 0));
	     end component; 

	  component D_FF is 
		port( d, clk, rst :in std_logic;
			q, qbar : out std_logic);
		end component;
	  
	  signal AndWire : unsigned(2 downto 0);	
	  signal Rst,Grst  : std_logic; --Counter Reset
	  signal AndOut : std_logic; --And Gate Output
	  signal FFout,Din : std_logic; --FlipFlop Output
		
	 begin
 		
		Counter_1: 	count port map(clk =>Clk,clr => Rst, op =>(AndWire));

			AndOut <= ((not AndWire(2)) and (AndWire(1)) and (AndWire(0)));
			
			
		FlipFlop_1: D_FF port map( d => Din, clk => AndOut, rst =>GClr, q => FFOut, qbar => open);
			
			Din <= not FFout;

		    Rst <= GClr or AndOut;
		
			DivClk <=  FFOut;
 	
    end structure;
		

----------------------------------------------------------------------
				-- using Integer/floating values 
---------------------------------------------------------------------- 
--library ieee;
--	use ieee.std_logic_1164.all;
--	use ieee.numeric_std.all;
--    use ieee.fixed_float_types.all;
--entity count is 
--	 port(Clk, clr  : in std_logic;
--	      op : out unsigned(2 downto 0));
--     end count; 
--
--  architecture behave of count is
--      type Voltage_Level is range -5.5 to +5.5;
-- signal count:Voltage_Level; --unsigned(2 downto 0);
--      begin
--          process(Clk, clr)
--              begin
--                  if clr = '1' or count = 2.5  then 
--                     count <= 0.0;
--                   elsif rising_edge(Clk) then
--                      count <= count + 0.5;
--                   end if;
--               end process;
--               op <= count;--to_unsigned(count,3);
--           end behave;