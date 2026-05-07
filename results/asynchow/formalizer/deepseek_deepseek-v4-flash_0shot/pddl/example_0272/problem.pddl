(define (problem owner-equity)
  (:domain equity-calculation)
  (:objects step1 step2 step3 step4 step5 step6 - step)
  (:init
    (pending step1) (pending step2) (pending step3) (pending step4) (pending step5) (pending step6)
  )
  (:goal (and (done step1) (done step2) (done step3) (done step4) (done step5) (done step6)
              (equity_individual_calculated)))
)