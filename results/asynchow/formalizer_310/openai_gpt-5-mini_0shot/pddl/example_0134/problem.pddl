(define (problem ac_screenshot_problem)
  (:domain ac_screenshot)
  (:init
    (hold_L_pending)
    (hold_R_pending)
    (take_picture_pending)
  )
  (:goal (and
    (hold_L_done)
    (hold_R_done)
    (take_picture_done)
  ))
)
