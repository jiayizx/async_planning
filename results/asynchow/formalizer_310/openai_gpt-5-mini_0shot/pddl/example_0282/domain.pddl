(define (domain whelp_large_breed)
  (:requirements :durative-actions)
  (:predicates
    (prepare_pending)
    (prepare_done)
    (line_pending)
    (line_done)
    (lamp_pending)
    (lamp_done)
  )

  (:durative-action do_prepare_box
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (prepare_pending))
    :effect (and (at start (not (prepare_pending))) (at end (prepare_done)))
  )

  (:durative-action do_line_box
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (line_pending)) (at start (prepare_done)))
    :effect (and (at start (not (line_pending))) (at end (line_done)))
  )

  (:durative-action do_place_lamp
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (lamp_pending)) (at start (prepare_done)))
    :effect (and (at start (not (lamp_pending))) (at end (lamp_done)))
  )
)
