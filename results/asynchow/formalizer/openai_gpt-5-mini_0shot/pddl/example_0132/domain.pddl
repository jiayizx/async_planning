(define (domain roast-macadamia)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (wear_done)
    (getcracker_done)
    (shell_done)
  )

  (:durative-action do_wear_eye_protection
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (wear_done))
            )
  )

  (:durative-action do_obtain_cracker
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (getcracker_done))
            )
  )

  (:durative-action do_shell_nuts
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (wear_done)) (at start (getcracker_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (shell_done))
            )
  )
)
