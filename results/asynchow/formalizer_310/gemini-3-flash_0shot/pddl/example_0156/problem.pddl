(define (problem sodium_problem)
(:domain keep_sodium_levels_up)
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