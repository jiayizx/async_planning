(define (problem mocha_problem)
(:domain mocha_making)
(:init
(step1_pending)
(step2_pending)
(step3_pending)
)
(:goal (and
(step1_done)
(step2_done)
(step3_done)
))
(:metric minimize (total-time))
)