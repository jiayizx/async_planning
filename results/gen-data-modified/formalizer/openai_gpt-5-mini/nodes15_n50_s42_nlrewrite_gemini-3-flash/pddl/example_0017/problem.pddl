(define (problem kettle_problem)
  (:domain kettle_domain)
  (:init
    (pour_pending) (chop_pending) (place_pending) (wipe_pending) (sit_pending)
    (throw_pending) (wait_pending) (steep_pending) (set_pending) (wash_pending)
    (fill_pending) (plug_pending) (locate_pending) (unpack_pending) (switch_pending)
  )
  (:goal (and
    (pour_done) (chop_done) (place_done) (wipe_done) (sit_done)
    (throw_done) (wait_done) (steep_done) (set_done) (wash_done)
    (fill_done) (plug_done) (locate_done) (unpack_done) (switch_done)
  ))
)
