(define (domain buy-beer)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
  )

  ;; Step 1: Get into the car (60s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (and (step_pending ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s1_done))
            )
  )

  ;; Step 2: Count out money (600s) -- requires step4 done
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (and (step_pending ?s) (s4_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s2_done))
            )
  )

  ;; Step 3: Give the cashier the money (120s) -- requires step2 and step5 done
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (and (step_pending ?s) (s2_done) (s5_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s3_done))
            )
  )

  ;; Step 4: Drive to the beer store (900s) -- requires step1 done
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (and (step_pending ?s) (s1_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s4_done))
            )
  )

  ;; Step 5: Show cashier the ID (60s) -- requires step4 done
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (and (step_pending ?s) (s4_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s5_done))
            )
  )
)
