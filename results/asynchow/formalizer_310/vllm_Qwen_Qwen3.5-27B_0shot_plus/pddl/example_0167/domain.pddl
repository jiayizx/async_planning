(define (domain clean_enamel_bathtub)
    (:requirements :durative-actions)
    
    (:predicates
        (mix_solution_pending)
        (mix_solution_done)
        (rub_solution_pending)
        (rub_solution_done)
        (rinse_tub_pending)
        (rinse_tub_done)
        (clean_weekly_pending)
        (clean_weekly_done)
    )

    (:durative-action mix_solution
        :parameters ()
        :duration (= ?duration 300)
        :condition (at start (mix_solution_pending))
        :effect (and (at start (not (mix_solution_pending))) (at end (mix_solution_done)))
    )

    (:durative-action rub_solution
        :parameters ()
        :duration (= ?duration 600)
        :condition (and (at start (rub_solution_pending)) (at start (mix_solution_done)))
        :effect (and (at start (not (rub_solution_pending))) (at end (rub_solution_done)))
    )

    (:durative-action rinse_tub
        :parameters ()
        :duration (= ?duration 300)
        :condition (and (at start (rinse_tub_pending)) (at start (rub_solution_done)))
        :effect (and (at start (not (rinse_tub_pending))) (at end (rinse_tub_done)))
    )

    (:durative-action clean_weekly
        :parameters ()
        :duration (= ?duration 1800)
        :condition (at start (clean_weekly_pending))
        :effect (and (at start (not (clean_weekly_pending))) (at end (clean_weekly_done)))
    )
)
