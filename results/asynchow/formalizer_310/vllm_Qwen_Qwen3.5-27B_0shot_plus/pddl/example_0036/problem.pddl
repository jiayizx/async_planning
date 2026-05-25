(define (problem learn_hang_glide)
  (:domain hang_glide_learning)
  
  (:init
    (watch_videos_pending)
    (look_up_articles_pending)
    (look_up_classes_pending)
    (sign_up_pending)
    (drive_to_class_pending)
    (take_class_pending)
  )

  (:goal (and
    (watch_videos_done)
    (look_up_articles_done)
    (look_up_classes_done)
    (sign_up_done)
    (drive_to_class_done)
    (take_class_done)
  ))
)
