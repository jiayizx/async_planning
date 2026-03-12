(define (domain great-lakes-mnemonic)
  (:requirements :durative-actions)
  (:predicates
    (buy_map_pending)
    (buy_map_done)
    (create_mnemonic_pending)
    (create_mnemonic_done)
    (locate_superior_pending)
    (locate_superior_done)
    (hang_map_pending)
    (hang_map_done)
    (recite_mnemonic_pending)
    (recite_mnemonic_done)
    (trace_michigan_pending)
    (trace_michigan_done)
    (self_quiz_pending)
    (self_quiz_done)
    (color_code_pending)
    (color_code_done)
    (research_names_pending)
    (research_names_done)
    (teach_names_pending)
    (teach_names_done)
  )

  (:durative-action buy_map
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (buy_map_pending))
    :effect (and (at start (not (buy_map_pending))) (at end (buy_map_done)))
  )

  (:durative-action create_mnemonic
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (create_mnemonic_pending)) (at start (color_code_done)))
    :effect (and (at start (not (create_mnemonic_pending))) (at end (create_mnemonic_done)))
  )

  (:durative-action locate_superior
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (locate_superior_pending)) (at start (research_names_done)))
    :effect (and (at start (not (locate_superior_pending))) (at end (locate_superior_done)))
  )

  (:durative-action hang_map
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (hang_map_pending)) (at start (buy_map_done)))
    :effect (and (at start (not (hang_map_pending))) (at end (hang_map_done)))
  )

  (:durative-action recite_mnemonic
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (recite_mnemonic_pending)) (at start (create_mnemonic_done)))
    :effect (and (at start (not (recite_mnemonic_pending))) (at end (recite_mnemonic_done)))
  )

  (:durative-action trace_michigan
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (trace_michigan_pending)) (at start (locate_superior_done)))
    :effect (and (at start (not (trace_michigan_pending))) (at end (trace_michigan_done)))
  )

  (:durative-action self_quiz
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (self_quiz_pending)) (at start (recite_mnemonic_done)))
    :effect (and (at start (not (self_quiz_pending))) (at end (self_quiz_done)))
  )

  (:durative-action color_code
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (color_code_pending)) (at start (trace_michigan_done)))
    :effect (and (at start (not (color_code_pending))) (at end (color_code_done)))
  )

  (:durative-action research_names
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (research_names_pending))
    :effect (and (at start (not (research_names_pending))) (at end (research_names_done)))
  )

  (:durative-action teach_names
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (teach_names_pending)) (at start (create_mnemonic_done)))
    :effect (and (at start (not (teach_names_pending))) (at end (teach_names_done)))
  )
)
