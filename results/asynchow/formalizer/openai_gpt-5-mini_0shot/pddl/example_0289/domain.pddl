(define (domain cosplay-garnet)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (wig_obtained)
    (prep_done)
    (leggings_obtained)
    (shirt_made)
    (gloves_obtained)
    (shoes_obtained)
    (shades_obtained)
  )

  (:durative-action do_step1_get_wig
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (wig_obtained))
    )
  )

  (:durative-action do_step2_prepare_sew
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (prep_done))
    )
  )

  (:durative-action do_step3_get_leggings
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step3))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (leggings_obtained))
    )
  )

  (:durative-action do_step4_recreate_shirt
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step4)) (at start (prep_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (shirt_made))
    )
  )

  (:durative-action do_step5_get_gloves
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (gloves_obtained))
    )
  )

  (:durative-action do_step6_get_shoes
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step6))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (shoes_obtained))
    )
  )

  (:durative-action do_step7_get_shades
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step7))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (shades_obtained))
    )
  )
)
