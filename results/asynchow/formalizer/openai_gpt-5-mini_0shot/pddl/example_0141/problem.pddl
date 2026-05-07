(define (problem prune_cherry_tree_problem) (:domain prune_cherry_tree)
  (:objects step1 step2 step3 - step)

  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )

  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (cut_top_done)
  ))
)
