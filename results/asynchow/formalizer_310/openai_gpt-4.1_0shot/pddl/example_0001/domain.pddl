(define (domain nursery_graduation)
  (:requirements :durative-actions)
  (:predicates
    (receive_invitation_pending)
    (receive_invitation_done)
    (prepare_gift_pending)
    (prepare_gift_done)
    (get_directions_pending)
    (get_directions_done)
    (dress_up_pending)
    (dress_up_done)
    (drive_to_venue_pending)
    (drive_to_venue_done)
  )

  (:durative-action receive_invitation
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (receive_invitation_pending))
    :effect (and (at start (not (receive_invitation_pending)))
                 (at end (receive_invitation_done)))
  )

  (:durative-action prepare_gift
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (prepare_gift_pending))
                    (at start (receive_invitation_done)))
    :effect (and (at start (not (prepare_gift_pending)))
                 (at end (prepare_gift_done)))
  )

  (:durative-action get_directions
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (get_directions_pending))
                    (at start (receive_invitation_done)))
    :effect (and (at start (not (get_directions_pending)))
                 (at end (get_directions_done)))
  )

  (:durative-action dress_up
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (dress_up_pending))
                    (at start (get_directions_done)))
    :effect (and (at start (not (dress_up_pending)))
                 (at end (dress_up_done)))
  )

  (:durative-action drive_to_venue
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (drive_to_venue_pending))
                    (at start (dress_up_done)))
    :effect (and (at start (not (drive_to_venue_pending)))
                 (at end (drive_to_venue_done)))
  )
)
