(define (domain wait_for_bus)
  (:requirements :durative-actions)
  (:predicates
    (think_destination_pending)
    (think_destination_done)
    (lookup_bus_pending)
    (lookup_bus_done)
    (map_bus_stop_pending)
    (map_bus_stop_done)
    (walk_to_stop_pending)
    (walk_to_stop_done)
    (buy_pass_pending)
    (buy_pass_done)
    (collect_pass_pending)
    (collect_pass_done)
    (check_bus_on_time_pending)
    (check_bus_on_time_done)
  )

  (:durative-action do_think_destination
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (think_destination_pending))
    :effect (and (at start (not (think_destination_pending))) (at end (think_destination_done)))
  )

  (:durative-action do_lookup_bus
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (lookup_bus_pending)) (at start (think_destination_done)))
    :effect (and (at start (not (lookup_bus_pending))) (at end (lookup_bus_done)))
  )

  (:durative-action do_map_bus_stop
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (map_bus_stop_pending)) (at start (lookup_bus_done)))
    :effect (and (at start (not (map_bus_stop_pending))) (at end (map_bus_stop_done)))
  )

  (:durative-action do_walk_to_stop
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (walk_to_stop_pending)) (at start (map_bus_stop_done)) (at start (collect_pass_done)))
    :effect (and (at start (not (walk_to_stop_pending))) (at end (walk_to_stop_done)))
  )

  (:durative-action do_buy_pass
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (buy_pass_pending))
    :effect (and (at start (not (buy_pass_pending))) (at end (buy_pass_done)))
  )

  (:durative-action do_collect_pass
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (collect_pass_pending)) (at start (buy_pass_done)))
    :effect (and (at start (not (collect_pass_pending))) (at end (collect_pass_done)))
  )

  (:durative-action do_check_bus_on_time
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (check_bus_on_time_pending)) (at start (walk_to_stop_done)))
    :effect (and (at start (not (check_bus_on_time_pending))) (at end (check_bus_on_time_done)))
  )
)
