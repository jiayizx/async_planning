(define (domain steamed-sweet-potatoes)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (peeled)
    (cut)
    (placed)
    (boiled)
    (served)
  )

  ;; Step 1: Peel the sweet potatoes (5 min = 300 s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (peeled))
    )
  )

  ;; Step 2: Cut the potatoes into chunks (3 min = 180 s)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (peeled)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cut))
    )
  )

  ;; Step 3: Place the sweet potatoes in a steam tray (1 min = 60 s)
  ;; Requires both cutting (step2) and boiling (step4)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (cut)) (at start (boiled)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (placed))
    )
  )

  ;; Step 4: Boil the water (10 min = 600 s)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (boiled))
    )
  )

  ;; Step 5: Serve and enjoy (2 min = 120 s)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (placed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (served))
    )
  )
)
