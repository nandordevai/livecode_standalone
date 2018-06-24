use_midi_defaults port: "iac_driver_bus_1", channel: 7

live_loop :pads, sync: :one do
  with_fx :reverb, room: 0.8, damp: 0.25 do
    with_fx :echo, mix: 0.5, phase: 0.75 do
      use_synth :dark_ambience
      use_synth_defaults attack: 0.2, sustain: 3, release: 1, cutoff: 90
      play_chord chord(:d, :minor), amp: 2
      sleep 4
      play_chord chord(:e, :minor), amp: 2
    end
  end
end
