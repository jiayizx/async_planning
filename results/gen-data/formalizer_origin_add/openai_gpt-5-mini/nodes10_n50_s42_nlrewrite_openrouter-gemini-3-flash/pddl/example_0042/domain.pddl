(define (domain playground_fundraiser)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    ;; unique semantic predicates for each step
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
  )

  ;; Step 1: Host the charity bake sale and collect donations (21600s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending ?s))
      (at start (buy_supplies_done))   ;; Step 4
      (at start (bake_goods_done))     ;; Step 6
      (at start (design_flyers_done))  ;; Step 2
      (at start (draft_proposal_done)) ;; Step 5
      (at start (present_proposal_done)) ;; Step 8
      (at start (research_costs_done)) ;; Step 9
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (host_bake_sale_done))
    )
  )

  ;; Step 2: Design and print promotional flyers (7200s)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (present_proposal_done)) ;; Step 8
      (at start (draft_proposal_done))   ;; Step 5
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (design_flyers_done))
    )
  )

  ;; Step 3: Post photos of the new equipment on the school website (2700s)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (take_photos_done)) ;; Step 7
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (post_photos_done))
    )
  )

  ;; Step 4: Buy bulk ingredients and baking supplies (10800s)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (research_costs_done)) ;; Step 9
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (buy_supplies_done))
    )
  )

  ;; Step 5: Draft a formal fundraising proposal for the PTA (3600s)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (draft_proposal_done))
    )
  )

  ;; Step 6: Bake 500 cookies and brownies (18000s)
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending ?s))
      (at start (design_flyers_done))  ;; Step 2
      (at start (draft_proposal_done)) ;; Step 5
      (at start (buy_supplies_done))   ;; Step 4
      (at start (present_proposal_done)) ;; Step 8
      (at start (research_costs_done)) ;; Step 9
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bake_goods_done))
    )
  )

  ;; Step 7: Take high-quality photos of the final fundraiser results (1800s)
  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (take_photos_done))
    )
  )

  ;; Step 8: Present the proposal to the school board for approval (172800s)
  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (draft_proposal_done)) ;; Step 5
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (present_proposal_done))
    )
  )

  ;; Step 9: Research the cost of different playground ball sets (3600s)
  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (research_costs_done))
    )
  )

  ;; Step 10: Order the new playground balls from the supplier (1200s)
  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (present_proposal_done)) ;; Step 8
      (at start (draft_proposal_done))   ;; Step 5
      (at start (research_costs_done))   ;; Step 9
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (order_balls_done))
    )
  )
)
