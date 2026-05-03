(define (problem make_sims3_hunger_games)
    (:domain sims3_hunger_games)
    
    (:init
        (create_sims_pending)
        (name_sims_pending)
        (clothe_sims_pending)
        (assign_traits_pending)
    )

    (:goal (and
        (create_sims_done)
        (name_sims_done)
        (clothe_sims_done)
        (assign_traits_done)
    ))
)