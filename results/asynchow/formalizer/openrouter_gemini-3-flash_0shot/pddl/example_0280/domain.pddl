(define (domain balloon_decorations)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (hat_selected)
    (glue_purchased)
    (balloons_blown)
    (hat_added)
  )

  (:durative-action select_hat
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hat_selected)))
  )

  (:durative-action purchase_glue
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (glue_purchased)))
  )

  (:durative-action blow_balloons
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (balloons_blown)))
  )

  (:durative-action add_hat
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and 
      (at start (step_pending ?s))
      (at start (hat_selected))
      (at start (glue_purchased))
      (at start (balloons_blown))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hat_added)))
  )
)