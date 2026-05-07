(define (domain understand_math)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (extra_help_done)
    (tutor_hired)
    (peer_guidance_done)
    (math_understood)
  )

  (:durative-action go_for_extra_help
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (extra_help_done)))
  )

  (:durative-action hire_tutor
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tutor_hired)))
  )

  (:durative-action look_to_peer
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (peer_guidance_done)))
  )

  (:durative-action practice_on_own
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and 
      (at start (step_pending ?s))
      (at start (extra_help_done))
      (at start (tutor_hired))
      (at start (peer_guidance_done))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (math_understood)))
  )
)