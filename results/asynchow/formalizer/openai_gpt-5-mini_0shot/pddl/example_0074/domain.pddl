(define (domain turn_on_computer)
  (:requirements :typing :durative-actions)
  (:types)

  (:predicates
    (pending1)
    (pending2)
    (pending3)
    (pending4)
    (pending5)
    (pending6)
    (done1)
    (done2)
    (done3)
    (done4)
    (done5)
    (done6)
    (system_on)
  )

  (:durative-action do_step1
    :duration (= ?duration 45)
    :condition (at start (pending1))
    :effect (and
              (at start (not (pending1)))
              (at end (done1))
            )
  )

  (:durative-action do_step2
    :duration (= ?duration 30)
    :condition (and (at start (pending2)) (at start (done1)))
    :effect (and
              (at start (not (pending2)))
              (at end (done2))
            )
  )

  (:durative-action do_step3
    :duration (= ?duration 15)
    :condition (and (at start (pending3)) (at start (done2)))
    :effect (and
              (at start (not (pending3)))
              (at end (done3))
            )
  )

  (:durative-action do_step4
    :duration (= ?duration 15)
    :condition (and (at start (pending4)) (at start (done2)))
    :effect (and
              (at start (not (pending4)))
              (at end (done4))
            )
  )

  (:durative-action do_step5
    :duration (= ?duration 10)
    :condition (and (at start (pending5)) (at start (done3)))
    :effect (and
              (at start (not (pending5)))
              (at end (done5))
              (at end (system_on))
            )
  )

  (:durative-action do_step6
    :duration (= ?duration 10)
    :condition (and (at start (pending6)) (at start (done4)))
    :effect (and
              (at start (not (pending6)))
              (at end (done6))
            )
  )
)
