(define (problem stop_coworker_bullying)
  (:domain coworker_intervention)
  
  (:init
    (talk_pending)
    (discuss_pending)
    (standup_pending)
  )

  (:goal (and (talk_done) (discuss_done) (standup_done)))
)
