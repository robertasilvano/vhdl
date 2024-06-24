library verilog;
use verilog.vl_types.all;
entity Datapath is
    port(
        clock_50        : in     vl_logic;
        key             : in     vl_logic_vector(3 downto 0);
        switch          : in     vl_logic_vector(7 downto 0);
        r1              : in     vl_logic;
        r2              : in     vl_logic;
        e1              : in     vl_logic;
        e2              : in     vl_logic;
        e3              : in     vl_logic;
        e4              : in     vl_logic;
        sel             : in     vl_logic;
        hex0            : out    vl_logic_vector(6 downto 0);
        hex1            : out    vl_logic_vector(6 downto 0);
        hex2            : out    vl_logic_vector(6 downto 0);
        hex3            : out    vl_logic_vector(6 downto 0);
        hex4            : out    vl_logic_vector(6 downto 0);
        hex5            : out    vl_logic_vector(6 downto 0);
        leds            : out    vl_logic_vector(3 downto 0);
        end_fpga        : out    vl_logic;
        end_user        : out    vl_logic;
        end_time        : out    vl_logic;
        win             : out    vl_logic;
        match           : out    vl_logic
    );
end Datapath;
