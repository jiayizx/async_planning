(define (domain vacation_planning)
    (:requirements :durative-actions)
    
    (:predicates
        (mull_over_pending)
        (mull_over_done)
        (ask_husband_pending)
        (ask_husband_done)
        (select_preference_pending)
        (select_preference_done)
        (write_locations_pending)
        (write_locations_done)
        (put_in_hat_pending)
        (put_in_hat_done)
        (draw_paper_pending)
        (draw_paper_done)
    )

    (:durative-action mull_over
        :parameters ()
        :duration (= ?duration 172800)
        :condition (at start (mull_over_pending))
        :effect (and (at start (not (mull_over_pending))) (at end (mull_over_done)))
    )

    (:durative-action ask_husband
        :parameters ()
        :duration (= ?duration 300)
        :condition (and (at start (ask_husband_pending)) (at start (mull_over_done)))
        :effect (and (at start (not (ask_husband_pending))) (at end (ask_husband_done)))
    )

    (:durative-action select_preference
        :parameters ()
        :duration (= ?duration 60)
        :condition (and (at start (select_preference_pending)) (at start (mull_over_done)))
        :effect (and (at start (not (select_preference_pending))) (at end (select_preference_done)))
    )

    (:durative-action write_locations
        :parameters ()
        :duration (= ?duration 120)
        :condition (and (at start (write_locations_pending)) (at start (ask_husband_done)) (at start (select_preference_done)))
        :effect (and (at start (not (write_locations_pending))) (at end (write_locations_done)))
    )

    (:durative-action put_in_hat
        :parameters ()
        :duration (= ?duration 60)
        :condition (and (at start (put_in_hat_pending)) (at start (write_locations_done)))
        :effect (and (at start (not (put_in_hat_pending))) (at end (put_in_hat_done)))
    )

    (:durative-action draw_paper
        :parameters ()
        :duration (= ?duration 60)
        :condition (and (at start (draw_paper_pending)) (at start (put_in_hat_done)))
        :effect (and (at start (not (draw_paper_pending))) (at end (draw_paper_done)))
    )
)
