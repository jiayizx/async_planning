(define (domain weekend_night_planning)
  (:requirements :durative-actions)
  
  (:predicates
    (make_plan_pending)
    (make_plan_done)
    (call_friends_pending)
    (call_friends_done)
    (shop_groceries_pending)
    (shop_groceries_done)
    (fill_gas_pending)
    (fill_gas_done)
    (pickup_friends_pending)
    (pickup_friends_done)
  )

  (:durative-action make_plan
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (make_plan_pending))
    :effect (and (at start (not (make_plan_pending))) (at end (make_plan_done)))
  )

  (:durative-action call_friends
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (call_friends_pending)) (at start (make_plan_done)))
    :effect (and (at start (not (call_friends_pending))) (at end (call_friends_done)))
  )

  (:durative-action shop_groceries
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (shop_groceries_pending)) (at start (make_plan_done)))
    :effect (and (at start (not (shop_groceries_pending))) (at end (shop_groceries_done)))
  )

  (:durative-action fill_gas
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (fill_gas_pending)) (at start (call_friends_done)) (at start (shop_groceries_done)))
    :effect (and (at start (not (fill_gas_pending))) (at end (fill_gas_done)))
  )

  (:durative-action pickup_friends
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (pickup_friends_pending)) (at start (fill_gas_done)))
    :effect (and (at start (not (pickup_friends_pending))) (at end (pickup_friends_done)))
  )
)
