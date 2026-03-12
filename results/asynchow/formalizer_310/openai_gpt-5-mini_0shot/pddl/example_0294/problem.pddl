(define (problem service-brakes-prob)
  (:domain service-brakes)
  ; Durations are in seconds: step1=600s, step2=900s, step3=1200s, step4=900s, step5=1800s
  (:init
    (step1_pending)
    (step2_pending)
    (step3_pending)
    (step4_pending)
    (step5_pending)
  )
  (:goal (and
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
    (step5_done)
  ))
)
