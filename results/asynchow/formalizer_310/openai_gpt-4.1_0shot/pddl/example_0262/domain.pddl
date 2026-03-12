(define (domain braided_double_buns)
  (:requirements :durative-actions)
  (:predicates
    (pull_hair_pending)
    (pull_hair_done)
    (twist_ponytails_pending)
    (twist_ponytails_done)
    (wrap_right_braid_pending)
    (wrap_right_braid_done)
    (wrap_left_braid_pending)
    (wrap_left_braid_done)
    (secure_bun_pending)
    (secure_bun_done)
    (finish_off_pending)
    (finish_off_done)
  )

  (:durative-action pull_hair
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (pull_hair_pending))
    :effect (and (at start (not (pull_hair_pending))) (at end (pull_hair_done)))
  )

  (:durative-action twist_ponytails
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (twist_ponytails_pending)) (at start (pull_hair_done)))
    :effect (and (at start (not (twist_ponytails_pending))) (at end (twist_ponytails_done)))
  )

  (:durative-action wrap_right_braid
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (wrap_right_braid_pending)) (at start (twist_ponytails_done)))
    :effect (and (at start (not (wrap_right_braid_pending))) (at end (wrap_right_braid_done)))
  )

  (:durative-action wrap_left_braid
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (wrap_left_braid_pending)) (at start (twist_ponytails_done)))
    :effect (and (at start (not (wrap_left_braid_pending))) (at end (wrap_left_braid_done)))
  )

  (:durative-action secure_bun
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (secure_bun_pending)) (at start (wrap_right_braid_done)) (at start (wrap_left_braid_done)))
    :effect (and (at start (not (secure_bun_pending))) (at end (secure_bun_done)))
  )

  (:durative-action finish_off
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (finish_off_pending)) (at start (secure_bun_done)))
    :effect (and (at start (not (finish_off_pending))) (at end (finish_off_done)))
  )
)
