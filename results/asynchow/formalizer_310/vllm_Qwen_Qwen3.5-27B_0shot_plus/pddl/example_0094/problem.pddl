(define (problem varsity_task)
  (:domain varsity_planning)
  
  (:init
    (play_jv_season_pending)
    (train_skills_pending)
    (confess_commitment_pending)
    (show_skills_pending)
    (receive_spot_pending)
    (perform_preseason_pending)
    (head_field_pending)
  )

  (:goal (and
    (play_jv_season_done)
    (train_skills_done)
    (confess_commitment_done)
    (show_skills_done)
    (receive_spot_done)
    (perform_preseason_done)
    (head_field_done)
  ))
)
