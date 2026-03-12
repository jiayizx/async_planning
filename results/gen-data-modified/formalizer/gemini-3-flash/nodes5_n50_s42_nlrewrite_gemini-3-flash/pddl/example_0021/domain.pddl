(define (domain liver_disease_treatment)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending)
    (step1_done)
    (step2_pending)
    (step2_done)
    (step3_pending)
    (step3_done)
    (step4_pending)
    (step4_done)
    (step5_pending)
    (step5_done)
  )

  (:durative-action perform_blood_panel
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step1_pending)) (at start (step2_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action schedule_physical_exam
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action administer_supplements
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (and (at start (step3_pending)) (at start (step4_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action consult_nutritionist
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step4_pending))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action conduct_ultrasound
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step5_pending)) (at start (step1_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )
)