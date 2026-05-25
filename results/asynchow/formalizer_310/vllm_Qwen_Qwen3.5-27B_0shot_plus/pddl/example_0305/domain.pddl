(define (domain digital_art_learning)
  (:requirements :durative-actions)
  
  (:predicates
    (choose_hardware_pending)
    (choose_hardware_done)
    (download_gimp_krita_pending)
    (download_gimp_krita_done)
    (consider_corel_pending)
    (consider_corel_done)
    (choose_manga_tools_pending)
    (choose_manga_tools_done)
    (pay_photoshop_pending)
    (pay_photoshop_done)
  )

  (:durative-action choose_hardware
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (choose_hardware_pending))
    :effect (and (at start (not (choose_hardware_pending)))
                 (at end (choose_hardware_done)))
  )

  (:durative-action download_gimp_krita
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (download_gimp_krita_pending))
                    (at start (choose_hardware_done)))
    :effect (and (at start (not (download_gimp_krita_pending)))
                 (at end (download_gimp_krita_done)))
  )

  (:durative-action consider_corel
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (consider_corel_pending))
                    (at start (choose_hardware_done)))
    :effect (and (at start (not (consider_corel_pending)))
                 (at end (consider_corel_done)))
  )

  (:durative-action choose_manga_tools
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (choose_manga_tools_pending))
                    (at start (choose_hardware_done)))
    :effect (and (at start (not (choose_manga_tools_pending)))
                 (at end (choose_manga_tools_done)))
  )

  (:durative-action pay_photoshop
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pay_photoshop_pending))
                    (at start (choose_hardware_done)))
    :effect (and (at start (not (pay_photoshop_pending)))
                 (at end (pay_photoshop_done)))
  )
)