(define (domain buy_dog)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_complete)
    (s2_complete)
    (s3_complete)
    (s4_complete)
    (s5_complete)
    (dog_bought)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 18000)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (s1_complete))
            )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step2)) (at start (s1_complete)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (s2_complete))
            )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step3)) (at start (s1_complete)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (s3_complete))
            )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step4)) (at start (s2_complete)) (at start (s3_complete)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (s4_complete))
            )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step5)) (at start (s4_complete)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (s5_complete))
            )
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step6)) (at start (s5_complete)))
    :effect (and
              (at start (not (step_pending step6)))
              (at end (step_done step6))
              (at end (dog_bought))
            )
  )
)
