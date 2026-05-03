(define (problem attract-birds-problem)
    (:domain attract-birds)
    (:init
        (hang_nest_box_pending)
        (install_nest_box_pending)
        (provide_materials_pending)
    )
    (:goal (and
        (hang_nest_box_done)
        (install_nest_box_done)
        (provide_materials_done)
    ))
)
