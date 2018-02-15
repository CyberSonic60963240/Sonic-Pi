# NAME OF SONG: "Finale" by Toby Fox
# SHEET MUSIC: N/A (Done By Ear!)
# BPM USED: 95bpm (Default)
use_bpm 95
x = :drum_snare_hard
y = :drum_bass_soft
z = 0.25
Finale = [80, 82, 84, 86, 87, 88, 75, 90, 78]
Index = 1
with_fx :distortion, amp: 5  do
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