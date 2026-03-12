(define (problem leave_school_problem) (:domain leave_school)
  (:init
    (pack_pending) (keys_pending) (logout_pending) (walk_pending) (unlock_pending)
  )
  (:goal (and (pack_done) (keys_done) (logout_done) (walk_done) (unlock_done)))
)
