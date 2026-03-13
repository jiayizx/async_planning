(define (domain blanket_knitting)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
    (step6_pending) (step6_done)
    (step7_pending) (step7_done)
    (step8_pending) (step8_done)
    (step9_pending) (step9_done)
    (step10_pending) (step10_done)
  )

  (:durative-action choose_pattern_yarn
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action wind_yarn
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action knit_body
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (step3_pending)) (at start (step4_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action cast_on
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step4_pending)) (at start (step6_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action weave_ends
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step5_pending)) (at start (step7_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action swatch_gauge
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step6_pending)) (at start (step1_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action knit_border
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step7_pending)) (at start (step2_done)) (at start (step9_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action wash_blanket
    :parameters ()
    :duration (= ?duration 2400)
    :condition (at start (step8_pending))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action organize_needles
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step9_pending))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action block_dry
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step10_pending)) (at start (step8_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )
)