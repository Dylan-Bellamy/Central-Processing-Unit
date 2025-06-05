library verilog;
use verilog.vl_types.all;
entity Question1_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        ALU_Reset       : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0);
        Clock           : in     vl_logic;
        data_in         : in     vl_logic;
        Enable_Decoder  : in     vl_logic;
        FSM_Reset       : in     vl_logic;
        Reset_A         : in     vl_logic;
        Reset_B         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Question1_vlg_sample_tst;
