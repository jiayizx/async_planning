(define (domain find-neutrons)
  (:requirements :durative-actions)
  
  (:predicates
    (locate_element_pending)
    (locate_element_done)
    (find_atomic_number_pending)
    (find_atomic_number_done)
    (find_atomic_weight_pending)
    (find_atomic_weight_done)
    (round_atomic_weight_pending)
    (round_atomic_weight_done)
    (subtract_numbers_pending)
    (subtract_numbers_done)
    (remember_formula_pending)
    (remember_formula_done)
  )

  (:durative-action locate_element
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (locate_element_pending))
    :effect (and (at start (not (locate_element_pending)))
                 (at end (locate_element_done)))
  )

  (:durative-action find_atomic_number
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (find_atomic_number_pending))
                    (at start (locate_element_done)))
    :effect (and (at start (not (find_atomic_number_pending)))
                 (at end (find_atomic_number_done)))
  )

  (:durative-action find_atomic_weight
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (find_atomic_weight_pending))
                    (at start (locate_element_done)))
    :effect (and (at start (not (find_atomic_weight_pending)))
                 (at end (find_atomic_weight_done)))
  )

  (:durative-action round_atomic_weight
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (round_atomic_weight_pending))
                    (at start (find_atomic_weight_done)))
    :effect (and (at start (not (round_atomic_weight_pending)))
                 (at end (round_atomic_weight_done)))
  )

  (:durative-action subtract_numbers
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (subtract_numbers_pending))
                    (at start (find_atomic_number_done))
                    (at start (round_atomic_weight_done)))
    :effect (and (at start (not (subtract_numbers_pending)))
                 (at end (subtract_numbers_done)))
  )

  (:durative-action remember_formula
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (remember_formula_pending))
    :effect (and (at start (not (remember_formula_pending)))
                 (at end (remember_formula_done)))
  )
)
