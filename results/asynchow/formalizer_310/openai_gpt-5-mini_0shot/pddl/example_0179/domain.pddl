(define (domain care_oily_skin)
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
  )

  (:durative-action do_step1_try_face_masks
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step1_pending)) (at start (step4_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action do_step2_use_blotting_pads
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step2_pending)) (at start (step4_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action do_step3_consider_mild_astringent
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step3_pending)) (at start (step4_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action do_step4_talk_medical_professional
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step4_pending))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )
)
