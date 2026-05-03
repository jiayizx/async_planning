(define (problem recycle_wood_problem)
    (:domain recycle_wood)
    
    (:init
        (search_pending)
        (remove_pending)
        (cut_pending)
        (transport_pending)
    )

    (:goal (and (search_done) (remove_done) (cut_done) (transport_done)))
)