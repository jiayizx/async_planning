(define (domain understand_math)
    (:requirements :durative-actions)
    
    (:predicates
        (go_for_extra_help_pending)
        (go_for_extra_help_done)
        (practice_more_pending)
        (practice_more_done)
        (hire_tutor_pending)
        (hire_tutor_done)
        (look_to_friend_pending)
        (look_to_friend_done)
    )

    (:durative-action do_go_for_extra_help
        :parameters ()
        :duration (= ?duration 3600)
        :condition (at start (go_for_extra_help_pending))
        :effect (and (at start (not (go_for_extra_help_pending))) (at end (go_for_extra_help_done)))
    )

    (:durative-action do_practice_more
        :parameters ()
        :duration (= ?duration 7200)
        :condition (and (at start (practice_more_pending))
                        (at start (go_for_extra_help_done))
                        (at start (hire_tutor_done))
                        (at start (look_to_friend_done)))
        :effect (and (at start (not (practice_more_pending))) (at end (practice_more_done)))
    )

    (:durative-action do_hire_tutor
        :parameters ()
        :duration (= ?duration 10800)
        :condition (at start (hire_tutor_pending))
        :effect (and (at start (not (hire_tutor_pending))) (at end (hire_tutor_done)))
    )

    (:durative-action do_look_to_friend
        :parameters ()
        :duration (= ?duration 1800)
        :condition (at start (look_to_friend_pending))
        :effect (and (at start (not (look_to_friend_pending))) (at end (look_to_friend_done)))
    )
)
