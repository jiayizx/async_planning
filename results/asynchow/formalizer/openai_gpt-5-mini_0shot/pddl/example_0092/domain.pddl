(define (domain add-large-animal)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (called_done)
    (drove_done)
    (paperwork_done)
    (area_done)
    (received_done)
  )

  (:durative-action do_step1_call
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (called_done))
            )
  )

  (:durative-action do_step2_drive
    :parameters ()
    :duration (= ?duration 2100)
    :condition (and (at start (step_pending step2)) (at start (called_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (drove_done))
            )
  )

  (:durative-action do_step3_paperwork
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step3)) (at start (drove_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (paperwork_done))
            )
  )

  (:durative-action do_step4_area
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step4)) (at start (drove_done)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (area_done))
            )
  )

  (:durative-action do_step5_receive
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step5)) (at start (paperwork_done)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (received_done))
            )
  )
)
