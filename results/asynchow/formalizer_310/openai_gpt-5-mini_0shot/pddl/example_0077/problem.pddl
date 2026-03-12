(define (problem put_on_shoes_problem)
  (:domain put_on_shoes)
  (:init
    (walk_pending) (find_pending) (socks_pending) (right_sock_pending) (left_sock_pending)
  )
  (:goal (and
    (walk_done) (find_done) (socks_done) (right_sock_done) (left_sock_done)
  ))
)
