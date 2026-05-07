(define (problem deter_squirrels_problem)
  (:domain deter_squirrels)
  (:init
    (step1_pending)
    (step2_pending)
    (step3_pending))
  (:goal (and (step1_done) (step2_done) (step3_done) (feeder_hung)))
)