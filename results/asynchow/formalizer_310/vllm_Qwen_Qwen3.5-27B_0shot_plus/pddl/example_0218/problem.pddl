(define (problem pickle_jalapenos_problem)
    (:domain pickle_jalapenos)
    
    (:init
        (slice_pending)
        (combine_pending)
        (cool_pending)
    )

    (:goal (and (slice_done) (combine_done) (cool_done)))
)