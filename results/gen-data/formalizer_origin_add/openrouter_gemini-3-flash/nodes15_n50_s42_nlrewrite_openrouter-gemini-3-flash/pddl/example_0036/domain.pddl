(define (domain lox_preparation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
    (step5_done)
    (step6_done)
    (step7_done)
    (step8_done)
    (step9_done)
    (step10_done)
    (step11_done)
    (step12_done)
    (step13_done)
    (step14_done)
    (step15_done)
  )

  (:durative-action slice_fish
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step5_done)) (at start (step13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step1_done)))
  )

  (:durative-action buy_salmon
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step2_done)))
  )

  (:durative-action rub_mixture
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (step8_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step3_done)))
  )

  (:durative-action weigh_fish
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step4_done)))
  )

  (:durative-action remove_bones
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (step2_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step5_done)))
  )

  (:durative-action toast_bagels
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (step7_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step6_done)))
  )

  (:durative-action buy_bagels
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step7_done)))
  )

  (:durative-action mix_seasoning
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step8_done)))
  )

  (:durative-action clear_fridge
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step9_done)))
  )

  (:durative-action line_dish
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step10_done)))
  )

  (:durative-action rinse_salmon
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (step2_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step11_done)))
  )

  (:durative-action place_in_dish
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (step10_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step12_done)))
  )

  (:durative-action cure_in_fridge
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (step9_done)) (at start (step15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step13_done)))
  )

  (:durative-action prepare_garnish
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (step2_done)) (at start (step9_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step14_done)))
  )

  (:durative-action wrap_fish
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step3_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step15_done)))
  )
)