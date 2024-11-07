LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY design IS
    PORT (
        x : IN BIT;
        y : IN BIT;
        z : IN BIT;
        q : OUT BIT
    );
END design;

ARCHITECTURE design_arch OF design IS
BEGIN
    q <= (x AND (NOT y)) OR ((NOT x) AND z);
END design_arch;