(define (domain attract-birds)
  (:requirements :durative-actions)
  (:predicates
    (hang_nest_box_pending)
    (hang_nest_box_done)
    (install_nest_box_pending)
    (install_nest_box_done)
    (provide_nesting_materials_pending)
    (provide_nesting_materials_done)
  )

  (:durative-action hang_nest_box
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (hang_nest_box_pending))
    :effect (and
      (at start (not (hang_nest_box_pending)))
      (at end (hang_nest_box_done))
    )
  )

  (:durative-action install_nest_box
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (install_nest_box_pending))
      (at start (hang_nest_box_done))
    )
    :effect (and
      (at start (not (install_nest_box_pending)))
      (at end (install_nest_box_done))
    )
  )

  (:durative-action provide_nesting_materials
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (provide_nesting_materials_pending))
    :effect (and
      (at start (not (provide_nesting_materials_pending)))
      (at end (provide_nesting_materials_done))
    )
  )
)
