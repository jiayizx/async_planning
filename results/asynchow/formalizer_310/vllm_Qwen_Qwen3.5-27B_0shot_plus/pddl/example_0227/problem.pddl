(define (problem season-tilapia-problem)
    (:domain season-tilapia)
    
    (:init
        (melt_butter_pending)
        (zest_lemon_pending)
        (whisk_sauce_pending)
        (pour_sauce_pending)
        (bake_fish_pending)
    )

    (:goal (and
        (melt_butter_done)
        (zest_lemon_done)
        (whisk_sauce_done)
        (pour_sauce_done)
        (bake_fish_done)
    ))
)
