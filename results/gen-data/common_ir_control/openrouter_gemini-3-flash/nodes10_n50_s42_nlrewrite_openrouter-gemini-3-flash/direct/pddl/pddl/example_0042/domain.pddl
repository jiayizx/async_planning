(define (domain playground_fundraiser)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (research_done)
    (supplies_obtained)
    (proposal_drafted)
    (board_approved)
    (flyers_ready)
    (baking_done)
    (sale_completed)
    (photos_taken)
    (website_updated)
    (balls_ordered)
  )

  (:durative-action research_costs
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action buy_supplies
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_obtained)))
  )

  (:durative-action draft_proposal
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (proposal_drafted)))
  )

  (:durative-action present_to_board
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (proposal_drafted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (board_approved)))
  )

  (:durative-action design_flyers
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (board_approved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flyers_ready)))
  )

  (:durative-action bake_goods
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (flyers_ready)) (at start (proposal_drafted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (baking_done)))
  )

  (:durative-action host_sale
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (supplies_obtained)) (at start (baking_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sale_completed)))
  )

  (:durative-action take_photos
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (photos_taken)))
  )

  (:durative-action update_website
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (photos_taken)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (website_updated)))
  )

  (:durative-action order_balls
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (board_approved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (balls_ordered)))
  )
)