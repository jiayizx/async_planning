(define (domain contact_leah_remini)
    (:requirements :durative-actions)
    
    (:predicates
        (tweet_pending)
        (tweet_done)
        (comment_instagram_pending)
        (comment_instagram_done)
        (comment_facebook_pending)
        (comment_facebook_done)
        (message_reddit_pending)
        (message_reddit_done)
        (watch_fake_accounts_pending)
        (watch_fake_accounts_done)
    )

    (:durative-action do_tweet
        :parameters ()
        :duration (= ?duration 120)
        :condition (and
            (at start (tweet_pending))
            (at start (watch_fake_accounts_done))
        )
        :effect (and
            (at start (not (tweet_pending)))
            (at end (tweet_done))
        )
    )

    (:durative-action do_comment_instagram
        :parameters ()
        :duration (= ?duration 120)
        :condition (and
            (at start (comment_instagram_pending))
            (at start (watch_fake_accounts_done))
        )
        :effect (and
            (at start (not (comment_instagram_pending)))
            (at end (comment_instagram_done))
        )
    )

    (:durative-action do_comment_facebook
        :parameters ()
        :duration (= ?duration 120)
        :condition (and
            (at start (comment_facebook_pending))
            (at start (watch_fake_accounts_done))
        )
        :effect (and
            (at start (not (comment_facebook_pending)))
            (at end (comment_facebook_done))
        )
    )

    (:durative-action do_message_reddit
        :parameters ()
        :duration (= ?duration 120)
        :condition (and
            (at start (message_reddit_pending))
            (at start (watch_fake_accounts_done))
        )
        :effect (and
            (at start (not (message_reddit_pending)))
            (at end (message_reddit_done))
        )
    )

    (:durative-action do_watch_fake_accounts
        :parameters ()
        :duration (= ?duration 60)
        :condition (at start (watch_fake_accounts_pending))
        :effect (and
            (at start (not (watch_fake_accounts_pending)))
            (at end (watch_fake_accounts_done))
        )
    )
)
