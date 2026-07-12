(define (domain dha-production)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (biomass_centrifuged)
    (oil_refined)
    (microalgae_harvested)
    (growth_medium_prepared)
    (solvent_extraction_completed)
  )

  (:durative-action centrifuge_algae_biomass
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (microalgae_harvested))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (biomass_centrifuged))
    )
  )

  (:durative-action refine_extracted_oil
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (solvent_extraction_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (oil_refined))
    )
  )

  (:durative-action harvest_microalgae
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (growth_medium_prepared))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (microalgae_harvested))
    )
  )

  (:durative-action prepare_nutrient_growth_medium
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (growth_medium_prepared))
    )
  )

  (:durative-action perform_solvent_extraction
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (microalgae_harvested))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (solvent_extraction_completed))
    )
  )
)