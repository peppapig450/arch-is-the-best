use std.textio.all;

entity arch_is_the_best is
end arch_is_the_best;

architecture behaviour of arch_is_the_best is
begin
  process
    variable l : line;
  begin
    write (l, String'("Arch is the best!"));
    writeline (output, l);
    wait;
  end process;
end behaviour;
