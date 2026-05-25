(define (domain try_new_tea)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
    (s6_done)
    (s7_done)
    (s8_done)
    (s9_done)
    (s10_done)
  )

  (:durative-action do_step1_steep
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_done))
    )
  )

  (:durative-action do_step2_compost
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step2)) (at start (s8_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_done))
    )
  )

  (:durative-action do_step3_research
    :duration (= ?duration 1800)
    :condition (at start (step_pending step3))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_done))
    )
  )

  (:durative-action do_step4_order_kettle
    :duration (= ?duration 600)
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (s4_done))
    )
  )

  (:durative-action do_step5_pour
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step5)) (at start (s1_done)) (at start (s3_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (s5_done))
    )
  )

  (:durative-action do_step6_select_mug
    :duration (= ?duration 60)
    :condition (at start (step_pending step6))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (s6_done))
    )
  )

  (:durative-action do_step7_visit_shop
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step7)) (at start (s3_done)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (s7_done))
    )
  )

  (:durative-action do_step8_wait_delivery
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step8)) (at start (s4_done)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (s8_done))
    )
  )

  (:durative-action do_step9_boil
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step9)) (at start (s3_done)) (at start (s7_done)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (s9_done))
    )
  )

  (:durative-action do_step10_sip
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step10)) (at start (s3_done)) (at start (s6_done)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (s10_done))
    )
  )
)
