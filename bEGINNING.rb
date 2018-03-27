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
