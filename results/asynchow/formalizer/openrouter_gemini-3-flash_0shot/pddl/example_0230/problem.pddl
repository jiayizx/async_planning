(define (problem contact_leah_remini_prob)
  (:domain contact_leah_remini)
  (:objects
    step1 step2 step3 step4 step5 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )
  (:goal
    (and
      (step_done step1)
      (step_done step2)
      (step_done step3)
      (step_done step4)
      (step_done step5)
      (tweeted)
      (instagram_commented)
      (facebook_commented)
      (reddit_messaged)
      (fake_accounts_checked)
    )
  )
)