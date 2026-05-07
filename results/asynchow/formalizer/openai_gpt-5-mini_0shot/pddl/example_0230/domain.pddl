(define (domain contact-leah)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (watch_done)
    (insta_done)
    (fb_done)
    (reddit_done)
    (contact_made)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
  )

  ;; Step 5: Watch out for fake social media accounts. (60 seconds)
  (:durative-action do_watch_step5
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (watch_done)))
  )

  ;; Step 1: Tweet Leah Remini. (120 seconds) -- produces the final semantic predicate contact_made
  (:durative-action do_tweet_step1
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (watch_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (contact_made)))
  )

  ;; Step 2: Comment on Instagram. (120 seconds)
  (:durative-action do_insta_step2
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (watch_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (insta_done)))
  )

  ;; Step 3: Post comment on Facebook. (120 seconds)
  (:durative-action do_fb_step3
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (watch_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (fb_done)))
  )

  ;; Step 4: Send message on Reddit. (120 seconds)
  (:durative-action do_reddit_step4
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (watch_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (reddit_done)))
  )
)
