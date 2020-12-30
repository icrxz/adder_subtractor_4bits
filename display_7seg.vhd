----------------------------------------------------------------------------------
-- Faculdade de Tecnologia Termomecanica
--
-- Nome: Gabriel Teixeira - 081170023
-- Nome: Igor Cruz - 081170008
-- Nome: João Marcos - 081170036
--
-- Professor
-- Nome: Filippo Valiante Filho
-- Disciplina: Arquitetura de Computadores II
--
-- Data de criação: 20/09/2020 
-- Nome do módulo: Display_7seg
-- Nome do projeto: adder_subtracter_4bits
-- Dispositivo: Altera Cyclone IV EP4CE6E22C8
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity display_7seg is
    port (
			EN_DISP : out STD_LOGIC;
			INPUT : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
			SHOW: in STD_LOGIC;
			DISPLAY : out  STD_LOGIC_VECTOR (6 DOWNTO 0)
			);
end entity;

architecture Behavioral of display_7seg is

begin
	
	EN_DISP <= '0';

	PROCESS(INPUT, SHOW)
	begin
		if(SHOW = '1') then
			case INPUT is 
				--Char 0
				when "0000" => DISPLAY <= "1000000";
				--Char 1
				when "0001" => DISPLAY <= "1111001";
				--Char 2
				when "0010" => DISPLAY <= "0100100";
				--Char 3
				when "0011" => DISPLAY <= "0110000";
				--Char 4
				when "0100" => DISPLAY <= "0011001";
				--Char 5
				when "0101" => DISPLAY <= "0010010";
				--Char 6
				when "0110" => DISPLAY <= "0000010";
				--Char 7
				when "0111" => DISPLAY <= "1111000";
				--Char 8
				when "1000" => DISPLAY <= "0000000";
				--Char 9
				when "1001" => DISPLAY <= "0010000";
				--Char A
				when "1010" => DISPLAY <= "0001000";
				--Char B
				when "1011" => DISPLAY <= "0000011";
				--Char C
				when "1100" => DISPLAY <= "1000110";
				--Char D
				when "1101" => DISPLAY <= "0100001";
				--Char E
				when "1110" => DISPLAY <= "0000110";
				--Char F
				when others => DISPLAY <= "0001110";
			end case;
		end if;
	end process;
end Behavioral;
