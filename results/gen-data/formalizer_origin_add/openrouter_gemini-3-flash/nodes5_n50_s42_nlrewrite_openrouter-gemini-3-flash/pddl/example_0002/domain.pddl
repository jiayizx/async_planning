(define (domain finnish_counting)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (numbers_looked_up)
    (recording_made)
    (recording_corrected)
    (flashcards_written)
    (numbers_memorized)
  )

  (:durative-action look_up_numbers
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (numbers_looked_up))
    )
  )

  (:durative-action write_flashcards
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (numbers_looked_up))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (flashcards_written))
    )
  )

  (:durative-action record_speech
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (numbers_looked_up))
      (at start (flashcards_written))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (recording_made))
    )
  )

  (:durative-action correct_errors
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (numbers_looked_up))
      (at start (flashcards_written))
      (at start (recording_made))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (recording_corrected))
    )
  )

  (:durative-action memorize_numbers
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (numbers_looked_up))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (numbers_memorized))
    )
  )
)