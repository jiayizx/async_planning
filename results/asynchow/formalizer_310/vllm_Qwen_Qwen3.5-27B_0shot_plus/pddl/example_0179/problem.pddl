(define (problem oily_skin_care_problem)
    (:domain oily_skin_care)
    
    (:init
        (talk_to_professional_pending)
        (try_face_masks_pending)
        (use_blotting_pads_pending)
        (use_mild_astringent_pending)
    )

    (:goal (and
        (talk_to_professional_done)
        (try_face_masks_done)
        (use_blotting_pads_done)
        (use_mild_astringent_done)
    ))
)
