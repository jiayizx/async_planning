(define (domain class_president)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_done ?s - step) (step_pending ?s - step) (speak_done) (issues_done) (platform_done) (speeches_done) (posters_done))
  (:durative-action speak_to_classmates
    :duration 18000
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (speak_done))))
  (:durative-action identify_issues
    :duration 18000
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (issues_done))))
  (:durative-action write_platform
    :duration 10800
    :condition (and (at start (step_pending step3)) (at start (issues_done)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (platform_done))))
  (:durative-action make_speeches
    :duration 7200
    :condition (and (at start (step_pending step4)) (at start (platform_done)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (speeches_done))))
  (:durative-action make_posters
    :duration 10800
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end (posters_done))))
)