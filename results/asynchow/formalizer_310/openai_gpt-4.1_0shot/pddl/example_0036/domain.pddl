(define (domain hang_glide_learning)
  (:requirements :durative-actions)
  (:predicates
    (watch_videos_pending)
    (watch_videos_done)
    (look_up_articles_pending)
    (look_up_articles_done)
    (look_up_classes_pending)
    (look_up_classes_done)
    (sign_up_practice_pending)
    (sign_up_practice_done)
    (drive_to_class_pending)
    (drive_to_class_done)
    (take_class_pending)
    (take_class_done)
  )

  (:durative-action watch_videos
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (watch_videos_pending))
    :effect (and (at start (not (watch_videos_pending))) (at end (watch_videos_done)))
  )

  (:durative-action look_up_articles
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (look_up_articles_pending))
    :effect (and (at start (not (look_up_articles_pending))) (at end (look_up_articles_done)))
  )

  (:durative-action look_up_classes
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (look_up_classes_pending)) (at start (watch_videos_done)) (at start (look_up_articles_done)))
    :effect (and (at start (not (look_up_classes_pending))) (at end (look_up_classes_done)))
  )

  (:durative-action sign_up_practice
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (sign_up_practice_pending)) (at start (look_up_classes_done)))
    :effect (and (at start (not (sign_up_practice_pending))) (at end (sign_up_practice_done)))
  )

  (:durative-action drive_to_class
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (drive_to_class_pending)) (at start (sign_up_practice_done)))
    :effect (and (at start (not (drive_to_class_pending))) (at end (drive_to_class_done)))
  )

  (:durative-action take_class
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (take_class_pending)) (at start (drive_to_class_done)))
    :effect (and (at start (not (take_class_pending))) (at end (take_class_done)))
  )
)
