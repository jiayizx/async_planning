(define (domain exfoliate_eyebrows)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (sanitized)
    (cleanser_applied)
    (rinsed)
    (exfoliated)
  )

  (:durative-action sanitize_toothbrush
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sanitized)))
  )

  (:durative-action apply_cleanser
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cleanser_applied)))
  )

  (:durative-action rinse_brows
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rinsed)))
  )

  (:durative-action rub_brush
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (cleanser_applied)) (at start (rinsed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (exfoliated)))
  )
)