(define (domain shrimp_tempura_roll)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (shrimp_prepared)
    (egg_mixture_ready)
    (batter_ready)
    (shrimp_floured)
    (shrimp_battered)
    (oil_heated)
    (shrimp_fried)
  )

  (:durative-action prepare_shrimp
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shrimp_prepared)))
  )

  (:durative-action mix_egg_water
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (egg_mixture_ready)))
  )

  (:durative-action add_flour_to_mixture
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (egg_mixture_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (batter_ready)))
  )

  (:durative-action coat_shrimp_flour
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (shrimp_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shrimp_floured)))
  )

  (:durative-action dip_shrimp_batter
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (batter_ready)) (at start (shrimp_floured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shrimp_battered)))
  )

  (:durative-action heat_oil
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oil_heated)))
  )

  (:durative-action fry_shrimp
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (shrimp_battered)) (at start (oil_heated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shrimp_fried)))
  )
)