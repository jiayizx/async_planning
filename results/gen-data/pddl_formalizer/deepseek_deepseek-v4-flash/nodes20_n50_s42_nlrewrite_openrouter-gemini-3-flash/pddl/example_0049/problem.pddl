(define (problem protect_teeth_problem)
  (:domain protect_teeth)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20 - step
  )
  (:init
    (step_pending step1) (step_pending step2) (step_pending step3) (step_pending step4) (step_pending step5)
    (step_pending step6) (step_pending step7) (step_pending step8) (step_pending step9) (step_pending step10)
    (step_pending step11) (step_pending step12) (step_pending step13) (step_pending step14) (step_pending step15)
    (step_pending step16) (step_pending step17) (step_pending step18) (step_pending step19) (step_pending step20)
  )
  (:goal (and
    (step_done step1) (step_done step2) (step_done step3) (step_done step4) (step_done step5)
    (step_done step6) (step_done step7) (step_done step8) (step_done step9) (step_done step10)
    (step_done step11) (step_done step12) (step_done step13) (step_done step14) (step_done step15)
    (step_done step16) (step_done step17) (step_done step18) (step_done step19) (step_done step20)
    (scheduled_checkup_done) (topical_fluoride_done) (researched_dentists_done) (purchased_toothbrushes_done)
    (watched_flossing_video_done) (installed_filtration_done) (demonstrated_flossing_done) (supervised_flossing_done)
    (identified_toothpaste_done) (read_reviews_done) (attended_consultation_done) (bought_timer_done)
    (set_timer_done) (purchased_floss_done) (practiced_flossing_done) (applied_sealants_done)
    (asked_recommendations_done) (organized_kit_done) (cleared_space_done) (drove_to_office_done)
  ))
)