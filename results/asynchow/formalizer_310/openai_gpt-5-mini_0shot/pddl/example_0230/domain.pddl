(define (domain contact_leah_remini)
  (:requirements :durative-actions)
  (:predicates
    (tweet_leah_pending)
    (tweet_leah_done)
    (insta_comment_pending)
    (insta_comment_done)
    (facebook_comment_pending)
    (facebook_comment_done)
    (reddit_message_pending)
    (reddit_message_done)
    (watch_for_fakes_pending)
    (watch_for_fakes_done)
  )

  (:durative-action tweet_leah
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (tweet_leah_pending)) (at start (watch_for_fakes_done)))
    :effect (and (at start (not (tweet_leah_pending))) (at end (tweet_leah_done)))
  )

  (:durative-action insta_comment
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (insta_comment_pending)) (at start (watch_for_fakes_done)))
    :effect (and (at start (not (insta_comment_pending))) (at end (insta_comment_done)))
  )

  (:durative-action facebook_comment
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (facebook_comment_pending)) (at start (watch_for_fakes_done)))
    :effect (and (at start (not (facebook_comment_pending))) (at end (facebook_comment_done)))
  )

  (:durative-action reddit_message
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (reddit_message_pending)) (at start (watch_for_fakes_done)))
    :effect (and (at start (not (reddit_message_pending))) (at end (reddit_message_done)))
  )

  (:durative-action watch_for_fakes
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (watch_for_fakes_pending))
    :effect (and (at start (not (watch_for_fakes_pending))) (at end (watch_for_fakes_done)))
  )
)
