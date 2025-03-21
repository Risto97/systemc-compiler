//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.15
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "a"
(
    input logic clk
);

// Variables generated for SystemC signals
logic rst;
logic [3:0] sig;

//------------------------------------------------------------------------------
// Clocked THREAD: loc_rec_array_thread (test_member_array_unkwn.cpp:55:5) 

// Thread-local variables
logic [3:0] xarr_b[2][3];
logic [3:0] xarr_b_next[2][3];
logic loc_rec_array_thread_PROC_STATE;
logic loc_rec_array_thread_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : loc_rec_array_thread_comb     // test_member_array_unkwn.cpp:55:5
    loc_rec_array_thread_func;
end
function void loc_rec_array_thread_func;
    integer j;
    logic xarr_a[2][3];
    logic [3:0] l;
    xarr_b_next = xarr_b;
    loc_rec_array_thread_PROC_STATE_next = loc_rec_array_thread_PROC_STATE;
    
    case (loc_rec_array_thread_PROC_STATE)
        0: begin
            j = sig;
            xarr_b_next[1][1] = 1;
            xarr_b_next[1][2] = 2;
            xarr_b_next[j][2] = 0;
            loc_rec_array_thread_PROC_STATE_next = 1; return;    // test_member_array_unkwn.cpp:70:13;
        end
        1: begin
            l = xarr_b_next[1][2];
            j = sig;
            xarr_b_next[1][1] = 1;
            xarr_b_next[1][2] = 2;
            xarr_b_next[j][2] = 0;
            loc_rec_array_thread_PROC_STATE_next = 1; return;    // test_member_array_unkwn.cpp:70:13;
        end
    endcase
endfunction

// Synchronous register update
always_ff @(posedge clk or posedge rst) 
begin : loc_rec_array_thread_ff
    if ( rst ) begin
        loc_rec_array_thread_PROC_STATE <= 0;    // test_member_array_unkwn.cpp:57:9;
    end
    else begin
        xarr_b <= xarr_b_next;
        loc_rec_array_thread_PROC_STATE <= loc_rec_array_thread_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Method process: loc_rec_array_meth (test_member_array_unkwn.cpp:76:5) 

always_comb 
begin : loc_rec_array_meth     // test_member_array_unkwn.cpp:76:5
    integer j;
    logic arr_a[2][3];
    logic [3:0] arr_b[2][3];
    logic [3:0] l;
    j = sig;
    arr_b[1][1] = 1;
    arr_b[1][2] = 2;
    arr_b[j][2] = 0;
    l = arr_b[1][2];
end

//------------------------------------------------------------------------------
// Method process: loc_array_meth (test_member_array_unkwn.cpp:91:5) 

always_comb 
begin : loc_array_meth     // test_member_array_unkwn.cpp:91:5
    integer j;
    logic [3:0] arr[2];
    logic [3:0] l;
    j = sig;
    arr[0] = 0; arr[1] = 0;
    arr[0] = 1;
    arr[1] = 2;
    arr[j] = 0;
    l = arr[1];
end

//------------------------------------------------------------------------------
// Method process: loc_array2d_meth (test_member_array_unkwn.cpp:106:5) 

always_comb 
begin : loc_array2d_meth     // test_member_array_unkwn.cpp:106:5
    integer j;
    logic [3:0] arr[2][3];
    logic [3:0] l;
    j = sig;
    arr[0][0] = 0; arr[0][1] = 0; arr[0][2] = 0; arr[1][0] = 0; arr[1][1] = 0; arr[1][2] = 0;
    arr[1][1] = 1;
    arr[1][2] = 2;
    arr[j][1] = 0;
    l = arr[1][1];
end

endmodule


