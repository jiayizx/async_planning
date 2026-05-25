(define (domain freeform-poetry)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (inspired ?s - step)          ; semantic for step1
    (drafted ?s - step)           ; semantic for step2
    (read_aloud ?s - step)        ; semantic for step3 (final semantic)
    (theme_selected ?s - step)    ; semantic for step4
    (expanded ?s - step)          ; semantic for step5
  )

  ; Step 1: Reflect on a personal memory for inspiration (1800s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (theme_selected step4))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (inspired ?s))
    )
  )

  ; Step 2: Draft the opening stanza on a notepad (900s)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (theme_selected step4))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (drafted ?s))
    )
  )

  ; Step 3: Read the completed poem aloud to check the rhythm (300s)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (expanded step5))
      (at start (drafted step2))
      (at start (theme_selected step4))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (read_aloud ?s))
    )
  )

  ; Step 4: Select a central theme or emotion (3600s)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (theme_selected ?s))
    )
  )

  ; Step 5: Expand the draft with sensory metaphors (2700s)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (drafted step2))
      (at start (theme_selected step4))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (expanded ?s))
    )
  )
)
