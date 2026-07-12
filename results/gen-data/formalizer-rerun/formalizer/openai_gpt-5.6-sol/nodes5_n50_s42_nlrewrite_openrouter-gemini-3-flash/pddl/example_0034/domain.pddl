(define (domain freeform-poetry)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (reflection_step ?s - step)
    (opening_stanza_step ?s - step)
    (rhythm_check_step ?s - step)
    (theme_selection_step ?s - step)
    (metaphor_expansion_step ?s - step)
    (memory_reflected)
    (opening_stanza_drafted)
    (rhythm_checked)
    (central_theme_selected)
    (sensory_metaphors_added)
  )

  (:durative-action reflect_on_personal_memory
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (reflection_step ?s))
      (at start (central_theme_selected))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (memory_reflected))
    )
  )

  (:durative-action draft_opening_stanza
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (opening_stanza_step ?s))
      (at start (central_theme_selected))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (opening_stanza_drafted))
    )
  )

  (:durative-action read_poem_aloud
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (rhythm_check_step ?s))
      (at start (sensory_metaphors_added))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rhythm_checked))
    )
  )

  (:durative-action select_central_theme
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (theme_selection_step ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (central_theme_selected))
    )
  )

  (:durative-action expand_with_sensory_metaphors
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (metaphor_expansion_step ?s))
      (at start (opening_stanza_drafted))
      (at start (central_theme_selected))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sensory_metaphors_added))
    )
  )
)