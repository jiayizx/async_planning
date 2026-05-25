(define (domain kwanzaa_presentation)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (present_final_done)
    (research_origins_done)
    (gather_symbols_done)
    (write_scripts_done)
    (create_handouts_done)
    (draft_nguzo_done)
    (consult_historian_done)
    (rehearse_presentation_done)
    (finalize_slides_done)
    (write_summary_done)
  )

  (:durative-action do_step1_present_final_speech
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (rehearse_presentation_done))
      (at start (finalize_slides_done))
      (at start (gather_symbols_done))
      (at start (create_handouts_done))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (present_final_done))
    )
  )

  (:durative-action do_step2_research_origins
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (research_origins_done))
    )
  )

  (:durative-action do_step3_gather_symbols
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (consult_historian_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (gather_symbols_done))
    )
  )

  (:durative-action do_step4_write_scripts
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (draft_nguzo_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (write_scripts_done))
    )
  )

  (:durative-action do_step5_create_handouts
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (research_origins_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (create_handouts_done))
    )
  )

  (:durative-action do_step6_draft_nguzo_outline
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (consult_historian_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (draft_nguzo_done))
    )
  )

  (:durative-action do_step7_consult_historian
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (consult_historian_done))
    )
  )

  (:durative-action do_step8_rehearse_presentation
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (write_scripts_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rehearse_presentation_done))
    )
  )

  (:durative-action do_step9_finalize_slides
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (write_summary_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (finalize_slides_done))
    )
  )

  (:durative-action do_step10_write_summary
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (research_origins_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (write_summary_done))
    )
  )
)
