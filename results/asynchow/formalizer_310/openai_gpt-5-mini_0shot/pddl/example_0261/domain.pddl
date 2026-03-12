(define (domain makeover-domain)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending)
    (step1_done)
    (step2_pending)
    (step2_done)
    (step3_pending)
    (step3_done)
    (step4_pending)
    (step4_done)
    (step5_pending)
    (step5_done)
    (step6_pending)
    (step6_done)
  )

  (:durative-action do_step1_choose_paper
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step1_pending))
    :effect (and
      (at start (not (step1_pending)))
      (at end (step1_done))
    )
  )

  (:durative-action do_step2_measure_drawer
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step2_pending))
    :effect (and
      (at start (not (step2_pending)))
      (at end (step2_done))
    )
  )

  (:durative-action do_step3_cut_paper
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step3_pending)) (at start (step1_done)) (at start (step2_done)))
    :effect (and
      (at start (not (step3_pending)))
      (at end (step3_done))
    )
  )

  (:durative-action do_step4_align_place
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step4_pending)) (at start (step3_done)))
    :effect (and
      (at start (not (step4_pending)))
      (at end (step4_done))
    )
  )

  (:durative-action do_step5_trim_correct
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step5_pending)) (at start (step4_done)))
    :effect (and
      (at start (not (step5_pending)))
      (at end (step5_done))
    )
  )

  (:durative-action do_step6_decorate
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step6_pending)) (at start (step5_done)))
    :effect (and
      (at start (not (step6_pending)))
      (at end (step6_done))
    )
  )
)
