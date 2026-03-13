(define (domain asl_learning)
  (:requirements :durative-actions)
  (:predicates
    (understand_phrases_pending)
    (understand_phrases_done)
    (practice_greeting_pending)
    (practice_greeting_done)
    (learn_praise_pending)
    (learn_praise_done)
  )

  (:durative-action understand_phrases
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (understand_phrases_pending))
    :effect (and
      (at start (not (understand_phrases_pending)))
      (at end (understand_phrases_done))
    )
  )

  (:durative-action practice_greeting
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (practice_greeting_pending))
      (at start (understand_phrases_done))
    )
    :effect (and
      (at start (not (practice_greeting_pending)))
      (at end (practice_greeting_done))
    )
  )

  (:durative-action learn_praise
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (learn_praise_pending))
      (at start (understand_phrases_done))
    )
    :effect (and
      (at start (not (learn_praise_pending)))
      (at end (learn_praise_done))
    )
  )
)
