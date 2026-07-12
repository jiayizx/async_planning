(define (domain customize-drum-set)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (shells_wrapped)
    (drum_heads_ordered)
    (drum_heads_arrived)
    (shells_cleaned)
    (new_heads_installed_and_tuned)
  )

  (:durative-action apply_custom_vinyl_wraps
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (drum_heads_arrived))
      (at start (shells_cleaned))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shells_wrapped))
    )
  )

  (:durative-action research_and_order_drum_heads
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (drum_heads_ordered))
    )
  )

  (:durative-action wait_for_drum_heads
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and
      (at start (step_pending ?s))
      (at start (drum_heads_ordered))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (drum_heads_arrived))
    )
  )

  (:durative-action strip_hardware_and_clean_shells
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shells_cleaned))
    )
  )

  (:durative-action install_heads_and_tune_kit
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (shells_wrapped))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (new_heads_installed_and_tuned))
    )
  )
)