(define (domain own-bar)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (business_license_obtained)
    (property_bought)
    (building_renovated)
    (building_inspected)
    (liquor_license_obtained)
  )

  ;; Step 1: Obtain a business license
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (business_license_obtained))
    )
  )

  ;; Step 2: Buy a building property
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (property_bought))
    )
  )

  ;; Step 3: Renovate building suitable for serving alcohol
  ;; Requires Step 2 (property_bought)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending ?s)) (at start (property_bought)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (building_renovated))
    )
  )

  ;; Step 4: Have inspectors certify building
  ;; Requires Step 3 (building_renovated)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (building_renovated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (building_inspected))
    )
  )

  ;; Step 5: Obtain a liquor license
  ;; Requires Step 1 (business_license_obtained) and Step 4 (building_inspected)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 1814400)
    :condition (and (at start (step_pending ?s)) (at start (business_license_obtained)) (at start (building_inspected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (liquor_license_obtained))
    )
  )
)
