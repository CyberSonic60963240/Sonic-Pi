# Welcome to Sonic Pi v2.11.1
use_bpm 320
use_octave -1
with_fx :distortion do
  use_synth :tri
  #The code below depicts a list of notes to be followed; they are labelled in numerical order (starting from "0") and branded with the "ST_notes" at the beginning.
  ST_notes = [:c4, :e4, :g4, :b4, :c5, :b4, :g4, :e4]
  #The "index" value is the starting point of the note list within the song.
  index = 0
  # As shown below, to play a note from the list above, there must be a "play" instruction before the codename of the list ("ST_notes", in this case) and the respectively ordered number of the note within the list in brackets.
  # As exemplified below, the loop is playing the "index" note of the "ST_notes" array; above, it is established that "index" is equal to 0, so, since ":c4" is the "zeroith" note of the string, it will play the note ":c4".
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
