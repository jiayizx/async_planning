(define (problem prune-cherry-tree-problem)
  (:domain prune-cherry-tree)
  (:init
    (sterilize_pending)
    (measure_pending)
    (cut_pending)
  )
  (:goal (and
    (sterilize_done)
    (measure_done)
    (cut_done)
  ))
)
