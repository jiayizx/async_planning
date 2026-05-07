(define (domain corn-soup)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (saute_done)
    (simmer_done)
    (shuck_done)
    (prep_done)
    (blend_done)
  )

  (:durative-action do_step1
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step1)) (at start (prep_done)))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (saute_done))
            )
  )

  (:durative-action do_step2
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step2)) (at start (saute_done)) (at start (shuck_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (simmer_done))
            )
  )

  (:durative-action do_step3
    :duration (= ?duration 240)
    :condition (at start (step_pending step3))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (shuck_done))
            )
  )

  (:durative-action do_step4
    :duration (= ?duration 600)
    :condition (at start (step_pending step4))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (prep_done))
            )
  )

  (:durative-action do_step5
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step5)) (at start (simmer_done)) (at start (shuck_done)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (blend_done))
            )
  )
)
