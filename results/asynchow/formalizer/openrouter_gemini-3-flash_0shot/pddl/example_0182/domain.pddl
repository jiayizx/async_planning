(define (domain angel_hair_pasta)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (pasta_cooked)
    (pasta_with_oil_done)
    (pasta_with_sauce_done)
    (pasta_salad_done)
  )

  (:durative-action cook_pasta
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pasta_cooked))
    )
  )

  (:durative-action prepare_oil_garlic
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (pasta_cooked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pasta_with_oil_done))
    )
  )

  (:durative-action prepare_tomato_sauce
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (pasta_cooked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pasta_with_sauce_done))
    )
  )

  (:durative-action prepare_pasta_salad
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (pasta_cooked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pasta_salad_done))
    )
  )
)