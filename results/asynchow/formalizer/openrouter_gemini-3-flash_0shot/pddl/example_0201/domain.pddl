(define (domain limestone_cleaning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (flour_scooped)
    (poultice_applied)
    (paste_removed)
    (fireplace_wiped)
  )

  (:durative-action scoop_flour
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flour_scooped)))
  )

  (:durative-action wipe_fireplace
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fireplace_wiped)))
  )

  (:durative-action apply_poultice
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (flour_scooped)) (at start (fireplace_wiped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (poultice_applied)))
  )

  (:durative-action remove_paste
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (poultice_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paste_removed)))
  )
)