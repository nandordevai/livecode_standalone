use_midi_defaults port: "iac_driver_bus_1", channel: 2

vol2 = 1

live_loop :perc do
  with_fx :level, amp: vol2 do
  end
end

live_loop :volume2 do
  use_real_time
  cc, val = sync "/midi/launch_control_xl/2/9/control_change"
  if cc == 78
    vol2 = val / 127.0 * 2
  end
end
