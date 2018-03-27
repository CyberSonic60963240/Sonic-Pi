
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