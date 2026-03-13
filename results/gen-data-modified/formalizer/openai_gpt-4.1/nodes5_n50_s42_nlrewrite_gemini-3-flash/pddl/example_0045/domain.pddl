(define (domain powder_makeup)
  (:requirements :durative-actions)
  (:predicates
    (wash_and_moisturize_pending)
    (wash_and_moisturize_done)
    (apply_primer_pending)
    (apply_primer_done)
    (buff_powder_pending)
    (buff_powder_done)
    (dip_brush_pending)
    (dip_brush_done)
    (mist_setting_spray_pending)
    (mist_setting_spray_done)
  )

  (:durative-action wash_and_moisturize
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (wash_and_moisturize_pending))
    :effect (and (at start (not (wash_and_moisturize_pending)))
                 (at end (wash_and_moisturize_done)))
  )

  (:durative-action apply_primer
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (apply_primer_pending))
                    (at start (wash_and_moisturize_done)))
    :effect (and (at start (not (apply_primer_pending)))
                 (at end (apply_primer_done)))
  )

  (:durative-action buff_powder
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (buff_powder_pending))
                    (at start (apply_primer_done))
                    (at start (dip_brush_done)))
    :effect (and (at start (not (buff_powder_pending)))
                 (at end (buff_powder_done)))
  )

  (:durative-action dip_brush
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (dip_brush_pending))
    :effect (and (at start (not (dip_brush_pending)))
                 (at end (dip_brush_done)))
  )

  (:durative-action mist_setting_spray
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (mist_setting_spray_pending))
                    (at start (buff_powder_done)))
    :effect (and (at start (not (mist_setting_spray_pending)))
                 (at end (mist_setting_spray_done)))
  )
)
