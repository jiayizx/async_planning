(define (domain get_computer)
  (:requirements :durative-actions)
  
  (:predicates
    (research_pending)
    (research_done)
    (save_money_pending)
    (save_money_done)
    (go_website_pending)
    (go_website_done)
    (complete_purchase_pending)
    (complete_purchase_done)
    (wait_sale_pending)
    (wait_sale_done)
  )

  (:durative-action do_research
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (research_pending))
    :effect (and (at start (not (research_pending))) (at end (research_done)))
  )

  (:durative-action do_save_money
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (save_money_pending)) (at start (research_done)))
    :effect (and (at start (not (save_money_pending))) (at end (save_money_done)))
  )

  (:durative-action do_go_website
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (go_website_pending)) (at start (save_money_done)) (at start (wait_sale_done)))
    :effect (and (at start (not (go_website_pending))) (at end (go_website_done)))
  )

  (:durative-action do_complete_purchase
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (complete_purchase_pending)) (at start (go_website_done)))
    :effect (and (at start (not (complete_purchase_pending))) (at end (complete_purchase_done)))
  )

  (:durative-action do_wait_sale
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (wait_sale_pending)) (at start (research_done)))
    :effect (and (at start (not (wait_sale_pending))) (at end (wait_sale_done)))
  )
)
