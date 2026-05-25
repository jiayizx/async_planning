(define (domain roast_beef_dinner)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step) (step_done ?s - step) (table_set) (meat_rested) (oven_preheated) (driven_to_butcher) (cutlery_polished) (beef_roasted) (beef_carved) (meat_transferred) (beef_seasoned) (roast_removed))
  
  (:durative-action do_set_table
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step1)) (at start (cutlery_polished)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (table_set))))
  
  (:durative-action do_rest_meat
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step2)) (at start (oven_preheated)) (at start (driven_to_butcher)) (at start (beef_roasted)) (at start (beef_seasoned)) (at start (roast_removed)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (meat_rested))))
  
  (:durative-action do_preheat_oven
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (oven_preheated))))
  
  (:durative-action do_drive_to_butcher
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (driven_to_butcher))))
  
  (:durative-action do_polish_cutlery
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (cutlery_polished))))
  
  (:durative-action do_roast_beef
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step6)) (at start (oven_preheated)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (beef_roasted))))
  
  (:durative-action do_carve_beef
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step7)) (at start (meat_rested)) (at start (oven_preheated)) (at start (driven_to_butcher)) (at start (beef_roasted)) (at start (meat_transferred)) (at start (beef_seasoned)) (at start (roast_removed)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (beef_carved))))
  
  (:durative-action do_transfer_meat
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step8)) (at start (meat_rested)) (at start (oven_preheated)) (at start (driven_to_butcher)) (at start (beef_roasted)) (at start (beef_seasoned)) (at start (roast_removed)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (meat_transferred))))
  
  (:durative-action do_season_beef
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step9)) (at start (driven_to_butcher)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (beef_seasoned))))
  
  (:durative-action do_remove_roast
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step10)) (at start (oven_preheated)) (at start (beef_roasted)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (roast_removed))))
)