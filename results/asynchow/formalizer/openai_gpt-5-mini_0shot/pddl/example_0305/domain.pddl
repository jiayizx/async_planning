(define (domain learn-digital-art)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (choose_done)
    (download_done)
    (consider_done)
    (manga_done)
    (pay_done)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 900)    ; 15 minutes = 900 seconds
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (choose_done))
    )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 1800)   ; 30 minutes = 1800 seconds
    :condition (and (at start (step_pending step2)) (at start (choose_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (download_done))
    )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 1800)   ; 30 minutes = 1800 seconds
    :condition (and (at start (step_pending step3)) (at start (choose_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (consider_done))
    )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 1200)   ; 20 minutes = 1200 seconds
    :condition (and (at start (step_pending step4)) (at start (choose_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (manga_done))
    )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 1200)   ; 20 minutes = 1200 seconds
    :condition (and (at start (step_pending step5)) (at start (choose_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (pay_done))
    )
  )
)
