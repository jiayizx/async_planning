(define (domain camera_acquisition)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (research_done)
    (funds_transferred)
    (shop_visited)
    (order_placed)
    (transfer_cleared)
    (accessories_bought)
    (price_compared)
    (package_delivered)
    (unboxed)
    (battery_charged)
  )

  (:durative-action research_models
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action transfer_funds
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (shop_visited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (funds_transferred)))
  )

  (:durative-action visit_shop
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shop_visited)))
  )

  (:durative-action order_online
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (price_compared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (order_placed)))
  )

  (:durative-action wait_transfer
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (funds_transferred)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (transfer_cleared)))
  )

  (:durative-action buy_accessories
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (accessories_bought)))
  )

  (:durative-action comparison_shop
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (shop_visited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (price_compared)))
  )

  (:durative-action wait_delivery
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (order_placed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (package_delivered)))
  )

  (:durative-action charge_battery
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (package_delivered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (battery_charged)))
  )

  (:durative-action unbox_and_test
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (accessories_bought)) (at start (package_delivered)) (at start (battery_charged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (unboxed)))
  )
)