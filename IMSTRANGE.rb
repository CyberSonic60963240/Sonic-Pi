# Welcome to Sonic Pi v2.11.1
use_bpm 320
use_octave -1
with_fx :distortion do
  use_synth :tri
  live_loop :Tune do
    play :c4, amp: 0.5
    sleep 1
    play :e4, amp: 0.5
    sleep 1
    play :g4, amp: 0.5
    sleep 1
    play :b4, amp: 0.5
    sleep 1
    play :c5, amp: 0.5
    sleep 1
    play :b4, amp: 0.5
    sleep 1
    play :g4, amp: 0.5
    sleep 1
    play :e4, amp: 0.5
    sleep 1
  end
end
with_fx :reverb do
  live_loop :Drums do
    sample :drum_bass_hard
    sleep 1
    sample :drum_bass_hard
    sleep 3
  end
end