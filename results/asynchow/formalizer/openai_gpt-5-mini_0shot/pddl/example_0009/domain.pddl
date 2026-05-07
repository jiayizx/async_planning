(define (domain vacation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_complete)
    (s2_complete)
    (s3_complete)
    (s4_complete)
    (s5_complete)
    (s6_complete)
  )

  ;; Step 1: look at hotel prices (1800s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s1_complete)) )
  )

  ;; Step 2: go online and look at flights (3600s)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s2_complete)) )
  )

  ;; Step 3: buy plane tickets (300s)  ; requires step2
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (and (step_pending ?s) (s2_complete)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s3_complete)) )
  )

  ;; Step 4: go to the airport (2700s) ; requires step3 and step6
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (and (step_pending ?s) (s3_complete) (s6_complete)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s4_complete)) )
  )

  ;; Step 5: board the plane (300s) ; requires step4
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (and (step_pending ?s) (s4_complete)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s5_complete)) )
  )

  ;; Step 6: book a hotel (300s) ; requires step1
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (and (step_pending ?s) (s1_complete)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s6_complete)) )
  )
)
