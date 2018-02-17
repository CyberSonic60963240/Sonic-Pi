# NAME OF SONG: "Finale" by Toby Fox
# SHEET MUSIC: N/A (Done By Ear!)
# BPM USED: 95bpm (Default)
use_bpm 95
# The "x" value plays the ":drum_snare_hard" sample when asked to by a "sample" command, the "y" value plays the ":drum_bass_soft" when asked to by a "sample" command, and "z" sets whatever value is set before it as "0.25".
x = :drum_snare_hard
y = :drum_bass_soft
z = 0.25
# Each of the "Finale[x]" notes below reference the notes that are in their respective spots in the list below.
Finale = [80, 82, 84, 86, 87, 88, 75, 90, 78]
Index = 1
with_fx :distortion, amp: 5  do
  # the "x.times do" will loop the code between it and an "end" code the amount of times specified by the aforementioned "x".
  1.times do
    play 80
    sleep 0.5
    play Finale[1]
    sleep 0.25
    2.times do
      play Finale[2]
      sleep 0.25
      play Finale[3]
      sleep 0.5
      play Finale [2]
      sleep 0.5
      play Finale [3]
      sleep 0.5
      play Finale [4]
      sleep 0.25
      play Finale [5]
      sleep 0.25
      play Finale [1]
      sleep 0.5
      play Finale [6]
      sleep 0.5
      play Finale [0]
      sleep 0.5
      # The looped code below will set the note played as the index's value, which is 1, before sleeping for a quarter of a second, adding 1 to it, and playing that value, which will be 2, and moving on in the code.z
      2.times do
        play Finale [i]
        sleep 0.25
        i = i + 1
      end
      play Finale [3]
      sleep 0.5
      play Finale [7]
      sleep 0.5
      play Finale [5]
      sleep 1
      play Finale [3]
      sleep 1
      play Finale [0]
      sleep 0.5
      play Finale [1]
      sleep 0.25
      play Finale [2]
      sleep 0.25
      play Finale [3]
      sleep 0.5
      play Finale [2]
      sleep 0.5
      play Finale [3]
      sleep 0.5
      play Finale [5]
      sleep 0.25
      play Finale [7]
      sleep 0.25
      play Finale [3]
      sleep 0.5
      play Finale [6]
      sleep 0.5
      play Finale [0]
      sleep 0.5
      play Finale [1]
      sleep 0.25
      play Finale [2]
      sleep 0.25
      play Finale [3]
      sleep 0.5
      play Finale [0]
      sleep 0.5
      play Finale [8]
      sleep 1
      play Finale [7]
      sleep 1
    end
    live_loop :Complete_Melody do
      play Finale [0]
      sleep 0.5
      play Finale [1]
      sleep 0.25
      play Finale [2]
      sleep 0.25
      play Finale [3]
      sleep 0.5
      play Finale [2]
      sleep 0.5
      play Finale [3]
      sleep 0.5
      play Finale [4]
      sleep 0.25
      play Finale [5]
      sleep 0.25
      play Finale [1]
      sleep 0.5
      play Finale [6]
      sleep 0.5
      play Finale [0]
      sleep 0.5
      play Finale [1]
      sleep 0.25
      play Finale [1]
      sleep 0.25
      play Finale [2]
      sleep 0.5
      play Finale [7]
      sleep 0.5
      play Finale [5]
      sleep 1
      play Finale [3]
      sleep 1
      play Finale [0]
      sleep 0.5
      play Finale [1]
      sleep 0.25
      play Finale [2]
      sleep 0.25
      play Finale [3]
      sleep 0.5
      play Finale [2]
      sleep 0.5
      play Finale [3]
      sleep 0.5
      play Finale [5]
      sleep 0.25
      play Finale [7]
      sleep 0.25
      play Finale [3]
      sleep 0.5
      play Finale [6]
      sleep 0.5
      play Finale [0]
      sleep 0.5
      play Finale [1]
      sleep 0.25
      play Finale [2]
      sleep 0.25
      play Finale [3]
      sleep 0.5
      play Finale [0]
      sleep 0.5
      play Finale [8]
      sleep 1
      play Finale [7]
      sleep 1
    end
    4.times do
      12.times do
        sample :ambi_choir, release: 10, amp: z
        sleep 0.25
      end
      z = z + 0.25
      sleep 1
    end
    live_loop :Background do
      use_bpm 190
      sample y
      sleep 0.5
      sample y
      sleep 0.5
      sample x
      sleep 0.5
      sample y
      sleep 0.5
      sample y
      sleep 0.5
      sample x
      sleep 0.5
      sample y
      sleep 0.5
      sample x
      sleep 0.5
    end
  end
end
