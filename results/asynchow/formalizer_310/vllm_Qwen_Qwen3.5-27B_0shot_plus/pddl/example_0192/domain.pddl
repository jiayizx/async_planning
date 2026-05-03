(define (domain eyebrow_exfoliation)
    (:requirements :durative-actions)
    
    (:predicates
        (sanitize_pending)
        (sanitize_done)
        (apply_cleanser_pending)
        (apply_cleanser_done)
        (rub_brows_pending)
        (rub_brows_done)
        (rinse_brows_pending)
        (rinse_brows_done)
    )

    (:durative-action sanitize_toothbrush
        :parameters ()
        :duration (= ?duration 60)
        :condition (at start (sanitize_pending))
        :effect (and (at start (not (sanitize_pending))) (at end (sanitize_done)))
    )

    (:durative-action apply_cleanser
        :parameters ()
        :duration (= ?duration 30)
        :condition (and (at start (apply_cleanser_pending)) (at start (sanitize_done)))
        :effect (and (at start (not (apply_cleanser_pending))) (at end (apply_cleanser_done)))
    )

    (:durative-action rinse_brows
        :parameters ()
        :duration (= ?duration 60)
        :condition (at start (rinse_brows_pending))
        :effect (and (at start (not (rinse_brows_pending))) (at end (rinse_brows_done)))
    )

    (:durative-action rub_brows
        :parameters ()
        :duration (= ?duration 120)
        :condition (and (at start (rub_brows_pending)) (at start (apply_cleanser_done)) (at start (rinse_brows_done)))
        :effect (and (at start (not (rub_brows_pending))) (at end (rub_brows_done)))
    )
)