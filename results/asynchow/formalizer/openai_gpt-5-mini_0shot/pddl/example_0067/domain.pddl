(define (domain put_on_clothes)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (opened_drawer_done)
    (take_shirt_done)
    (take_socks_done)
    (take_pants_done)
    (shirt_on_done)
    (socks_on_done)
    (pants_on_done)
  )

  (:durative-action do_step1_open_drawers
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (opened_drawer_done)) ) )

  (:durative-action do_step2_take_out_shirt
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step2)) (at start (opened_drawer_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (take_shirt_done)) ) )

  (:durative-action do_step3_take_out_socks
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step3)) (at start (opened_drawer_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (take_socks_done)) ) )

  (:durative-action do_step4_take_out_pants
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step4)) (at start (opened_drawer_done)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (take_pants_done)) ) )

  (:durative-action do_step5_put_on_shirt
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step5)) (at start (take_shirt_done)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (shirt_on_done)) ) )

  (:durative-action do_step6_put_on_socks
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step6)) (at start (take_socks_done)))
    :effect (and
              (at start (not (step_pending step6)))
              (at end (step_done step6))
              (at end (socks_on_done)) ) )

  (:durative-action do_step7_put_on_pants
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step7)) (at start (take_pants_done)))
    :effect (and
              (at start (not (step_pending step7)))
              (at end (step_done step7))
              (at end (pants_on_done)) ) )
)
