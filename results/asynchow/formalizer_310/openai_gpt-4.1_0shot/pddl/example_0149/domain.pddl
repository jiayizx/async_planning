(define (domain dog_santa_pose)
  (:requirements :durative-actions)
  (:predicates
    (introduce_pending)
    (introduce_done)
    (sniff_pending)
    (sniff_done)
    (noise_pending)
    (noise_done)
  )

  (:durative-action do_introduce
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (introduce_pending))
    :effect (and (at start (not (introduce_pending))) (at end (introduce_done)))
  )

  (:durative-action do_sniff
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (sniff_pending))
    :effect (and (at start (not (sniff_pending))) (at end (sniff_done)))
  )

  (:durative-action do_noise
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (noise_pending)) (at start (sniff_done)))
    :effect (and (at start (not (noise_pending))) (at end (noise_done)))
  )
)
