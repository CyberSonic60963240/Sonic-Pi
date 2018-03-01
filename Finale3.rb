# NAME OF SONG: "Finale" by Toby Fox
# SHEET MUSIC: N/A (Done By Ear!)
# BPM USED: 95bpm
use_bpm 95
x = :drum_snare_hard
y = :drum_bass_soft
z = 0.25
memory = "C:/Users/Gregory_Cowgill/Desktop/MEMORIES.wav"
use_synth :blade
Finale = [80, 82, 84, 86, 87, 88, 75, 90, 78]
i = 1
define :asriel do
  play Finale[0]
  sleep 0.5
  #The code below will change the value of "i" using addition, which will turn the note from 82 to 84 to 86 as it changes the value of "i" from 1 to 2 to 3, respectfully.
  3.times do
    play Finale[i]
    sleep 0.25
    i = i + 1
  end
  sleep 0.25
  play Finale[2]
  sleep 0.5
  play Finale[3]
  sleep 0.5
  play Finale[4]
  sleep 0.25
  play Finale[5]
  sleep 0.25
  play Finale[1]
  sleep 0.5
  play Finale[6]
  sleep 0.5
  play Finale[0]
  sleep 0.5
  play Finale[1]
  sleep 0.25
  play Finale[1]
  sleep 0.25
  play Finale[2]
  sleep 0.5
  play Finale[7]
  sleep 0.5
  play Finale[5]
  sleep 1
  play Finale[3]
  sleep 1
  play Finale[0]
  sleep 0.5
  play Finale[1]
  sleep 0.25
  play Finale[2]
  sleep 0.25
  play Finale[3]
  sleep 0.5
  play Finale[2]
  sleep 0.5
  play Finale[3]
  sleep 0.5
  play Finale[5]
  sleep 0.25
  play Finale[7]
  sleep 0.25
  play Finale[3]
  sleep 0.5
  play Finale[6]
  sleep 0.5
  play Finale[0]
  sleep 0.5
  play Finale[1]
  sleep 0.25
  play Finale[2]
  sleep 0.25
  play Finale[3]
  sleep 0.5
  play Finale[0]
  sleep 0.5
  play Finale[8]
  sleep 1
  play Finale[7]
  sleep 1
end
with_fx :distortion, amp: 5  do
  asriel
end
live_loop :Complete_Melody do
  use_synth_defaults cutoff: rrand(100,130)
  asriel
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
  cue :derp
  2.times do
    sample y
    sleep 0.5
    sample y
    sleep 0.5
    sample x
    sleep 0.5
  end
  sample y
  sleep 0.5
  sample x
  sleep 0.5
end
# The "cue" and "sync" codes from GitHub user "hzulla": https://github.com/samaaron/sonic-pi/blob/master/etc/doc/tutorial/05.7-Thread-Synchronisation.md.
live_loop :Custom_Sample do
  sync :derp
  sample memory, rate: 1.25, amp: 4
  sleep 7.75
end