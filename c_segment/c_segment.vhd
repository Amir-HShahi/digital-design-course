LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY design IS
    PORT (
        w : IN BIT;
        x : IN BIT;
        y : IN BIT;
        z : IN BIT;
        q : OUT BIT
    );
END design;

ARCHITECTURE design_arch OF design IS
BEGIN
    q <= w OR x OR (NOT y) OR z;

END design_arch;