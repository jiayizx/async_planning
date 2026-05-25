(define (problem turn_bad_day_around_problem)
    (:domain turn_bad_day_around)
    
    (:init
        (identify_source_pending)
        (come_up_step_pending)
        (identify_sources_pending)
        (focus_positive_pending)
        (remember_today_pending)
    )

    (:goal (and
        (identify_source_done)
        (come_up_step_done)
        (identify_sources_done)
        (focus_positive_done)
        (remember_today_done)
    ))
)
