(define (problem kill-weeds-vinegar-problem)
  (:domain kill-weeds-vinegar)
  (:init
    (buy_vinegar_pending)
    (add_dish_soap_pending)
    (add_salt_pending)
  )
  (:goal (and
    (buy_vinegar_done)
    (add_dish_soap_done)
    (add_salt_done)
  ))
)
