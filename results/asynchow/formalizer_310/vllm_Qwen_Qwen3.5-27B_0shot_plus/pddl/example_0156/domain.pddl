(define (domain sodium_levels)
  (:requirements :durative-actions)
  
  (:predicates
    (talk_to_physician_pending)
    (talk_to_physician_done)
    (take_anti_nausea_pending)
    (take_anti_nausea_done)
    (take_anti_diarrheals_pending)
    (take_anti_diarrheals_done)
  )

  (:durative-action do_talk_to_physician
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (talk_to_physician_pending))
    :effect (and (at start (not (talk_to_physician_pending)))
                 (at end (talk_to_physician_done)))
  )

  (:durative-action do_take_anti_nausea
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (take_anti_nausea_pending))
                    (at start (talk_to_physician_done)))
    :effect (and (at start (not (take_anti_nausea_pending)))
                 (at end (take_anti_nausea_done)))
  )

  (:durative-action do_take_anti_diarrheals
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (take_anti_diarrheals_pending))
                    (at start (talk_to_physician_done)))
    :effect (and (at start (not (take_anti_diarrheals_pending)))
                 (at end (take_anti_diarrheals_done)))
  )
)