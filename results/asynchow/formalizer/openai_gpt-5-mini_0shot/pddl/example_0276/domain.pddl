(define (domain scribblenauts_puzzle)
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
    (s6_done)
    (s7_done)
  )

  ;; Step 1: Look at the given hint. (2 sec)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s1_done))
    )
  )

  ;; Step 2: Give the policeman an object. (4 sec)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 4)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s2_done))
    )
  )

  ;; Step 3: Give the chef an object. (4 sec)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 4)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s3_done))
    )
  )

  ;; Step 4: Give the doctor an object. (4 sec)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 4)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s4_done))
    )
  )

  ;; Step 5: Give the fireman an object. (4 sec)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 4)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s5_done))
    )
  )

  ;; Step 6: Drag the object to the proper person. (2 sec)
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)) (at start (s3_done)) (at start (s4_done)) (at start (s5_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s6_done))
    )
  )

  ;; Step 7: Get the starite to complete the level. (2 sec)
  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and (at start (step_pending ?s)) (at start (s6_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (s7_done))
    )
  )
)
