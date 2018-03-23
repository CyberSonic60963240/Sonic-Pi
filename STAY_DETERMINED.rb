# Welcome to Sonic Pi v2.11.1
=begin
use_bpm 600
live_loop :cymbal do
  sample :drum_bass_soft
  sleep 1
end
live_loop :snare do
  sync :cymbal
  sample :drum_snare_hard
  sleep 4
end
live_loop :splash do
  sample :drum_splash_hard
  sleep 16
end
=end
use_bpm 130
live_loop :lead do
  play :g3
  sleep 1.5
  play :a4
  sleep 1.5
  play :b4
  sleep 1.5
  play :c5
  sleep 1.5
  play :d5
  sleep 1.5
  play :f5
  sleep 0.75
  play :d5
  sleep 0.5
  play :c5
  sleep 0.75
  play :c5
  sleep 0.75
  play :b4
  sleep 0.5
  play :
  sleep 1
end