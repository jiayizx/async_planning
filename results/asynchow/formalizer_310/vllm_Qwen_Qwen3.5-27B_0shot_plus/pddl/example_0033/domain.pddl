(define (domain youtube_channel)
  (:requirements :durative-actions)
  
  (:predicates
    (go_to_website_pending)
    (go_to_website_done)
    (register_account_pending)
    (register_account_done)
    (verify_account_pending)
    (verify_account_done)
    (customize_theme_pending)
    (customize_theme_done)
    (edit_video_pending)
    (edit_video_done)
    (click_post_pending)
    (click_post_done)
    (upload_video_pending)
    (upload_video_done)
  )

  (:durative-action go_to_website
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (go_to_website_pending)))
    :effect (and (at start (not (go_to_website_pending))) (at end (go_to_website_done)))
  )

  (:durative-action register_account
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (register_account_pending)) (at start (go_to_website_done)))
    :effect (and (at start (not (register_account_pending))) (at end (register_account_done)))
  )

  (:durative-action verify_account
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (verify_account_pending)) (at start (register_account_done)))
    :effect (and (at start (not (verify_account_pending))) (at end (verify_account_done)))
  )

  (:durative-action customize_theme
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (customize_theme_pending)) (at start (verify_account_done)))
    :effect (and (at start (not (customize_theme_pending))) (at end (customize_theme_done)))
  )

  (:durative-action edit_video
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (edit_video_pending)) (at start (customize_theme_done)))
    :effect (and (at start (not (edit_video_pending))) (at end (edit_video_done)))
  )

  (:durative-action click_post
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (click_post_pending)) (at start (edit_video_done)))
    :effect (and (at start (not (click_post_pending))) (at end (click_post_done)))
  )

  (:durative-action upload_video
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (upload_video_pending)) (at start (edit_video_done)))
    :effect (and (at start (not (upload_video_pending))) (at end (upload_video_done)))
  )
)
