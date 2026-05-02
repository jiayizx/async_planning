(define (problem clean_bathtub_problem)
  (:domain clean_enamel_bathtub)

  (:init
    (mix_pending)
    (rub_pending)
    (rinse_pending)
    (weekly_clean_pending)
  )

  (:goal (and
    (mix_done)
    (rub_done)
    (rinse_done)
    (weekly_clean_done)
  ))
)
