(define (domain season_tilapia)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (melted_butter)
               (lemon_juice_ready)
               (mixture_ready)
               (sauce_poured)
               (fish_baked))
  (:durative-action do_step1
    :duration 120
    :condition (and (at start (step_pending step1)))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (melted_butter))))
  (:durative-action do_step2
    :duration 120
    :condition (and (at start (step_pending step2)))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (lemon_juice_ready))))
  (:durative-action do_step3
    :duration 180
    :condition (and (at start (step_pending step3))
                    (at start (melted_butter))
                    (at start (lemon_juice_ready)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (mixture_ready))))
  (:durative-action do_step4
    :duration 60
    :condition (and (at start (step_pending step4))
                    (at start (mixture_ready)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (sauce_poured))))
  (:durative-action do_step5
    :duration 720
    :condition (and (at start (step_pending step5))
                    (at start (sauce_poured)))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end (fish_baked)))))