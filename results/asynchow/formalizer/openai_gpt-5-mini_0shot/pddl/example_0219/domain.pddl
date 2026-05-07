(define (domain walk-swamp)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
    (step5_done)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 300)  ; 5 minutes = 300 seconds
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (step1_done))
            )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 600)  ; 10 minutes = 600 seconds
    :condition (and (at start (step_pending step2)) (at start (step1_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (step2_done))
            )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 120)  ; 2 minutes = 120 seconds
    :condition (at start (step_pending step3))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (step3_done))
            )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 180)  ; 3 minutes = 180 seconds
    :condition (at start (step_pending step4))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (step4_done))
            )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 60)   ; 1 minute = 60 seconds
    :condition (at start (step_pending step5))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (step5_done))
            )
  )
)
