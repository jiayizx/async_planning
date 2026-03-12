(define (problem roast-macadamia-nuts-problem)
  (:domain roast-macadamia-nuts)
  (:init
    (wear_eye_protection_pending)
    (obtain_cracker_pending)
    (shell_nuts_pending)
  )
  (:goal (and
    (wear_eye_protection_done)
    (obtain_cracker_done)
    (shell_nuts_done)
  ))
)
