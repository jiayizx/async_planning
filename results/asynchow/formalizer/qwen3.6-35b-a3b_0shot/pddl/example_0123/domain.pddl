(define (domain straight_as)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step1_pending) (step1_done) (class_attended)
               (step2_pending) (step2_done) (paid_attention)
               (step3_pending) (step3_done) (reading_done)
               (step4_pending) (step4_done) (homework_done)
               (step5_pending) (step5_done) (test_prep_done)
               (step6_pending) (step6_done) (high_scores_done))
  (:durative-action step1
    :duration 7776000
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)) (at end (class_attended))))
  (:durative-action step2
    :duration 7776000
    :condition (and (at start (step2_pending)) (at start (class_attended)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)) (at end (paid_attention))))
  (:durative-action step3
    :duration 7776000
    :condition (and (at start (step3_pending)) (at start (class_attended)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)) (at end (reading_done))))
  (:durative-action step4
    :duration 216000
    :condition (and (at start (step4_pending)) (at start (paid_attention)) (at start (reading_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)) (at end (homework_done))))
  (:durative-action step5
    :duration 144000
    :condition (and (at start (step5_pending)) (at start (homework_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)) (at end (test_prep_done))))
  (:durative-action step6
    :duration 57600
    :condition (and (at start (step6_pending)) (at start (test_prep_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)) (at end (high_scores_done))))
)