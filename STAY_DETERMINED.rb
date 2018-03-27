# Name of Song: "Bring It On" by NyxTheShield
use_bpm 124.245
# Sheet Music: https://musescore.com/user/19819061/scores/3869671
slice = "C:/Users/Gregory_Cowgill/Desktop/drive-download-20180326T213128Z-001/slice.wav"
ouch = "C:/Users/Gregory_Cowgill/Desktop/drive-download-20180326T213128Z-001/ouch!.wav"
lead_beeps = [:g3, :a4, :b4, :c5]
x = 1
y = 0.25
z = :drum_cymbal_hard
a = :drum_bass_hard
b = :drum_snare_hard
Notes = [:e5]
use_synth :beep
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
  y = y + 0.05
end
live_loop :purKUSH do
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