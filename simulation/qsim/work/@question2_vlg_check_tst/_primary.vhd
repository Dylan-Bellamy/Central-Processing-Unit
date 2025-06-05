library verilog;
use verilog.vl_types.all;
entity Question2_vlg_check_tst is
    port(
        id              : in     vl_logic_vector(3 downto 0);
        opcode          : in     vl_logic_vector(7 downto 0);
        R_first_four    : in     vl_logic_vector(0 to 6);
        R_last_four     : in     vl_logic_vector(0 to 6);
        result          : in     vl_logic_vector(7 downto 0);
        sign            : in     vl_logic_vector(0 to 6);
        Student_Id      : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end Question2_vlg_check_tst;
