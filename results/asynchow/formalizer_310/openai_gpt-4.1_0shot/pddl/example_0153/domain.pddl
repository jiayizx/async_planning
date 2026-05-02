(define (domain move_in)
  (:requirements :durative-actions)
  (:predicates
    (discuss_relationship_pending)
    (discuss_relationship_done)
    (respect_space_pending)
    (respect_space_done)
    (discuss_finances_pending)
    (discuss_finances_done)
  )

  (:durative-action discuss_relationship
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (discuss_relationship_pending))
    :effect (and
      (at start (not (discuss_relationship_pending)))
      (at end (discuss_relationship_done))
    )
  )

  (:durative-action respect_space
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (respect_space_pending))
    :effect (and
      (at start (not (respect_space_pending)))
      (at end (respect_space_done))
    )
  )

  (:durative-action discuss_finances
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (discuss_finances_pending))
      (at start (discuss_relationship_done))
    )
    :effect (and
      (at start (not (discuss_finances_pending)))
      (at end (discuss_finances_done))
    )
  )
)
