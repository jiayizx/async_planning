(define (problem make_living_performing_problem)
    (:domain make_living_performing)
    
    (:init
        (research_pending)
        (decide_pending)
        (study_pending)
        (work_free_pending)
        (make_name_pending)
        (get_agent_pending)
    )

    (:goal (and
        (research_done)
        (decide_done)
        (study_done)
        (work_free_done)
        (make_name_done)
        (get_agent_done)
    ))
)
