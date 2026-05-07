(define (domain fold-towel-butterflies)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_complete)
    (step2_complete)
    (step3_complete)
  )

  (:durative-action do_step1
    :parameters (?d - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (step1_complete))
            )
  )

  (:durative-action do_step2
    :parameters (?d - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (step2_complete))
            )
  )

  (:durative-action do_step3
    :parameters (?d - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step3)) (at start (step1_complete)) (at start (step2_complete)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (step3_complete))
            )
  )
)
