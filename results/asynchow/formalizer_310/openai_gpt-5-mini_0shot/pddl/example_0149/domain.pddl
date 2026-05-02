(define (domain dog_santa)
  (:requirements :durative-actions)
  (:predicates
    (introduce_pending)
    (introduce_done)
    (sniff_pending)
    (sniff_done)
    (make_noise_pending)
    (make_noise_done)
  )

  (:durative-action introduce_yourself_to_santa
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (introduce_pending)))
    :effect (and (at start (not (introduce_pending))) (at end (introduce_done)))
  )

  (:durative-action let_dog_sniff_area
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (sniff_pending)))
    :effect (and (at start (not (sniff_pending))) (at end (sniff_done)))
  )

  (:durative-action make_noise_get_dog_look
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (make_noise_pending)) (at start (sniff_done)))
    :effect (and (at start (not (make_noise_pending))) (at end (make_noise_done)))
  )
)
