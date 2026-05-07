(define (domain flavor_cigars)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (choose_done)
    (select_done)
    (prep_pads_done)
    (soak_done)
    (stash_done)
    (humidor_done)
    (enjoy_done)
  )

  (:durative-action do_step1_choose_flavor
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (choose_done))
            )
  )

  (:durative-action do_step2_select_cigar
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (select_done))
            )
  )

  (:durative-action do_step3_prepare_pads
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step3))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (prep_pads_done))
            )
  )

  (:durative-action do_step4_soak_pads
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (choose_done)) (at start (prep_pads_done)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (soak_done))
            )
  )

  (:durative-action do_step5_stash_cigar_with_pad
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step5)) (at start (select_done)) (at start (soak_done)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (stash_done))
            )
  )

  (:durative-action do_step6_place_in_humidor
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step6)) (at start (stash_done)))
    :effect (and
              (at start (not (step_pending step6)))
              (at end (step_done step6))
              (at end (humidor_done))
            )
  )

  (:durative-action do_step7_enjoy
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step7)) (at start (humidor_done)))
    :effect (and
              (at start (not (step_pending step7)))
              (at end (step_done step7))
              (at end (enjoy_done))
            )
  )
)
