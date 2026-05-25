(define (domain dha_production)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (medium_prepared)
    (microalgae_harvested)
    (biomass_centrifuged)
    (biomass_extracted)
    (oil_refined)
  )

  (:durative-action prepare_medium
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (medium_prepared)))
  )

  (:durative-action harvest_microalgae
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (medium_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (microalgae_harvested)))
  )

  (:durative-action centrifuge_biomass
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (microalgae_harvested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (biomass_centrifuged)))
  )

  (:durative-action solvent_extraction
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (microalgae_harvested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (biomass_extracted)))
  )

  (:durative-action refine_oil
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (biomass_extracted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oil_refined)))
  )
)