(define (domain make_snowball)
  (:requirements :durative-actions)
  (:predicates
    (find_snow_pending)
    (find_snow_done)
    (form_core_pending)
    (form_core_done)
    (reinforce_pending)
    (reinforce_done)
    (add_layer_pending)
    (add_layer_done)
    (refine_pending)
    (refine_done)
    (find_target_pending)
    (find_target_done)
  )

  (:durative-action do_find_snow
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (find_snow_pending))
    :effect (and (at start (not (find_snow_pending))) (at end (find_snow_done)))
  )

  (:durative-action do_form_core
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (form_core_pending)) (at start (find_snow_done)))
    :effect (and (at start (not (form_core_pending))) (at end (form_core_done)))
  )

  (:durative-action do_add_layer
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (add_layer_pending)) (at start (form_core_done)))
    :effect (and (at start (not (add_layer_pending))) (at end (add_layer_done)))
  )

  (:durative-action do_reinforce
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (reinforce_pending)) (at start (add_layer_done)))
    :effect (and (at start (not (reinforce_pending))) (at end (reinforce_done)))
  )

  (:durative-action do_refine
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (refine_pending)) (at start (reinforce_done)))
    :effect (and (at start (not (refine_pending))) (at end (refine_done)))
  )

  (:durative-action do_find_target
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (find_target_pending))
    :effect (and (at start (not (find_target_pending))) (at end (find_target_done)))
  )
)
