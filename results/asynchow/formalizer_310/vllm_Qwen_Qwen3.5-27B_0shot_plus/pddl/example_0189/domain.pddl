(define (domain wedding_planning)
  (:requirements :durative-actions)
  
  (:predicates
    (plan_flowers_pending)
    (plan_flowers_done)
    (choose_food_pending)
    (choose_food_done)
    (decide_wear_pending)
    (decide_wear_done)
    (get_opinion_pending)
    (get_opinion_done)
  )

  (:durative-action get_opinion
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (get_opinion_pending)))
    :effect (and (at start (not (get_opinion_pending))) (at end (get_opinion_done)))
  )

  (:durative-action plan_flowers
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (plan_flowers_pending)) (at start (get_opinion_done)))
    :effect (and (at start (not (plan_flowers_pending))) (at end (plan_flowers_done)))
  )

  (:durative-action choose_food
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (choose_food_pending)))
    :effect (and (at start (not (choose_food_pending))) (at end (choose_food_done)))
  )

  (:durative-action decide_wear
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (decide_wear_pending)) (at start (get_opinion_done)))
    :effect (and (at start (not (decide_wear_pending))) (at end (decide_wear_done)))
  )
)