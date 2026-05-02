(define (problem polish-jewelry-prob) (:domain polish_jewelry)
  (:init
    (soak_pending) (buff_pending) (rinse_pending) (inspect_pending) (scrub_pending)
  )
  (:goal (and (soak_done) (buff_done) (rinse_done) (inspect_done) (scrub_done)))
)
