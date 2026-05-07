(define (domain roast_beef)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ; unique semantic predicates for each step
    (s1_completed)
    (s2_completed)
    (s3_completed)
    (s4_completed)
    (s5_completed)
    (s6_completed)
    (s7_completed)
    (s8_completed)
    (s9_completed)
    (s10_completed)

    ; helper predicates to bind actions to specific step objects
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
  )

  ; Step 1: Set the dining table (300s)  requires Step 5
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step1 ?s)) (at start (step_pending ?s)) (at start (s5_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_completed)))
  )

  ; Step 2: Let the cooked roast rest on a cutting board (900s)
  ; requires Steps 3,4,6,9,10
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_step2 ?s)) (at start (step_pending ?s)) (at start (s3_completed)) (at start (s4_completed)) (at start (s6_completed)) (at start (s9_completed)) (at start (s10_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_completed)))
  )

  ; Step 3: Preheat the oven to 325 degrees (600s)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step3 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_completed)))
  )

  ; Step 4: Drive to the local butcher shop (1200s)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (is_step4 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_completed)))
  )

  ; Step 5: Polish the silver cutlery (1800s)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (is_step5 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_completed)))
  )

  ; Step 6: Roast the beef in the oven (7200s) requires Step 3
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (is_step6 ?s)) (at start (step_pending ?s)) (at start (s3_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_completed)))
  )

  ; Step 7: Carve the beef into thin slices (300s)
  ; requires Steps 2,3,4,6,8,9,10
  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step7 ?s)) (at start (step_pending ?s)) (at start (s2_completed)) (at start (s3_completed)) (at start (s4_completed)) (at start (s6_completed)) (at start (s8_completed)) (at start (s9_completed)) (at start (s10_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_completed)))
  )

  ; Step 8: Transfer the rested meat to a serving platter (120s)
  ; requires Steps 2,3,4,6,9,10
  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step8 ?s)) (at start (step_pending ?s)) (at start (s2_completed)) (at start (s3_completed)) (at start (s4_completed)) (at start (s6_completed)) (at start (s9_completed)) (at start (s10_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_completed)))
  )

  ; Step 9: Season the beef with salt and herbs (600s) requires Step 4
  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step9 ?s)) (at start (step_pending ?s)) (at start (s4_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_completed)))
  )

  ; Step 10: Remove the roast from the oven (60s) requires Steps 3 and 6
  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step10 ?s)) (at start (step_pending ?s)) (at start (s3_completed)) (at start (s6_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_completed)))
  )
)
