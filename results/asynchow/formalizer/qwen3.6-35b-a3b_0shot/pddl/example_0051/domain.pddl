(define (domain build_fire)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (matches_found)
               (wood_found)
               (wood_placed)
               (newspaper_torn)
               (fire_ignited))

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step1)))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (matches_found))))

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step2)))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (wood_found))))

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step3))
                    (at start (wood_found)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (wood_placed))))

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step4))
                    (at start (wood_placed)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (newspaper_torn))))

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 780)
    :condition (and (at start (step_pending step5))
                    (at start (matches_found)))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end (fire_ignited))))
)