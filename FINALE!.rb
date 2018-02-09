# NAME OF SONG: "Finale" by Toby Fox
# SHEET MUSIC: N/A (Done By Ear!)
# BPM USED: 95bpm (Default)
use_bpm 95
x = :drum_snare_hard
y = :drum_bass_soft
z = 0.25
with_fx :distortion, amp: 5  do
  1.times do
    play 80
    sleep 0.5
    play 82
    sleep 0.25
    play 84
    sleep 0.25
    play 86
    sleep 0.5
    play 84
    sleep 0.5
    play 86
    sleep 0.5
    play 87
    sleep 0.25
    play 88
    sleep 0.25
    play 82
    sleep 0.5
    play 75
    sleep 0.5
    play 80
    sleep 0.5
    play 82
    sleep 0.25
    play 84
    sleep 0.25
    play 86
    sleep 0.5
    play 90
    sleep 0.5
    play 88
    sleep 1
    play 86
    sleep 1
    play 80
    sleep 0.5
    play 82
    sleep 0.25
    play 84
    sleep 0.25
    play 86
    sleep 0.5
    play 84
    sleep 0.5
    play 86
    sleep 0.5
    play 88
    sleep 0.25
    play 90
    sleep 0.25
    play 86
    sleep 0.5
    play 75
    sleep 0.5
    play 80
    sleep 0.5
    play 82
    sleep 0.25
    play 84
    sleep 0.25
    play 86
    sleep 0.5
    play 80
    sleep 0.5
    play 78
    sleep 1
    play 90
    sleep 1
  end
  
  live_loop :Complete_Melody do
    play 80
    sleep 0.5
    play 82
    sleep 0.25
    play 84
    sleep 0.25
    play 86
    sleep 0.5
    play 84
    sleep 0.5
    play 86
    sleep 0.5
    play 87
    sleep 0.25
    play 88
    sleep 0.25
    play 82
    sleep 0.5
    play 75
    sleep 0.5
    play 80
    sleep 0.5
    play 82
    sleep 0.25
    play 84
    sleep 0.25
    play 86
    sleep 0.5
    play 90
    sleep 0.5
    play 88
    sleep 1
    play 86
    sleep 1
    play 80
    sleep 0.5
    play 82
    sleep 0.25
    play 84
    sleep 0.25
    play 86
    sleep 0.5
    play 84
    sleep 0.5
    play 86
    sleep 0.5
    play 88
    sleep 0.25
    play 90
    sleep 0.25
    play 86
    sleep 0.5
    play 75
    sleep 0.5
    play 80
    sleep 0.5
    play 82
    sleep 0.25
    play 84
    sleep 0.25
    play 86
    sleep 0.5
    play 80
    sleep 0.5
    play 78
    sleep 1
    play 90
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
