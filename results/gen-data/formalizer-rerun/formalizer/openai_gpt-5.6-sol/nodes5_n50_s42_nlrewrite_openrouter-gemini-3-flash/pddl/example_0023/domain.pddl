(define (domain community-help)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (opportunities_researched)
    (goods_delivered)
    (child_registered)
    (flyers_prepared)
    (collection_gathered)
  )

  (:durative-action research_opportunities
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (opportunities_researched))
    )
  )

  (:durative-action deliver_donated_goods
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending step2))
      (at start (collection_gathered))
    )
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (goods_delivered))
    )
  )

  (:durative-action register_child
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending step3))
      (at start (opportunities_researched))
    )
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (child_registered))
    )
  )

  (:durative-action design_and_print_flyers
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending step4))
      (at start (child_registered))
    )
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (flyers_prepared))
    )
  )

  (:durative-action gather_collection
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending step5))
      (at start (child_registered))
    )
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (collection_gathered))
    )
  )
)