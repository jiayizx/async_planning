(define (domain playground-fundraiser)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    (bake_sale_pending)
    (flyers_pending)
    (website_photos_pending)
    (supplies_pending)
    (proposal_pending)
    (baking_pending)
    (results_photos_pending)
    (board_presentation_pending)
    (cost_research_pending)
    (ball_order_pending)

    (funds_raised)
    (flyers_printed)
    (equipment_photos_posted)
    (supplies_bought)
    (proposal_drafted)
    (baked_goods_ready)
    (fundraiser_photos_taken)
    (board_approval_obtained)
    (ball_costs_researched)
    (playground_balls_ordered)
  )

  (:durative-action host-charity-bake-sale
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending ?s))
      (at start (bake_sale_pending))
      (at start (supplies_bought))
      (at start (baked_goods_ready))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at start (not (bake_sale_pending)))
      (at end (step_done ?s))
      (at end (funds_raised))
    )
  )

  (:durative-action design-and-print-flyers
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (flyers_pending))
      (at start (board_approval_obtained))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at start (not (flyers_pending)))
      (at end (step_done ?s))
      (at end (flyers_printed))
    )
  )

  (:durative-action post-equipment-photos
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (website_photos_pending))
      (at start (fundraiser_photos_taken))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at start (not (website_photos_pending)))
      (at end (step_done ?s))
      (at end (equipment_photos_posted))
    )
  )

  (:durative-action buy-baking-supplies
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (supplies_pending))
      (at start (ball_costs_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at start (not (supplies_pending)))
      (at end (step_done ?s))
      (at end (supplies_bought))
    )
  )

  (:durative-action draft-fundraising-proposal
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (proposal_pending))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at start (not (proposal_pending)))
      (at end (step_done ?s))
      (at end (proposal_drafted))
    )
  )

  (:durative-action bake-cookies-and-brownies
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending ?s))
      (at start (baking_pending))
      (at start (flyers_printed))
      (at start (proposal_drafted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at start (not (baking_pending)))
      (at end (step_done ?s))
      (at end (baked_goods_ready))
    )
  )

  (:durative-action take-fundraiser-photos
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (results_photos_pending))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at start (not (results_photos_pending)))
      (at end (step_done ?s))
      (at end (fundraiser_photos_taken))
    )
  )

  (:durative-action present-proposal-to-board
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (board_presentation_pending))
      (at start (proposal_drafted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at start (not (board_presentation_pending)))
      (at end (step_done ?s))
      (at end (board_approval_obtained))
    )
  )

  (:durative-action research-ball-set-costs
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (cost_research_pending))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at start (not (cost_research_pending)))
      (at end (step_done ?s))
      (at end (ball_costs_researched))
    )
  )

  (:durative-action order-playground-balls
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (ball_order_pending))
      (at start (board_approval_obtained))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at start (not (ball_order_pending)))
      (at end (step_done ?s))
      (at end (playground_balls_ordered))
    )
  )
)