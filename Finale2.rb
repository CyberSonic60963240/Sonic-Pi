# NAME OF SONG: "Finale" by Toby Fox
# SHEET MUSIC: N/A (Done By Ear!)
# BPM USED: 95bpm
use_bpm 95
x = :drum_snare_hard # Any sample set to the variable "x" will play the "drum_snare_hard" sample.
y = :drum_bass_soft # Any sample set to the variable "y" will play the "drum_bass_soft" sample.
z = 0.25 # Anything set to the variable "z" will be set to one quarter of a beat.
# The code below will change the sound effects to those reminiscent of the classic film "Blade Runner".
use_synth :blade
# The code below will label the notes in numerical order, starting from 0, and will play the note whose number value matches the one in brackets just after the codename that the list is given (which, in this case, is "Finale") when the command is "play"ed.
Finale = [80, 82, 84, 86, 87, 88, 75, 90, 78]
# The code below will set the variable "i" to 1, so it can be used in place of a numbered note to produce a note equal to that which its value is set to.
i = 1
with_fx :distortion, amp: 5  do
  play Finale[0]
  sleep 0.5
  # The code below will change the value of "i" using addition, which will turn the note from 82 to 84 to 86 as it changes the value of "i" from 1 to 2 to 3, respectfully.
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
live_loop :Complete_Melody do
  # The "use_synth_defaults" code will enable modifiers such as "cutoff" and "amp" to be applied to full loops at one time, instead of just single notes. The "cutoff" filter sets the range of high frequencies to be omitted from the note/loop.
  use_synth_defaults cutoff: rrand(100,130)
  play Finale[0]
  sleep 0.5
  2.times do
    play Finale[i]
    sleep 0.25
    i = i + 1
  end
  play Finale[3]
  sleep 0.5
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
4.times do
  12.times do
    sample :ambi_choir, release: 10, amp: z
    sleep 0.25
  end
  z = z + 0.25
  sleep 1
end
live_loop :Background do
  use_bpm 190 # In addition to a universal "bpm" value, a custom value for a single loop can also be made by placing the "use_bpm x" code within the loop's code.
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
