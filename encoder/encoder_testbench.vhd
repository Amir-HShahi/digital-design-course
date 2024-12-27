LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE tb OF testbench IS

    COMPONENT encoder
        PORT (
            input_vector : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
            output_vector : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
            validity : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL input_vector_signal : STD_LOGIC_VECTOR (3 DOWNTO 0);
    SIGNAL validity_signal : STD_LOGIC;
    SIGNAL output_vector_signal : STD_LOGIC_VECTOR (1 DOWNTO 0);

BEGIN
    DUT : encoder PORT MAP(input_vector => input_vector_signal, validity => validity_signal, output_vector => output_vector_signal);

    PROCESS
    BEGIN
        input_vector_signal <= "0000";
        WAIT FOR 1 ns;
        ASSERT (validity_signal = '0') REPORT "Test Case 1 Failed" SEVERITY error;

        input_vector_signal <= "0001";
        WAIT FOR 1 ns;
        ASSERT (validity_signal = '1' AND output_vector_signal = "00") REPORT "Test Case 2 Failed" SEVERITY error;

        input_vector_signal <= "0010";
        WAIT FOR 1 ns;
        ASSERT (validity_signal = '1' AND output_vector_signal = "01") REPORT "Test Case 3 Failed" SEVERITY error;

        input_vector_signal <= "0100";
        WAIT FOR 1 ns;
        ASSERT (validity_signal = '1' AND output_vector_signal = "10") REPORT "Test Case 4 Failed" SEVERITY error;

        input_vector_signal <= "1000";
        WAIT FOR 1 ns;
        ASSERT (validity_signal = '1' AND output_vector_signal = "11") REPORT "Test Case 5 Failed" SEVERITY error;

        WAIT;
    END PROCESS;

END tb;