LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY encoder IS
    PORT (
        input_vector : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        output_vector : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
        validity : OUT STD_LOGIC
    );
END encoder;

ARCHITECTURE encoder_arch OF encoder IS
BEGIN

    output_vector <= "11" WHEN input_vector = "1000" ELSE
        "10" WHEN input_vector = "0100" ELSE
        "01" WHEN input_vector = "0010" ELSE
        "00" WHEN input_vector = "0001";
    validity <= '0' WHEN input_vector = "0000" ELSE
        '1';

END encoder_arch;