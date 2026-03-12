(define (problem attract-birds-problem)
  (:domain attract-birds)
  (:init
    (hang_pending)
    (install_pending)
    (provide_pending)
  )
  (:goal (and
    (hang_done)
    (install_done)
    (provide_done)
  ))
)
