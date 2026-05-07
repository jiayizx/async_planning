(define (problem psp_download_problem)
  (:domain psp_download)
  (:objects
    step1 step2 step3 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (memory_stick_purchased)
    (memory_stick_formatted)
    (firmware_identified)
  ))
)