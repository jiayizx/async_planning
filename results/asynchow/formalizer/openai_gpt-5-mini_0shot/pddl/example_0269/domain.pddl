(define (domain make-marshmallow-desserts)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (melted_done)
    (pattern_done)
    (dessert_ready)
  )

  ;; Step 1: Melt the chocolate (produces melted_done)
  (:durative-action do_step1_melt_chocolate
    :parameters ()
    :duration (= ?duration 2)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (melted_done))
            )
  )

  ;; Step 2: Put strawberries and marshmallows on the kebab in a pattern (produces pattern_done)
  (:durative-action do_step2_make_pattern
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (pattern_done))
            )
  )

  ;; Step 3: Drizzle chocolate onto the kebabs (requires step1 and step2 done; produces dessert_ready)
  (:durative-action do_step3_drizzle_chocolate
    :parameters ()
    :duration (= ?duration 1)
    :condition (and
                 (at start (step_pending step3))
                 (at start (melted_done))
                 (at start (pattern_done))
               )
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (dessert_ready))
            )
  )
)
