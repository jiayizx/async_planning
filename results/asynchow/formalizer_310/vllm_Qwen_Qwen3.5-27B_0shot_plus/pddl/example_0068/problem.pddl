(define (problem get_computer_problem)
  (:domain get_computer)
  
  (:init
    (research_pending)
    (save_money_pending)
    (go_website_pending)
    (complete_purchase_pending)
    (wait_sale_pending)
  )

  (:goal (and
    (research_done)
    (save_money_done)
    (go_website_done)
    (complete_purchase_done)
    (wait_sale_done)
  ))
)
