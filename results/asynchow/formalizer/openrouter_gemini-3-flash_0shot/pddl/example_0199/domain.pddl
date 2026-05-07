(define (domain keep_cat_in_yard)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (fence_installed)
    (pvc_installed)
    (objects_removed)
    (net_attached)
    (enclosure_built)
  )

  (:durative-action install_fence
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fence_installed)))
  )

  (:durative-action install_pvc
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (fence_installed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pvc_installed)))
  )

  (:durative-action remove_objects
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (fence_installed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (objects_removed)))
  )

  (:durative-action attach_net
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (net_attached)))
  )

  (:durative-action build_enclosure
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (enclosure_built)))
  )
)