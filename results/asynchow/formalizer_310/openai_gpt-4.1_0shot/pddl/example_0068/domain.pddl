(define (domain get_working_computer)
  (:requirements :durative-actions)
  (:predicates
    (research_pending)
    (research_done)
    (save_pending)
    (save_done)
    (goto_website_pending)
    (goto_website_done)
    (purchase_pending)
    (purchase_done)
    (wait_sale_pending)
    (wait_sale_done)
  )

  (:durative-action do_research
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (research_pending))
    :effect (and (at start (not (research_pending))) (at end (research_done)))
  )

  (:durative-action do_save
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (save_pending)) (at start (research_done)))
    :effect (and (at start (not (save_pending))) (at end (save_done)))
  )

  (:durative-action do_goto_website
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (goto_website_pending)) (at start (save_done)) (at start (wait_sale_done)))
    :effect (and (at start (not (goto_website_pending))) (at end (goto_website_done)))
  )

  (:durative-action do_purchase
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (purchase_pending)) (at start (goto_website_done)))
    :effect (and (at start (not (purchase_pending))) (at end (purchase_done)))
  )

  (:durative-action do_wait_sale
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (wait_sale_pending)) (at start (research_done)))
    :effect (and (at start (not (wait_sale_pending))) (at end (wait_sale_done)))
  )
)
