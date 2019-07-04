 library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_unsigned.all;

 entity FullAdder is 
	port( a, b , c : in std_logic;
	      sum , carry : out std_logic);
 end FullAdder;
 
	 architecture dataflow of FullAdder is 
	    begin
		sum <=  a xor b xor c ;
		carry <= ( a and b ) or (a and c) or ( b and c);
	  end dataflow; 
	
architecture  behave of FullAdder is 
    begin
	process(a,b,c)
  begin
	  if(a='0' and b='0' and c='0')then
		  sum<='0';
		  carry<='0';
	  elsif( a='0' and b='0' and c='1')then
		   sum<='1';
		  carry<='0';
	   elsif( a='0' and b='1' and c='0')then
		   sum<='1';
		  carry<='0';
	   elsif( a='0' and b='1' and c='1')then
		   sum<='0';
		  carry<='1';
	  elsif( a='1' and b='0' and c='0')then
		   sum<='1';
		  carry<='0';
	    elsif( a='1' and b='0' and c='1')then
		   sum<='0';
		  carry<='1';
	    elsif( a='1' and b='1' and c='0')then
		   sum<='0';
		  carry<='1';
	  else
		  sum<='1';
		  carry<='1';
      end if;
      end process;

  end behave; 
	
	architecture structure of FullAdder is 
           component halfadd is
		port( a, b : in std_logic;
		      sum , carry : out std_logic);
	  end component;
          component or_gate is 
		port( a, b : in std_logic;
		      c : out std_logic);
          end component;
		signal sum_1 :std_logic;
	      	signal carry_1 :std_logic;
		signal carry_2 :std_logic;
		
	    begin
		Module_Half1: halfadd port map(a, b, sum_1, carry_1);
		Module_Half2: halfadd port map(sum_1, c, sum, carry_2);
 		Module_OrGate: or_gate port map(carry_1, carry_2, carry);
	  end structure; 

