(define (domain diagnose-hamster)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (vet_visit_done)
    (watching_done)
    (inspection_done)
  )

  ;; Step 1: Take your hamster to a veterinarian (30 minutes => 1800 seconds)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (watching_done)) (at start (inspection_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vet_visit_done)))
  )

  ;; Step 2: Watch your hamster for lethargic behavior (1 week => 604800 seconds)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (watching_done)))
  )

  ;; Step 3: Look for bloody discharge or a swollen abdomen (5 minutes => 300 seconds)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (inspection_done)))
  )
)
