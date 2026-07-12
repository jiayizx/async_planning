(define (problem conduct-self-analysis)
  (:domain self-analysis)

  (:objects
    step1 - step1_type
    step2 - step2_type
    step3 - step3_type
    step4 - step4_type
    step5 - step5_type
  )

  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (strengths_weaknesses_report_written)
    (followup_session_scheduled)
  ))
)