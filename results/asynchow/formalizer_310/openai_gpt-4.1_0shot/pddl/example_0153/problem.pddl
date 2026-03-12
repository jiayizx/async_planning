(define (problem move_in_problem)
  (:domain move_in)
  (:init
    (discuss_relationship_pending)
    (respect_space_pending)
    (discuss_finances_pending)
  )
  (:goal (and
    (discuss_relationship_done)
    (respect_space_done)
    (discuss_finances_done)
  ))
)
