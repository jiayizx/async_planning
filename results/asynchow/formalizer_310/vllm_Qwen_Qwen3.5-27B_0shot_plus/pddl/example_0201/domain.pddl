(define (domain clean_limestone_fireplace)
    (:requirements :durative-actions)
    
    (:predicates
        (scoop_flour_pending)
        (scoop_flour_done)
        (apply_poultice_pending)
        (apply_poultice_done)
        (remove_paste_pending)
        (remove_paste_done)
        (wipe_fireplace_pending)
        (wipe_fireplace_done)
    )

    (:durative-action scoop_flour
        :parameters ()
        :duration (= ?duration 300)
        :condition (at start (scoop_flour_pending))
        :effect (and (at start (not (scoop_flour_pending))) (at end (scoop_flour_done)))
    )

    (:durative-action apply_poultice
        :parameters ()
        :duration (= ?duration 900)
        :condition (and (at start (apply_poultice_pending)) (at start (scoop_flour_done)) (at start (wipe_fireplace_done)))
        :effect (and (at start (not (apply_poultice_pending))) (at end (apply_poultice_done)))
    )

    (:durative-action remove_paste
        :parameters ()
        :duration (= ?duration 1800)
        :condition (and (at start (remove_paste_pending)) (at start (apply_poultice_done)))
        :effect (and (at start (not (remove_paste_pending))) (at end (remove_paste_done)))
    )

    (:durative-action wipe_fireplace
        :parameters ()
        :duration (= ?duration 300)
        :condition (at start (wipe_fireplace_pending))
        :effect (and (at start (not (wipe_fireplace_pending))) (at end (wipe_fireplace_done)))
    )
)