(define (domain poker-learning)
  (:requirements :durative-actions)
  (:predicates
    (read_poker_books_pending)
    (read_poker_books_done)
    (log_onto_internet_pending)
    (log_onto_internet_done)
    (research_poker_strategies_pending)
    (research_poker_strategies_done)
    (practice_with_friends_pending)
    (practice_with_friends_done)
    (play_for_money_pending)
    (play_for_money_done)
    (play_in_casino_pending)
    (play_in_casino_done)
  )

  (:durative-action read_poker_books
    :parameters ()
    :duration (= ?duration 10368000)
    :condition (at start (read_poker_books_pending))
    :effect (and (at start (not (read_poker_books_pending))) (at end (read_poker_books_done)))
  )

  (:durative-action log_onto_internet
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (log_onto_internet_pending))
    :effect (and (at start (not (log_onto_internet_pending))) (at end (log_onto_internet_done)))
  )

  (:durative-action research_poker_strategies
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (research_poker_strategies_pending)) (at start (log_onto_internet_done)))
    :effect (and (at start (not (research_poker_strategies_pending))) (at end (research_poker_strategies_done)))
  )

  (:durative-action practice_with_friends
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (practice_with_friends_pending)) (at start (read_poker_books_done)) (at start (research_poker_strategies_done)))
    :effect (and (at start (not (practice_with_friends_pending))) (at end (practice_with_friends_done)))
  )

  (:durative-action play_for_money
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (play_for_money_pending)) (at start (practice_with_friends_done)))
    :effect (and (at start (not (play_for_money_pending))) (at end (play_for_money_done)))
  )

  (:durative-action play_in_casino
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (play_in_casino_pending)) (at start (play_for_money_done)))
    :effect (and (at start (not (play_in_casino_pending))) (at end (play_in_casino_done)))
  )
)
