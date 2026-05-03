(define (domain dispose_xray_film)
  (:requirements :durative-actions)
  
  (:predicates
    (cut_info_pending)
    (cut_info_done)
    (donate_pending)
    (donate_done)
    (craft_pending)
    (craft_done)
  )

  (:durative-action cut_info
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (cut_info_pending))
    :effect (and (at start (not (cut_info_pending)))
                 (at end (cut_info_done)))
  )

  (:durative-action donate
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (donate_pending))
                    (at start (cut_info_done)))
    :effect (and (at start (not (donate_pending)))
                 (at end (donate_done)))
  )

  (:durative-action craft
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (craft_pending))
                    (at start (cut_info_done)))
    :effect (and (at start (not (craft_pending)))
                 (at end (craft_done)))
  )
)