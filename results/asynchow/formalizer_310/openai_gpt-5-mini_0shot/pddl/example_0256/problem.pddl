(define (problem lose_upper_body_fat_problem)
  (:domain lose_upper_body_fat_domain)

  (:init
    (chinups_pending)
    (dumbbell_row_pending)
    (rear_delt_pending)
    (choose_exercises_pending)
  )

  (:goal (and
    (chinups_done)
    (dumbbell_row_done)
    (rear_delt_done)
    (choose_exercises_done)
  ))
)
