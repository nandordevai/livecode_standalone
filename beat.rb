beats = (ring :one, :two, :three, :four)

live_loop :beat do
  cue beats.tick
  sleep 1
end
