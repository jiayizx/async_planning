(define (domain coffee_stain_removal)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_done ?s - step)
               (step_pending ?s - step)
               (step1_pending) (step2_pending) (step3_pending) (step4_pending) (step5_pending)
               (step6_pending) (step7_pending) (step8_pending) (step9_pending) (step10_pending)
               (step1_done) (step2_done) (step3_done) (step4_done) (step5_done)
               (step6_done) (step7_done) (step8_done) (step9_done) (step10_done))
  (:durative-action do_step1
    :duration 300
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending)))
                 (at end (step_done step1)) (at end (step1_done))))
  (:durative-action do_step2
    :duration 600
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending)))
                 (at end (step_done step2)) (at end (step2_done))))
  (:durative-action do_step3
    :duration 900
    :condition (at start (step3_pending))
    :effect (and (at start (not (step3_pending)))
                 (at end (step_done step3)) (at end (step3_done))))
  (:durative-action do_step4
    :duration 300
    :condition (and (at start (step1_done)) (at start (step2_done)) (at start (step3_done)) (at start (step4_pending)))
    :effect (and (at start (not (step4_pending)))
                 (at end (step_done step4)) (at end (step4_done))))
  (:durative-action do_step5
    :duration 120
    :condition (and (at start (step1_done)) (at start (step2_done)) (at start (step3_done)) (at start (step5_pending)))
    :effect (and (at start (not (step5_pending)))
                 (at end (step_done step5)) (at end (step5_done))))
  (:durative-action do_step6
    :duration 300
    :condition (and (at start (step5_done)) (at start (step7_done)) (at start (step6_pending)))
    :effect (and (at start (not (step6_pending)))
                 (at end (step_done step6)) (at end (step6_done))))
  (:durative-action do_step7
    :duration 600
    :condition (and (at start (step4_done)) (at start (step7_pending)))
    :effect (and (at start (not (step7_pending)))
                 (at end (step_done step7)) (at end (step7_done))))
  (:durative-action do_step8
    :duration 300
    :condition (and (at start (step6_done)) (at start (step8_pending)))
    :effect (and (at start (not (step8_pending)))
                 (at end (step_done step8)) (at end (step8_done))))
  (:durative-action do_step9
    :duration 300
    :condition (and (at start (step8_done)) (at start (step9_pending)))
    :effect (and (at start (not (step9_pending)))
                 (at end (step_done step9)) (at end (step9_done))))
  (:durative-action do_step10
    :duration 14400
    :condition (and (at start (step9_done)) (at start (step10_pending)))
    :effect (and (at start (not (step10_pending)))
                 (at end (step_done step10)) (at end (step10_done))))
)