(define (domain leave_house)
  (:requirements :durative-actions)
  
  (:predicates
    (decide_pending) (decide_done)
    (clothing_pending) (clothing_done)
    (find_keys_pending) (find_keys_done)
    (mirror_pending) (mirror_done)
    (shoes_pending) (shoes_done)
    (step_out_pending) (step_out_done)
  )

  (:durative-action do_decide
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (decide_pending))
    :effect (and (at start (not (decide_pending))) (at end (decide_done)))
  )

  (:durative-action do_clothing
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (clothing_pending)) (at start (decide_done)))
    :effect (and (at start (not (clothing_pending))) (at end (clothing_done)))
  )

  (:durative-action do_find_keys
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (find_keys_pending)) (at start (decide_done)))
    :effect (and (at start (not (find_keys_pending))) (at end (find_keys_done)))
  )

  (:durative-action do_mirror
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (mirror_pending)) (at start (clothing_done)))
    :effect (and (at start (not (mirror_pending))) (at end (mirror_done)))
  )

  (:durative-action do_shoes
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (shoes_pending)) (at start (clothing_done)))
    :effect (and (at start (not (shoes_pending))) (at end (shoes_done)))
  )

  (:durative-action do_step_out
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_out_pending)) (at start (find_keys_done)) (at start (mirror_done)) (at start (shoes_done)))
    :effect (and (at start (not (step_out_pending))) (at end (step_out_done)))
  )
)
