(define (problem clean_silk_tie_problem)
  (:domain clean_silk_tie)
  (:init
    (spray_on_fabric_protector_pending)
    (hand_wash_tie_pending)
    (tuck_tie_away_pending)
  )
  (:goal (and
    (spray_on_fabric_protector_done)
    (hand_wash_tie_done)
    (tuck_tie_away_done)
  ))
)
