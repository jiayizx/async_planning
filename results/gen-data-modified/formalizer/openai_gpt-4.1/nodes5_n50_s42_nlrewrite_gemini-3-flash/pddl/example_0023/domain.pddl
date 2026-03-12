(define (domain help-community)
  (:requirements :durative-actions)
  (:predicates
    (research_pending)
    (research_done)
    (deliver_pending)
    (deliver_done)
    (contact_pending)
    (contact_done)
    (design_pending)
    (design_done)
    (collect_pending)
    (collect_done)
  )

  (:durative-action do_research
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (research_pending))
    :effect (and (at start (not (research_pending))) (at end (research_done)))
  )

  (:durative-action do_deliver
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (deliver_pending)) (at start (collect_done)))
    :effect (and (at start (not (deliver_pending))) (at end (deliver_done)))
  )

  (:durative-action do_contact
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (contact_pending)) (at start (research_done)))
    :effect (and (at start (not (contact_pending))) (at end (contact_done)))
  )

  (:durative-action do_design
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (design_pending)) (at start (contact_done)))
    :effect (and (at start (not (design_pending))) (at end (design_done)))
  )

  (:durative-action do_collect
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (collect_pending)) (at start (contact_done)))
    :effect (and (at start (not (collect_pending))) (at end (collect_done)))
  )
)
