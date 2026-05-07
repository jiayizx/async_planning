(define (problem turn_on_computer_prob)
  (:domain turn_on_computer)

  (:init
    (pending1)
    (pending2)
    (pending3)
    (pending4)
    (pending5)
    (pending6)
  )

  (:goal (and
    (done1)
    (done2)
    (done3)
    (done4)
    (done5)
    (done6)
    (system_on)
  ))
)
