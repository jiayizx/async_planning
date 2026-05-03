(define (problem eat_english_muffin)
    (:domain english_muffin_task)
    
    (:init
        (make_french_toast_pending)
        (make_filling_pending)
        (assemble_sandwich_pending)
        (top_muffins_pending)
    )

    (:goal (and
        (make_french_toast_done)
        (make_filling_done)
        (assemble_sandwich_done)
        (top_muffins_done)
    ))
)
