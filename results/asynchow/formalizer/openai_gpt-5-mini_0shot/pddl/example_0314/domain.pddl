(define (domain remove_coffee_stain)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ; type-tags to bind actions to specific step objects
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)

    ; unique semantic predicates produced by each step (one per action)
    (lemon_tried)
    (vinegar_mixed)
    (club_soda_used)
    (excess_removed_first)
    (solution_tested)
    (solution_applied)
    (blotted)
    (flushed)
    (excess_removed_second)
    (dried)
  )

  ; Step 1: Try lemon juice. 5 min = 300s
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lemon_tried))
    )
  )

  ; Step 2: Mix vinegar and dish soap. 10 min = 600s
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vinegar_mixed))
    )
  )

  ; Step 3: Use club soda. 15 min = 900s
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (club_soda_used))
    )
  )

  ; Step 4: Remove excess moisture first. 5 min = 300s
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s))
                    (at start (lemon_tried)) (at start (vinegar_mixed)) (at start (club_soda_used)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (excess_removed_first))
    )
  )

  ; Step 5: Test the solution on an inconspicuous area. 2 min = 120s
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s))
                    (at start (lemon_tried)) (at start (vinegar_mixed)) (at start (club_soda_used)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (solution_tested))
    )
  )

  ; Step 6: Apply the solution to your carpet. 5 min = 300s
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s))
                    (at start (solution_tested)) (at start (blotted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (solution_applied))
    )
  )

  ; Step 7: Blot the wet area. 10 min = 600s
  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s))
                    (at start (excess_removed_first)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (blotted))
    )
  )

  ; Step 8: Flush the area with water. 5 min = 300s
  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s))
                    (at start (solution_applied)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (flushed))
    )
  )

  ; Step 9: Remove excess moisture. 5 min = 300s
  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s))
                    (at start (flushed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (excess_removed_second))
    )
  )

  ; Step 10: Allow the carpet to dry. 14400s
  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s))
                    (at start (excess_removed_second)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dried))
    )
  )
)
