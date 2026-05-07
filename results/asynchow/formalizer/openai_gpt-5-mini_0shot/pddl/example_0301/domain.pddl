(define (domain iron_shirt)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
    (towels_ready)
  )

  ;; Step 1: Begin with a clean, high quality iron. (5 minutes = 300 seconds)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (s1_done))
            )
  )

  ;; Step 2: Fill the water chamber in the iron with distilled water. (1 minute = 60 seconds)
  ;; Requires completion of step1
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step2)) (at start (s1_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (s2_done))
            )
  )

  ;; Step 3: Adjust the height of the ironing board to your waist level. (2 minutes = 120 seconds)
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step3))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (s3_done))
            )
  )

  ;; Step 4: Have a place to hang your item. (1 minute = 60 seconds)
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step4))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (s4_done))
            )
  )

  ;; Step 5: Get a hand towel or two. (3 minutes = 180 seconds)
  ;; Produces the final semantic predicate towels_ready
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step5))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (s5_done))
              (at end (towels_ready))
            )
  )
)
