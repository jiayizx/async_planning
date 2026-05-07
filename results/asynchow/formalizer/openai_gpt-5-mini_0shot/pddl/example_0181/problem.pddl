(define (problem recycle-wood-problem)
  (:domain recycle-wood-domain)

  (:objects step1 step2 step3 step4 - step)

  (:init
    ;; All steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)

    ;; No semantic predicates true initially (searched, screws_removed, cut_done, transported)
  )

  ;; Goal requires all steps done and the final semantic predicate (transported)
  (:goal (and
            (step_done step1)
            (step_done step2)
            (step_done step3)
            (step_done step4)
            (transported)
         ))
)
