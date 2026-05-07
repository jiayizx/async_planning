(define (problem dog_santa_problem)
  (:domain dog_santa_photos)
  (:objects
    step1 step2 step3 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )
  (:goal
    (and
      (step_done step1)
      (step_done step2)
      (step_done step3)
      (santa_introduced)
      (area_sniffed)
      (dog_looking)
    )
  )
)