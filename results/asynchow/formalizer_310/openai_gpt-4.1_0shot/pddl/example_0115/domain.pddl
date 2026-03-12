(define (domain backflip-learning)
  (:requirements :durative-actions)
  (:predicates
    (search_youtube_pending)
    (search_youtube_done)
    (watch_videos_pending)
    (watch_videos_done)
    (contact_gym_pending)
    (contact_gym_done)
    (ask_if_teachable_pending)
    (ask_if_teachable_done)
    (book_trainer_pending)
    (book_trainer_done)
    (follow_advice_pending)
    (follow_advice_done)
    (continue_training_pending)
    (continue_training_done)
  )

  (:durative-action search_youtube
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (search_youtube_pending))
    :effect (and (at start (not (search_youtube_pending))) (at end (search_youtube_done)))
  )

  (:durative-action watch_videos
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (watch_videos_pending)) (at start (search_youtube_done)))
    :effect (and (at start (not (watch_videos_pending))) (at end (watch_videos_done)))
  )

  (:durative-action contact_gym
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (contact_gym_pending)) (at start (watch_videos_done)))
    :effect (and (at start (not (contact_gym_pending))) (at end (contact_gym_done)))
  )

  (:durative-action ask_if_teachable
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (ask_if_teachable_pending)) (at start (contact_gym_done)))
    :effect (and (at start (not (ask_if_teachable_pending))) (at end (ask_if_teachable_done)))
  )

  (:durative-action book_trainer
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (book_trainer_pending)) (at start (contact_gym_done)))
    :effect (and (at start (not (book_trainer_pending))) (at end (book_trainer_done)))
  )

  (:durative-action follow_advice
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (follow_advice_pending)) (at start (ask_if_teachable_done)) (at start (book_trainer_done)))
    :effect (and (at start (not (follow_advice_pending))) (at end (follow_advice_done)))
  )

  (:durative-action continue_training
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (continue_training_pending)) (at start (follow_advice_done)))
    :effect (and (at start (not (continue_training_pending))) (at end (continue_training_done)))
  )
)
