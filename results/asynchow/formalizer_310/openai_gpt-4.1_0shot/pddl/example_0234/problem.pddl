(define (problem stop_coworker_bullying-problem)
  (:domain stop_coworker_bullying)
  (:init
    (talk_coworkers_pending)
    (discuss_supervisor_pending)
    (stand_up_together_pending)
  )
  (:goal (and
    (talk_coworkers_done)
    (discuss_supervisor_done)
    (stand_up_together_done)
  ))
)
