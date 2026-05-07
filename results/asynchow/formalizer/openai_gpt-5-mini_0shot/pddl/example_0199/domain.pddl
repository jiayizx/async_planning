(define (domain keep-cat-yard)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (fence_up_done)
    (pvc_done)
    (remove_objects_done)
    (net_attached_done)
    (enclosure_built_done)
  )

  ; Step 1: Put up a fence
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (fence_up_done))
    )
  )

  ; Step 2: Put PVC pipes on top of fence (requires step1)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step2)) (at start (fence_up_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (pvc_done))
    )
  )

  ; Step 3: Remove objects near fence (requires step1)
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step3)) (at start (fence_up_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (remove_objects_done))
    )
  )

  ; Step 4: Attach a cat net to your porch
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (net_attached_done))
    )
  )

  ; Step 5: Build a cat enclosure
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (enclosure_built_done))
    )
  )
)
