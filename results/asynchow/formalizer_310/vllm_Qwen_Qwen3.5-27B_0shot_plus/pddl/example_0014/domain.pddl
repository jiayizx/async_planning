(define (domain poker_learning)
  (:requirements :durative-actions)
  
  (:predicates
    (read_books_pending)
    (read_books_done)
    (log_on_pending)
    (log_on_done)
    (research_pending)
    (research_done)
    (practice_fun_pending)
    (practice_fun_done)
    (play_money_pending)
    (play_money_done)
    (play_casino_pending)
    (play_casino_done)
  )

  (:durative-action read_books
    :parameters ()
    :duration (= ?duration 10368000)
    :condition (at start (read_books_pending))
    :effect (and (at start (not (read_books_pending))) (at end (read_books_done)))
  )

  (:durative-action log_on
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (log_on_pending))
    :effect (and (at start (not (log_on_pending))) (at end (log_on_done)))
  )

  (:durative-action research
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (research_pending)) (at start (log_on_done)))
    :effect (and (at start (not (research_pending))) (at end (research_done)))
  )

  (:durative-action practice_fun
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (practice_fun_pending)) (at start (read_books_done)) (at start (research_done)))
    :effect (and (at start (not (practice_fun_pending))) (at end (practice_fun_done)))
  )

  (:durative-action play_money
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (play_money_pending)) (at start (practice_fun_done)))
    :effect (and (at start (not (play_money_pending))) (at end (play_money_done)))
  )

  (:durative-action play_casino
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (play_casino_pending)) (at start (play_money_done)))
    :effect (and (at start (not (play_casino_pending))) (at end (play_casino_done)))
  )
)
