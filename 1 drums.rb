kick = :c2
rim = :cs2
snare = :d2
clap = :ds2
snare_b = :e2
kick_b = :f2
hh_closed = :fs2
tom_low = :g2
hh_closed2 = :gs2
tom_low2 = :a2
hh_open = :as2
tom_mid = :b2
tom_hi = :c3
crash = :cs3
crash2 = :d3
ride = :ds3

drums = "/Users/nandi/Music/Samples/Roland PB-300 Rhythm Plus"
vol1 = 1
kick = nil

use_midi_defaults port: "iac_driver_bus_1", channel: 1

live_loop :drums do
  kick = sample drums, "kick"
  sleep 1
end
