(define (domain switch-careers)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (update_done)
    (apply_done)
    (practice_done)
  )

  (:durative-action do_step1_update_resume
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (update_done))
            )
  )

  (:durative-action do_step2_apply_for_jobs
    :parameters (?s - step)
    :duration (= ?duration 2419200)
    :condition (and (at start (step_pending ?s)) (at start (update_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (apply_done))
            )
  )

  (:durative-action do_step3_practice_interviewing
    :parameters (?s - step)
    :duration (= ?duration 1814400)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (practice_done))
            )
  )
)
