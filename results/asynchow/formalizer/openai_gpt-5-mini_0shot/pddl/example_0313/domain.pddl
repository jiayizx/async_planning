(define (domain repair-leather-seats)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (choose_done)
    (cut_done)
    (wax_done)
    (attach_done)
    (dry_done)
  )

  (:durative-action do_step1_choose_patch
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (choose_done))
    )
  )

  (:durative-action do_step2_cut_patch
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step2)) (at start (choose_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (cut_done))
    )
  )

  (:durative-action do_step3_put_wax_paper
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step3))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (wax_done))
    )
  )

  (:durative-action do_step4_attach_patch
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step4)) (at start (cut_done)) (at start (wax_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (attach_done))
    )
  )

  (:durative-action do_step5_allow_dry
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step5)) (at start (attach_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (dry_done))
    )
  )
)
