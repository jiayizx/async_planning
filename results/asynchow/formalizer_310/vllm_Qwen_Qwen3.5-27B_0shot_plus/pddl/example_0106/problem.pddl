(define (problem develop_muscles)
  (:domain muscle_development)
  
  (:init
    (find_gym_pending)
    (find_trainer_pending)
    (eat_protein_pending)
    (increase_routine_pending)
    (work_out_pending)
  )

  (:goal (and
    (find_gym_done)
    (find_trainer_done)
    (eat_protein_done)
    (increase_routine_done)
    (work_out_done)
  ))
)