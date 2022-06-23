--  Código para o bloco de fault operation da macro usada no projeto
--  
--  
--  Desenvolvido por Cláudio Henrique e Gabriel Passos
--  Orientado por Miguel Orellana
--
-- Desenvolvimento iniciado dia 22/06/2022



library IEEE;
use IEEE.std_logic_1164.all;

entity fault_operation_stage is
	port(
		state	: int std_logic_vector(1 downto 0);    -- Vetor de estado das entradas
--		clk	: in  std_logic;
		 Y 	  : out std_logic;                       -- Saída
		
		
	);

end fault_operation_stage;

architecture main of fault_operation_stage is

begin

with state select
	Y <= "ZZZZ" when "00",    -- Alta impedência pois o estado 00 não nos interessa;
	     '0'    when "01",    -- Estado 01 seleciona autonomos mode;
	     '1'    when "10",    -- Estado 10 seleciona grid connected mode; 
	     "ZZZZ" when "11",    -- Alta impedância pois o estado 11 não nos interessa;
	     "ZZZZ" when others;  -- Apenas por conveniência.

end main;
