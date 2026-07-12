(define (domain kwanzaa-explanation)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (speech_presented)
    (origins_researched)
    (symbols_gathered)
    (script_written)
    (handouts_created)
    (principles_outlined)
    (historian_consulted)
    (presentation_rehearsed)
    (slides_finalized)
    (significance_summarized)
  )

  (:durative-action present_final_speech
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (slides_finalized))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (speech_presented))
    )
  )

  (:durative-action research_historical_origins
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (origins_researched))
    )
  )

  (:durative-action gather_traditional_symbols
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (historian_consulted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (symbols_gathered))
    )
  )

  (:durative-action write_detailed_script
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending ?s))
      (at start (principles_outlined))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (script_written))
    )
  )

  (:durative-action create_educational_handouts
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (origins_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (handouts_created))
    )
  )

  (:durative-action draft_principles_outline
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (historian_consulted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (principles_outlined))
    )
  )

  (:durative-action consult_cultural_historian
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (historian_consulted))
    )
  )

  (:durative-action rehearse_oral_presentation
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (script_written))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (presentation_rehearsed))
    )
  )

  (:durative-action finalize_visual_slides
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (significance_summarized))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (slides_finalized))
    )
  )

  (:durative-action write_pan_african_summary
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (origins_researched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (significance_summarized))
    )
  )
)