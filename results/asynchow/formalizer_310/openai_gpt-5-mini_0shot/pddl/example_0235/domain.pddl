(define (domain attract-birds)
  (:requirements :durative-actions)
  (:predicates
    (hang_pending)
    (hang_done)
    (install_pending)
    (install_done)
    (provide_pending)
    (provide_done)
  )

  (:durative-action do_hang_nest_box
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (hang_pending))
    :effect (and
      (at start (not (hang_pending)))
      (at end (hang_done))
    )
  )

  (:durative-action do_install_nest_box
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (install_pending)) (at start (hang_done)))
    :effect (and
      (at start (not (install_pending)))
      (at end (install_done))
    )
  )

  (:durative-action do_provide_nesting_materials
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (provide_pending))
    :effect (and
      (at start (not (provide_pending)))
      (at end (provide_done))
    )
  )
)
