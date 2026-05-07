(define (domain freeze-watermelon)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (boiled)
    (chilled)
    (combined)
    (wax_covered)
    (frozen)
  )

  ;; Step 1: Boil sugar and water in a small saucepan (5 min = 300s)
  (:durative-action do_step1_boil
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (boiled)) ) )

  ;; Step 2: Chill the syrup in the refrigerator for 1 hour (3600s)
  ;; Must follow Step 1 (requires boiled)
  (:durative-action do_step2_chill
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (boiled)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (chilled)) ) )

  ;; Step 3: Combine the watermelon and syrup gradually (10 min = 600s)
  ;; Must follow Step 2 and Step 4 (requires chilled and wax_covered)
  (:durative-action do_step3_combine
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (chilled)) (at start (wax_covered)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (combined)) ) )

  ;; Step 4: Cover the watermelon with a piece of wax paper (1 min = 60s)
  (:durative-action do_step4_cover
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (wax_covered)) ) )

  ;; Step 5: Freeze the fruit for 12 months (use 1 year = 365 days = 31536000s)
  ;; Must follow Step 3 (requires combined)
  (:durative-action do_step5_freeze
    :parameters (?s - step)
    :duration (= ?duration 31536000)
    :condition (and (at start (step_pending ?s)) (at start (combined)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (frozen)) ) )
)
