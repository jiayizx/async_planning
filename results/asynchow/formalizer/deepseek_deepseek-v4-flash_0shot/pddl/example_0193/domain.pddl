(define (domain cure_rash)
  (:requirements :durative-actions :typing)
  (:predicates
    (step_pending1)
    (step_pending2)
    (step_pending3)
    (step_pending4)
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
    (rash_cured)
  )
  (:durative-action do_step1
    :duration 3600
    :condition (at start (step_pending1))
    :effect (and
      (at start (not (step_pending1)))
      (at end (step1_done))
    )
  )
  (:durative-action do_step2
    :duration 300
    :condition (and
      (at start (step_pending2))
      (at start (step1_done))
    )
    :effect (and
      (at start (not (step_pending2)))
      (at end (step2_done))
    )
  )
  (:durative-action do_step3
    :duration 1800
    :condition (and
      (at start (step_pending3))
      (at start (step1_done))
    )
    :effect (and
      (at start (not (step_pending3)))
      (at end (step3_done))
    )
  )
  (:durative-action do_step4
    :duration 604800
    :condition (and
      (at start (step_pending4))
      (at start (step1_done))
    )
    :effect (and
      (at start (not (step_pending4)))
      (at end (step4_done))
      (at end (rash_cured))
    )
  )
)