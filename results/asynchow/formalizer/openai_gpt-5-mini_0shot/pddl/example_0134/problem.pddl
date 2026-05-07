(define (problem take_screenshot) (:domain acnl_screenshot)
  (:objects step1 step2 step3 - step)

  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (applicable_hold_L step1)
    (applicable_hold_R step2)
    (applicable_take_picture step3)
  )

  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (picture_taken)
  ))
)
