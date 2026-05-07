(define (domain garcinia_planning)
  (:requirements :durative-actions)
  
  (:predicates
    (learn_dose_pending)
    (learn_dose_done)
    (take_pill_pending)
    (take_pill_done)
    (consider_liquid_pending)
    (consider_liquid_done)
  )

  (:durative-action learn_dose
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (learn_dose_pending))
    :effect (and (at start (not (learn_dose_pending)))
                 (at end (learn_dose_done)))
  )

  (:durative-action take_pill
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (take_pill_pending))
                    (at start (learn_dose_done)))
    :effect (and (at start (not (take_pill_pending)))
                 (at end (take_pill_done)))
  )

  (:durative-action consider_liquid
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (consider_liquid_pending))
                    (at start (learn_dose_done)))
    :effect (and (at start (not (consider_liquid_pending)))
                 (at end (consider_liquid_done)))
  )
)