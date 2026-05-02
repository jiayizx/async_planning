(define (problem keep-sodium-levels-up-problem)
  (:domain keep-sodium-levels-up)
  (:init
    (talk_physician_pending)
    (take_anti_nausea_pending)
    (take_anti_diarrheals_pending)
  )
  (:goal (and
    (talk_physician_done)
    (take_anti_nausea_done)
    (take_anti_diarrheals_done)
  ))
)
