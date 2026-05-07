(define (problem keep_sodium_levels)
  (:domain sodium_levels)
  
  (:init
    (talk_to_physician_pending)
    (take_anti_nausea_pending)
    (take_anti_diarrheals_pending)
  )

  (:goal (and
    (talk_to_physician_done)
    (take_anti_nausea_done)
    (take_anti_diarrheals_done)
  ))
)