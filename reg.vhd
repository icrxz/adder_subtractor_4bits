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
-- Nome do módulo: Reg
-- Nome do projeto: adder_subtracter_4bits
-- Dispositivo: Altera Cyclone IV EP4CE6E22C8
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg is
    Port (
			D_IN: in std_logic_vector (3 downto 0);
			CLK: in std_logic;
			SAVE_VAL: in std_logic;
			CLR: in std_logic;
			Q_OUT: out std_logic_vector (3 downto 0)
			);
end entity;

architecture Behavioral of reg is

signal RESULT: std_logic_vector (3 downto 0) := "0000";

begin
	process(SAVE_VAL)
	begin
		if (CLR = '1') then
			RESULT <= "0000";
		end if;
		
		if (SAVE_VAL = '1') then
			RESULT <= D_IN;
		end if;
	end process;
	
	Q_OUT <= RESULT;
end Behavioral;

