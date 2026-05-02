(define (problem get_dog_pose_for_santa)
  (:domain dog_santa)
  (:init
    (introduce_pending)
    (sniff_pending)
    (make_noise_pending)
  )
  (:goal (and
    (introduce_done)
    (sniff_done)
    (make_noise_done)
  ))
)
