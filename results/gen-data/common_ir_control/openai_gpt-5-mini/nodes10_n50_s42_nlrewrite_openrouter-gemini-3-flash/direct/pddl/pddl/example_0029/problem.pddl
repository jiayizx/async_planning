(define (problem make_brownies_microwave)
  (:domain brownies_microwave)

  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10 - step
  )

  (:init
    ; All steps start pending per rule
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
    (step_pending step6)
    (step_pending step7)
    (step_pending step8)
    (step_pending step9)
    (step_pending step10)

    ; No semantic predicates true initially (they will be achieved by actions)
  )

  (:goal (and
    ; Require every step to be done
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (step_done step6)
    (step_done step7)
    (step_done step8)
    (step_done step9)
    (step_done step10)

    ; And require the final semantic outcome (microwave_done) to force the full chain
    (microwave_done)
  ))
)
