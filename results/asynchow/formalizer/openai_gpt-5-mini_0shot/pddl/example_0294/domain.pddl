(define (domain service-brakes)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (removed_wheels_done)
    (removed_drum_done)
    (inspected_shoes_done)
    (inspected_springs_done)
    (changed_cylinder_done)
  )

  ;; Step 1: Remove the wheels (10 min = 600 s)
  (:durative-action remove-wheels
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (removed_wheels_done))
            )
  )

  ;; Step 2: Remove the drum (15 min = 900 s) ; must follow step1
  (:durative-action remove-drum
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step2)) (at start (removed_wheels_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (removed_drum_done))
            )
  )

  ;; Step 3: Inspect the brake shoes (20 min = 1200 s) ; must follow step2
  (:durative-action inspect-shoes
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step3)) (at start (removed_drum_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (inspected_shoes_done))
            )
  )

  ;; Step 4: Identify and inspect your return springs (15 min = 900 s) ; must follow step2
  (:durative-action inspect-springs
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step4)) (at start (removed_drum_done)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (inspected_springs_done))
            )
  )

  ;; Step 5: Change your wheel cylinder (30 min = 1800 s) ; must follow step2
  (:durative-action change-cylinder
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step5)) (at start (removed_drum_done)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (changed_cylinder_done))
            )
  )
)
