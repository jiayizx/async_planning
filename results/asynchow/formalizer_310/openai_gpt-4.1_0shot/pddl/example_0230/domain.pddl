(define (domain contact-leah-remini)
  (:requirements :durative-actions)
  (:predicates
    (tweet_leah_remini_pending)
    (tweet_leah_remini_done)
    (comment_instagram_pending)
    (comment_instagram_done)
    (comment_facebook_pending)
    (comment_facebook_done)
    (message_reddit_pending)
    (message_reddit_done)
    (watch_out_fake_pending)
    (watch_out_fake_done)
  )

  (:durative-action tweet_leah_remini
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (tweet_leah_remini_pending)) (at start (watch_out_fake_done)))
    :effect (and (at start (not (tweet_leah_remini_pending))) (at end (tweet_leah_remini_done)))
  )

  (:durative-action comment_instagram
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (comment_instagram_pending)) (at start (watch_out_fake_done)))
    :effect (and (at start (not (comment_instagram_pending))) (at end (comment_instagram_done)))
  )

  (:durative-action comment_facebook
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (comment_facebook_pending)) (at start (watch_out_fake_done)))
    :effect (and (at start (not (comment_facebook_pending))) (at end (comment_facebook_done)))
  )

  (:durative-action message_reddit
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (message_reddit_pending)) (at start (watch_out_fake_done)))
    :effect (and (at start (not (message_reddit_pending))) (at end (message_reddit_done)))
  )

  (:durative-action watch_out_fake
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (watch_out_fake_pending))
    :effect (and (at start (not (watch_out_fake_pending))) (at end (watch_out_fake_done)))
  )
)
