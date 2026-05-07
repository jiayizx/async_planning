(define (domain find_neutrons)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (element_located)
    (atomic_number_found)
    (atomic_weight_found)
    (atomic_mass_calculated)
    (subtraction_completed)
    (formula_remembered)
  )

  (:durative-action locate_element
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (element_located)))
  )

  (:durative-action find_atomic_number
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (element_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (atomic_number_found)))
  )

  (:durative-action find_atomic_weight
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (element_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (atomic_weight_found)))
  )

  (:durative-action calculate_atomic_mass
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (atomic_weight_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (atomic_mass_calculated)))
  )

  (:durative-action subtract_number_from_mass
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (atomic_number_found)) (at start (atomic_mass_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (subtraction_completed)))
  )

  (:durative-action remember_formula
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (formula_remembered)))
  )
)