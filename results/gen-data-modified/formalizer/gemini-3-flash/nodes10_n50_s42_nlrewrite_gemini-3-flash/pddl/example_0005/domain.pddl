(define (domain wear_gloves_to_bed)
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

  (:durative-action apply_cream
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step1_pending)) (at start (step10_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action locate_gloves
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action check_gloves
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step3_pending)) (at start (step2_done)) (at start (step7_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action change_pajamas
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step4_pending))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action climb_under_covers
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step5_pending)) (at start (step9_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action set_alarm
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step6_pending)) (at start (step4_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action wash_hands
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step7_pending))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action pull_on_gloves
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step8_pending)) (at start (step1_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action turn_off_lights
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (step9_pending))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action bring_gloves_to_bedside
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step10_pending)) (at start (step2_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )
)