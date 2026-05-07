(define (domain baseball_planning)
    (:requirements :durative-actions)
    
    (:predicates
        (dress_pending)
        (dress_done)
        (call_friends_pending)
        (call_friends_done)
        (arrange_time_pending)
        (arrange_time_done)
        (drive_to_venue_pending)
        (drive_to_venue_done)
        (exit_car_pending)
        (exit_car_done)
        (walk_to_field_pending)
        (walk_to_field_done)
    )

    (:durative-action dress_to_play
        :parameters ()
        :duration (= ?duration 900)
        :condition (and (at start (dress_pending)))
        :effect (and (at start (not (dress_pending))) (at end (dress_done)))
    )

    (:durative-action call_friends
        :parameters ()
        :duration (= ?duration 1800)
        :condition (and (at start (call_friends_pending)))
        :effect (and (at start (not (call_friends_pending))) (at end (call_friends_done)))
    )

    (:durative-action arrange_time
        :parameters ()
        :duration (= ?duration 1200)
        :condition (and (at start (arrange_time_pending)) (at start (call_friends_done)))
        :effect (and (at start (not (arrange_time_pending))) (at end (arrange_time_done)))
    )

    (:durative-action drive_to_venue
        :parameters ()
        :duration (= ?duration 600)
        :condition (and (at start (drive_to_venue_pending)) (at start (dress_done)) (at start (arrange_time_done)))
        :effect (and (at start (not (drive_to_venue_pending))) (at end (drive_to_venue_done)))
    )

    (:durative-action exit_car
        :parameters ()
        :duration (= ?duration 60)
        :condition (and (at start (exit_car_pending)) (at start (drive_to_venue_done)))
        :effect (and (at start (not (exit_car_pending))) (at end (exit_car_done)))
    )

    (:durative-action walk_to_field
        :parameters ()
        :duration (= ?duration 120)
        :condition (and (at start (walk_to_field_pending)) (at start (exit_car_done)))
        :effect (and (at start (not (walk_to_field_pending))) (at end (walk_to_field_done)))
    )
)
