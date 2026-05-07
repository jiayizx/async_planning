(define (problem learn-karate-problem)
  (:domain learn-karate)
  (:objects step1 step2 step3 step4 step5 - step)

  (:init
    (pending1)
    (pending2)
    (pending3)
    (pending4)
    (pending5)
  )

  (:goal (and
    (done1)
    (done2)
    (done3)
    (done4)
    (done5)
    (learned_basics)
  ))
)
