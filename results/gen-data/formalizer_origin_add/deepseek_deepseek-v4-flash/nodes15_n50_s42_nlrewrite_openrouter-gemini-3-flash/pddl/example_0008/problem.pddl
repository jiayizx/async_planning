(define (problem hiking-problem)
  (:domain hiking)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10 step11 step12 step13 step14 step15 - step)
  (:init
    (pending step1) (pending step2) (pending step3) (pending step4) (pending step5) (pending step6) (pending step7) (pending step8) (pending step9) (pending step10) (pending step11) (pending step12) (pending step13) (pending step14) (pending step15))
  (:goal (and (done step1) (done step2) (done step3) (done step4) (done step5) (done step6) (done step7) (done step8) (done step9) (done step10) (done step11) (done step12) (done step13) (done step14) (done step15)))
  (:metric minimize (total-time))
)