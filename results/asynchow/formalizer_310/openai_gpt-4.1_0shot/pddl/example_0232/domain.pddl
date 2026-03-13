(define (domain understand-math)
  (:requirements :durative-actions)
  (:predicates
    (go_for_extra_help_pending)
    (go_for_extra_help_done)
    (practice_more_on_your_own_pending)
    (practice_more_on_your_own_done)
    (hire_a_tutor_pending)
    (hire_a_tutor_done)
    (look_to_a_friend_or_peer_for_guidance_pending)
    (look_to_a_friend_or_peer_for_guidance_done)
  )

  (:durative-action go_for_extra_help
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (go_for_extra_help_pending))
    :effect (and
      (at start (not (go_for_extra_help_pending)))
      (at end (go_for_extra_help_done))
    )
  )

  (:durative-action practice_more_on_your_own
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (practice_more_on_your_own_pending))
      (at start (go_for_extra_help_done))
      (at start (hire_a_tutor_done))
      (at start (look_to_a_friend_or_peer_for_guidance_done))
    )
    :effect (and
      (at start (not (practice_more_on_your_own_pending)))
      (at end (practice_more_on_your_own_done))
    )
  )

  (:durative-action hire_a_tutor
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (hire_a_tutor_pending))
    :effect (and
      (at start (not (hire_a_tutor_pending)))
      (at end (hire_a_tutor_done))
    )
  )

  (:durative-action look_to_a_friend_or_peer_for_guidance
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (look_to_a_friend_or_peer_for_guidance_pending))
    :effect (and
      (at start (not (look_to_a_friend_or_peer_for_guidance_pending)))
      (at end (look_to_a_friend_or_peer_for_guidance_done))
    )
  )
)
