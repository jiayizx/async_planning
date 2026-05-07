(define (domain file_cabinet_makeover)
    (:requirements :durative-actions)
    
    (:predicates
        (choose_paper_pending)
        (choose_paper_done)
        (measure_drawer_pending)
        (measure_drawer_done)
        (cut_paper_pending)
        (cut_paper_done)
        (align_paper_pending)
        (align_paper_done)
        (trim_paper_pending)
        (trim_paper_done)
        (add_decoration_pending)
        (add_decoration_done)
    )

    (:durative-action choose_paper
        :parameters ()
        :duration (= ?duration 300)
        :condition (at start (choose_paper_pending))
        :effect (and (at start (not (choose_paper_pending))) (at end (choose_paper_done)))
    )

    (:durative-action measure_drawer
        :parameters ()
        :duration (= ?duration 120)
        :condition (at start (measure_drawer_pending))
        :effect (and (at start (not (measure_drawer_pending))) (at end (measure_drawer_done)))
    )

    (:durative-action cut_paper
        :parameters ()
        :duration (= ?duration 180)
        :condition (and (at start (cut_paper_pending))
                        (at start (choose_paper_done))
                        (at start (measure_drawer_done)))
        :effect (and (at start (not (cut_paper_pending))) (at end (cut_paper_done)))
    )

    (:durative-action align_paper
        :parameters ()
        :duration (= ?duration 300)
        :condition (and (at start (align_paper_pending))
                        (at start (cut_paper_done)))
        :effect (and (at start (not (align_paper_pending))) (at end (align_paper_done)))
    )

    (:durative-action trim_paper
        :parameters ()
        :duration (= ?duration 600)
        :condition (and (at start (trim_paper_pending))
                        (at start (align_paper_done)))
        :effect (and (at start (not (trim_paper_pending))) (at end (trim_paper_done)))
    )

    (:durative-action add_decoration
        :parameters ()
        :duration (= ?duration 900)
        :condition (and (at start (add_decoration_pending))
                        (at start (trim_paper_done)))
        :effect (and (at start (not (add_decoration_pending))) (at end (add_decoration_done)))
    )
)
