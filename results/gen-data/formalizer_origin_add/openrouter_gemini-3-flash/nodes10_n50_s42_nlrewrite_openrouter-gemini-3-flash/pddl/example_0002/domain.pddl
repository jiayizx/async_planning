(define (domain great_lakes_memory)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (research_done)
    (recite_done)
    (history_done)
    (map_done)
    (quiz_done)
    (documentary_done)
    (review_done)
    (mnemonic_done)
    (book_purchased)
    (explanation_done)
  )

  (:durative-action research_location
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action purchase_book
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (book_purchased)))
  )

  (:durative-action read_history
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (book_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (history_done)))
  )

  (:durative-action draw_map
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (map_done)))
  )

  (:durative-action watch_documentary
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (history_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (documentary_done)))
  )

  (:durative-action create_mnemonic
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (documentary_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mnemonic_done)))
  )

  (:durative-action recite_names
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (mnemonic_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (recite_done)))
  )

  (:durative-action take_quiz
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (recite_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (quiz_done)))
  )

  (:durative-action review_results
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (quiz_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (review_done)))
  )

  (:durative-action explain_acronym
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (recite_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (explanation_done)))
  )
)