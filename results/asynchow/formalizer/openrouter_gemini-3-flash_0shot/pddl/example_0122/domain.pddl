(define (domain lacrosse_tryouts)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (info_found)
    (practiced)
    (skills_improved)
    (stayed_after)
    (tried_out)
  )

  (:durative-action find_info
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (info_found)))
  )

  (:durative-action practice
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (info_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (practiced)))
  )

  (:durative-action improve_skills
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (info_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (skills_improved)))
  )

  (:durative-action stay_after_school
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (practiced)) (at start (skills_improved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stayed_after)))
  )

  (:durative-action go_to_tryouts
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (stayed_after)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tried_out)))
  )
)