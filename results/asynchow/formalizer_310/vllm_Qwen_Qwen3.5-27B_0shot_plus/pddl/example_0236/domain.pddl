(define (domain cook_flounder)
    (:requirements :durative-actions)
    
    (:predicates
        (heat_grill_pending)
        (heat_grill_done)
        (cut_fish_pending)
        (cut_fish_done)
        (season_fish_pending)
        (season_fish_done)
        (grill_fish_pending)
        (grill_fish_done)
        (rest_fish_pending)
        (rest_fish_done)
    )

    (:durative-action heat_grill
        :parameters ()
        :duration (= ?duration 600)
        :condition (at start (heat_grill_pending))
        :effect (and (at start (not (heat_grill_pending))) (at end (heat_grill_done)))
    )

    (:durative-action cut_fish
        :parameters ()
        :duration (= ?duration 1200)
        :condition (at start (cut_fish_pending))
        :effect (and (at start (not (cut_fish_pending))) (at end (cut_fish_done)))
    )

    (:durative-action season_fish
        :parameters ()
        :duration (= ?duration 300)
        :condition (and (at start (season_fish_pending)) (at start (cut_fish_done)))
        :effect (and (at start (not (season_fish_pending))) (at end (season_fish_done)))
    )

    (:durative-action grill_fish
        :parameters ()
        :duration (= ?duration 1200)
        :condition (and (at start (grill_fish_pending)) (at start (heat_grill_done)) (at start (season_fish_done)))
        :effect (and (at start (not (grill_fish_pending))) (at end (grill_fish_done)))
    )

    (:durative-action rest_fish
        :parameters ()
        :duration (= ?duration 600)
        :condition (and (at start (rest_fish_pending)) (at start (grill_fish_done)))
        :effect (and (at start (not (rest_fish_pending))) (at end (rest_fish_done)))
    )
)
