(define (problem make-sims-3-hg-prob) (:domain make-sims-3-hunger-games)
  (:init
    (create8_pending)
    (name_pending)
    (clothes_pending)
    (traits_pending)
  )

  (:goal (and
    (create8_done)
    (name_done)
    (clothes_done)
    (traits_done)
  ))
)
