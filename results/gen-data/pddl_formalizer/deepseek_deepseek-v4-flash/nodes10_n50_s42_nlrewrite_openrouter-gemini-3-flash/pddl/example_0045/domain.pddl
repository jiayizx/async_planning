(define (domain roast_turnips)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (purchased_turnips)
    (oven_preheated)
    (garnish_done)
    (tossed_turnips)
    (whisked_oil)
    (washed_scrubbed)
    (greased_sheet)
    (peeled_diced)
    (roasted_turnips)
    (patted_dry))

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (purchased_turnips))))

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (oven_preheated))))

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step3) (patted_dry)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (garnish_done))))

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step4) (whisked_oil)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (tossed_turnips))))

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (whisked_oil))))

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (washed_scrubbed))))

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step7) (oven_preheated)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (greased_sheet))))

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step8) (purchased_turnips)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (peeled_diced))))

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 2100)
    :condition (at start (and (step_pending step9) (oven_preheated) (greased_sheet) (peeled_diced)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (roasted_turnips))))

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step10) (washed_scrubbed)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (patted_dry))))
)