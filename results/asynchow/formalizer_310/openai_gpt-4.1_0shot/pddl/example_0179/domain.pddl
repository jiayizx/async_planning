(define (domain oily_skin_care)
  (:requirements :durative-actions)
  (:predicates
    (try_face_masks_pending)
    (try_face_masks_done)
    (use_blotting_pads_pending)
    (use_blotting_pads_done)
    (consider_mild_astringent_pending)
    (consider_mild_astringent_done)
    (talk_medical_professional_pending)
    (talk_medical_professional_done)
  )

  (:durative-action try_face_masks
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (try_face_masks_pending)) (at start (talk_medical_professional_done)))
    :effect (and (at start (not (try_face_masks_pending))) (at end (try_face_masks_done)))
  )

  (:durative-action use_blotting_pads
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (use_blotting_pads_pending)) (at start (talk_medical_professional_done)))
    :effect (and (at start (not (use_blotting_pads_pending))) (at end (use_blotting_pads_done)))
  )

  (:durative-action consider_mild_astringent
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (consider_mild_astringent_pending)) (at start (talk_medical_professional_done)))
    :effect (and (at start (not (consider_mild_astringent_pending))) (at end (consider_mild_astringent_done)))
  )

  (:durative-action talk_medical_professional
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (talk_medical_professional_pending))
    :effect (and (at start (not (talk_medical_professional_pending))) (at end (talk_medical_professional_done)))
  )
)
