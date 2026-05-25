(define (domain leave_school)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (packed_done)
    (lights_off_done)
    (submitted_done)
    (walked_done)
    (locked_done)
  )

  (:durative-action do_step1_pack
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step1)) (at start (submitted_done)))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (packed_done)) ) )

  (:durative-action do_step2_turn_off
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step2)) (at start (submitted_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (lights_off_done)) ) )

  (:durative-action do_step3_submit
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step3))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (submitted_done)) ) )

  (:durative-action do_step4_walk
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step4))
                    (at start (packed_done))
                    (at start (lights_off_done))
                    (at start (submitted_done))
                    (at start (locked_done)) )
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (walked_done)) ) )

  (:durative-action do_step5_lock
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step5)) (at start (lights_off_done)) (at start (submitted_done)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (locked_done)) ) )
)
