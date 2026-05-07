(define (domain hamster_diagnosis)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (lethargy_watched)
    (discharge_checked)
    (vet_visited)
  )

  (:durative-action watch_lethargy
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lethargy_watched)))
  )

  (:durative-action check_discharge
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (discharge_checked)))
  )

  (:durative-action visit_vet
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (lethargy_watched)) (at start (discharge_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vet_visited)))
  )
)