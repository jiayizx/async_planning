(define (problem ice_skating_prob) (:domain ice_skating)
  (:init
    (search_pending) (drive_pending) (rent_pending) (left_on_pending) (right_on_pending)
  )
  (:goal (and (search_done) (drive_done) (rent_done) (left_on_done) (right_on_done)))
)
