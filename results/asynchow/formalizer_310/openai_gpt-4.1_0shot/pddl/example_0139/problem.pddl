(define (problem towel_butterfly-instance)
  (:domain towel_butterfly)
  (:init
    (fold_towel_pending)
    (roll_washcloth_pending)
    (decorate_pending)
  )
  (:goal (and
    (fold_towel_done)
    (roll_washcloth_done)
    (decorate_done)
  ))
)
