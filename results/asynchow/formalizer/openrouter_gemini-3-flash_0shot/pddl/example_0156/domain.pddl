(define (domain keep_sodium_levels_up)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (physician_consulted)
    (anti_nausea_taken)
    (anti_diarrheals_taken)
  )

  (:durative-action talk_to_physician
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (physician_consulted))
    )
  )

  (:durative-action take_anti_nausea
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (physician_consulted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (anti_nausea_taken))
    )
  )

  (:durative-action take_anti_diarrheals
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (physician_consulted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (anti_diarrheals_taken))
    )
  )
)