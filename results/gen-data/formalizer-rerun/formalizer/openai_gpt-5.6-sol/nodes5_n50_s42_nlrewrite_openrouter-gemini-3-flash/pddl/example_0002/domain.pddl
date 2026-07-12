(define (domain finnish-counting)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (numbers_looked_up)
    (pronunciation_recorded)
    (errors_corrected)
    (flashcards_written)
    (numbers_one_to_five_memorized)
  )

  (:durative-action look_up_numbers
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (numbers_looked_up))
    )
  )

  (:durative-action record_pronunciation
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (flashcards_written))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pronunciation_recorded))
    )
  )

  (:durative-action listen_and_correct
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (pronunciation_recorded))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (errors_corrected))
    )
  )

  (:durative-action write_flashcards
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (numbers_looked_up))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (flashcards_written))
    )
  )

  (:durative-action memorize_one_to_five
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (numbers_looked_up))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (numbers_one_to_five_memorized))
    )
  )
)