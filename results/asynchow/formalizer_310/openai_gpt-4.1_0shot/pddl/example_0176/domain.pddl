(define (domain lower-androgen-levels)
  (:requirements :durative-actions)
  (:predicates
    (get_tested_pending)
    (get_tested_done)
    (speak_doctor_pending)
    (speak_doctor_done)
    (get_medication_pending)
    (get_medication_done)
    (ask_antiandrogen_pending)
    (ask_antiandrogen_done)
  )

  (:durative-action get_tested
    :parameters ()
    :duration (= ?duration 1209600) ; 2 weeks = 14*24*3600 = 1,209,600 seconds
    :condition (at start (get_tested_pending))
    :effect (and (at start (not (get_tested_pending))) (at end (get_tested_done)))
  )

  (:durative-action speak_doctor
    :parameters ()
    :duration (= ?duration 7776000) ; 3 months = 3*30*24*3600 = 7,776,000 seconds
    :condition (and (at start (speak_doctor_pending)) (at start (get_tested_done)))
    :effect (and (at start (not (speak_doctor_pending))) (at end (speak_doctor_done)))
  )

  (:durative-action get_medication
    :parameters ()
    :duration (= ?duration 15552000) ; 6 months = 6*30*24*3600 = 15,552,000 seconds
    :condition (and (at start (get_medication_pending)) (at start (get_tested_done)))
    :effect (and (at start (not (get_medication_pending))) (at end (get_medication_done)))
  )

  (:durative-action ask_antiandrogen
    :parameters ()
    :duration (= ?duration 15552000) ; 6 months = 6*30*24*3600 = 15,552,000 seconds
    :condition (and (at start (ask_antiandrogen_pending)) (at start (get_tested_done)))
    :effect (and (at start (not (ask_antiandrogen_pending))) (at end (ask_antiandrogen_done)))
  )
)
