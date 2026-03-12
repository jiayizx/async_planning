(define (problem aloe_vera_task)
(:domain aloe_vera_processing)
(:init
(step1_pending) (step2_pending) (step3_pending) (step4_pending)
(step5_pending) (step6_pending) (step7_pending) (step8_pending) (step9_pending)
)
(:goal (and
(step1_done) (step2_done) (step3_done) (step4_done)
(step5_done) (step6_done) (step7_done) (step8_done) (step9_done)
))
(:metric minimize (total-time))
)