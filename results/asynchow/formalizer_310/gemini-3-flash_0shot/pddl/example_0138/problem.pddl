(define (problem assistance_problem)
(:domain government_assistance)
(:init
(fafsa_pending)
(pell_grant_pending)
(fseog_pending)
)
(:goal (and
(fafsa_done)
(pell_grant_done)
(fseog_done)
))
(:metric minimize (total-time))
)