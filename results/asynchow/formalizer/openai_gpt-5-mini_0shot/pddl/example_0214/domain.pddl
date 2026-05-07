(define (domain caramelized-toast)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done_s1)
    (done_s2)
    (done_s3)
    (done_s4)
    (done_s5)
  )

  ;; Step 1: scoop margarine (2 minutes = 120 seconds)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done_s1))
    )
  )

  ;; Step 2: mash ingredients (3 minutes = 180 seconds) requires step1
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (done_s1)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done_s2))
    )
  )

  ;; Step 3: get bread and spread mixture (1 minute = 60 seconds) requires step2 and step4
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (done_s2)) (at start (done_s4)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done_s3))
    )
  )

  ;; Step 4: put bread in toaster oven on low (5 minutes = 300 seconds)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done_s4))
    )
  )

  ;; Step 5: enjoy (5 minutes = 300 seconds) requires step3
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (done_s3)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done_s5))
    )
  )
)
