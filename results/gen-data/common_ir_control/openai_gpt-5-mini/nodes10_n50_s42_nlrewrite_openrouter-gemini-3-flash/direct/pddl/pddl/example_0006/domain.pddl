(define (domain cervical_cancer_treatment)
  (:requirements :typing :durative-actions)
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
    (s8_done)
    (s9_done)
    (s10_done)
  )

  ;; Step 1: Initial biopsy and pathology review (259200s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (at start (and (step_pending step1)))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_done)) ) )

  ;; Step 2: Pre-operative blood work and cardiac clearance (14400s)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (at start (and (step_pending step2) (at start (s10_done))))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_done)) ) )

  ;; Step 3: Mapping of lymph nodes for surgical planning (86400s)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (and (step_pending step3) (at start (s7_done))))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_done)) ) )

  ;; Step 4: Radical hysterectomy surgery (18000s)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (at start (and (step_pending step4) (at start (s3_done))))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (s4_done)) ) )

  ;; Step 5: Anesthesia administration and patient prep (3600s)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step5) (at start (s2_done)) (at start (s10_done))))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (s5_done)) ) )

  ;; Step 6: Post-operative hospital recovery and monitoring (345600s)
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (at start (and (step_pending step6) (at start (s4_done))))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (s6_done)) ) )

  ;; Step 7: Pelvic MRI and CT staging scans (7200s)
  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step7) (at start (s1_done))))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (s7_done)) ) )

  ;; Step 8: External beam radiation therapy sessions (5 weeks = 3024000s)
  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 3024000)
    :condition (at start (and (step_pending step8)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (s8_done)) ) )

  ;; Step 9: Brachytherapy internal radiation treatment (172800s)
  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (and (step_pending step9) (at start (s8_done))))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (s9_done)) ) )

  ;; Step 10: Consultation with the oncology surgical team (2700s)
  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (and (step_pending step10)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (s10_done)) ) )
)
