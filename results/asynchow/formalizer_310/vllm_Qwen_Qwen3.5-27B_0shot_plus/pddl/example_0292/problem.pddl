(define (problem eat-kumquat-problem)
  (:domain eat-kumquat)
  
  (:init
    (choose_ripe_pending)
    (wash_dry_pending)
    (rub_pending)
    (remove_seeds_pending)
    (eat_pending)
    (store_extra_pending)
  )

  (:goal (and
    (choose_ripe_done)
    (wash_dry_done)
    (rub_done)
    (remove_seeds_done)
    (eat_done)
    (store_extra_done)
  ))
)
