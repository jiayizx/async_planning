(define (domain oily_skin_care)
    (:requirements :durative-actions)
    
    (:predicates
        (talk_to_professional_pending)
        (talk_to_professional_done)
        (try_face_masks_pending)
        (try_face_masks_done)
        (use_blotting_pads_pending)
        (use_blotting_pads_done)
        (use_mild_astringent_pending)
        (use_mild_astringent_done)
    )

    (:durative-action talk_to_professional
        :parameters ()
        :duration (= ?duration 1800)
        :condition (at start (talk_to_professional_pending))
        :effect (and (at start (not (talk_to_professional_pending)))
                     (at end (talk_to_professional_done)))
    )

    (:durative-action try_face_masks
        :parameters ()
        :duration (= ?duration 1200)
        :condition (and (at start (try_face_masks_pending))
                        (at start (talk_to_professional_done)))
        :effect (and (at start (not (try_face_masks_pending)))
                     (at end (try_face_masks_done)))
    )

    (:durative-action use_blotting_pads
        :parameters ()
        :duration (= ?duration 300)
        :condition (and (at start (use_blotting_pads_pending))
                        (at start (talk_to_professional_done)))
        :effect (and (at start (not (use_blotting_pads_pending)))
                     (at end (use_blotting_pads_done)))
    )

    (:durative-action use_mild_astringent
        :parameters ()
        :duration (= ?duration 600)
        :condition (and (at start (use_mild_astringent_pending))
                        (at start (talk_to_professional_done)))
        :effect (and (at start (not (use_mild_astringent_pending)))
                     (at end (use_mild_astringent_done)))
    )
)
