(define (domain gf_vegan_oatmeal_cookies)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
    (s6_done)
    (cookies_ready)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_done))
    )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_done))
    )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step3)) (at start (s2_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_done))
    )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (s4_done))
    )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step5)) (at start (s3_done)) (at start (s4_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (s5_done))
    )
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step6)) (at start (s1_done)) (at start (s5_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (s6_done))
    )
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step7)) (at start (s6_done)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (cookies_ready))
    )
  )
)
