(define (domain conjugate-puedo)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_sem)
    (step2_sem)
    (step3_sem)
    (step4_sem)
    (step5_sem)
    (step6_sem)
    (step7_sem)
  )

  ; One durative-action per concrete step (no parameters)

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step1)) (at start (step7_sem)))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (step1_sem))
    )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step2)) (at start (step7_sem)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (step2_sem))
    )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step3)) (at start (step7_sem)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (step3_sem))
    )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (step7_sem)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (step4_sem))
    )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (step7_sem)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (step5_sem))
    )
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step6)) (at start (step7_sem)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (step6_sem))
    )
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step7))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (step7_sem))
    )
  )
)
