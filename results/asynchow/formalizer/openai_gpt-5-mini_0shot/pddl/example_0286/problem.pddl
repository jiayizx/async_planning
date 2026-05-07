(define (problem create_book_problem)
  (:domain create_book)
  (:objects step1 step2 step3 step4 - step)

  (:init
    ;; all steps initially pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )

  ;; Goal: all steps done and the final semantic predicate (book_created)
  (:goal (and
            (step_done step1)
            (step_done step2)
            (step_done step3)
            (step_done step4)
            (book_created)
         ))
)
