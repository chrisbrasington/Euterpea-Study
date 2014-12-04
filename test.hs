import Euterpea

mel1 :: Music Pitch
mel1 = let 
           chord1 = (a 3 wn :=: a 5 wn :=: e 4 wn )
           chord2 = (c 4 wn :=: c 5 wn :=: g 4 wn)
           chord3 = (g 3 wn :=: g 5 wn :=: d 4 wn )
           chord3b = (g 3 hn :=: g 5 hn :=: d 4 hn )
           chord4 = (gs 3 hn :=: gs 5 hn :=: ds 4 hn )
       in chord1 :+: chord2 :+: chord3 :+: chord3b :+: chord4

main = play 
  (
  	instrument Cello
    (mel1 :+: mel1)
  )