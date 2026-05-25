(define (domain dha_production)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (centrifuged_done)
    (refined_done)
    (harvested_done)
    (prepared_done)
    (extracted_done)
  )

  ;; Step 1: Centrifuge the algae biomass
  (:durative-action do_step1_centrifuge
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (harvested_done)) (at start (prepared_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (centrifuged_done))
            )
  )

  ;; Step 2: Refine the extracted oil for purity
  (:durative-action do_step2_refine
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (extracted_done)) (at start (harvested_done)) (at start (prepared_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (refined_done))
            )
  )

  ;; Step 3: Harvest the microalgae from the bioreactor
  (:durative-action do_step3_harvest
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (prepared_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (harvested_done))
            )
  )

  ;; Step 4: Prepare the nutrient growth medium
  (:durative-action do_step4_prepare_medium
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (prepared_done))
            )
  )

  ;; Step 5: Perform solvent extraction on the biomass
  (:durative-action do_step5_solve_extract
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (harvested_done)) (at start (prepared_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (extracted_done))
            )
  )
)
