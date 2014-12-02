import Euterpea

mel1 :: Music Pitch
mel1 = let 
           chord1 = (a 3 hn :=: a 5 hn :=: e 4 hn )
           chord2 = (af 3 hn :=: af 5 hn :=: ef 4 hn)
           first = (a 4 en :+: cs 4 en :+: ds 4 en :+: fs 4 en) :=: chord1
           second = (af 4 en :+: cs 4 en :+: ds 4 en :+: fs 4 en) :=: chord2
       in first :+: first :+: first :+: first
          :+: second :+: second :+: second :+: second

mel2 :: Music Pitch
mel2 = let 
           chord1 = (fs 3 hn :=: fs 4 hn :=: cs 4 hn)
           chord2 = (g 3 hn :=: g 4 hn :=: d 4 hn)
           first = (fs 4 en :+: af 4 en :+: a 4 en :+: cs 4 en) :=: chord1
           second = (g 4 en :+: b 4 en :+: cs 4 en :+: d 4 en) :=: chord2
           third = (g 4 en :+: a 4 en :+: cs 4 en :+: d 4 en) :=: chord2
       in first :+: first :+: first :+: first
          :+: second :+: third :+: second :+: third

main = play (mel1 :+: mel1 :+: mel2 :+: mel2)