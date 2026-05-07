(define (domain make-snowball)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (found_best_snow)
    (core_formed)
    (reinforced)
    (layer_added)
    (refined_snow)
    (target_found)
  )

  ;; Step 1: Find the best snow you can. (5 min -> 300s)
  (:durative-action do_step1_find_snow
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (found_best_snow))
            )
  )

  ;; Step 2: Form the core of your snowball. (2 min -> 120s)
  ;; Requires step1 to have completed (found_best_snow produced at end of step1)
  (:durative-action do_step2_form_core
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step2)) (at start (found_best_snow)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (core_formed))
            )
  )

  ;; Step 3: Reinforce your snowball. (3 min -> 180s)
  ;; Requires step4 to have completed (layer_added produced at end of step4)
  (:durative-action do_step3_reinforce
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step3)) (at start (layer_added)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (reinforced))
            )
  )

  ;; Step 4: Add another layer of snow to your core. (2 min -> 120s)
  ;; Requires step2 to have completed (core_formed produced at end of step2)
  (:durative-action do_step4_add_layer
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step4)) (at start (core_formed)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (layer_added))
            )
  )

  ;; Step 5: Refine your snowball. (5 min -> 300s)
  ;; Requires step3 to have completed (reinforced produced at end of step3)
  (:durative-action do_step5_refine
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (reinforced)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (refined_snow))
            )
  )

  ;; Step 6: Find your target! (1 min -> 60s)
  ;; No predecessors listed, can start immediately
  (:durative-action do_step6_find_target
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step6))
    :effect (and
              (at start (not (step_pending step6)))
              (at end (step_done step6))
              (at end (target_found))
            )
  )
)
