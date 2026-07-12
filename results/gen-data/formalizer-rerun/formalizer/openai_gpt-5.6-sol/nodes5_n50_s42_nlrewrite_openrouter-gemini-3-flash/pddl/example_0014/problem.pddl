(define (problem cure-alcohol-breath-problem)
  (:domain cure-alcohol-breath)

  (:objects
    step1 - step1-type
    step2 - step2-type
    step3 - step3-type
    step4 - step4-type
    step5 - step5-type
  )

  (:init
    (step-pending step1)
    (step-pending step2)
    (step-pending step3)
    (step-pending step4)
    (step-pending step5)
  )

  (:goal
    (and
      (step-done step1)
      (step-done step2)
      (step-done step3)
      (step-done step4)
      (step-done step5)
      (mouth-rinsed)
      (menthol-gum-chewed)
    )
  )
)