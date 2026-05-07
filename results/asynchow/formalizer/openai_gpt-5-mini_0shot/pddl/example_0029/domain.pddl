(define (domain leave-house)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (decide_done)
    (clothes_done)
    (find_done)
    (mirror_done)
    (shoes_done)
    (outside_ready)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (decide_done))
    )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step2) (decide_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (clothes_done))
    )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step3) (decide_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (find_done))
    )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step4) (clothes_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (mirror_done))
    )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step5) (clothes_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (shoes_done))
    )
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step6) (find_done) (mirror_done) (shoes_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (outside_ready))
    )
  )
)
