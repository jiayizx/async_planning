(define (problem eyebrow_exfoliation_problem)
    (:domain eyebrow_exfoliation)
    
    (:init
        (sanitize_pending)
        (apply_cleanser_pending)
        (rub_brows_pending)
        (rinse_brows_pending)
    )

    (:goal (and
        (sanitize_done)
        (apply_cleanser_done)
        (rub_brows_done)
        (rinse_brows_done)
    ))
)