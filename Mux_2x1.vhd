 library ieee;

     use ieee.std_logic_1164.all;

    entity  Mux_2x1 is
		port( i1 : in std_logic_vector(1 downto 0);
           s1 : in std_logic;
           y1 : out std_logic);
	    end  Mux_2x1;
--     port( i0,i1 : in std_logic;
--           s1 : in std_logic;
--           y1 : out std_logic);
--     end  Mux_2x1;
 architecture behave of Mux_2x1 is 
      begin 
          y1 <= i1(1) when (s1 = '1') else i1(0);
              
end behave;
-----------------------------------------------------------------------------------------------------				
								--	2x1 Mux Wrong Method Malfunctioning 
-----------------------------------------------------------------------------------------------------
--library ieee;
--
--     use ieee.std_logic_1164.all;
--
--    entity  Mux_2x1 is
--
--     port( i1 : in std_logic_vector(1 downto 0);
--           s1 : in std_logic;
--           y1 : out std_logic);
--     end  Mux_2x1;
-- architecture behave of Mux_2x1 is 
--      begin 
--          process(s1)
--              begin 
--                  case (s1) is
--                  when '0' => y1 <= i1(0);
--                  when others => y1 <= i1(1);
--              end case;
--   	end process;
--end behave;

-----------------------------------------------------------------------------------------------------