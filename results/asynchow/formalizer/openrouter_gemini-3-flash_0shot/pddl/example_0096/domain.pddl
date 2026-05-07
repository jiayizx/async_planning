(define (domain class_president)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (classmates_spoken)
    (issues_identified)
    (platform_written)
    (speeches_made)
    (posters_made)
  )

  (:durative-action speak_to_classmates
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (classmates_spoken)))
  )

  (:durative-action identify_issues
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (issues_identified)))
  )

  (:durative-action write_platform
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (issues_identified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (platform_written)))
  )

  (:durative-action make_speeches
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (platform_written)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (speeches_made)))
  )

  (:durative-action make_posters
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (posters_made)))
  )
)