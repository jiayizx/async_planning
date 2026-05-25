(define (domain gastritis_cure)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_complete)
    (step2_complete)
    (step3_complete)
    (step4_complete)
    (step5_complete)
  )

  ;; Step 1: complete antibiotic course
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 1209600)  ; 14 days = 1209600 seconds
    :condition (and (at start (step_pending ?s)) (at start (step4_complete)) (at start (step2_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (step1_complete))
    )
  )

  ;; Step 2: schedule initial consultation
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 1800)  ; 30 minutes
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (step2_complete))
    )
  )

  ;; Step 3: switch to bland, low-acid diet (1 month = 30 days)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 2592000)  ; 30 days = 2592000 seconds
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (step3_complete))
    )
  )

  ;; Step 4: diagnostic endoscopy (requires step2)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 7200)  ; 2 hours
    :condition (and (at start (step_pending ?s)) (at start (step2_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (step4_complete))
    )
  )

  ;; Step 5: follow-up breath test (requires step3 and step1)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 900)  ; 15 minutes
    :condition (and (at start (step_pending ?s)) (at start (step3_complete)) (at start (step1_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (step5_complete))
    )
  )
)
