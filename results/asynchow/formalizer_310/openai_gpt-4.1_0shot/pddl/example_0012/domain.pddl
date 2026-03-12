(define (domain diet-planning)
  (:requirements :durative-actions)
  (:predicates
    (get_recommendations_pending)
    (get_recommendations_done)
    (look_up_diets_pending)
    (look_up_diets_done)
    (make_commitment_pending)
    (make_commitment_done)
    (compare_diets_pending)
    (compare_diets_done)
    (talk_doctor_pending)
    (talk_doctor_done)
  )

  (:durative-action get_recommendations
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (get_recommendations_pending))
    :effect (and (at start (not (get_recommendations_pending)))
                 (at end (get_recommendations_done)))
  )

  (:durative-action look_up_diets
    :parameters ()
    :duration (= ?duration 18000)
    :condition (at start (look_up_diets_pending))
    :effect (and (at start (not (look_up_diets_pending)))
                 (at end (look_up_diets_done)))
  )

  (:durative-action compare_diets
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (compare_diets_pending))
    :effect (and (at start (not (compare_diets_pending)))
                 (at end (compare_diets_done)))
  )

  (:durative-action talk_doctor
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (talk_doctor_pending))
    :effect (and (at start (not (talk_doctor_pending)))
                 (at end (talk_doctor_done)))
  )

  (:durative-action make_commitment
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (make_commitment_pending))
                    (at start (get_recommendations_done))
                    (at start (look_up_diets_done))
                    (at start (compare_diets_done))
                    (at start (talk_doctor_done)))
    :effect (and (at start (not (make_commitment_pending)))
                 (at end (make_commitment_done)))
  )
)
