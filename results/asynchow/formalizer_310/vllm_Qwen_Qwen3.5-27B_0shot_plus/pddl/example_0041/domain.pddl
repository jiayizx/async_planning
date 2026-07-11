(define (domain amusement-park)
  (:requirements :durative-actions)
  
  (:predicates
    (get_money_pending)
    (get_money_done)
    (find_park_pending)
    (find_park_done)
    (travel_to_park_pending)
    (travel_to_park_done)
    (purchase_pass_pending)
    (purchase_pass_done)
    (go_into_park_pending)
    (go_into_park_done)
  )

  (:durative-action get_money
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (get_money_pending))
    :effect (and (at start (not (get_money_pending))) (at end (get_money_done)))
  )

  (:durative-action find_park
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (find_park_pending))
    :effect (and (at start (not (find_park_pending))) (at end (find_park_done)))
  )

  (:durative-action travel_to_park
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (travel_to_park_pending)) (at start (find_park_done)))
    :effect (and (at start (not (travel_to_park_pending))) (at end (travel_to_park_done)))
  )

  (:durative-action purchase_pass
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (purchase_pass_pending)) (at start (get_money_done)) (at start (travel_to_park_done)))
    :effect (and (at start (not (purchase_pass_pending))) (at end (purchase_pass_done)))
  )

  (:durative-action go_into_park
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (go_into_park_pending)) (at start (purchase_pass_done)))
    :effect (and (at start (not (go_into_park_pending))) (at end (go_into_park_done)))
  )
)