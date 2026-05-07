(define (domain filecabinet_makeover)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (choose_done)
    (measure_done)
    (cut_done)
    (align_done)
    (trim_done)
    (decorate_done)
  )

  ;; Step 1: Choose your paper (5 minutes = 300 seconds)
  (:durative-action do_step1_choose
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (choose_done))
            )
  )

  ;; Step 2: Measure width and height (2 minutes = 120 seconds)
  (:durative-action do_step2_measure
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (measure_done))
            )
  )

  ;; Step 3: Cut the contact paper to size (3 minutes = 180 seconds)
  ;; Requires completion of Step1 (choose_done) and Step2 (measure_done)
  (:durative-action do_step3_cut
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (choose_done)) (at start (measure_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (cut_done))
            )
  )

  ;; Step 4: Align and place the paper (5 minutes = 300 seconds)
  ;; Requires completion of Step3 (cut_done)
  (:durative-action do_step4_align
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (cut_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (align_done))
            )
  )

  ;; Step 5: Trim off excess and correct (10 minutes = 600 seconds)
  ;; Requires completion of Step4 (align_done)
  (:durative-action do_step5_trim
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (align_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (trim_done))
            )
  )

  ;; Step 6: Add extra decoration (15 minutes = 900 seconds)
  ;; Requires completion of Step5 (trim_done)
  (:durative-action do_step6_decorate
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (trim_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (decorate_done))
            )
  )
)
