(define (domain rabbit_pet_acquisition)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (at_pet_shop)
    (rabbits_viewed)
    (rabbit_selected)
    (food_shopped)
    (supplies_shopped)
    (waited_in_line)
    (purchase_made)
  )

  (:durative-action drive_to_shop
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_pet_shop)))
  )

  (:durative-action look_at_rabbits
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (at_pet_shop)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rabbits_viewed)))
  )

  (:durative-action pick_rabbit
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (rabbits_viewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rabbit_selected)))
  )

  (:durative-action shop_food
    :parameters (?s - step)
    :duration (= ?duration 420)
    :condition (and (at start (step_pending ?s)) (at start (rabbit_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (food_shopped)))
  )

  (:durative-action shop_supplies
    :parameters (?s - step)
    :duration (= ?duration 420)
    :condition (and (at start (step_pending ?s)) (at start (rabbit_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_shopped)))
  )

  (:durative-action wait_in_line
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (food_shopped)) (at start (supplies_shopped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waited_in_line)))
  )

  (:durative-action make_purchase
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (waited_in_line)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (purchase_made)))
  )
)