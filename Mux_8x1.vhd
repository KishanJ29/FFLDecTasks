 library ieee;

     use ieee.std_logic_1164.all;
-----------------------------------------------------------------------------------------------------------------------------
--								Using Behavioural Modell
------------------------------------------------------------------------------------------------------------------------------
    entity  Mux_8x1 is
     port ( i80,i81,i82,i83,i84,i85,i86,i87 : in std_logic;
           s80,s81,s82 : in std_logic;
           y8 : out std_logic);
     end  Mux_8x1;
 architecture behave of Mux_8x1 is 
      begin 
          process(s)
              begin 
                  case (s) is
                  when "000" => y <= i(0);
                  when "001" => y <= i(1);
                  when "010" => y <= i(2);	
                  when "011" => y <= i(3);
				    when "100" => y <= i(4);
                  when "101" => y <= i(5);
                  when "110" => y <= i(6);	
                  when others => y <= i(7);
              end case;
          end process;

      end behave;    
--------------------------------------------------------------------------------------------------------------------------
--      							8x1 Mux using 2x1 Mux by std logic inputs 
---------------------------------------------------------------------------------------------------------------------------
entity  Mux_8x1 is
			port( i : in std_logic_vector(7 downto 0);
           s : in std_logic_vector(2 downto 0);
           y : out std_logic);
     end  Mux_8x1;
architecture structure of Mux_8x1 is 
	  
	 	component Mux_2x1 is

     port( i0,i1 : in std_logic;
           s1 : in std_logic;
           y1 : out std_logic);
     end  component;

	   signal k0,k1,k2,k3,k4,k5 : std_logic;
    	begin
			Mux2_1 : Mux_2x1 port map (i0 => i80, i1=> i81, s1=>s80, y1 =>k0);
 			Mux2_2 : Mux_2x1 port map (i0 => i82, i1=> i83, s1=>s80, y1 => k1);
			Mux2_3 : Mux_2x1 port map (i0 => i84, i1=> i85, s1=>s80, y1 => k2);
			Mux2_4 : Mux_2x1 port map (i0 => i86, i1=> i87, s1=>s80, y1 => k3);
			Mux2_5 : Mux_2x1 port map (i0 => k0, i1=>k1, s1=>s81, y1 =>k4);
			Mux2_6 : Mux_2x1 port map (i0 => k2, i1=> k3, s1=>s81, y1 => k5);
			Mux2_7 : Mux_2x1 port map (i0 => k4, i1=> k5, s1=>s82, y1 => y8);
	end structure;



-------------------------------------------------------------------------------------------------------------------------------
--  Inputs and signals are declared in vector form
--
-------------------------------------------------------------------------------------------------------------------------------
 

entity  Mux_8x1 is
			port( i : in std_logic_vector(7 downto 0);
           s : in std_logic_vector(2 downto 0);
           y : out std_logic);
     end  Mux_8x1;

architecture structure of Mux_8x1 is
component Mux_2x1 is

     port( i1 : in std_logic_vector(1 downto 0);
           s1 : in std_logic;
           y1 : out std_logic);
     end  component;

	   signal k : std_logic_vector(5 downto 0);
    	begin
			Mux2_1 : Mux_2x1 port map (i1(0)=> i(0),i1(1)=> i(1),s1=>s(0),y1 => k(0));
 			Mux2_2 : Mux_2x1 port map (i1(0)=> i(2),i1(1)=> i(3),s1=>s(0),y1 => k(1));
			Mux2_3 : Mux_2x1 port map (i1(0)=> i(4),i1(1)=> i(5),s1=>s(0),y1 => k(2));
			Mux2_4 : Mux_2x1 port map (i1(0)=> i(6),i1(1)=> i(7),s1=>s(0),y1 => k(3));
			Mux2_5 : Mux_2x1 port map (i1(0)=> k(0),i1(1)=> k(1),s1=>s(1),y1 => k(4));
			Mux2_6 : Mux_2x1 port map (i1(0)=> k(2),i1(1)=> k(3),s1=>s(1),y1 => k(5));
			Mux2_7 : Mux_2x1 port map (i1(0)=> k(4),i1(1)=> k(5),s1=>s(2),y1 => y);
	end structure;

-------------------------------------------------------------------------------------------------------------------------------

