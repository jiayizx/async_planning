(define (problem pass_time_by_doing_art_problem)
  (:domain pass_time_by_doing_art)
  (:objects
    step1 step2 step3 step4 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (materials_gathered)
    (desk_caddy_made)
    (drum_kit_made)
    (bowling_game_made)
  ))
)