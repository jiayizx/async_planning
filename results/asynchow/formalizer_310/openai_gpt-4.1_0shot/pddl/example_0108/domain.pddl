(define (domain yellowstone-trip)
  (:requirements :durative-actions)
  (:predicates
    (look_up_attractions_pending)
    (look_up_attractions_done)
    (look_up_map_pending)
    (look_up_map_done)
    (drive_pending)
    (drive_done)
    (go_entrance_pending)
    (go_entrance_done)
    (go_attractions_pending)
    (go_attractions_done)
  )

  (:durative-action look_up_attractions
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (look_up_attractions_pending))
    :effect (and (at start (not (look_up_attractions_pending))) (at end (look_up_attractions_done)))
  )

  (:durative-action look_up_map
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (look_up_map_pending))
    :effect (and (at start (not (look_up_map_pending))) (at end (look_up_map_done)))
  )

  (:durative-action drive
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (drive_pending)) (at start (look_up_attractions_done)) (at start (look_up_map_done)))
    :effect (and (at start (not (drive_pending))) (at end (drive_done)))
  )

  (:durative-action go_entrance
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (go_entrance_pending)) (at start (drive_done)))
    :effect (and (at start (not (go_entrance_pending))) (at end (go_entrance_done)))
  )

  (:durative-action go_attractions
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (go_attractions_pending)) (at start (go_entrance_done)))
    :effect (and (at start (not (go_attractions_pending))) (at end (go_attractions_done)))
  )
)
