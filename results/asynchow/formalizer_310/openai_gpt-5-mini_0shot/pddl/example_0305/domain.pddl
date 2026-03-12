(define (domain learn-digital-art)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
  )

  (:durative-action do_step1_choose_computer_and_stylus
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step1_pending))
    :effect (and
              (at start (not (step1_pending)))
              (at end (step1_done))
            )
  )

  (:durative-action do_step2_download_gimp_or_krita
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step2_pending)) (at start (step1_done)))
    :effect (and
              (at start (not (step2_pending)))
              (at end (step2_done))
            )
  )

  (:durative-action do_step3_consider_corel_painter
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step3_pending)) (at start (step1_done)))
    :effect (and
              (at start (not (step3_pending)))
              (at end (step3_done))
            )
  )

  (:durative-action do_step4_choose_clip_studio_or_paint_tool_sai
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step4_pending)) (at start (step1_done)))
    :effect (and
              (at start (not (step4_pending)))
              (at end (step4_done))
            )
  )

  (:durative-action do_step5_pay_for_photoshop
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step5_pending)) (at start (step1_done)))
    :effect (and
              (at start (not (step5_pending)))
              (at end (step5_done))
            )
  )
)
