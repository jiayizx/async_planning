(define (problem contact_leah_remini_problem)
    (:domain contact_leah_remini)
    
    (:init
        (tweet_pending)
        (comment_instagram_pending)
        (comment_facebook_pending)
        (message_reddit_pending)
        (watch_fake_accounts_pending)
    )

    (:goal (and
        (tweet_done)
        (comment_instagram_done)
        (comment_facebook_done)
        (message_reddit_done)
        (watch_fake_accounts_done)
    ))
)
