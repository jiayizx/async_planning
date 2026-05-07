(define (domain musical_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (signed_up)
    (auditioned)
    (picked)
    (rehearsed_part)
    (showed_up)
    (rehearsed_with_others))
  (:durative-action sign_up
    :duration 900
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (signed_up))))
  (:durative-action audition
    :duration 3600
    :condition (and (at start (step_pending step2)) (at start (signed_up)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (auditioned))))
  (:durative-action get_picked
    :duration 3600
    :condition (and (at start (step_pending step3)) (at start (auditioned)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (picked))))
  (:durative-action rehearse_part
    :duration 432000
    :condition (and (at start (step_pending step4)) (at start (picked)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (rehearsed_part))))
  (:durative-action rehearse_with_others
    :duration 604800
    :condition (and (at start (step_pending step6)) (at start (picked)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (rehearsed_with_others))))
  (:durative-action show_up
    :duration 3600
    :condition (and (at start (step_pending step5)) (at start (rehearsed_part)) (at start (rehearsed_with_others)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (showed_up))))
)