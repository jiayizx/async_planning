(define (domain bake_soft_cookies)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (stored_done)
    (towel_done)
    (bread_done)
  )

  (:durative-action do_step1_store_cookies
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (stored_done))
            )
  )

  (:durative-action do_step2_add_towel
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step2)) (at start (stored_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (towel_done))
            )
  )

  (:durative-action do_step3_include_bread
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step3)) (at start (stored_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (bread_done))
            )
  )
)
