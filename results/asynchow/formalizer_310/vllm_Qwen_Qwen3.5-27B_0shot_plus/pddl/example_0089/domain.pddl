(define (domain make_friends)
  (:requirements :durative-actions)
  
  (:predicates
    (find_gatherings_pending)
    (find_gatherings_done)
    (go_to_gatherings_pending)
    (go_to_gatherings_done)
    (introduce_pending)
    (introduce_done)
    (converse_pending)
    (converse_done)
    (find_common_pending)
    (find_common_done)
    (invite_coffee_pending)
    (invite_coffee_done)
    (meet_coffee_pending)
    (meet_coffee_done)
  )

  (:durative-action find_gatherings
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (find_gatherings_pending)))
    :effect (and (at start (not (find_gatherings_pending)))
                 (at end (find_gatherings_done)))
  )

  (:durative-action go_to_gatherings
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (go_to_gatherings_pending))
                    (at start (find_gatherings_done)))
    :effect (and (at start (not (go_to_gatherings_pending)))
                 (at end (go_to_gatherings_done)))
  )

  (:durative-action introduce
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (introduce_pending))
                    (at start (go_to_gatherings_done)))
    :effect (and (at start (not (introduce_pending)))
                 (at end (introduce_done)))
  )

  (:durative-action converse
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (converse_pending))
                    (at start (go_to_gatherings_done)))
    :effect (and (at start (not (converse_pending)))
                 (at end (converse_done)))
  )

  (:durative-action find_common
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (find_common_pending))
                    (at start (introduce_done))
                    (at start (converse_done)))
    :effect (and (at start (not (find_common_pending)))
                 (at end (find_common_done)))
  )

  (:durative-action invite_coffee
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (invite_coffee_pending))
                    (at start (find_common_done)))
    :effect (and (at start (not (invite_coffee_pending)))
                 (at end (invite_coffee_done)))
  )

  (:durative-action meet_coffee
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (meet_coffee_pending))
                    (at start (invite_coffee_done)))
    :effect (and (at start (not (meet_coffee_pending)))
                 (at end (meet_coffee_done)))
  )
)
