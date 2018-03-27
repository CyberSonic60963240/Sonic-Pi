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
