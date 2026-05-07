(define (problem make_girl_feel_beautiful_prob)
  (:domain make_girl_feel_beautiful)
  (:objects step1 step2 step3 step4 step5 - step)

  (:init
    ;; All steps initially pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  ;; Goals: every step completed and final semantic predicate (card_given)
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (card_given)
  ))
)
