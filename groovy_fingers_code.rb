# Groovy Fingers Source Code
# Teethat Ananthothai - 17/11/2021
# Execute this code on the Sonic Pi platform only 

live_loop :foo do
  sample :loop_garzul
  use_synth :prophet
  play :c1, release: 8, cutoff: rrand(70, 130)
  sleep 8
  play :e2, release: 10, cutoff: rrand(70, 130)
  sleep 8
  play 50
  sleep 1
  play 36
  play 48
  sample :ambi_lunar_land
  sample :ambi_drone
  play_pattern_timed chord(:e1, :m13), 0.25
end

live_loop :bar do
  sample :bd_haus
  sleep 0.5
end

use_synth :tb303
loop do
  play choose(chord(:E2, :minor)), release: 0.35, cutoff: rrand(60, 120)
  sleep 0.25
end

use_synth :tb303
live_loop :squelch do
  n = (ring :e1, :e2, :e3).tick
  play n, release: 0.125, cutoff: 100, res: 0.8, wave: 0
  sleep 0.125
end

live_loop :timbre do
  use_synth (ring :tb303, :blade, :prophet, :saw, :beep, :tri).tick
  play :e2, attack: 0, release: 0.5, cutoff: 100
  sleep 0.5
end
