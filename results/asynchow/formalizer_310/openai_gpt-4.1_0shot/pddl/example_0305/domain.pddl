(define (domain learn-digital-art)
  (:requirements :durative-actions)
  (:predicates
    (choose_computer_and_stylus_pending)
    (choose_computer_and_stylus_done)
    (download_gimp_or_krita_pending)
    (download_gimp_or_krita_done)
    (consider_corel_painter_pending)
    (consider_corel_painter_done)
    (choose_clip_studio_or_sai_pending)
    (choose_clip_studio_or_sai_done)
    (pay_for_photoshop_pending)
    (pay_for_photoshop_done)
  )

  (:durative-action choose_computer_and_stylus
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (choose_computer_and_stylus_pending))
    :effect (and
      (at start (not (choose_computer_and_stylus_pending)))
      (at end (choose_computer_and_stylus_done))
    )
  )

  (:durative-action download_gimp_or_krita
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (download_gimp_or_krita_pending))
      (at start (choose_computer_and_stylus_done))
    )
    :effect (and
      (at start (not (download_gimp_or_krita_pending)))
      (at end (download_gimp_or_krita_done))
    )
  )

  (:durative-action consider_corel_painter
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (consider_corel_painter_pending))
      (at start (choose_computer_and_stylus_done))
    )
    :effect (and
      (at start (not (consider_corel_painter_pending)))
      (at end (consider_corel_painter_done))
    )
  )

  (:durative-action choose_clip_studio_or_sai
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (choose_clip_studio_or_sai_pending))
      (at start (choose_computer_and_stylus_done))
    )
    :effect (and
      (at start (not (choose_clip_studio_or_sai_pending)))
      (at end (choose_clip_studio_or_sai_done))
    )
  )

  (:durative-action pay_for_photoshop
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (pay_for_photoshop_pending))
      (at start (choose_computer_and_stylus_done))
    )
    :effect (and
      (at start (not (pay_for_photoshop_pending)))
      (at end (pay_for_photoshop_done))
    )
  )
)
