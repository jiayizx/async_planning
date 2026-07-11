(define (domain essential_oils_performance)
    (:requirements :durative-actions)
    
    (:predicates
        (use_caution_pending)
        (use_caution_done)
        (massage_lavender_pending)
        (massage_lavender_done)
        (use_ginger_pending)
        (use_ginger_done)
        (try_black_pepper_pending)
        (try_black_pepper_done)
    )

    (:durative-action do_use_caution
        :parameters ()
        :duration (= ?duration 300)
        :condition (at start (use_caution_pending))
        :effect (and (at start (not (use_caution_pending))) (at end (use_caution_done)))
    )

    (:durative-action do_massage_lavender
        :parameters ()
        :duration (= ?duration 600)
        :condition (and (at start (massage_lavender_pending)) (at start (use_caution_done)))
        :effect (and (at start (not (massage_lavender_pending))) (at end (massage_lavender_done)))
    )

    (:durative-action do_use_ginger
        :parameters ()
        :duration (= ?duration 900)
        :condition (and (at start (use_ginger_pending)) (at start (use_caution_done)))
        :effect (and (at start (not (use_ginger_pending))) (at end (use_ginger_done)))
    )

    (:durative-action do_try_black_pepper
        :parameters ()
        :duration (= ?duration 1200)
        :condition (and (at start (try_black_pepper_pending)) (at start (use_caution_done)))
        :effect (and (at start (not (try_black_pepper_pending))) (at end (try_black_pepper_done)))
    )
)
