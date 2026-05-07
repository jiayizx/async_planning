(define (domain learn_poker)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (books_read)
               (internet_logged)
               (strategies_researched)
               (practice_done)
               (money_played)
               (casino_played))
  (:durative-action read_books
    :duration 10368000
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (books_read))))
  (:durative-action log_internet
    :duration 60
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (internet_logged))))
  (:durative-action research_strategies
    :duration 604800
    :condition (and (at start (step_pending ?s))
                    (at start (internet_logged)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (strategies_researched))))
  (:durative-action practice_poker
    :duration 604800
    :condition (and (at start (step_pending ?s))
                    (at start (books_read))
                    (at start (strategies_researched)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (practice_done))))
  (:durative-action play_for_money
    :duration 604800
    :condition (and (at start (step_pending ?s))
                    (at start (practice_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (money_played))))
  (:durative-action play_casino
    :duration 5184000
    :condition (and (at start (step_pending ?s))
                    (at start (money_played)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (casino_played)))))