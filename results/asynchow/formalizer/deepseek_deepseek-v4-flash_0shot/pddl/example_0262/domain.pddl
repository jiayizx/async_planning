(define (domain braided-buns)
  (:requirements :durative-actions :typing)
  (:types)
  (:predicates
    (pending_s1) (pending_s2) (pending_s3) (pending_s4) (pending_s5) (pending_s6)
    (done_s1) (done_s2) (done_s3) (done_s4) (done_s5) (done_s6)
  )
  (:durative-action do_s1
    :duration (= ?duration 5)
    :condition (at start (pending_s1))
    :effect (and (at start (not (pending_s1))) (at end (done_s1)))
  )
  (:durative-action do_s2
    :duration (= ?duration 10)
    :condition (and (at start (pending_s2)) (at start (done_s1)))
    :effect (and (at start (not (pending_s2))) (at end (done_s2)))
  )
  (:durative-action do_s3
    :duration (= ?duration 3)
    :condition (and (at start (pending_s3)) (at start (done_s2)))
    :effect (and (at start (not (pending_s3))) (at end (done_s3)))
  )
  (:durative-action do_s4
    :duration (= ?duration 2)
    :condition (and (at start (pending_s4)) (at start (done_s3)) (at start (done_s5)))
    :effect (and (at start (not (pending_s4))) (at end (done_s4)))
  )
  (:durative-action do_s5
    :duration (= ?duration 3)
    :condition (and (at start (pending_s5)) (at start (done_s2)))
    :effect (and (at start (not (pending_s5))) (at end (done_s5)))
  )
  (:durative-action do_s6
    :duration (= ?duration 1)
    :condition (and (at start (pending_s6)) (at start (done_s4)))
    :effect (and (at start (not (pending_s6))) (at end (done_s6)))
  )
)
