(define (domain make_freezer_sweet_cherry_pie_filling)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step1_pending)
    (step2_pending)
    (step3_pending)
    (step4_pending)
    (step5_pending)
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
    (step5_done)
    (layer_done)
    (thaw_done)
    (unwrap_done)
    (top_added)
    (pie_ready)
  )

  ;; Step 1: Layer crust in a pie plate. 10 minutes = 600 seconds
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step1_pending))
    :effect (and
      (at start (not (step1_pending)))
      (at end (step1_done))
      (at end (layer_done))
    )
  )

  ;; Step 2: Thaw freezer bag stored filling and add it to the pie plate. 30 minutes = 1800 seconds
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (and (step2_pending) (layer_done)))
    :effect (and
      (at start (not (step2_pending)))
      (at end (step2_done))
      (at end (thaw_done))
    )
  )

  ;; Step 3: Unwrap the filling and place it in the pie plate. 10 minutes = 600 seconds
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step3_pending) (layer_done)))
    :effect (and
      (at start (not (step3_pending)))
      (at end (step3_done))
      (at end (unwrap_done))
    )
  )

  ;; Step 4: Add the top crust. 5 minutes = 300 seconds
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step4_pending) (thaw_done) (unwrap_done)))
    :effect (and
      (at start (not (step4_pending)))
      (at end (step4_done))
      (at end (top_added))
    )
  )

  ;; Step 5: Bake the pie for about an hour. 60 minutes = 3600 seconds
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step5_pending) (top_added)))
    :effect (and
      (at start (not (step5_pending)))
      (at end (step5_done))
      (at end (pie_ready))
    )
  )
)
