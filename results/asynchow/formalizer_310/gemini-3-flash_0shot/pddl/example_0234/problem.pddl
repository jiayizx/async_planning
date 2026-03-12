(define (problem stop_bullying_prob)
(:domain stop_bullying)
(:init
(talk_coworkers_pending)
(discuss_supervisor_pending)
(stand_up_pending)
)
(:goal (and
(talk_coworkers_done)
(discuss_supervisor_done)
(stand_up_done)
))
(:metric minimize (total-time))
)