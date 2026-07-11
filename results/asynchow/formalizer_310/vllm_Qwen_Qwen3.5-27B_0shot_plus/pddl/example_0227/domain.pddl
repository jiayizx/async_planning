(define (domain season-tilapia)
    (:requirements :durative-actions)
    
    (:predicates
        (melt_butter_pending)
        (melt_butter_done)
        (zest_lemon_pending)
        (zest_lemon_done)
        (whisk_sauce_pending)
        (whisk_sauce_done)
        (pour_sauce_pending)
        (pour_sauce_done)
        (bake_fish_pending)
        (bake_fish_done)
    )

    (:durative-action melt_butter
        :parameters ()
        :duration (= ?duration 120)
        :condition (at start (melt_butter_pending))
        :effect (and (at start (not (melt_butter_pending))) (at end (melt_butter_done)))
    )

    (:durative-action zest_lemon
        :parameters ()
        :duration (= ?duration 120)
        :condition (at start (zest_lemon_pending))
        :effect (and (at start (not (zest_lemon_pending))) (at end (zest_lemon_done)))
    )

    (:durative-action whisk_sauce
        :parameters ()
        :duration (= ?duration 180)
        :condition (and (at start (whisk_sauce_pending)) (at start (melt_butter_done)) (at start (zest_lemon_done)))
        :effect (and (at start (not (whisk_sauce_pending))) (at end (whisk_sauce_done)))
    )

    (:durative-action pour_sauce
        :parameters ()
        :duration (= ?duration 60)
        :condition (and (at start (pour_sauce_pending)) (at start (whisk_sauce_done)))
        :effect (and (at start (not (pour_sauce_pending))) (at end (pour_sauce_done)))
    )

    (:durative-action bake_fish
        :parameters ()
        :duration (= ?duration 720)
        :condition (and (at start (bake_fish_pending)) (at start (pour_sauce_done)))
        :effect (and (at start (not (bake_fish_pending))) (at end (bake_fish_done)))
    )
)
