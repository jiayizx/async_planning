(define (problem make_grocery_list)
    (:domain grocery-list-planning)
    
    (:init
        (open_cabinets_pending)
        (open_fridge_pending)
        (consider_required_pending)
        (grab_pen_paper_pending)
        (jot_down_items_pending)
    )

    (:goal (and
        (open_cabinets_done)
        (open_fridge_done)
        (consider_required_done)
        (grab_pen_paper_done)
        (jot_down_items_done)
    ))
)
