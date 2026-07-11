(define (domain grocery-list-planning)
    (:requirements :durative-actions)
    
    (:predicates
        (open_cabinets_pending)
        (open_cabinets_done)
        (open_fridge_pending)
        (open_fridge_done)
        (consider_required_pending)
        (consider_required_done)
        (grab_pen_paper_pending)
        (grab_pen_paper_done)
        (jot_down_items_pending)
        (jot_down_items_done)
    )

    (:durative-action open_cabinets
        :parameters ()
        :duration (= ?duration 180)
        :condition (at start (open_cabinets_pending))
        :effect (and (at start (not (open_cabinets_pending))) (at end (open_cabinets_done)))
    )

    (:durative-action open_fridge
        :parameters ()
        :duration (= ?duration 300)
        :condition (at start (open_fridge_pending))
        :effect (and (at start (not (open_fridge_pending))) (at end (open_fridge_done)))
    )

    (:durative-action consider_required
        :parameters ()
        :duration (= ?duration 60)
        :condition (and (at start (consider_required_pending)) (at start (open_cabinets_done)) (at start (open_fridge_done)))
        :effect (and (at start (not (consider_required_pending))) (at end (consider_required_done)))
    )

    (:durative-action grab_pen_paper
        :parameters ()
        :duration (= ?duration 15)
        :condition (and (at start (grab_pen_paper_pending)) (at start (consider_required_done)))
        :effect (and (at start (not (grab_pen_paper_pending))) (at end (grab_pen_paper_done)))
    )

    (:durative-action jot_down_items
        :parameters ()
        :duration (= ?duration 180)
        :condition (and (at start (jot_down_items_pending)) (at start (consider_required_done)))
        :effect (and (at start (not (jot_down_items_pending))) (at end (jot_down_items_done)))
    )
)
