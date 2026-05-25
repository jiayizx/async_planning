(define (domain make_living_performing)
    (:requirements :durative-actions)
    
    (:predicates
        (research_pending)
        (research_done)
        (decide_pending)
        (decide_done)
        (study_pending)
        (study_done)
        (work_free_pending)
        (work_free_done)
        (make_name_pending)
        (make_name_done)
        (get_agent_pending)
        (get_agent_done)
    )

    (:durative-action do_research
        :parameters ()
        :duration (= ?duration 432000)
        :condition (at start (research_pending))
        :effect (and (at start (not (research_pending))) (at end (research_done)))
    )

    (:durative-action do_decide
        :parameters ()
        :duration (= ?duration 172800)
        :condition (and (at start (decide_pending)) (at start (research_done)))
        :effect (and (at start (not (decide_pending))) (at end (decide_done)))
    )

    (:durative-action do_study
        :parameters ()
        :duration (= ?duration 94608000)
        :condition (and (at start (study_pending)) (at start (decide_done)))
        :effect (and (at start (not (study_pending))) (at end (study_done)))
    )

    (:durative-action do_work_free
        :parameters ()
        :duration (= ?duration 31536000)
        :condition (and (at start (work_free_pending)) (at start (decide_done)))
        :effect (and (at start (not (work_free_pending))) (at end (work_free_done)))
    )

    (:durative-action do_make_name
        :parameters ()
        :duration (= ?duration 31536000)
        :condition (and (at start (make_name_pending)) (at start (study_done)) (at start (work_free_done)))
        :effect (and (at start (not (make_name_pending))) (at end (make_name_done)))
    )

    (:durative-action do_get_agent
        :parameters ()
        :duration (= ?duration 7776000)
        :condition (and (at start (get_agent_pending)) (at start (make_name_done)))
        :effect (and (at start (not (get_agent_pending))) (at end (get_agent_done)))
    )
)
