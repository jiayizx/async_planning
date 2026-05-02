(define (domain liver_disease_treatment)
  (:requirements :durative-actions)
  (:predicates
    (blood_panel_pending)
    (blood_panel_done)
    (physical_exam_pending)
    (physical_exam_done)
    (supplements_pending)
    (supplements_done)
    (nutritionist_pending)
    (nutritionist_done)
    (ultrasound_pending)
    (ultrasound_done)
  )

  (:durative-action do_blood_panel
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (blood_panel_pending)) (at start (physical_exam_done)))
    :effect (and (at start (not (blood_panel_pending))) (at end (blood_panel_done)))
  )

  (:durative-action do_physical_exam
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (physical_exam_pending))
    :effect (and (at start (not (physical_exam_pending))) (at end (physical_exam_done)))
  )

  (:durative-action do_supplements
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (and (at start (supplements_pending)) (at start (nutritionist_done)))
    :effect (and (at start (not (supplements_pending))) (at end (supplements_done)))
  )

  (:durative-action do_nutritionist
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (nutritionist_pending))
    :effect (and (at start (not (nutritionist_pending))) (at end (nutritionist_done)))
  )

  (:durative-action do_ultrasound
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (ultrasound_pending)) (at start (blood_panel_done)))
    :effect (and (at start (not (ultrasound_pending))) (at end (ultrasound_done)))
  )
)
