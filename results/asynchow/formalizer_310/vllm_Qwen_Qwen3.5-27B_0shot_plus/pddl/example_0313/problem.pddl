(define (problem repair_seats_instance)
    (:domain repair_leather_seats)
    
    (:init
        (choose_patch_pending)
        (cut_patch_pending)
        (put_wax_paper_pending)
        (attach_patch_pending)
        (allow_dry_pending)
    )

    (:goal (and
        (choose_patch_done)
        (cut_patch_done)
        (put_wax_paper_done)
        (attach_patch_done)
        (allow_dry_done)
    ))
)
