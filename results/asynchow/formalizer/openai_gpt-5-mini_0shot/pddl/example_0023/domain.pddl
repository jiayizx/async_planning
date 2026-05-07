(define (domain take-anger-out-on-date)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (a1_done)
    (a2_done)
    (a3_done)
    (a4_done)
    (a5_done)
    (a6_done)
  )

  ; Step 1: Find someone single
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (a1_done))
    )
  )

  ; Step 2: Find someone attractive
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (a2_done))
    )
  )

  ; Step 3: Ask the person out on a date (requires step1 and step2)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (at start (and (step_pending ?s) (a1_done) (a2_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (a3_done))
    )
  )

  ; Step 4: Plan a day and time (requires step3)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (and (step_pending ?s) (a3_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (a4_done))
    )
  )

  ; Step 5: Drive to the location (requires step4)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (and (step_pending ?s) (a4_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (a5_done))
    )
  )

  ; Step 6: Get angry at the date (requires step5)
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (and (step_pending ?s) (a5_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (a6_done))
    )
  )
)
