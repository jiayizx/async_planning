(define (domain treat-liver-disease)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_complete)
    (s2_complete)
    (s3_complete)
    (s4_complete)
    (treatment_completed)
  )

  ;; Step 1: Conduct a full abdominal ultrasound (2700s)
  (:durative-action do_step1
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step1)) (at start (s2_complete)))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (s1_complete))
            )
  )

  ;; Step 2: Schedule an initial veterinary consultation (172800s)
  (:durative-action do_step2
    :duration (= ?duration 172800)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (s2_complete))
            )
  )

  ;; Step 3: Monitor enzyme levels via follow-up blood work (1 week = 604800s)
  (:durative-action do_step3
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step3)) (at start (s4_complete)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (s3_complete))
            )
  )

  ;; Step 4: Administer specialized prescription diet and supplements (1 month = 2592000s)
  (:durative-action do_step4
    :duration (= ?duration 2592000)
    :condition (at start (step_pending step4))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (s4_complete))
            )
  )

  ;; Step 5: Perform a needle biopsy of the liver tissue (7200s)
  ;; Final action producing overall treatment outcome
  (:durative-action do_step5
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step5)) (at start (s1_complete)) (at start (s2_complete)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (treatment_completed))
            )
  )
)
