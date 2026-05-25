(define (domain spotting-warning-signs)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (attend_done)
    (review_done)
    (research_done)
    (download_done)
    (crossref_done)
  )

  ;; Step 1: Attend a professional seminar on behavioral indicators
  (:durative-action do_step1_attend_seminar
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step1)) (at start (research_done)))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (attend_done)) ) )

  ;; Step 2: Review case studies of grooming tactics
  (:durative-action do_step2_review_case_studies
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step2)) (at start (attend_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (review_done)) ) )

  ;; Step 3: Research reputable child safety organization guidelines
  (:durative-action do_step3_research_guidelines
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step3))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (research_done)) ) )

  ;; Step 4: Download a checklist of physical and emotional symptoms
  (:durative-action do_step4_download_checklist
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step4)) (at start (research_done)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (download_done)) ) )

  ;; Step 5: Cross-reference the checklist with observed changes in behavior
  (:durative-action do_step5_cross_reference
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step5)) (at start (attend_done)) (at start (research_done)) (at start (download_done)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (crossref_done)) ) )
)
