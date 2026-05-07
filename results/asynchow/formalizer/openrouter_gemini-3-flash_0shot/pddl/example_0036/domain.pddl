(define (domain hang_gliding)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (videos_watched)
    (articles_read)
    (classes_found)
    (signed_up)
    (arrived_at_class)
    (class_completed)
  )

  (:durative-action watch_videos
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (videos_watched)))
  )

  (:durative-action read_articles
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (articles_read)))
  )

  (:durative-action find_classes
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (videos_watched)) (at start (articles_read)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (classes_found)))
  )

  (:durative-action sign_up
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (classes_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (signed_up)))
  )

  (:durative-action drive_to_class
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (signed_up)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (arrived_at_class)))
  )

  (:durative-action take_class
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (arrived_at_class)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (class_completed)))
  )
)