(define (problem church_choir_problem)
  (:domain church_choir)
  
  (:init
    (gather_clothing_pending)
    (warm_up_voice_pending)
    (sing_verses_pending)
    (get_ready_pending)
    (drive_to_church_pending)
    (wait_for_singing_pending)
  )

  (:goal (and
    (gather_clothing_done)
    (warm_up_voice_done)
    (sing_verses_done)
    (get_ready_done)
    (drive_to_church_done)
    (wait_for_singing_done)
  ))
)
