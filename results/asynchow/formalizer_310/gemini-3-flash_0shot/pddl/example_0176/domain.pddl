(define (domain lower_androgen_levels)
(:requirements :durative-actions)
(:predicates
(step1_pending) (step1_done)
(step2_pending) (step2_done)
(step3_pending) (step3_done)
(step4_pending) (step4_done)
)
(:durative-action get_tested
:parameters ()
:duration (= ?duration 14)
:condition (at start (step1_pending))
:effect (and (at start (not (step1_pending))) (at end (step1_done))))
(:durative-action oral_birth_control
:parameters ()
:duration (= ?duration 90)
:condition (and (at start (step2_pending)) (at start (step1_done)))
:effect (and (at start (not (step2_pending))) (at end (step2_done))))
(:durative-action hypoglycemic_medication
:parameters ()
:duration (= ?duration 180)
:condition (and (at start (step3_pending)) (at start (step1_done)))
:effect (and (at start (not (step3_pending))) (at end (step3_done))))
(:durative-action anti_androgen_medication
:parameters ()
:duration (= ?duration 180)
:condition (and (at start (step4_pending)) (at start (step1_done)))
:effect (and (at start (not (step4_pending))) (at end (step4_done))))
)