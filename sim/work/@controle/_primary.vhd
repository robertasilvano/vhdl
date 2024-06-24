library verilog;
use verilog.vl_types.all;
entity Controle is
    port(
        clock_50        : in     vl_logic;
        enter           : in     vl_logic;
        reset           : in     vl_logic;
        end_fpga        : in     vl_logic;
        end_user        : in     vl_logic;
        end_time        : in     vl_logic;
        win             : in     vl_logic;
        match           : in     vl_logic;
        r1              : out    vl_logic;
        r2              : out    vl_logic;
        e1              : out    vl_logic;
        e2              : out    vl_logic;
        e3              : out    vl_logic;
        e4              : out    vl_logic;
        sel             : out    vl_logic
    );
end Controle;
