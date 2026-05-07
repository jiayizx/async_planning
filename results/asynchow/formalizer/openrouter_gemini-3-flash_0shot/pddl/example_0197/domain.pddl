(define (domain reference_numeric_style)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (instructor_consulted)
    (citations_numbered_individually)
    (citations_numbered_alphabetically)
  )

  (:durative-action ask_instructor
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (instructor_consulted))
    )
  )

  (:durative-action number_individually
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (instructor_consulted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (citations_numbered_individually))
    )
  )

  (:durative-action number_alphabetically
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (instructor_consulted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (citations_numbered_alphabetically))
    )
  )
)