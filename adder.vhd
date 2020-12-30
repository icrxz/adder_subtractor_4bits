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
-- Nome do módulo: Arithmetic
-- Nome do projeto: adder_subtracter_4bits
-- Dispositivo: Altera Cyclone IV EP4CE6E22C8
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.NUMERIC_STD.ALL;

entity arithmetic is
    Port (
			IN_1: in std_logic_vector (3 downto 0);
			IN_2: in std_logic_vector (3 downto 0);
			OPERATION: in std_logic;
			RESULT_OUT: out std_logic_vector (3 downto 0)
			);
end entity;

architecture Behavioral of arithmetic is

signal result: std_logic_vector (3 downto 0);

begin
	process(OPERATION, IN_1, IN_2)
	begin
		if (OPERATION = '0') then
			result <= IN_1 + IN_2;
		else
			result <= IN_1 - IN_2;
		end if;
	end process;
	
	RESULT_OUT <= result;
end Behavioral;
