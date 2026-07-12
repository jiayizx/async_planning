(define (problem raise-1000-for-playground-balls)
  (:domain playground-fundraiser)

  (:objects
    step1 step2 step3 step4 step5
    step6 step7 step8 step9 step10 - step
  )

  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
    (step_pending step6)
    (step_pending step7)
    (step_pending step8)
    (step_pending step9)
    (step_pending step10)

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
  )

  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (step_done step6)
    (step_done step7)
    (step_done step8)
    (step_done step9)
    (step_done step10)
    (funds_raised)
    (equipment_photos_posted)
    (playground_balls_ordered)
  ))
)