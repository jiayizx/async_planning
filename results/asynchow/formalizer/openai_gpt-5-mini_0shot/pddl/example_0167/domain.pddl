(define (domain clean_enamel_bathtub)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (mix_done)
    (rub_done)
    (rinse_done)
    (weekly_done)
  )

  ;; Step 1: Mix hot water and liquid dishwashing soap. (5 min = 300s)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (mix_done))
            )
  )

  ;; Step 2: Rub the cleaning solution over the entire tub. (10 min = 600s)
  ;; Requires Step 1 to have completed (mix_done)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step2)) (at start (mix_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (rub_done))
            )
  )

  ;; Step 3: Rinse the tub with clean water. (5 min = 300s)
  ;; Requires Step 2 to have completed (rub_done)
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step3)) (at start (rub_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (rinse_done))
            )
  )

  ;; Step 4: Clean the enamel tub every week. (30 min = 1800s)
  ;; No predecessors in the given constraints
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step4))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (weekly_done))
            )
  )
)
