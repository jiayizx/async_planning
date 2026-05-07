(define (domain coworker_intervention)
  (:requirements :durative-actions)
  
  (:predicates
    (talk_pending)
    (talk_done)
    (discuss_pending)
    (discuss_done)
    (standup_pending)
    (standup_done)
  )

  (:durative-action do_talk
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (talk_pending))
    :effect (and (at start (not (talk_pending))) (at end (talk_done)))
  )

  (:durative-action do_discuss
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (discuss_pending))
    :effect (and (at start (not (discuss_pending))) (at end (discuss_done)))
  )

  (:durative-action do_standup
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (standup_pending)) (at start (talk_done)))
    :effect (and (at start (not (standup_pending))) (at end (standup_done)))
  )
)
