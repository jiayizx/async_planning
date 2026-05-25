(define (domain poetry_writing)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (theme_selected)
    (memory_reflected)
    (opening_drafted)
    (metaphors_expanded)
    (rhythm_checked)
  )

  (:durative-action select_theme
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (theme_selected))
    )
  )

  (:durative-action reflect_memory
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (theme_selected))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (memory_reflected))
    )
  )

  (:durative-action draft_opening
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (theme_selected))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (opening_drafted))
    )
  )

  (:durative-action expand_metaphors
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (theme_selected))
      (at start (opening_drafted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (metaphors_expanded))
    )
  )

  (:durative-action check_rhythm
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (theme_selected))
      (at start (memory_reflected))
      (at start (opening_drafted))
      (at start (metaphors_expanded))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rhythm_checked))
    )
  )
)