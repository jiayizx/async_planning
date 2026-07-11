(define (problem find-neutrons-problem)
  (:domain find-neutrons)
  
  (:init
    (locate_element_pending)
    (find_atomic_number_pending)
    (find_atomic_weight_pending)
    (round_atomic_weight_pending)
    (subtract_numbers_pending)
    (remember_formula_pending)
  )

  (:goal (and
    (locate_element_done)
    (find_atomic_number_done)
    (find_atomic_weight_done)
    (round_atomic_weight_done)
    (subtract_numbers_done)
    (remember_formula_done)
  ))
)
