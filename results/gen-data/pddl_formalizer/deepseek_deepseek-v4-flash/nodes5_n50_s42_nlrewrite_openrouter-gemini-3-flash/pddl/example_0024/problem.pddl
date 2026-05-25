(define (problem polish_jewelry_problem)
  (:domain polish_jewelry)
  (:init
    (pending_step1) (pending_step2) (pending_step3) (pending_step4) (pending_step5)
  )
  (:goal (and
    (done_step1) (done_step2) (done_step3) (done_step4) (done_step5)
    (buff_done)
  ))
)