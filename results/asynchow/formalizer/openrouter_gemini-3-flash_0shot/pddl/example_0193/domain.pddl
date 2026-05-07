(define (domain cure_rash)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (doctor_visited)
    (cream_applied)
    (antihistamine_taken)
    (antifungal_tried)
  )

  (:durative-action visit_doctor
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (doctor_visited)))
  )

  (:durative-action apply_cream
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (doctor_visited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cream_applied)))
  )

  (:durative-action take_antihistamine
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (doctor_visited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (antihistamine_taken)))
  )

  (:durative-action try_antifungal
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (doctor_visited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (antifungal_tried)))
  )
)