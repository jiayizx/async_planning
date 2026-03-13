(define (domain garden_fence)
  (:requirements :durative-actions)
  (:predicates
    (attach_wire_mesh_pending)
    (attach_wire_mesh_done)
    (dig_trench_pending)
    (dig_trench_done)
    (research_wildlife_pending)
    (research_wildlife_done)
    (install_sprinkler_pending)
    (install_sprinkler_done)
    (purchase_posts_pending)
    (purchase_posts_done)
    (drive_posts_pending)
    (drive_posts_done)
    (measure_garden_pending)
    (measure_garden_done)
    (call_utility_pending)
    (call_utility_done)
    (apply_repellent_pending)
    (apply_repellent_done)
    (spread_gravel_pending)
    (spread_gravel_done)
  )

  (:durative-action attach_wire_mesh
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (attach_wire_mesh_pending)) (at start (dig_trench_done)) (at start (drive_posts_done)))
    :effect (and (at start (not (attach_wire_mesh_pending))) (at end (attach_wire_mesh_done)))
  )

  (:durative-action dig_trench
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (dig_trench_pending)) (at start (call_utility_done)))
    :effect (and (at start (not (dig_trench_pending))) (at end (dig_trench_done)))
  )

  (:durative-action research_wildlife
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (research_wildlife_pending))
    :effect (and (at start (not (research_wildlife_pending))) (at end (research_wildlife_done)))
  )

  (:durative-action install_sprinkler
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (install_sprinkler_pending)) (at start (drive_posts_done)))
    :effect (and (at start (not (install_sprinkler_pending))) (at end (install_sprinkler_done)))
  )

  (:durative-action purchase_posts
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (purchase_posts_pending)) (at start (measure_garden_done)))
    :effect (and (at start (not (purchase_posts_pending))) (at end (purchase_posts_done)))
  )

  (:durative-action drive_posts
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (drive_posts_pending)) (at start (purchase_posts_done)))
    :effect (and (at start (not (drive_posts_pending))) (at end (drive_posts_done)))
  )

  (:durative-action measure_garden
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (measure_garden_pending)) (at start (research_wildlife_done)))
    :effect (and (at start (not (measure_garden_pending))) (at end (measure_garden_done)))
  )

  (:durative-action call_utility
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (call_utility_pending))
    :effect (and (at start (not (call_utility_pending))) (at end (call_utility_done)))
  )

  (:durative-action apply_repellent
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (apply_repellent_pending))
    :effect (and (at start (not (apply_repellent_pending))) (at end (apply_repellent_done)))
  )

  (:durative-action spread_gravel
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (spread_gravel_pending)) (at start (apply_repellent_done)))
    :effect (and (at start (not (spread_gravel_pending))) (at end (spread_gravel_done)))
  )
)
