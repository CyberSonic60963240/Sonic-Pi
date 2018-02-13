# Welcome to Sonic Pi v2.11.1
use_bpm 320
use_octave -1
with_fx :distortion do
  use_synth :tri
  ST_notes = [:c4, :e4, :g4, :b4, :c5, :b4, :g4, :e4]
  index = 0
  live_loop :Tune do
    8.times do
      play ST_notes[index], amp: 0.5
      sleep 1
      index = index + 1
    end
    index = index - 8
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