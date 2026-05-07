(define (problem learn_digital_art)
  (:domain digital_art_learning)
  
  (:init
    (choose_hardware_pending)
    (download_gimp_krita_pending)
    (consider_corel_pending)
    (choose_manga_tools_pending)
    (pay_photoshop_pending)
  )

  (:goal (and
    (choose_hardware_done)
    (download_gimp_krita_done)
    (consider_corel_done)
    (choose_manga_tools_done)
    (pay_photoshop_done)
  ))
)