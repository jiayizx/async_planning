(define (problem cook_flounder_instance)
    (:domain cook_flounder)
    
    (:init
        (heat_grill_pending)
        (cut_fish_pending)
        (season_fish_pending)
        (grill_fish_pending)
        (rest_fish_pending)
    )

    (:goal (and
        (heat_grill_done)
        (cut_fish_done)
        (season_fish_done)
        (grill_fish_done)
        (rest_fish_done)
    ))
)
