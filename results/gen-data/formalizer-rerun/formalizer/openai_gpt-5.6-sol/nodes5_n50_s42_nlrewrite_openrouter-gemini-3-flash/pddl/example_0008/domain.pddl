(define (domain facial-bruise-treatment)
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
    (cold_compress_applied)
    (skin_cleaned)
    (warm_compress_applied)
    (arnica_gel_massaged)
    (inflammation_subsided)
  )

  (:durative-action apply_cold_compress_step1
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (is_step1 ?s))
      (at start (step_pending ?s))
      (at start (skin_cleaned))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cold_compress_applied))
    )
  )

  (:durative-action clean_skin_step2
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (is_step2 ?s))
      (at start (step_pending ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (skin_cleaned))
    )
  )

  (:durative-action apply_warm_compress_step3
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (is_step3 ?s))
      (at start (step_pending ?s))
      (at start (inflammation_subsided))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (warm_compress_applied))
    )
  )

  (:durative-action massage_arnica_gel_step4
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (is_step4 ?s))
      (at start (step_pending ?s))
      (at start (cold_compress_applied))
      (at start (skin_cleaned))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (arnica_gel_massaged))
    )
  )

  (:durative-action wait_for_inflammation_step5
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (is_step5 ?s))
      (at start (step_pending ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (inflammation_subsided))
    )
  )
)