#Beginning
use_bpm 95
z = 0.05
laugh = "C:/Users/Gregory_Cowgill/Desktop/drive-download-20180327T152325Z-001/MEGA_LOLZ.wav"

1.times do
  play :b4
  sleep 2
  play :a5
  sleep 2
  play :f5
  sleep 4
  play :g4
  sleep 2
  play :a5
  sleep 2
  play :b4
  sleep 4
  play :b4
  sleep 2
  play :d5
  sleep 2
  play :b5
  sleep 3
  play :f5
  sleep 1
  play :c5
  sleep 2
  play :b4
  sleep 2
  play :a4
  sleep 4
end
sample laugh, amp: 50
live_loop :OPAT do
  with_fx :echo do
    play :b4, amp: 10
    sleep 2
    play :a5, amp: 10
    sleep 2
    play :f5, amp: 10
    sleep 4
    play :g4, amp: 10
    sleep 2
    play :a5, amp: 10
    sleep 2
    play :b4, amp: 10
    sleep 4
    play :b4, amp: 10
    sleep 2
    play :d5, amp: 10
    sleep 2
    play :b5, amp: 10
    sleep 3
    play :f5, amp: 10
    sleep 1
    play :c5, amp: 10
    sleep 2
    play :b4, amp: 10
    sleep 2
    play :a4, amp: 10
    sleep 4
  end
end
define :mercy do |d, pt, b|
  use_bpm 95
  sample d, amp: z
  sample d, amp: z
  sample d, amp: z
  sleep b
  sample pt, amp: z
  sleep b
  z = z + 0.25
end
60.times do
  mercy :drum_heavy_kick, :sn_dub, 0.25
  z = z + 0.05
end

=begin
# NAME OF SONG: "Your Best Friend"/"Finale" by Toby Fox
# SHEET MUSIC: N/A (Done By Ear!)
# BPM USED: 95bpm
use_bpm 95
x = :drum_snare_hard # Any sample set to the variable "x" will play the "drum_snare_hard" sample.
y = :drum_bass_soft # Any sample set to the variable "y" will play the "drum_bass_soft" sample.
z = 0.25 # Anything set to the variable "z" will be set to one quarter of a beat.
hurt = "C:/Users/Gregory_Cowgill/Desktop/hurt.wav"
memory = "C:/Users/Gregory_Cowgill/Desktop/MEMORIES.wav" # Everywhere "memory" appears, the sound mapped to this url will play.
# The code below will change the sound effects to those reminiscent of the classic film "Blade Runner".
use_synth :blade
# The code below will label the notes in numerical order, starting from 0, and will play the note whose number value matches the one in brackets just after the codename that the list is given (which, in this case, is "Finale") when the command is "play"ed.
Finale = [80, 82, 84, 86, 87, 88, 75, 90, 78]
# The code below will set the variable "i" to 1, so it can be used in place of a numbered note to produce a note equal to that which its value is set to.
i = 1
define :mercy do |d, pt, b|
  sample d
  sample d
  sample d
  sleep b
  sample pt
  sleep b
end
4.times do
  mercy :drum_heavy_kick, :sn_dub, 0.25
  z = z + 0.25
end
25.times do
  use_synth :cnoise
  play 1
  sleep 0.1
end
define :asriel do # The code below will set "asriel" as a function, which is somewhat like a variable, except a whole string of code can be mapped to it as opposed to a single note; as such, when "asriel" is put into code, the code strand connected to it will play in full.
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
  sample hurt
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
  sample hurt
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
  sample hurt
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
  sample hurt
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
  sample hurt
  sleep 1
  play Finale[7]
  sleep 1
end
use_synth :chiplead
with_fx :distortion, amp: 5  do
  asriel # The entirety of the code mapped to "asriel" above will play here; this is a great way to eliminate repetitive code.
end
live_loop :Complete_Melody do
  # The "use_synth_defaults" code will enable modifiers such as "cutoff" and "amp" to be applied to full loops at one time, instead of just single notes. The "cutoff" filter sets the range of high frequencies to be omitted from the note/loop.
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
live_loop :frisk do
  mercy :drum_heavy_kick, :sn_dub, 0.25
end
live_loop :Background do
  use_bpm 190 # In addition to a universal "bpm" value, a custom value for a single loop can also be made by placing the "use_bpm x" code within the loop's code.
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
=end

=begin
# Intermission/Transition
use_bpm 123.65
snap = "C:/Users/Gregory_Cowgill/Desktop/drive-download-20180326T213128Z-001/snap.wav"
refuse = "C:/Users/Gregory_Cowgill/Desktop/Undertale/FreeFall.wav"
healthup = "C:/Users/Gregory_Cowgill/Desktop/drive-download-20180326T213128Z-001/healthup.wav"
x = 1
sample snap, amp: 40.5
sleep 1
use_synth :dark_ambience
4.times do
  with_fx :echo do
    play :e5, amp: x
    sleep 0.65
    play :e5, amp: x
    sleep 0.35
    play :b5, amp: x
    sleep 0.35
    play :a5, amp: x
    sleep 0.35
    play :g5, amp: x
    sleep 0.35
    play :e5, amp: x
    sleep 0.35
    play :f5, amp: x
    sleep 0.65
    play :f5, amp: x
    sleep 0.65
    play :f5, amp: x
    sleep 0.35
    play :c6, amp: x
    sleep 0.35
    play :b5, amp: x
    sleep 0.35
    play :a5, amp: x
    sleep 0.35
    play :g5, amp: x
    sleep 0.35
    play :g5, amp: x
    sleep 0.65
    play :g5, amp: x
    sleep 0.35
    play :c6, amp: x
    sleep 0.35
    play :b5, amp: x
    sleep 0.35
    play :a5, amp: x
    sleep 0.35
    play :f5, amp: x
    sleep 0.35
    play :g5, amp: x
    sleep 0.35
    play :g5, amp: x
    sleep 0.35
    play :g5, amp: x
    sleep 0.35
    play :g5, amp: x
    sleep 0.35
    play :d6, amp: x
    sleep 0.35
    play :c6, amp: x
    sleep 0.35
    play :g5, amp: x
    sleep 0.35
    play :a5, amp: x
    sleep 0.35
    play :f5, amp: x
    sleep 0.35
    x = x * 3

  end
end
sample snap, amp: 81
sleep 0.5
sample healthup, amp: 81
sleep 1
sample refuse, amp: 81
=end

=begin
# Name of Song: "Bring It On" by NyxTheShield
use_bpm 124.245
# Sheet Music: https://musescore.com/user/19819061/scores/3869671
slice = "C:/Users/Gregory_Cowgill/Desktop/drive-download-20180326T213128Z-001/slice.wav"
ouch = "C:/Users/Gregory_Cowgill/Desktop/drive-download-20180326T213128Z-001/ouch!.wav"
# The code below will label the notes in numerical order, starting from 0, and will play the note whose number value matches the one in brackets just after the codename that the list is given (which, in this case, is "lead_beeps") when the command is "play"ed.
lead_beeps = [:g3, :a4, :b4, :c5]
x = 1 # Any value marked with the variable "x" will be set to "1".
y = 0.25 # Any value marked with the variable "y" will be set to "0.25".
z = :drum_cymbal_hard # Anything set to the variable "z" will play the "drum_cymbal_hard" sample.
a = :drum_bass_hard # Anything set to the variable "a" will play the "drum_bass_hard" sample.
b = :drum_snare_hard # Anything set to the variable "z" will play the "drum_snare_hard" sample.
# The code below will label the notes in numerical order, starting from 0, and will play the note whose number value matches the one in brackets just after the codename that the list is given (which, in this case, is "Notes") when the command is "play"ed.
Notes = [:e5]
# The code below will change the sound effects to the default set of sounds, which comes from the "beep" synth.
use_synth :beep
# The code below will set "main" as a function, which is somewhat like a variable, except a whole string of code can be mapped to it as opposed to a single note; as such, when "main" is put into code, the code strand connected to it will play in full.
define :main do
  play Notes[0]
  sleep 0.65
  play Notes[0]
  sleep 0.35
  play :b5
  sleep 0.35
  play :a5
  sleep 0.35
  play :g5
  sleep 0.35
  play :e5
  sleep 0.35
  play :f5
  sleep 0.65
  play :f5
  sleep 0.65
  play :f5
  sleep 0.35
  play :c6
  sleep 0.35
  play :b5
  sleep 0.35
  play :a5
  sleep 0.35
  play :g5
  sleep 0.35
  play :g5
  sleep 0.65
  play :g5
  sleep 0.35
  play :c6
  sleep 0.35
  play :b5
  sleep 0.35
  play :a5
  sleep 0.35
  play :f5
  sleep 0.35
  play :g5
  sleep 0.35
  play :g5
  sleep 0.35
  play :g5
  sleep 0.35
  play :g5
  sleep 0.35
  play :d6
  sleep 0.35
  play :c6
  sleep 0.35
  play :g5
  sleep 0.35
  play :a5
  sleep 0.35
  play :f5
  sleep 0.35
end
1.times do
  main
end
live_loop :main do
  main
end
define :back do |f, w, d, p, c, r|
  play Notes[0], sustain: x
  sleep 2.25
  play :f3, sustain: x
  sleep 3.2
  play :g3, sustain: x
  sleep 2.55
  play :e2, sustain: x
  play :c4, sustain: x
  sleep 1.5
  play :d3, sustain: x
end

live_loop :! do
  back :e3, :f3, :g3, :e2, :c4, :d3
  sleep 1.5
end
43.times do
  sample z, amp: y
  sleep 0.25
    # The code below will change the value of "y" using addition, which will turn the note from .05 to .1 to .15 and so on.
  y = y + 0.05
end
live_loop :purKUSH do
  # In addition to a universal "bpm" value, a custom value for a single loop can also be made by placing the "use_bpm x" code within the loop's code.
  use_bpm 90
  3.times do
    sample z, amp: 2
    sample a
    sleep 0.5
    sample b
    sleep 0.5
    sample a
    sleep 0.25
    sample a
    sleep 0.25
    sample b
    sleep 0.5
  end
  4.times do
    sample z, amp: 2
    sleep 0.5
  end
end
live_loop :lead do
  play lead_beeps[0]
  sleep 1.5
  play lead_beeps[1]
  sample slice, amp: rrand(1,5)
  sleep 1.25
  play lead_beeps[2]
  sleep 1.5
  play lead_beeps[3]
  sample ouch, amp: rrand(1,5)
  sleep 1.25
end
=end

=begin
#ending
use_bpm 60
slice = "C:/Users/Gregory_Cowgill/Desktop/drive-download-20180326T213128Z-001/slice.wav"
ouch = "C:/Users/Gregory_Cowgill/Desktop/drive-download-20180326T213128Z-001/ouch!.wav"
boom = "C:/Users/Gregory_Cowgill/Desktop/drive-download-20180327T152325Z-001/KABOOM.wav"
with_fx :echo do
  sample slice, amp: 10
  sleep 2
  sample ouch, amp: 70
end
sleep 5
sample boom, amp: 100
sleep 6
2.times do
  use_synth :piano
  with_fx :echo do
    play :b4
    sleep 2
    play :a5
    sleep 2
    play :f5
    sleep 4
    play :g4
    sleep 2
    play :a5
    sleep 2
    play :b4
    sleep 4
    play :b4
    sleep 2
    play :d5
    sleep 2
    play :b5
    sleep 3
    play :f5
    sleep 1
    play :c5
    sleep 2
    play :b4
    sleep 2
    play :a4
    sleep 4
  end
end
=end