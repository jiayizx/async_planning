(define (domain poker_learning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (books_read)
    (internet_logged)
    (strategies_researched)
    (practiced_fun)
    (played_money)
    (played_casino)
  )

  (:durative-action read_poker_books
    :parameters (?s - step)
    :duration (= ?duration 10368000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (books_read)))
  )

  (:durative-action log_onto_internet
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (internet_logged)))
  )

  (:durative-action research_strategies
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (internet_logged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (strategies_researched)))
  )

  (:durative-action practice_fun
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (books_read)) (at start (strategies_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (practiced_fun)))
  )

  (:durative-action play_money
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (practiced_fun)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (played_money)))
  )

  (:durative-action play_casino
    :parameters (?s - step)
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending ?s)) (at start (played_money)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (played_casino)))
  )
)