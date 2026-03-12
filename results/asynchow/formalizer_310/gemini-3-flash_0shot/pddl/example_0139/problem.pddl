(define (problem fold_butterflies)
(:domain towel_butterflies)
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