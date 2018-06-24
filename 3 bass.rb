use_midi_defaults port: "iac_driver_bus_1", channel: 3

live_loop :bass, sync: :one do
  with_fx :echo, decay: 0.5, mix: 0.5, decay: 4 do
    use_synth :tri
    use_synth_defaults cutoff: 80, amp: 1.2, decay: 0.25, sustain: 0
    play_pattern_timed (scale :d1, :minor_pentatonic, num_octaves: 2).shuffle.take(4), 0.5
  end
end

live_loop :acid, sync: :one do
  # stop
  use_random_seed 654
  use_synth :tb303
  use_synth_defaults cutoff: 65, decay: 0.125, amp: 0.25, release: 0.125
  play_pattern_timed (scale :d3, :minor_pentatonic).shuffle.pick(8), [0.25]
  # play :d3
  # sleep 4
end
