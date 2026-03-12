(define (domain dha_domain)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
  )

  ;; Step 1: Centrifuge the algae biomass (2700s)
  (:durative-action step1_centrifuge
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step1_pending)) (at start (step3_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  ;; Step 2: Refine and bottle the extracted oil (172800s)
  (:durative-action step2_refine_and_bottle
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step2_pending)) (at start (step5_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  ;; Step 3: Harvest the microalgae from the bioreactor (21600s)
  (:durative-action step3_harvest_microalgae
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (step3_pending)) (at start (step4_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  ;; Step 4: Prepare the nutrient-rich growth medium (7200s)
  (:durative-action step4_prepare_medium
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step4_pending))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  ;; Step 5: Perform solvent extraction of the lipids (14400s)
  (:durative-action step5_solve_extract_lipids
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step5_pending)) (at start (step3_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )
)
