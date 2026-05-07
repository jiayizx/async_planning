(define (domain take_measurements)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (waist_identified)
    (waist_measured)
    (hip_measured)
    (inseam_measured)
    (trousers_used)
    (thigh_measured)
    (half_girth_measured))
  (:durative-action do_step1
    :duration 60
    :condition (and (at start (step_pending step1)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (waist_identified))))
  (:durative-action do_step2
    :duration 120
    :condition (and (at start (step_pending step2)) (at start (waist_identified)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (waist_measured))))
  (:durative-action do_step3
    :duration 60
    :condition (and (at start (step_pending step3)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (hip_measured))))
  (:durative-action do_step4
    :duration 120
    :condition (and (at start (step_pending step4)) (at start (trousers_used)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (inseam_measured))))
  (:durative-action do_step5
    :duration 120
    :condition (and (at start (step_pending step5)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (trousers_used))))
  (:durative-action do_step6
    :duration 60
    :condition (and (at start (step_pending step6)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (thigh_measured))))
  (:durative-action do_step7
    :duration 120
    :condition (and (at start (step_pending step7)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (half_girth_measured)))))