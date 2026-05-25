(define (domain playground_fundraiser)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ;; unique semantic predicates produced by each step
    (host_bake_sale_done)
    (design_flyers_done)
    (post_photos_done)
    (buy_supplies_done)
    (draft_proposal_done)
    (bake_goods_done)
    (take_photos_done)
    (present_proposal_done)
    (research_costs_done)
    (order_balls_done)

    ;; final outcome predicate (produced by the final/goal step)
    (raised_1000)
  )

  ;; Step 1. Host the charity bake sale and collect donations (21600 seconds)
  (:durative-action do_step1_host_bake_sale
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step1))
                    (at start (buy_supplies_done))
                    (at start (bake_goods_done)))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (host_bake_sale_done))
              (at end (raised_1000))
            )
  )

  ;; Step 2. Design and print promotional flyers (7200 seconds)
  (:durative-action do_step2_design_flyers
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step2))
                    (at start (present_proposal_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (design_flyers_done))
            )
  )

  ;; Step 3. Post photos of the new equipment on the school website (2700 seconds)
  (:durative-action do_step3_post_photos
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step3))
                    (at start (take_photos_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (post_photos_done))
            )
  )

  ;; Step 4. Buy bulk ingredients and baking supplies (10800 seconds)
  (:durative-action do_step4_buy_supplies
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step4))
                    (at start (research_costs_done)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (buy_supplies_done))
            )
  )

  ;; Step 5. Draft a formal fundraising proposal for the PTA (3600 seconds)
  (:durative-action do_step5_draft_proposal
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step5)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (draft_proposal_done))
            )
  )

  ;; Step 6. Bake 500 cookies and brownies (18000 seconds)
  (:durative-action do_step6_bake_goods
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step6))
                    (at start (design_flyers_done))
                    (at start (draft_proposal_done)))
    :effect (and
              (at start (not (step_pending step6)))
              (at end (step_done step6))
              (at end (bake_goods_done))
            )
  )

  ;; Step 7. Take high-quality photos of the final fundraiser results (1800 seconds)
  (:durative-action do_step7_take_photos
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step7)))
    :effect (and
              (at start (not (step_pending step7)))
              (at end (step_done step7))
              (at end (take_photos_done))
            )
  )

  ;; Step 8. Present the proposal to the school board for approval (172800 seconds)
  (:durative-action do_step8_present_proposal
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step8))
                    (at start (draft_proposal_done)))
    :effect (and
              (at start (not (step_pending step8)))
              (at end (step_done step8))
              (at end (present_proposal_done))
            )
  )

  ;; Step 9. Research the cost of different playground ball sets (3600 seconds)
  (:durative-action do_step9_research_costs
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step9)))
    :effect (and
              (at start (not (step_pending step9)))
              (at end (step_done step9))
              (at end (research_costs_done))
            )
  )

  ;; Step 10. Order the new playground balls from the supplier (1200 seconds)
  (:durative-action do_step10_order_balls
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step10))
                    (at start (present_proposal_done)))
    :effect (and
              (at start (not (step_pending step10)))
              (at end (step_done step10))
              (at end (order_balls_done))
            )
  )
)
