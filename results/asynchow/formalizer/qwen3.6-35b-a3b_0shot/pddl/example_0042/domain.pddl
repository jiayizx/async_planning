(define (domain breakfast_in_bed)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (pan_heated)
    (eggs_cracked)
    (eggs_whisked)
    (eggs_poured)
    (eggs_scrambled)
    (butter_added)
    (eggs_plated))
  (:durative-action do_step1
    :duration 300
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (pan_heated))))
  (:durative-action do_step2
    :duration 180
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (eggs_cracked))))
  (:durative-action do_step3
    :duration 180
    :condition (and (at start (step_pending step3)) (at start (eggs_cracked)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (eggs_whisked))))
  (:durative-action do_step6
    :duration 10
    :condition (and (at start (step_pending step6)) (at start (pan_heated)))
    :effect (and (at start (not (step_pending step6)))
                 (at end (step_done step6))
                 (at end (butter_added))))
  (:durative-action do_step4
    :duration 10
    :condition (and (at start (step_pending step4)) (at start (eggs_whisked)) (at start (butter_added)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (eggs_poured))))
  (:durative-action do_step5
    :duration 600
    :condition (and (at start (step_pending step5)) (at start (eggs_poured)))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end (eggs_scrambled))))
  (:durative-action do_step7
    :duration 10
    :condition (and (at start (step_pending step7)) (at start (eggs_scrambled)))
    :effect (and (at start (not (step_pending step7)))
                 (at end (step_done step7))
                 (at end (eggs_plated))))
)