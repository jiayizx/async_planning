(define (domain turn_bad_day_around)
    (:requirements :durative-actions)
    
    (:predicates
        (identify_source_pending)
        (identify_source_done)
        (come_up_step_pending)
        (come_up_step_done)
        (identify_sources_pending)
        (identify_sources_done)
        (focus_positive_pending)
        (focus_positive_done)
        (remember_today_pending)
        (remember_today_done)
    )

    (:durative-action identify_source
        :parameters ()
        :duration (= ?duration 600)
        :condition (at start (identify_source_pending))
        :effect (and (at start (not (identify_source_pending))) (at end (identify_source_done)))
    )

    (:durative-action come_up_step
        :parameters ()
        :duration (= ?duration 900)
        :condition (and (at start (come_up_step_pending)) (at start (identify_source_done)))
        :effect (and (at start (not (come_up_step_pending))) (at end (come_up_step_done)))
    )

    (:durative-action identify_sources
        :parameters ()
        :duration (= ?duration 1200)
        :condition (and (at start (identify_sources_pending)) (at start (come_up_step_done)))
        :effect (and (at start (not (identify_sources_pending))) (at end (identify_sources_done)))
    )

    (:durative-action focus_positive
        :parameters ()
        :duration (= ?duration 600)
        :condition (at start (focus_positive_pending))
        :effect (and (at start (not (focus_positive_pending))) (at end (focus_positive_done)))
    )

    (:durative-action remember_today
        :parameters ()
        :duration (= ?duration 60)
        :condition (at start (remember_today_pending))
        :effect (and (at start (not (remember_today_pending))) (at end (remember_today_done)))
    )
)
