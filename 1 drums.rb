drums = "/Users/nandi/Music/Samples/Roland PB-300 Rhythm Plus"
# hh_open
# hh_closed
# kick
# kick2
# ride
# snare
# wood

use_midi_defaults port: "iac_driver_bus_1", channel: 1

live_loop :drums, sync: :one do
  with_fx :reverb, room: 0.25 do
    with_fx :compressor do
      # stop
      hh = (ring
        1, 1, 1, 1,
        0, 1, 1, 0)
      hh_cutoff = 95
      hh_open_vol = 2
      sample drums, "kick", cutoff: 110
      if hh.tick == 1
        sample drums, "hh_closed", cutoff: hh_cutoff
      else
        sample drums, "hh_open", amp: hh_open_vol, cutoff: hh_cutoff
      end
      sleep 0.5
      with_fx :echo, decay: 0.5, phase: 0.125 do
        sample drums, "snare", cutoff: 115, amp: 0.8
      end
      if hh.tick == 1
        sample drums, "hh_closed", cutoff: hh_cutoff
      else
        sample drums, "hh_open", amp: hh_open_vol, cutoff: hh_cutoff
      end
      sleep 0.5
    end
  end
end
