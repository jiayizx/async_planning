(define (problem mocha_no_machine-problem)
  (:domain mocha_no_machine)
  (:init
    (make_coffee_pending)
    (prep_milk_pending)
    (add_chocolate_pending)
  )
  (:goal (and
    (make_coffee_done)
    (prep_milk_done)
    (add_chocolate_done)
  ))
)
