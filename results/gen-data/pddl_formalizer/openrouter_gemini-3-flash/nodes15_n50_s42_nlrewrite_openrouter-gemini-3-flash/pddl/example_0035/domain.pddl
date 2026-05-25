(define (domain reflexology_charts)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (parchment_purchased)
    (outlines_drafted)
    (points_color_coded)
    (meridians_researched)
    (instructor_consulted)
    (software_installed)
    (store_located)
    (table_set_up)
    (layout_finalized)
    (terminology_proofread)
    (copies_printed)
    (laminate_applied)
    (concepts_sketched)
    (appointment_scheduled)
    (cash_withdrawn)
  )

  (:durative-action purchase_parchment
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (store_located)) (at start (cash_withdrawn)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parchment_purchased)))
  )

  (:durative-action draft_outlines
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (meridians_researched)) (at start (concepts_sketched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outlines_drafted)))
  )

  (:durative-action color_code_points
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (instructor_consulted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (points_color_coded)))
  )

  (:durative-action research_meridians
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (concepts_sketched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meridians_researched)))
  )

  (:durative-action consult_instructor
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (appointment_scheduled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (instructor_consulted)))
  )

  (:durative-action install_software
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (software_installed)))
  )

  (:durative-action locate_store
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (store_located)))
  )

  (:durative-action setup_table
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (parchment_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (table_set_up)))
  )

  (:durative-action finalize_layout
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (outlines_drafted)) (at start (concepts_sketched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (layout_finalized)))
  )

  (:durative-action proofread_labels
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (concepts_sketched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (terminology_proofread)))
  )

  (:durative-action print_copies
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (meridians_researched)) (at start (table_set_up)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (copies_printed)))
  )

  (:durative-action apply_laminate
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (points_color_coded)) (at start (instructor_consulted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (laminate_applied)))
  )

  (:durative-action sketch_concepts
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (software_installed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (concepts_sketched)))
  )

  (:durative-action schedule_appointment
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (appointment_scheduled)))
  )

  (:durative-action withdraw_cash
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cash_withdrawn)))
  )
)