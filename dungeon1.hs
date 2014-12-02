import Euterpea

mel1 :: Music Pitch
mel1 = let first = (a 4 en :+: cs 4 en :+: ds 4 en :+: fs 4 en) :=: a 3 hn 
           second = (af 4 en :+: cs 4 en :+: ds 4 en :+: fs 4 en) :=: af 3 hn 
       in first :+: first :+: first :+: first
          :+: second :+: second :+: second :+: second

mel2 :: Music Pitch
mel2 = let first = (fs 4 en :+: af 4 en :+: a 4 en :+: cs 4 en) :=: fs 3 hn
           second = (g 4 en :+: b 4 en :+: cs 4 en :+: d 4 en) :=: g 3 hn
           third = (g 4 en :+: a 4 en :+: cs 4 en :+: d 4 en) :=: g 3 hn
       in first :+: first :+: first :+: first
          :+: second :+: third :+: second :+: third

main = play (mel1 :+: mel1 :+: mel2 :+: mel2)