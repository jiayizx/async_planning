(define (problem poker_learning_problem)
  (:domain poker_learning)
  
  (:init
    (read_books_pending)
    (log_on_pending)
    (research_pending)
    (practice_fun_pending)
    (play_money_pending)
    (play_casino_pending)
  )

  (:goal (and
    (read_books_done)
    (log_on_done)
    (research_done)
    (practice_fun_done)
    (play_money_done)
    (play_casino_done)
  ))
)
