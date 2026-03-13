(define (domain manx_cat_care)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending)
    (step1_done)
    (step2_pending)
    (step2_done)
    (step3_pending)
    (step3_done)
    (step4_pending)
    (step4_done)
    (step5_pending)
    (step5_done)
  )

  (:durative-action research_genetics
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action purchase_supplies
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step2_pending)) (at start (step1_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action setup_recovery_area
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step3_pending))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action feed_and_brush
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step4_pending)) (at start (step2_done)) (at start (step5_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action veterinary_exam
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step5_pending)) (at start (step3_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )
)