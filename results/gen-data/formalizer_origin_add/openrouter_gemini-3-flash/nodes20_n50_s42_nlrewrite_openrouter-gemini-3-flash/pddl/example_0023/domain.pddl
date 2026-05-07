(define (domain homework_planning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (rubric_reviewed)
    (outline_created)
    (intro_drafted)
    (desk_organized)
    (papers_downloaded)
    (cloud_backed_up)
    (portal_logged_in)
    (timer_set)
    (papers_skimmed)
    (textbook_read)
    (body_written)
    (data_highlighted)
    (math_completed)
    (bib_compiled)
    (topics_brainstormed)
    (phone_removed)
    (spell_checked)
    (format_checked)
    (assignment_uploaded)
    (receipt_confirmed)
  )

  (:durative-action step1
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (textbook_read)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rubric_reviewed)))
  )

  (:durative-action step2
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (desk_organized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outline_created)))
  )

  (:durative-action step3
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (topics_brainstormed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (intro_drafted)))
  )

  (:durative-action step4
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (desk_organized)))
  )

  (:durative-action step5
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (portal_logged_in)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (papers_downloaded)))
  )

  (:durative-action step6
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (spell_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cloud_backed_up)))
  )

  (:durative-action step7
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (phone_removed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (portal_logged_in)))
  )

  (:durative-action step8
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (timer_set)))
  )

  (:durative-action step9
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (papers_downloaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (papers_skimmed)))
  )

  (:durative-action step10
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (textbook_read)))
  )

  (:durative-action step11
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (intro_drafted)) (at start (textbook_read)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (body_written)))
  )

  (:durative-action step12
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (papers_downloaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (data_highlighted)))
  )

  (:durative-action step13
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (timer_set)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (math_completed)))
  )

  (:durative-action step14
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (data_highlighted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bib_compiled)))
  )

  (:durative-action step15
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (topics_brainstormed)))
  )

  (:durative-action step16
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (phone_removed)))
  )

  (:durative-action step17
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spell_checked)))
  )

  (:durative-action step18
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (format_checked)))
  )

  (:durative-action step19
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (outline_created)) (at start (math_completed)) (at start (bib_compiled)) (at start (format_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (assignment_uploaded)))
  )

  (:durative-action step20
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (bib_compiled)) (at start (format_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (receipt_confirmed)))
  )
)