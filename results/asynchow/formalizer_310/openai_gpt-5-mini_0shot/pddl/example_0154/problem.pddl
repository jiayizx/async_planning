(define (problem take_garcinia_instance)
  (:domain take_garcinia_cambogia)

  (:init
    (learn_dose_pending)
    (take_pill_pending)
    (consider_liquid_pending)
  )

  (:goal (and
    (learn_dose_done)
    (take_pill_done)
    (consider_liquid_done)
  ))
)
