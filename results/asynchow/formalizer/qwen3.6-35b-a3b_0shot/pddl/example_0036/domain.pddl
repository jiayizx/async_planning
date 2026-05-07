(define (domain hang_glide)
  (:requirements :typing :durative-actions)
  (:types step)
  (:objects step1 step2 step3 step4 step5 step6 - step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (watched_videos)
    (looked_up_articles)
    (looked_up_classes)
    (signed_up)
    (driven)
    (taken_class))
  (:durative-action step1_action
    :duration 7200
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (watched_videos))))
  (:durative-action step2_action
    :duration 900
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (looked_up_articles))))
  (:durative-action step3_action
    :duration 2700
    :condition (and (at start (step_pending step3))
                    (at start (watched_videos))
                    (at start (looked_up_articles)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (looked_up_classes))))
  (:durative-action step4_action
    :duration 900
    :condition (and (at start (step_pending step4))
                    (at start (looked_up_classes)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (signed_up))))
  (:durative-action step5_action
    :duration 1500
    :condition (and (at start (step_pending step5))
                    (at start (signed_up)))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end (driven))))
  (:durative-action step6_action
    :duration 7200
    :condition (and (at start (step_pending step6))
                    (at start (driven)))
    :effect (and (at start (not (step_pending step6)))
                 (at end (step_done step6))
                 (at end (taken_class))))
)