(define (problem file_cabinet_makeover_problem)
    (:domain file_cabinet_makeover)
    
    (:init
        (choose_paper_pending)
        (measure_drawer_pending)
        (cut_paper_pending)
        (align_paper_pending)
        (trim_paper_pending)
        (add_decoration_pending)
    )

    (:goal (and
        (choose_paper_done)
        (measure_drawer_done)
        (cut_paper_done)
        (align_paper_done)
        (trim_paper_done)
        (add_decoration_done)
    ))
)
