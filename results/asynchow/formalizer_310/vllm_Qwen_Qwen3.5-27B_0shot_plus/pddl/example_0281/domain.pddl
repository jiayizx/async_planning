(define (domain hip_exercise)
  (:requirements :durative-actions)
  
  (:predicates
    (stretch_general_pending)
    (stretch_general_done)
    (stretch_itb_pending)
    (stretch_itb_done)
    (stretch_piriformis_pending)
    (stretch_piriformis_done)
    (stretch_leg_chest_pending)
    (stretch_leg_chest_done)
    (stretch_hamstring_pending)
    (stretch_hamstring_done)
  )

  (:durative-action do_stretch_general
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (stretch_general_pending))
    :effect (and (at start (not (stretch_general_pending)))
                 (at end (stretch_general_done)))
  )

  (:durative-action do_stretch_itb
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (stretch_itb_pending))
                    (at start (stretch_general_done)))
    :effect (and (at start (not (stretch_itb_pending)))
                 (at end (stretch_itb_done)))
  )

  (:durative-action do_stretch_piriformis
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (stretch_piriformis_pending))
                    (at start (stretch_general_done)))
    :effect (and (at start (not (stretch_piriformis_pending)))
                 (at end (stretch_piriformis_done)))
  )

  (:durative-action do_stretch_leg_chest
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (stretch_leg_chest_pending))
                    (at start (stretch_general_done)))
    :effect (and (at start (not (stretch_leg_chest_pending)))
                 (at end (stretch_leg_chest_done)))
  )

  (:durative-action do_stretch_hamstring
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (stretch_hamstring_pending))
                    (at start (stretch_general_done)))
    :effect (and (at start (not (stretch_hamstring_pending)))
                 (at end (stretch_hamstring_done)))
  )
)