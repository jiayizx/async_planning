(define (domain make_den)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (find_done)
    (case_done)
    (cut_done)
    (sew_done)
    (habituate_done)
  )

  ;; Step 1: Find the materials (30 min = 1800 sec)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (find_done))
    )
  )

  ;; Step 2: Make a case for a pillow (15 min = 900 sec)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (find_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (case_done))
    )
  )

  ;; Step 3: Cut the jacket (20 min = 1200 sec)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (find_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cut_done))
    )
  )

  ;; Step 4: Sew the case and the item together (45 min = 2700 sec)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (case_done)) (at start (cut_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sew_done))
    )
  )

  ;; Step 5: Slowly get your pet used to it (2 weeks = 1209600 sec)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (sew_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (habituate_done))
    )
  )
)
