(define (domain contact_leah_remini)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (fake_accounts_checked)
    (tweeted)
    (instagram_commented)
    (facebook_commented)
    (reddit_messaged)
  )

  (:durative-action watch_out_fake_accounts
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fake_accounts_checked)))
  )

  (:durative-action tweet_leah
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (fake_accounts_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tweeted)))
  )

  (:durative-action comment_instagram
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (fake_accounts_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (instagram_commented)))
  )

  (:durative-action comment_facebook
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (fake_accounts_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (facebook_commented)))
  )

  (:durative-action message_reddit
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (fake_accounts_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (reddit_messaged)))
  )
)