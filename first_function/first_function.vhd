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
    q <= ((NOT x) AND (NOT y) AND z) OR ((NOT x) AND y AND z) OR (x AND (NOT y));
    
END design_arch;