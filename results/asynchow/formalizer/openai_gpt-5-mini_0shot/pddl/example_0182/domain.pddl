(define (domain angel_hair_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (cook_done)
    (oil_done)
    (tomato_done)
    (salad_done)
  )

  (:durative-action do_step1_cook_pasta
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (cook_done))
            )
  )

  (:durative-action do_step2_oil_garlic_parmesan
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step2)) (at start (cook_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (oil_done))
            )
  )

  (:durative-action do_step3_tomato_sauce
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step3)) (at start (cook_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (tomato_done))
            )
  )

  (:durative-action do_step4_pasta_salad
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step4)) (at start (cook_done)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (salad_done))
            )
  )
)
