(define (domain pasta)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step) 
    (step_done ?s - step)
    (cooked)
    (olive_oil_done)
    (tomato_done)
    (salad_done)
  )
  (:durative-action cook_pasta
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and 
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (cooked))
            )
  )
  (:durative-action make_olive_oil
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and 
                (at start (step_pending ?s))
                (at start (cooked))
              )
    :effect (and 
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (olive_oil_done))
            )
  )
  (:durative-action make_tomato
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and 
                (at start (step_pending ?s))
                (at start (cooked))
              )
    :effect (and 
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (tomato_done))
            )
  )
  (:durative-action make_salad
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and 
                (at start (step_pending ?s))
                (at start (cooked))
              )
    :effect (and 
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (salad_done))
            )
  )
)