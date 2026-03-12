(define (problem sodium_levels_up_instance)
  (:domain sodium_levels_up)
  (:init
    (talk_to_physician_pending)
    (take_anti_nausea_medication_pending)
    (take_anti_diarrheals_pending)
  )
  (:goal (and
    (talk_to_physician_done)
    (take_anti_nausea_medication_done)
    (take_anti_diarrheals_done)
  ))
)
