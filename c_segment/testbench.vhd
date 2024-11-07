-- testbench for OR gate
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY testbench IS
  -- empty
END testbench;

ARCHITECTURE tb OF testbench IS

  -- DUT component
  COMPONENT design IS
    PORT (
      w : IN BIT;
      x : IN BIT;
      y : IN BIT;
      z : IN BIT;
      q : OUT BIT);
  END COMPONENT;

  SIGNAL w_in, x_in, y_in, z_in, q_out : BIT;

BEGIN

  -- Connect DUT
  DUT : design PORT MAP(w_in, x_in, y_in, z_in, q_out);

  PROCESS
  BEGIN
    w_in <= '0';
    x_in <= '0';
    y_in <= '0';
    z_in <= '0';
    WAIT FOR 1 ns;
    ASSERT(q_out = '1') REPORT "Fail 0/0/0/0" SEVERITY error;

    w_in <= '0';
    x_in <= '0';
    y_in <= '0';
    z_in <= '1';
    WAIT FOR 1 ns;
    ASSERT(q_out = '1') REPORT "Fail 0/0/0/1" SEVERITY error;

    w_in <= '0';
    x_in <= '0';
    y_in <= '1';
    z_in <= '0';
    WAIT FOR 1 ns;
    ASSERT(q_out = '0') REPORT "Fail 0/0/1/0" SEVERITY error;

    w_in <= '0';
    x_in <= '0';
    y_in <= '1';
    z_in <= '1';
    WAIT FOR 1 ns;
    ASSERT(q_out = '1') REPORT "Fail 0/0/1/1" SEVERITY error;

    w_in <= '0';
    x_in <= '1';
    y_in <= '0';
    z_in <= '0';
    WAIT FOR 1 ns;
    ASSERT(q_out = '1') REPORT "Fail 0/1/0/0" SEVERITY error;

    w_in <= '0';
    x_in <= '1';
    y_in <= '0';
    z_in <= '1';
    WAIT FOR 1 ns;
    ASSERT(q_out = '1') REPORT "Fail 0/1/0/1" SEVERITY error;

    w_in <= '0';
    x_in <= '1';
    y_in <= '1';
    z_in <= '0';
    WAIT FOR 1 ns;
    ASSERT(q_out = '1') REPORT "Fail 0/1/1/0" SEVERITY error;

    w_in <= '0';
    x_in <= '1';
    y_in <= '1';
    z_in <= '1';
    WAIT FOR 1 ns;
    ASSERT(q_out = '1') REPORT "Fail 0/1/1/1" SEVERITY error;

    w_in <= '1';
    x_in <= '0';
    y_in <= '0';
    z_in <= '0';
    WAIT FOR 1 ns;
    ASSERT(q_out = '1') REPORT "Fail 1/0/0/0" SEVERITY error;

    w_in <= '1';
    x_in <= '0';
    y_in <= '0';
    z_in <= '1';
    WAIT FOR 1 ns;
    ASSERT(q_out = '1') REPORT "Fail 1/0/0/1" SEVERITY error;

    -- Clear inputs
    w_in <= '0';
    x_in <= '0';
    y_in <= '0';
    z_in <= '0';

    ASSERT false REPORT "Test done." SEVERITY note;
    WAIT;
  END PROCESS;
END tb;