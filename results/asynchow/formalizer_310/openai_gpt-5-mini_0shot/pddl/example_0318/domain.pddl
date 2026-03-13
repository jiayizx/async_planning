(define (domain bodyfat_tape)
  (:requirements :durative-actions)
  (:predicates
    (s1_pending) (s1_done)
    (s2_pending) (s2_done)
    (s3_pending) (s3_done)
    (s4_pending) (s4_done)
    (s5_pending) (s5_done)
    (s6_pending) (s6_done)
    (s7_pending) (s7_done)
    (s8_pending) (s8_done)
    (s9_pending) (s9_done)
    (s10_pending) (s10_done)
    (s11_pending) (s11_done)
    (s12_pending) (s12_done)
    (s13_pending) (s13_done)
    (s14_pending) (s14_done)
  )

  (:durative-action step1-measure-neck-1
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (s1_pending))
    :effect (and (at start (not (s1_pending))) (at end (s1_done)))
  )

  (:durative-action step2-measure-abdomen
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (s2_pending))
    :effect (and (at start (not (s2_pending))) (at end (s2_done)))
  )

  (:durative-action step3-measure-height-1
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (s3_pending))
    :effect (and (at start (not (s3_pending))) (at end (s3_done)))
  )

  (:durative-action step4-enter-data-inches
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s4_pending)) (at start (s1_done)) (at start (s2_done)) (at start (s3_done)))
    :effect (and (at start (not (s4_pending))) (at end (s4_done)))
  )

  (:durative-action step5-interpret-results-1
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s5_pending)) (at start (s4_done)))
    :effect (and (at start (not (s5_pending))) (at end (s5_done)))
  )

  (:durative-action step6-measure-neck-2
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s6_pending)) (at start (s5_done)))
    :effect (and (at start (not (s6_pending))) (at end (s6_done)))
  )

  (:durative-action step7-measure-waist
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s7_pending)) (at start (s5_done)))
    :effect (and (at start (not (s7_pending))) (at end (s7_done)))
  )

  (:durative-action step8-measure-hips
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s8_pending)) (at start (s5_done)))
    :effect (and (at start (not (s8_pending))) (at end (s8_done)))
  )

  (:durative-action step9-measure-height-2
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s9_pending)) (at start (s5_done)))
    :effect (and (at start (not (s9_pending))) (at end (s9_done)))
  )

  (:durative-action step10-enter-recorded-data-equation
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s10_pending)) (at start (s6_done)) (at start (s7_done)) (at start (s8_done)) (at start (s9_done)))
    :effect (and (at start (not (s10_pending))) (at end (s10_done)))
  )

  (:durative-action step11-interpret-results-2
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s11_pending)) (at start (s10_done)))
    :effect (and (at start (not (s11_pending))) (at end (s11_done)))
  )

  (:durative-action step12-purchase-tape-measure
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s12_pending)) (at start (s11_done)))
    :effect (and (at start (not (s12_pending))) (at end (s12_done)))
  )

  (:durative-action step13-take-measurements-accurately
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s13_pending)) (at start (s12_done)))
    :effect (and (at start (not (s13_pending))) (at end (s13_done)))
  )

  (:durative-action step14-retake-each-measurement-three-times
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (s14_pending)) (at start (s13_done)))
    :effect (and (at start (not (s14_pending))) (at end (s14_done)))
  )
)
