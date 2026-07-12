(define (problem cook-lamb-problem)
  (:domain cook-lamb)

  (:objects
    step1 - step1-type
    step2 - step2-type
    step3 - step3-type
    step4 - step4-type
    step5 - step5-type
    step6 - step6-type
    step7 - step7-type
    step8 - step8-type
    step9 - step9-type
    step10 - step10-type
    step11 - step11-type
    step12 - step12-type
    step13 - step13-type
    step14 - step14-type
    step15 - step15-type
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
    (step_pending step11)
    (step_pending step12)
    (step_pending step13)
    (step_pending step14)
    (step_pending step15)
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
    (step_done step11)
    (step_done step12)
    (step_done step13)
    (step_done step14)
    (step_done step15)
    (garlic_rosemary_minced)
    (meat_carved)
    (root_vegetables_chopped)
    (oven_preheated)
    (lamb_seared)
    (lamb_roasted)
    (lamb_rubbed)
    (gravy_reduced)
    (onions_diced)
    (vegetables_seasoned)
    (vegetables_on_tray)
    (pan_deglazed)
    (lamb_room_temperature)
    (onions_sauteed)
    (lamb_rested)
  ))
)