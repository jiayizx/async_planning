(define (domain cook-buttercup-squash)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (preheated)
    (seeds_removed)
    (filling_mixed)
    (baked)
  )

  (:durative-action do_preheat_oven
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (preheated))
            )
  )

  (:durative-action do_scoop_seeds
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (seeds_removed))
            )
  )

  (:durative-action do_combine_filling
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step3))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (filling_mixed))
            )
  )

  (:durative-action do_bake
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and
                 (at start (step_pending step4))
                 (at start (preheated))
                 (at start (seeds_removed))
                 (at start (filling_mixed))
               )
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (baked))
            )
  )
)
