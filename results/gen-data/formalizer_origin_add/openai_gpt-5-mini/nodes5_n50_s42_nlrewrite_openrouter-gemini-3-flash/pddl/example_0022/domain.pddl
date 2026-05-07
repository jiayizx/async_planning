(define (domain dental_assistant_tx)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_complete)
    (s2_complete)
    (s3_complete)
    (s4_complete)
    (s5_complete)
  )

  ; Step 1: Submit final registration application to the State Board
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 1209600)  ; 2 weeks = 14 * 86400 = 1,209,600 seconds
    :condition (and
                 (at start (step_pending ?s))
                 (at start (s2_complete))
                 (at start (s3_complete))
                 (at start (s4_complete))
                 (at start (s5_complete))
               )
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s1_complete))
           )
  )

  ; Step 2: Enroll in a state-approved certificate program
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s2_complete))
           )
  )

  ; Step 3: Complete Basic Life Support CPR course
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s3_complete))
           )
  )

  ; Step 4: Attend and pass dental radiography course
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and
                 (at start (step_pending ?s))
                 (at start (s2_complete))
               )
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s4_complete))
           )
  )

  ; Step 5: Pass the Texas Jurisprudence Assessment exam
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
                 (at start (step_pending ?s))
                 (at start (s3_complete))
               )
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s5_complete))
           )
  )
)
