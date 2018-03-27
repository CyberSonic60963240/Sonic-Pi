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
