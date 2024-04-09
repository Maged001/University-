--! Standard library.
library IEEE;
--! Standard logic elements.
use IEEE.std_logic_1164.all;

--! Clock generator.
--
--! @brief Master clock generator with reset and start signals.
entity clock is
  port (
    master_clock : out std_logic;       --! Master clock.
    reset        : out std_logic;       --! Reset processor to known state.
    start        : out std_logic        --! Start processor.
    );
end clock;

--! @brief Architecture of master clock with reset and start signals.
--! @details This architecture cannot be synthesized.  It's only purpose is
--! to simulate a clock signal from a crystal oscillator and start the
--! processor.
architecture clock_arch of clock is

begin  -- clock_arch

  --! A simple simulation of an oscillator generating the master clock.
  oscillator: process
  begin  -- process oscillator
    master_clock <= '0', '1' after 50 ns;
    wait for 100 ns;
  end process oscillator;

  --! Resets the processor.
  master_reset: process
  begin  -- process master_reset
    reset <= '1', '0' after 300 ns;
    wait;
  end process master_reset;

  --! Starts the processor.
  master_start: process
  begin  -- process master_start
    start <= '0', '1' after 400 ns, '0' after 500 ns;
    wait;
  end process master_start;
end clock_arch;
