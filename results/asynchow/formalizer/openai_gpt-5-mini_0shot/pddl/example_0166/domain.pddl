(define (domain baby_breath_crown)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (choose_done)
    (trim_done)
    (tape_done)
    (circle_done)
  )

  ;; Step 1: Choose a long bunch of baby's breath (300 seconds)
  (:durative-action do_step1_choose
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (choose_done))))

  ;; Step 2: Trim the stem (120 seconds)  -- predecessor: step1
  (:durative-action do_step2_trim
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step2)) (at start (choose_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (trim_done))))

  ;; Step 3: Tape a small bunch to the stem (180 seconds) -- predecessors: step2 and step4
  (:durative-action do_step3_tape
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step3)) (at start (trim_done)) (at start (circle_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (tape_done))))

  ;; Step 4: Create a circle (240 seconds)
  (:durative-action do_step4_circle
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (step_pending step4))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (circle_done))))
)
