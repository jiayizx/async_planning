(define (domain yellowstone-trip)
  (:requirements :durative-actions)
  
  (:predicates
    (look_up_attractions_pending)
    (look_up_attractions_done)
    (look_up_map_pending)
    (look_up_map_done)
    (drive_to_yellowstone_pending)
    (drive_to_yellowstone_done)
    (go_to_entrance_pending)
    (go_to_entrance_done)
    (visit_attractions_pending)
    (visit_attractions_done)
  )

  (:durative-action look_up_attractions
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (look_up_attractions_pending))
    :effect (and (at start (not (look_up_attractions_pending)))
                 (at end (look_up_attractions_done)))
  )

  (:durative-action look_up_map
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (look_up_map_pending))
    :effect (and (at start (not (look_up_map_pending)))
                 (at end (look_up_map_done)))
  )

  (:durative-action drive_to_yellowstone
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (drive_to_yellowstone_pending))
                    (at start (look_up_attractions_done))
                    (at start (look_up_map_done)))
    :effect (and (at start (not (drive_to_yellowstone_pending)))
                 (at end (drive_to_yellowstone_done)))
  )

  (:durative-action go_to_entrance
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (go_to_entrance_pending))
                    (at start (drive_to_yellowstone_done)))
    :effect (and (at start (not (go_to_entrance_pending)))
                 (at end (go_to_entrance_done)))
  )

  (:durative-action visit_attractions
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (visit_attractions_pending))
                    (at start (go_to_entrance_done)))
    :effect (and (at start (not (visit_attractions_pending)))
                 (at end (visit_attractions_done)))
  )
)
