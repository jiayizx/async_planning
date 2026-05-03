(define (domain muscle_development)
  (:requirements :durative-actions)
  
  (:predicates
    (find_gym_pending)
    (find_gym_done)
    (find_trainer_pending)
    (find_trainer_done)
    (eat_protein_pending)
    (eat_protein_done)
    (increase_routine_pending)
    (increase_routine_done)
    (work_out_pending)
    (work_out_done)
  )

  (:durative-action find_gym
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (find_gym_pending))
    :effect (and (at start (not (find_gym_pending))) (at end (find_gym_done)))
  )

  (:durative-action find_trainer
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (find_trainer_pending)) (at start (find_gym_done)))
    :effect (and (at start (not (find_trainer_pending))) (at end (find_trainer_done)))
  )

  (:durative-action eat_protein
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (eat_protein_pending)) (at start (find_trainer_done)))
    :effect (and (at start (not (eat_protein_pending))) (at end (eat_protein_done)))
  )

  (:durative-action increase_routine
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (increase_routine_pending)) (at start (eat_protein_done)))
    :effect (and (at start (not (increase_routine_pending))) (at end (increase_routine_done)))
  )

  (:durative-action work_out
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (work_out_pending)) (at start (eat_protein_done)))
    :effect (and (at start (not (work_out_pending))) (at end (work_out_done)))
  )
)