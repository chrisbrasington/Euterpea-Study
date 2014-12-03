import Euterpea

-- tempo
t = (3/2)

mel1a :: Music Pitch
mel1a = let 
          first = a 3 qn :+: c 4 qn :+: f 4 dwn 
          second = g 3 qn :+: b 3 qn :+: e 4 dwn 
       in first :+: second 

mel2a :: Music Pitch
mel2a = let 
          first = rest hn :+: a 4 qn :+: c 5 qn :+: f 5 dwn 
          second = e 5 qn :+: b 4 qn :+: g 4 wn
       in first :+: second 

mel2b :: Music Pitch
mel2b = let 
          first = rest dhn :+: a 4 qn :+: c 5 qn :+: f 5 qn 
          second = e 5 qn :+: b 4 qn :+: g 4 dwn
       in first :+: second 

melody = 
    ((mel1a :=: mel2a) :+: (mel1a :=: mel2b))

-- play the melody twice
main = play 
  (
  tempo(t)
    (
    melody :+: melody
    )
  )