(define (domain cite-annual-report)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done1)
    (done2)
    (done3)
    (done4)
    (done5)
    (done6)
    (done7)
    (done8)
    (done9)
    (done10)
    (done11)
    (done12)
    (done13)
    (done14)
    (done15)
  )

  ;; Step 1: Identify the specific corporate author or organization name (120s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done1))
    )
  )

  ;; Step 2: Arrange the citation elements into the final APA string (180s)
  ;; Requires: 1,3,5,6,7,8,9,10,11,12,13,14,15
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (and (step_pending ?s)
                             (done1) (done3) (done5) (done6) (done7)
                             (done8) (done9) (done10) (done11)
                             (done12) (done13) (done14) (done15)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done2))
    )
  )

  ;; Step 3: Verify the correct spelling of the organization (60s)
  ;; Requires: 1
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (and (step_pending ?s) (done1)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done3))
    )
  )

  ;; Step 4: Proofread the final reference list entry for italicization errors (300s)
  ;; Requires: 1,2,3,5,6,7,8,9,10,11,12,13,14,15
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (and (step_pending ?s)
                             (done1) (done2) (done3) (done5) (done6) (done7)
                             (done8) (done9) (done10) (done11)
                             (done12) (done13) (done14) (done15)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done4))
    )
  )

  ;; Step 5: Locate the publication year on the report's cover page (30s)
  ;; Requires: 12,13,15
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (and (step_pending ?s) (done12) (done13) (done15)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done5))
    )
  )

  ;; Step 6: Note the exact title of the annual report (60s)
  ;; Requires: 5,12,13,15
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (and (step_pending ?s) (done5) (done12) (done13) (done15)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done6))
    )
  )

  ;; Step 7: Search the organization's website for the report archive (600s)
  ;; Requires: 15
  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (and (step_pending ?s) (done15)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done7))
    )
  )

  ;; Step 8: Download the PDF version of the report (45s)
  ;; Requires: 5,6,7,12,13,15
  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (at start (and (step_pending ?s)
                             (done5) (done6) (done7) (done12) (done13) (done15)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done8))
    )
  )

  ;; Step 9: Copy the direct URL for the retrieval statement (15s)
  ;; Requires: 6,14,5,12,13,15
  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (at start (and (step_pending ?s)
                             (done6) (done14) (done5) (done12) (done13) (done15)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done9))
    )
  )

  ;; Step 10: Check if the report has a specific document number (120s)
  ;; Requires: 6,5,12,13,15
  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (and (step_pending ?s)
                             (done6) (done5) (done12) (done13) (done15)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done10))
    )
  )

  ;; Step 11: Determine if the report was found in an online database (240s)
  ;; Requires: 6,5,12,13,15
  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (at start (and (step_pending ?s)
                             (done6) (done5) (done12) (done13) (done15)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done11))
    )
  )

  ;; Step 12: Open your bibliographic management software (20s)
  ;; Requires: 15
  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (at start (and (step_pending ?s) (done15)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done12))
    )
  )

  ;; Step 13: Create a new entry for a "Report" in your citation manager (60s)
  ;; Requires: 12,15
  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (and (step_pending ?s) (done12) (done15)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done13))
    )
  )

  ;; Step 14: Locate the stable permalink for the digital file (120s)
  ;; Requires: 6,5,12,13,15
  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (and (step_pending ?s)
                             (done6) (done5) (done12) (done13) (done15)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done14))
    )
  )

  ;; Step 15: Power on your computer and open your browser (90s)
  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 90)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (done15))
    )
  )
)
