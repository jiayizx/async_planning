(define (problem roast_macadamia_nuts_problem)
  (:domain roast_macadamia_nuts)

  (:init
    (wear_eye_protection_pending)
    (obtain_cracker_pending)
    (shell_nuts_pending)
  )

  (:goal (and
    (wear_eye_protection_done)
    (obtain_cracker_done)
    (shell_nuts_done)))
)
