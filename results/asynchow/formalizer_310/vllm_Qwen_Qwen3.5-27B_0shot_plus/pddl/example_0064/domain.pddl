(define (domain exit_house)
  (:requirements :durative-actions)
  
  (:predicates
    (grab_keys_pending)
    (grab_keys_done)
    (put_on_shoes_pending)
    (put_on_shoes_done)
    (go_through_door_pending)
    (go_through_door_done)
    (lock_door_pending)
    (lock_door_done)
    (put_on_jacket_pending)
    (put_on_jacket_done)
  )

  (:durative-action grab_keys
    :parameters ()
    :duration (= ?duration 25)
    :condition (at start (grab_keys_pending))
    :effect (and (at start (not (grab_keys_pending))) (at end (grab_keys_done)))
  )

  (:durative-action put_on_shoes
    :parameters ()
    :duration (= ?duration 25)
    :condition (at start (put_on_shoes_pending))
    :effect (and (at start (not (put_on_shoes_pending))) (at end (put_on_shoes_done)))
  )

  (:durative-action go_through_door
    :parameters ()
    :duration (= ?duration 25)
    :condition (and (at start (go_through_door_pending))
                    (at start (grab_keys_done))
                    (at start (put_on_shoes_done))
                    (at start (put_on_jacket_done)))
    :effect (and (at start (not (go_through_door_pending))) (at end (go_through_door_done)))
  )

  (:durative-action lock_door
    :parameters ()
    :duration (= ?duration 35)
    :condition (and (at start (lock_door_pending))
                    (at start (go_through_door_done)))
    :effect (and (at start (not (lock_door_pending))) (at end (lock_door_done)))
  )

  (:durative-action put_on_jacket
    :parameters ()
    :duration (= ?duration 25)
    :condition (at start (put_on_jacket_pending))
    :effect (and (at start (not (put_on_jacket_pending))) (at end (put_on_jacket_done)))
  )
)
