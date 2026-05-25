(define (domain kwanzaa_explanation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (research_done)
    (symbols_gathered)
    (script_written)
    (handouts_created)
    (outline_done)
    (consultation_done)
    (rehearsal_done)
    (slides_finalized)
    (summary_done)
    (speech_presented)
  )

  (:durative-action research_origins
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action consult_historian
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (consultation_done)))
  )

  (:durative-action gather_symbols
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (consultation_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (symbols_gathered)))
  )

  (:durative-action draft_outline
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (consultation_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outline_done)))
  )

  (:durative-action create_handouts
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (handouts_created)))
  )

  (:durative-action write_summary
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (summary_done)))
  )

  (:durative-action write_script
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (outline_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (script_written)))
  )

  (:durative-action finalize_slides
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (summary_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (slides_finalized)))
  )

  (:durative-action rehearse_presentation
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (script_written)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rehearsal_done)))
  )

  (:durative-action present_speech
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (slides_finalized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (speech_presented)))
  )
)