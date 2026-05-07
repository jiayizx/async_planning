(define (domain learn-film)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (area_decided)
    (online_researched)
    (library_visited)
    (research_read)
    (respect_enjoyed)
  )

  ;; Step 1: Decide which area of film to learn about.
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (area_decided))
    )
  )

  ;; Step 2: Research history and topic online.  Requires Step1
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (area_decided)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (online_researched))
    )
  )

  ;; Step 3: Go to local library to find books and articles.  Requires Step1
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (area_decided)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (library_visited))
    )
  )

  ;; Step 4: Read the research.  Requires Step2 and Step3
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (online_researched)) (at start (library_visited)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (research_read))
    )
  )

  ;; Step 5: Enjoy the newfound respect for film. Requires Step4
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (research_read)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (respect_enjoyed))
    )
  )
)
