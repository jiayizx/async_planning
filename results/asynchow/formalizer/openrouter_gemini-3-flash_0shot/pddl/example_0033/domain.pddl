(define (domain youtube_channel)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (website_visited)
    (account_registered)
    (account_verified)
    (theme_customized)
    (video_edited)
    (video_posted)
    (video_uploaded)
  )

  (:durative-action go_to_website
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (website_visited)))
  )

  (:durative-action register_account
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (website_visited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (account_registered)))
  )

  (:durative-action verify_account
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (account_registered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (account_verified)))
  )

  (:durative-action customize_theme
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (account_verified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (theme_customized)))
  )

  (:durative-action edit_video
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (theme_customized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (video_edited)))
  )

  (:durative-action click_post
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (video_edited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (video_posted)))
  )

  (:durative-action upload_video
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (video_edited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (video_uploaded)))
  )
)