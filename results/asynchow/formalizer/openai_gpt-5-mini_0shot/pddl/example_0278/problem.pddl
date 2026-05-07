(define (problem conjugate-puedo-problem)
  (:domain conjugate-puedo)

  (:objects
    step1 step2 step3 step4 step5 step6 step7 - step
  )

  (:init
    ; all steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
    (step_pending step6)
    (step_pending step7)
  )

  ; Goal requires completion of every step and the semantic predicates
  ; so that each durative-action must actually be executed.
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (step_done step6)
    (step_done step7)

    (step1_sem)
    (step2_sem)
    (step3_sem)
    (step4_sem)
    (step5_sem)
    (step6_sem)
    (step7_sem)
  ))
)
