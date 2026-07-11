(define (problem chinchilla_play_instance)
  (:domain chinchilla_play)
  
  (:init
    (step1_pending)
    (step2_pending)
    (step3_pending)
    (step4_pending)
  )

  (:goal (and
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
  ))
)