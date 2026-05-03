(define (domain english_muffin_task)
    (:requirements :durative-actions)
    
    (:predicates
        (make_french_toast_pending)
        (make_french_toast_done)
        (make_filling_pending)
        (make_filling_done)
        (assemble_sandwich_pending)
        (assemble_sandwich_done)
        (top_muffins_pending)
        (top_muffins_done)
    )

    (:durative-action make_french_toast
        :parameters ()
        :duration (= ?duration 900)
        :condition (at start (make_french_toast_pending))
        :effect (and (at start (not (make_french_toast_pending))) (at end (make_french_toast_done)))
    )

    (:durative-action make_filling
        :parameters ()
        :duration (= ?duration 900)
        :condition (at start (make_filling_pending))
        :effect (and (at start (not (make_filling_pending))) (at end (make_filling_done)))
    )

    (:durative-action assemble_sandwich
        :parameters ()
        :duration (= ?duration 300)
        :condition (and (at start (assemble_sandwich_pending)) (at start (make_filling_done)))
        :effect (and (at start (not (assemble_sandwich_pending))) (at end (assemble_sandwich_done)))
    )

    (:durative-action top_muffins
        :parameters ()
        :duration (= ?duration 120)
        :condition (at start (top_muffins_pending))
        :effect (and (at start (not (top_muffins_pending))) (at end (top_muffins_done)))
    )
)
