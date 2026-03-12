(define (problem dog_santa_pose-problem)
  (:domain dog_santa_pose)
  (:init
    (introduce_pending)
    (sniff_pending)
    (noise_pending)
  )
  (:goal (and
    (introduce_done)
    (sniff_done)
    (noise_done)
  ))
)
