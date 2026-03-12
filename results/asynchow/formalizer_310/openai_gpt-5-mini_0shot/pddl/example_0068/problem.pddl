(define (problem get_working_computer_problem)
  (:domain get_working_computer)

  (:init
    (research_pending)
    (save_money_pending)
    (go_to_website_pending)
    (complete_purchase_pending)
    (wait_for_sale_pending)
  )

  (:goal (and
    (research_done)
    (save_money_done)
    (go_to_website_done)
    (complete_purchase_done)
    (wait_for_sale_done)
  ))
)
