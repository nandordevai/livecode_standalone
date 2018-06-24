use_midi_defaults port: "iac_driver_bus_1", channel: 4

live_loop :arp, sync: :one do
  with_fx :reverb do
    with_fx :ixi_techno, phase: 4 do
      with_fx :hpf, cutoff: 30 do
        with_fx :panslicer, probability: 0.75, prob_pos: 0 do
          use_synth :fm
          use_synth_defaults amp: 0.55, divisor: 2
          play_pattern_timed (chord :d4, :minor), 2
          play_pattern_timed (chord :d5, :minor), 1
        end
      end
    end
  end
end
