(define (domain sloth_learning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (browser_opened)
    (search_completed)
    (videos_selected)
    (websites_selected)
    (zoo_found)
  )

  (:durative-action open_browser
    :parameters (?s - step)
    :duration (= ?duration 25)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (browser_opened)))
  )

  (:durative-action search_sloths
    :parameters (?s - step)
    :duration (= ?duration 35)
    :condition (and (at start (step_pending ?s)) (at start (browser_opened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (search_completed)))
  )

  (:durative-action select_videos
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (search_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (videos_selected)))
  )

  (:durative-action select_websites
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (search_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (websites_selected)))
  )

  (:durative-action find_zoo
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (videos_selected)) (at start (websites_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (zoo_found)))
  )
)