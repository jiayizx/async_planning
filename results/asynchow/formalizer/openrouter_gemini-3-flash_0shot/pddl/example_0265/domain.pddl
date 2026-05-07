(define (domain sort_life)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (skill_learned)
    (resume_written)
    (change_made)
    (school_completed)
  )

  (:durative-action learn_skill
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (skill_learned)))
  )

  (:durative-action go_to_school
    :parameters (?s - step)
    :duration (= ?duration 126144000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (school_completed)))
  )

  (:durative-action write_resume
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (skill_learned)) (at start (school_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (resume_written)))
  )

  (:durative-action make_change
    :parameters (?s - step)
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending ?s)) (at start (resume_written)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (change_made)))
  )
)