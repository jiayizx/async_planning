(define (domain karate_basics)
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

    (:durative-action practice_lowering_center_of_gravity
        :parameters ()
        :duration (= ?duration 300)
        :condition (at start (step1_pending))
        :effect (and (at start (not (step1_pending))) (at end (step1_done)))
    )

    (:durative-action high_block
        :parameters ()
        :duration (= ?duration 300)
        :condition (and (at start (step2_pending)) (at start (step1_done)))
        :effect (and (at start (not (step2_pending))) (at end (step2_done)))
    )

    (:durative-action forward_block
        :parameters ()
        :duration (= ?duration 240)
        :condition (and (at start (step3_pending)) (at start (step1_done)))
        :effect (and (at start (not (step3_pending))) (at end (step3_done)))
    )

    (:durative-action cross_block
        :parameters ()
        :duration (= ?duration 360)
        :condition (and (at start (step4_pending)) (at start (step1_done)))
        :effect (and (at start (not (step4_pending))) (at end (step4_done)))
    )

    (:durative-action downward_circle_block
        :parameters ()
        :duration (= ?duration 180)
        :condition (and (at start (step5_pending)) (at start (step1_done)))
        :effect (and (at start (not (step5_pending))) (at end (step5_done)))
    )
)
