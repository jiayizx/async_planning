(define (problem asl_learning_problem)
  (:domain asl_learning)
  
  (:init
    (understand_phrases_pending)
    (practice_greeting_pending)
    (learn_praise_pending)
  )

  (:goal (and
    (understand_phrases_done)
    (practice_greeting_done)
    (learn_praise_done)
  ))
)