(define (domain wedding-domain)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (paid_band)
    (went_church)
    (exchanged_vows)
    (kissed_and_danced)
    (dressed_up)
    (invited_guests)
    (paid_catering)
  )

  (:durative-action do_step1_pay_band
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (paid_band))
    )
  )

  (:durative-action do_step2_go_church
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step2)) (at start (dressed_up)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (went_church))
    )
  )

  (:durative-action do_step3_exchange_vows
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step3)) (at start (went_church)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (exchanged_vows))
    )
  )

  (:durative-action do_step4_kiss_and_dance
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step4)) (at start (exchanged_vows)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (kissed_and_danced))
    )
  )

  (:durative-action do_step5_dress_up
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (paid_band)) (at start (invited_guests)) (at start (paid_catering)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (dressed_up))
    )
  )

  (:durative-action do_step6_invite_guests
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step6))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (invited_guests))
    )
  )

  (:durative-action do_step7_pay_catering
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step7))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (paid_catering))
    )
  )
)
