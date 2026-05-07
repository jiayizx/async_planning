(define (problem take_screenshot)
    (:domain screenshot_animal_crossing)
    
    (:init
        (hold_l_pending)
        (hold_r_pending)
        (take_picture_pending)
    )

    (:goal (and (hold_l_done) (hold_r_done) (take_picture_done)))
)
