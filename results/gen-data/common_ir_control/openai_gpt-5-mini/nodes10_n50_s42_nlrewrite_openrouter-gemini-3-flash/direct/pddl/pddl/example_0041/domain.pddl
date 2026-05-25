(define (domain deductive-reasoning)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done_s1)
    (done_s2)
    (done_s3)
    (done_s4)
    (done_s5)
    (done_s6)
    (done_s7)
    (done_s8)
    (done_s9)
    (done_s10)
    (final_conclusion)
  )

  ; Step 1: Draw a final logical conclusion (300s)
  (:durative-action do_step1
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (done_s1))
      (at end (final_conclusion))
    )
  )

  ; Step 2: Evaluate the validity of the syllogism (900s)
  (:durative-action do_step2
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step2)) (at start (done_s6)) (at start (done_s8)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (done_s2))
    )
  )

  ; Step 3: Identify the major and minor terms (600s)
  (:durative-action do_step3
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step3)) (at start (done_s10)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (done_s3))
    )
  )

  ; Step 4: Gather initial observations (7200s)
  (:durative-action do_step4
    :duration (= ?duration 7200)
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (done_s4))
    )
  )

  ; Step 5: Define the scope of the inquiry (1800s)
  (:durative-action do_step5
    :duration (= ?duration 1800)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (done_s5))
    )
  )

  ; Step 6: Structure the formal argument (2700s)
  (:durative-action do_step6
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step6)) (at start (done_s9)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (done_s6))
    )
  )

  ; Step 7: Draft the categorical premises (1200s)
  (:durative-action do_step7
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step7)) (at start (done_s3)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (done_s7))
    )
  )

  ; Step 8: Filter out irrelevant data points (3600s)
  (:durative-action do_step8
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step8)) (at start (done_s4)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (done_s8))
    )
  )

  ; Step 9: Verify the truth of the premises (86400s)
  (:durative-action do_step9
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step9)) (at start (done_s3)) (at start (done_s7)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (done_s9))
    )
  )

  ; Step 10: Establish a general principle (14400s)
  (:durative-action do_step10
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step10)) (at start (done_s5)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (done_s10))
    )
  )
)
