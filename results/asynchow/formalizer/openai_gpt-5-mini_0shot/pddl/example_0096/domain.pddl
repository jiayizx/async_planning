(define (domain run_for_president)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (spoken_to_classmates)
    (issues_identified)
    (platform_written)
    (speeches_made)
    (posters_made)
  )

  (:durative-action do_step1_speak
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (spoken_to_classmates))
    )
  )

  (:durative-action do_step2_identify_issues
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (issues_identified))
    )
  )

  (:durative-action do_step3_write_platform
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (issues_identified)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (platform_written))
    )
  )

  (:durative-action do_step4_make_speeches
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (platform_written)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (speeches_made))
    )
  )

  (:durative-action do_step5_make_posters
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (posters_made))
    )
  )
)
