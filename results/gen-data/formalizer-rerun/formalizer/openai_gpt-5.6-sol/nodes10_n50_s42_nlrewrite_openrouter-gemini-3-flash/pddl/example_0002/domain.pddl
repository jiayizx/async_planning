(define (domain great-lakes-memory)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (locations_researched)
    (names_recited)
    (shipping_history_read)
    (map_drawn)
    (practice_quiz_taken)
    (documentary_watched)
    (quiz_reviewed)
    (mnemonic_created)
    (reference_book_purchased)
    (lakes_remembered)
  )

  (:durative-action research_locations
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (locations_researched))
    )
  )

  (:durative-action recite_names
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (mnemonic_created))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (names_recited))
    )
  )

  (:durative-action read_shipping_history
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (reference_book_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shipping_history_read))
    )
  )

  (:durative-action draw_map
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (locations_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (map_drawn))
    )
  )

  (:durative-action take_practice_quiz
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (names_recited))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (practice_quiz_taken))
    )
  )

  (:durative-action watch_documentary
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (shipping_history_read))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (documentary_watched))
    )
  )

  (:durative-action review_quiz
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (practice_quiz_taken))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (quiz_reviewed))
    )
  )

  (:durative-action create_mnemonic
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (documentary_watched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mnemonic_created))
    )
  )

  (:durative-action purchase_reference_book
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (reference_book_purchased))
    )
  )

  (:durative-action explain_homes_acronym
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (names_recited))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lakes_remembered))
    )
  )
)