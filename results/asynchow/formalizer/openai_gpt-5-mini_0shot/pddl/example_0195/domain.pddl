(define (domain strawberry-butterflies)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_completed)
    (s2_completed)
    (s3_completed)
    (s4_completed)
  )

  ;; Action for Step 1: Slice the first strawberry down the middle. (60s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s1_completed))
            )
  )

  ;; Action for Step 2: Gently pull the cut quarters apart. (60s)
  ;; Must not start until Step 1 has finished (requires s1_completed at start)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s1_completed)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s2_completed))
            )
  )

  ;; Action for Step 3: Prepare the chili pepper. (120s)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s3_completed))
            )
  )

  ;; Action for Step 4: Pull the cap off the chili and place it between the butterfly wings. (60s)
  ;; Must not start until Step 3 has finished (requires s3_completed at start)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s3_completed)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s4_completed))
            )
  )
)
