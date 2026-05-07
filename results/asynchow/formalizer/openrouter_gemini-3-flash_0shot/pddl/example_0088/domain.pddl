(define (domain bar_ownership)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (business_license_obtained)
    (building_bought)
    (building_renovated)
    (building_certified)
    (liquor_license_obtained)
  )

  (:durative-action obtain_business_license
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (business_license_obtained)))
  )

  (:durative-action buy_building
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (building_bought)))
  )

  (:durative-action renovate_building
    :parameters (?s - step)
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending ?s)) (at start (building_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (building_renovated)))
  )

  (:durative-action certify_building
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (building_renovated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (building_certified)))
  )

  (:durative-action obtain_liquor_license
    :parameters (?s - step)
    :duration (= ?duration 1814400)
    :condition (and (at start (step_pending ?s)) (at start (business_license_obtained)) (at start (building_certified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (liquor_license_obtained)))
  )
)