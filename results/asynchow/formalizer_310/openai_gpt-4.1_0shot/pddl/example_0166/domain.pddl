(define (domain babys-breath-crown)
  (:requirements :durative-actions)
  (:predicates
    (choose_babys_breath_pending)
    (choose_babys_breath_done)
    (trim_stem_pending)
    (trim_stem_done)
    (tape_bunch_pending)
    (tape_bunch_done)
    (create_circle_pending)
    (create_circle_done)
  )

  (:durative-action choose_babys_breath
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (choose_babys_breath_pending))
    :effect (and (at start (not (choose_babys_breath_pending)))
                 (at end (choose_babys_breath_done)))
  )

  (:durative-action trim_stem
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (trim_stem_pending))
                    (at start (choose_babys_breath_done)))
    :effect (and (at start (not (trim_stem_pending)))
                 (at end (trim_stem_done)))
  )

  (:durative-action tape_bunch
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (tape_bunch_pending))
                    (at start (trim_stem_done)))
    :effect (and (at start (not (tape_bunch_pending)))
                 (at end (tape_bunch_done)))
  )

  (:durative-action create_circle
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (create_circle_pending))
    :effect (and (at start (not (create_circle_pending)))
                 (at end (create_circle_done)))
  )
)
