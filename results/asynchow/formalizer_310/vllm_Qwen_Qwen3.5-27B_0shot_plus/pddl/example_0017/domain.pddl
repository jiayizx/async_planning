(define (domain gym_planning)
    (:requirements :durative-actions)
    
    (:predicates
        (search_pending)
        (search_done)
        (compare_pending)
        (compare_done)
        (find_pending)
        (find_done)
        (drive_pending)
        (drive_done)
        (membership_pending)
        (membership_done)
    )

    (:durative-action do_search
        :parameters ()
        :duration (= ?duration 1200)
        :condition (at start (search_pending))
        :effect (and (at start (not (search_pending))) (at end (search_done)))
    )

    (:durative-action do_compare
        :parameters ()
        :duration (= ?duration 900)
        :condition (and (at start (compare_pending)) (at start (search_done)))
        :effect (and (at start (not (compare_pending))) (at end (compare_done)))
    )

    (:durative-action do_find
        :parameters ()
        :duration (= ?duration 1200)
        :condition (and (at start (find_pending)) (at start (search_done)))
        :effect (and (at start (not (find_pending))) (at end (find_done)))
    )

    (:durative-action do_drive
        :parameters ()
        :duration (= ?duration 900)
        :condition (and (at start (drive_pending)) (at start (compare_done)) (at start (find_done)))
        :effect (and (at start (not (drive_pending))) (at end (drive_done)))
    )

    (:durative-action do_membership
        :parameters ()
        :duration (= ?duration 1200)
        :condition (and (at start (membership_pending)) (at start (drive_done)))
        :effect (and (at start (not (membership_pending))) (at end (membership_done)))
    )
)
