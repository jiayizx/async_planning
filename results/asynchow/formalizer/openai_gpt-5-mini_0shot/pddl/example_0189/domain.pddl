(define (domain wedding_preparation)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step1_pending)
    (step2_pending)
    (step3_pending)
    (step4_pending)
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
    (plan_flowers_done)
    (choose_food_done)
    (decide_wear_done)
    (get_partner_opinion_done)
  )

  (:durative-action do_plan_flowers
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step1_pending)) (at start (get_partner_opinion_done)))
    :effect (and
              (at start (not (step1_pending)))
              (at end (step1_done))
              (at end (plan_flowers_done))
            )
  )

  (:durative-action do_choose_food
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (step2_pending))
    :effect (and
              (at start (not (step2_pending)))
              (at end (step2_done))
              (at end (choose_food_done))
            )
  )

  (:durative-action do_decide_wear
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step3_pending)) (at start (get_partner_opinion_done)))
    :effect (and
              (at start (not (step3_pending)))
              (at end (step3_done))
              (at end (decide_wear_done))
            )
  )

  (:durative-action do_get_partner_opinion
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step4_pending))
    :effect (and
              (at start (not (step4_pending)))
              (at end (step4_done))
              (at end (get_partner_opinion_done))
            )
  )
)
