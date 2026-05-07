(define (domain make-calzones)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ;; semantic predicates (one unique effect per step action)
    (preheated)
    (dough_rolled)
    (filling_added)
    (folded_pinched)
    (baked)
  )

  ;; Step 1: Preheat the oven to 425 degrees. (10 minutes = 600 seconds)
  (:durative-action do_step1_preheat
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (preheated))
            )
  )

  ;; Step 2: Roll out the dough. (10 minutes = 600 seconds)
  (:durative-action do_step2_roll_dough
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (dough_rolled))
            )
  )

  ;; Step 3: Add the filling. (15 minutes = 900 seconds)
  ;; Requires that the dough has been rolled (dough_rolled produced by step2)
  (:durative-action do_step3_add_filling
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (and (step_pending ?s) (dough_rolled)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (filling_added))
            )
  )

  ;; Step 4: Fold and pinch the dough. (5 minutes = 300 seconds)
  (:durative-action do_step4_fold_pinch
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (and (step_pending ?s) (filling_added)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (folded_pinched))
            )
  )

  ;; Step 5: Bake the calzones. (25 minutes = 1500 seconds)
  ;; Must wait for oven preheated (step1) AND folded & pinched (step4)
  (:durative-action do_step5_bake
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (at start (and (step_pending ?s) (preheated) (folded_pinched)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (baked))
            )
  )
)
