(define (domain exfoliate_eyebrows)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (sanitize_done)
               (apply_cleanser_done)
               (rub_brows_done)
               (rinse_done))
  (:durative-action sanitize_toothbrush
    :parameters ()
    :duration 60
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (sanitize_done))))
  (:durative-action apply_cleanser
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step2))
                    (at start (sanitize_done)))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (apply_cleanser_done))))
  (:durative-action rub_brows
    :parameters ()
    :duration 120
    :condition (and (at start (step_pending step3))
                    (at start (apply_cleanser_done))
                    (at start (rinse_done)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (rub_brows_done))))
  (:durative-action rinse_brow_area
    :parameters ()
    :duration 60
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (rinse_done)))))