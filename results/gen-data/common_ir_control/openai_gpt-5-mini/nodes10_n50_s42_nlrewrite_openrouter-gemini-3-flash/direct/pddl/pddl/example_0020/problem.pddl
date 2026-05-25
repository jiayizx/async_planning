(define (problem play_nds_problem)
  (:domain play_nds)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10 - step
  )
  (:init
    ;; all steps start pending
    (pending step1)
    (pending step2)
    (pending step3)
    (pending step4)
    (pending step5)
    (pending step6)
    (pending step7)
    (pending step8)
    (pending step9)
    (pending step10)
  )
  (:goal (and
    (done step1)
    (done step2)
    (done step3)
    (done step4)
    (done step5)
    (done step6)
    (done step7)
    (done step8)
    (done step9)
    (done step10)
    ;; final semantic predicate to force the complete causal chain
    (s7_done)
  ))
