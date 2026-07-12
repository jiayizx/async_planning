(define (problem obtain-book-name-problem)
  (:domain obtain-book-name)
  (:objects
    step1 - step1-type
    step2 - step2-type
    step3 - step3-type
    step4 - step4-type
    step5 - step5-type
    step6 - step6-type
    step7 - step7-type
    step8 - step8-type
    step9 - step9-type
    step10 - step10-type
  )
  (:init
    (step-pending step1)
    (step-pending step2)
    (step-pending step3)
    (step-pending step4)
    (step-pending step5)
    (step-pending step6)
    (step-pending step7)
    (step-pending step8)
    (step-pending step9)
    (step-pending step10)
  )
  (:goal (and
    (step-done step1)
    (step-done step2)
    (step-done step3)
    (step-done step4)
    (step-done step5)
    (step-done step6)
    (step-done step7)
    (step-done step8)
    (step-done step9)
    (step-done step10)
    (book-name-obtained)
  ))
)