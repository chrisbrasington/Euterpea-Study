import Euterpea

mel1 :: Music Pitch
mel1 = let first = (a 3 en :+: cs 4 en :+: ds 4 en :+: fs 4 en) :=: a 2 hn 
           second = (af 3 en :+: cs 4 en :+: ds 4 en :+: fs 4 en) :=: af 2 hn 
       in first :+: first :+: first :+: first
          :+: second :+: second :+: second :+: second

mel2 :: Music Pitch
mel2 = let first = (fs 3 en :+: af 4 en :+: a 4 en :+: cs 4 en) :=: fs 2 hn
           second = (g 3 en :+: b 4 en :+: cs 4 en :+: d 4 en) :=: g 2 hn
           third = (g 3 en :+: a 4 en :+: cs 4 en :+: d 4 en) :=: g 2 hn
       in first :+: first :+: first :+: first
          :+: second :+: third :+: second :+: third

main = play (mel1 :+: mel1 :+: mel2 :+: mel2)