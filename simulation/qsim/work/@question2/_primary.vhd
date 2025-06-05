library verilog;
use verilog.vl_types.all;
entity Question2 is
    port(
        id              : out    vl_logic_vector(3 downto 0);
        data_in         : in     vl_logic;
        Clock           : in     vl_logic;
        FSM_Reset       : in     vl_logic;
        opcode          : out    vl_logic_vector(7 downto 0);
        Enable_Decoder  : in     vl_logic;
        R_first_four    : out    vl_logic_vector(0 to 6);
        Clock1          : in     vl_logic;
        ALU_Reset       : in     vl_logic;
        Reset_A         : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        Reset_B         : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0);
        R_last_four     : out    vl_logic_vector(0 to 6);
        result          : out    vl_logic_vector(7 downto 0);
        sign            : out    vl_logic_vector(0 to 6);
        Student_Id      : out    vl_logic_vector(0 to 6)
    );
end Question2;
