(define (domain cheap_vacation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (drove_done)
    (packed_done)
    (hiked_out_done)
    (camped_done)
    (hiked_back_done)
  )

  (:durative-action do_drive
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (drove_done))
            )
  )

  (:durative-action do_pack
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (packed_done))
            )
  )

  (:durative-action do_hike_out
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step3)) (at start (drove_done)) (at start (packed_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (hiked_out_done))
            )
  )

  (:durative-action do_camp
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step4)) (at start (hiked_out_done)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (camped_done))
            )
  )

  (:durative-action do_hike_back
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step5)) (at start (camped_done)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (hiked_back_done))
            )
  )
)
