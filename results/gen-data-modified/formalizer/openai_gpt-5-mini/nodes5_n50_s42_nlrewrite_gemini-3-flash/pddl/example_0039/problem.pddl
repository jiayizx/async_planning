(define (problem take-body-measurements)
  (:domain body-measurements)
  ; Shortest possible makespan: 480 seconds (steps 1+3 must finish before 2; 3 finishes at 180, then 2 runs 300 -> 480).

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
