(define (domain beerbox-tophat)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
  )

  ;; Action for Step 1: create the top of the hat (10 minutes = 600 seconds)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (s1_done))
            )
  )

  ;; Action for Step 2: create the brim (5 minutes = 300 seconds)
  ;; Requires completion of Step 1 (s1_done becomes true at end of do_step1)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step2)) (at start (s1_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (s2_done))
            )
  )

  ;; Action for Step 3: create the body of the hat (15 minutes = 900 seconds)
  ;; No ordering constraints with other steps
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step3))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (s3_done))
            )
  )
)
