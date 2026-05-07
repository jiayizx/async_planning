(define (domain create_book)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_finished)
    (s2_finished)
    (s3_finished)
    (s4_finished)
    (book_created)
  )

  ;; Step 1: Make sure your manuscript is ready for publication. (2 months = 60 days)
  ;; Duration in seconds: 60 days * 24 * 3600 = 5184000
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending step1)) (at start (s3_finished)))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (s1_finished))
            )
  )

  ;; Step 2: Find the right publishing route for you. (2 weeks = 14 days)
  ;; Duration in seconds: 14 days * 24 * 3600 = 1209600
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (s2_finished))
            )
  )

  ;; Step 3: Assemble your collection. (2 months = 60 days)
  ;; Duration in seconds: 5184000
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (at start (step_pending step3))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (s3_finished))
            )
  )

  ;; Step 4: Send in the materials. (2 weeks = 14 days)
  ;; Requires Step1 and Step2 to be finished
  ;; Duration in seconds: 1209600
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step4)) (at start (s1_finished)) (at start (s2_finished)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (s4_finished))
              (at end (book_created))
            )
  )
)
