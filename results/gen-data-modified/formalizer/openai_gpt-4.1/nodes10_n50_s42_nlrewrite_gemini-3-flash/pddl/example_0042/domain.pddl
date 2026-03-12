(define (domain playground-fundraising)
  (:requirements :durative-actions)
  (:predicates
    (gala_pending)
    (gala_done)
    (flyers_pending)
    (flyers_done)
    (deposit_pending)
    (deposit_done)
    (brochure_pending)
    (brochure_done)
    (budget_pending)
    (budget_done)
    (portal_pending)
    (portal_done)
    (pledges_pending)
    (pledges_done)
    (approval_pending)
    (approval_done)
    (sponsors_pending)
    (sponsors_done)
    (order_pending)
    (order_done)
  )

  (:durative-action do_gala
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (gala_pending)) (at start (brochure_done)) (at start (portal_done)))
    :effect (and (at start (not (gala_pending))) (at end (gala_done)))
  )

  (:durative-action do_flyers
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (flyers_pending)) (at start (approval_done)))
    :effect (and (at start (not (flyers_pending))) (at end (flyers_done)))
  )

  (:durative-action do_deposit
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (deposit_pending)) (at start (pledges_done)))
    :effect (and (at start (not (deposit_pending))) (at end (deposit_done)))
  )

  (:durative-action do_brochure
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (brochure_pending)) (at start (sponsors_done)))
    :effect (and (at start (not (brochure_pending))) (at end (brochure_done)))
  )

  (:durative-action do_budget
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (budget_pending))
    :effect (and (at start (not (budget_pending))) (at end (budget_done)))
  )

  (:durative-action do_portal
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (portal_pending)) (at start (flyers_done)) (at start (budget_done)))
    :effect (and (at start (not (portal_pending))) (at end (portal_done)))
  )

  (:durative-action do_pledges
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (pledges_pending))
    :effect (and (at start (not (pledges_pending))) (at end (pledges_done)))
  )

  (:durative-action do_approval
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (approval_pending)) (at start (budget_done)))
    :effect (and (at start (not (approval_pending))) (at end (approval_done)))
  )

  (:durative-action do_sponsors
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (sponsors_pending))
    :effect (and (at start (not (sponsors_pending))) (at end (sponsors_done)))
  )

  (:durative-action do_order
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (order_pending)) (at start (approval_done)))
    :effect (and (at start (not (order_pending))) (at end (order_done)))
  )
)
