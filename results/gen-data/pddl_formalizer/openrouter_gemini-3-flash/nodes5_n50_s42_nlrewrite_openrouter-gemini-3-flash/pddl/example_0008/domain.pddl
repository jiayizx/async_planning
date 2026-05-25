(define (domain bruise_treatment)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (skin_cleaned)
    (cold_compress_applied)
    (inflammation_subsided)
    (warm_compress_applied)
    (arnica_applied)
  )

  (:durative-action clean_skin
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (skin_cleaned)))
  )

  (:durative-action apply_cold_compress
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (skin_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cold_compress_applied)))
  )

  (:durative-action wait_inflammation
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (inflammation_subsided)))
  )

  (:durative-action apply_warm_compress
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (inflammation_subsided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (warm_compress_applied)))
  )

  (:durative-action apply_arnica
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (cold_compress_applied)) (at start (skin_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (arnica_applied)))
  )
)