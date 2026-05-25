(define (problem clean_enamel_bathtub_instance)
    (:domain clean_enamel_bathtub)
    
    (:init
        (mix_solution_pending)
        (rub_solution_pending)
        (rinse_tub_pending)
        (clean_weekly_pending)
    )

    (:goal (and
        (mix_solution_done)
        (rub_solution_done)
        (rinse_tub_done)
        (clean_weekly_done)
    ))
)
