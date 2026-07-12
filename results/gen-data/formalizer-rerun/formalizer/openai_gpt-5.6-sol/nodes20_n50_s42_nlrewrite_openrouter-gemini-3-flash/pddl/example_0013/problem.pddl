(define (problem remove-bleach-odor)
  (:domain bleach-odor-removal)
  (:objects
    step1 - step1_type
    step2 - step2_type
    step3 - step3_type
    step4 - step4_type
    step5 - step5_type
    step6 - step6_type
    step7 - step7_type
    step8 - step8_type
    step9 - step9_type
    step10 - step10_type
    step11 - step11_type
    step12 - step12_type
    step13 - step13_type
    step14 - step14_type
    step15 - step15_type
    step16 - step16_type
    step17 - step17_type
    step18 - step18_type
    step19 - step19_type
    step20 - step20_type
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
    (step_pending step16)
    (step_pending step17)
    (step_pending step18)
    (step_pending step19)
    (step_pending step20)
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
    (step_done step16)
    (step_done step17)
    (step_done step18)
    (step_done step19)
    (step_done step20)
    (lemon_juice_located)
    (lemon_juice_scrubbed)
    (hand_cream_applied)
    (baking_soda_paste_prepared)
    (cold_water_rinse_completed)
    (orange_sliced)
    (orange_peels_rubbed)
    (vinegar_dish_prepared)
    (warm_water_rinse_completed)
    (baking_soda_paste_massaged)
    (counter_wiped)
    (microfiber_towel_located)
    (dish_soap_wash_completed)
    (hands_patted_dry)
    (vinegar_fingertip_soak_completed)
    (hands_inspected)
    (air_drying_completed)
    (hands_submerged_in_vinegar)
    (stainless_spoon_rubbed)
    (lemon_juice_bottle_opened)
  ))
  (:metric minimize (total-time))
)