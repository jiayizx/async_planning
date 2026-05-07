(define (domain den_making)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (materials_found)
    (case_made)
    (item_cut)
    (sewn_together)
    (pet_acclimated)
  )

  (:durative-action find_materials
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (materials_found)))
  )

  (:durative-action make_case
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (materials_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (case_made)))
  )

  (:durative-action cut_item
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (materials_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (item_cut)))
  )

  (:durative-action sew_together
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (case_made)) (at start (item_cut)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sewn_together)))
  )

  (:durative-action acclimate_pet
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (sewn_together)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pet_acclimated)))
  )
)