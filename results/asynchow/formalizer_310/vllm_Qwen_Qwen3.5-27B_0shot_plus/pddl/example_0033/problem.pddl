(define (problem start_youtube_channel)
  (:domain youtube_channel)
  
  (:init
    (go_to_website_pending)
    (register_account_pending)
    (verify_account_pending)
    (customize_theme_pending)
    (edit_video_pending)
    (click_post_pending)
    (upload_video_pending)
  )

  (:goal (and
    (go_to_website_done)
    (register_account_done)
    (verify_account_done)
    (customize_theme_done)
    (edit_video_done)
    (click_post_done)
    (upload_video_done)
  ))
)
