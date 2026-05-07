(define (problem organize_house_prob)
  (:domain organize_house)
  (:objects
    step1 step2 step3 step4 step5 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )
  (:goal
    (and
      (step_done step1)
      (step_done step2)
      (step_done step3)
      (step_done step4)
      (step_done step5)
      (decluttered)
      (containers_bought)
      (bookshelves_organized)
      (closet_maximized)
      (kitchen_organized)
    )
  )
)