(define (domain prison_escape)
  (:requirements :durative-actions)
  
  (:predicates
    (get_plans_pending)
    (get_plans_done)
    (watch_guards_pending)
    (watch_guards_done)
    (run_tunnel_pending)
    (run_tunnel_done)
    (steal_spoon_pending)
    (steal_spoon_done)
    (dig_tunnel_pending)
    (dig_tunnel_done)
  )

  (:durative-action get_plans
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (get_plans_pending)))
    :effect (and (at start (not (get_plans_pending))) (at end (get_plans_done)))
  )

  (:durative-action watch_guards
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (watch_guards_pending)))
    :effect (and (at start (not (watch_guards_pending))) (at end (watch_guards_done)))
  )

  (:durative-action run_tunnel
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (run_tunnel_pending)) (at start (watch_guards_done)) (at start (dig_tunnel_done)))
    :effect (and (at start (not (run_tunnel_pending))) (at end (run_tunnel_done)))
  )

  (:durative-action steal_spoon
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (steal_spoon_pending)))
    :effect (and (at start (not (steal_spoon_pending))) (at end (steal_spoon_done)))
  )

  (:durative-action dig_tunnel
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (and (at start (dig_tunnel_pending)) (at start (get_plans_done)) (at start (steal_spoon_done)))
    :effect (and (at start (not (dig_tunnel_pending))) (at end (dig_tunnel_done)))
  )
)