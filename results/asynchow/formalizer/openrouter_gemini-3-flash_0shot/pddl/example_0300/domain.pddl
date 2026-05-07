(define (domain dishwasher_repair)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step1_pending)
    (step2_pending)
    (step3_pending)
    (step4_pending)
    (step5_pending)
    (step6_pending)
    (step7_pending)
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
    (step5_done)
    (step6_done)
    (step7_done)
  )

  (:durative-action purchase_pump
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action cut_power_water
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action remove_dishwasher
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step4_pending)) (at start (step2_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action disconnect_wires_lines
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step3_pending)) (at start (step4_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action disconnect_old_pump
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step5_pending)) (at start (step3_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action install_new_pump
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step6_pending)) (at start (step1_done)) (at start (step5_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action reconnect_dishwasher
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step7_pending)) (at start (step6_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )
)