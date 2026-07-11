(define (domain rv_travel)
  (:requirements :durative-actions)
  
  (:predicates
    (purchase_rv_pending)
    (purchase_rv_done)
    (pack_belongings_pending)
    (pack_belongings_done)
    (fill_food_pending)
    (fill_food_done)
    (fill_gas_pending)
    (fill_gas_done)
    (set_out_pending)
    (set_out_done)
  )

  (:durative-action purchase_rv
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (purchase_rv_pending))
    :effect (and (at start (not (purchase_rv_pending))) (at end (purchase_rv_done)))
  )

  (:durative-action pack_belongings
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (pack_belongings_pending)) (at start (purchase_rv_done)))
    :effect (and (at start (not (pack_belongings_pending))) (at end (pack_belongings_done)))
  )

  (:durative-action fill_food
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (fill_food_pending)) (at start (pack_belongings_done)))
    :effect (and (at start (not (fill_food_pending))) (at end (fill_food_done)))
  )

  (:durative-action fill_gas
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (fill_gas_pending)) (at start (pack_belongings_done)))
    :effect (and (at start (not (fill_gas_pending))) (at end (fill_gas_done)))
  )

  (:durative-action set_out
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (set_out_pending)) (at start (fill_food_done)) (at start (fill_gas_done)))
    :effect (and (at start (not (set_out_pending))) (at end (set_out_done)))
  )
)
