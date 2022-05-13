`include "7_segment_decoder/hdl/decoder_7.v"
`include "timer_input_control/timer_input_control.v"
`include "minutes_seconds_timer/timer.v"
`include "magnetron_control/magnetron_controller/magnetron_controller.v"


module microwave(input wire startn, clearn, stopn, door_closed, clock,
    input wire [9:0] keypad,
    output wire [6:0] sec_ones_segs, sec_tens_segs, min_segs,
    output wire mag_on);

    
    wire [3:0] D_to_data, timer_decoder_sec, timer_decoder_tens, timer_decoder_mins;
    wire zero_to_timer_done, loadn_to_loadn, pgt_to_clock, magnetron;

    magnetron_controller controller(startn, stopn, clearn, door_closed, zero_to_timer_done, mag_on);

    timer_input_control enc(D_to_data, loadn_to_loadn, pgt_to_clock, keypad, mag_on, clock);

    timer timer(timer_decoder_sec, timer_decoder_tens, timer_decoder_mins, zero_to_timer_done, pgt_to_clock, clearn, mag_on, loadn_to_loadn, D_to_data);

    decoder_7 dec(sec_ones_segs, sec_tens_segs, min_segs, timer_decoder_sec, timer_decoder_tens, timer_decoder_mins); 


endmodule