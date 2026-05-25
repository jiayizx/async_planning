(define (domain get_camera)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    ;; generic per-step pending/done predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ;; semantic predicates produced by actions
    (researched)
    (transferred)
    (visited)
    (ordered)
    (transfer_cleared)
    (purchased)
    (compared)
    (delivered)
    (unboxed)
    (charged)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (researched))
    )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step2)) (at start (visited)) (at start (researched)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (transferred))
    )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step3)) (at start (researched)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (visited))
    )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step4)) (at start (compared)) (at start (transfer_cleared)) (at start (transferred)) (at start (visited)) (at start (researched)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (ordered))
    )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step5)) (at start (transferred)) (at start (visited)) (at start (researched)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (transfer_cleared))
    )
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step6)) (at start (transfer_cleared)) (at start (transferred)) (at start (visited)) (at start (researched)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (purchased))
    )
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step7)) (at start (visited)) (at start (researched)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (compared))
    )
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending step8)) (at start (ordered)) (at start (compared)) (at start (transfer_cleared)) (at start (transferred)) (at start (visited)) (at start (researched)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (delivered))
    )
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step9)) (at start (purchased)) (at start (delivered)) (at start (charged)) (at start (ordered)) (at start (compared)) (at start (transfer_cleared)) (at start (transferred)) (at start (visited)) (at start (researched)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (unboxed))
    )
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step10)) (at start (delivered)) (at start (ordered)) (at start (compared)) (at start (transfer_cleared)) (at start (transferred)) (at start (visited)) (at start (researched)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (charged))
    )
  )
)
