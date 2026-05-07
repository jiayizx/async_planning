(define (domain cure_rash)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (visited_doctor_done)
    (cortisone_applied_done)
    (antihistamine_taken_done)
    (antifungal_tried_done)
  )

  ;; Step 1: Visit your doctor (3600s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (visited_doctor_done))
            )
  )

  ;; Step 2: Apply cortisone cream (300s = 5min)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (visited_doctor_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (cortisone_applied_done))
            )
  )

  ;; Step 3: Take antihistamine (1800s = 30min)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (visited_doctor_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (antihistamine_taken_done))
            )
  )

  ;; Step 4: Try antifungal (604800s = 1 week)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (visited_doctor_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (antifungal_tried_done))
            )
  )
)
