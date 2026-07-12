(define (domain learn-violin)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (song_performed)
    (g_major_patterns_memorized)
    (sheet_music_learned)
    (string_transitions_practiced)
    (recital_attended)
    (violin_purchased)
    (instructors_researched)
    (rosin_applied)
    (bow_tightened_and_strings_tuned)
    (twinkle_variations_mastered)
    (music_stand_bought)
    (masterclass_signup_completed)
    (bow_maintenance_tutorial_watched)
    (progress_video_recorded)
    (practice_space_set_up)
    (shoulder_rest_rented)
    (violin_hold_learned)
    (straight_bowing_practiced)
    (open_string_week_completed)
    (masterclass_participated)
  )

  (:durative-action perform-folk-song
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (sheet_music_learned)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (song_performed)))
  )

  (:durative-action memorize-g-major-patterns
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (open_string_week_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (g_major_patterns_memorized)))
  )

  (:durative-action learn-sheet-music
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sheet_music_learned)))
  )

  (:durative-action practice-string-transitions
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (bow_tightened_and_strings_tuned)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (string_transitions_practiced)))
  )

  (:durative-action attend-introductory-recital
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (violin_purchased))
      (at start (instructors_researched))
      (at start (shoulder_rest_rented)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (recital_attended)))
  )

  (:durative-action purchase-violin-and-bow
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (violin_purchased)))
  )

  (:durative-action research-instructors
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (instructors_researched)))
  )

  (:durative-action apply-rosin
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (bow_maintenance_tutorial_watched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rosin_applied)))
  )

  (:durative-action tighten-bow-and-tune-strings
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (violin_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bow_tightened_and_strings_tuned)))
  )

  (:durative-action master-twinkle-variations
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending ?s))
      (at start (g_major_patterns_memorized))
      (at start (string_transitions_practiced)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (twinkle_variations_mastered)))
  )

  (:durative-action buy-music-stand
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (music_stand_bought)))
  )

  (:durative-action sign-up-for-masterclass
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (masterclass_signup_completed)))
  )

  (:durative-action watch-bow-maintenance-tutorial
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bow_maintenance_tutorial_watched)))
  )

  (:durative-action record-progress-video
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (straight_bowing_practiced)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (progress_video_recorded)))
  )

  (:durative-action set-up-practice-space
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (instructors_researched))
      (at start (bow_tightened_and_strings_tuned))
      (at start (music_stand_bought)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (practice_space_set_up)))
  )

  (:durative-action rent-shoulder-rest
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shoulder_rest_rented)))
  )

  (:durative-action learn-violin-and-bow-hold
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (violin_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (violin_hold_learned)))
  )

  (:durative-action practice-straight-bowing
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending ?s))
      (at start (twinkle_variations_mastered)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (straight_bowing_practiced)))
  )

  (:durative-action complete-open-string-week
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending ?s))
      (at start (violin_hold_learned)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (open_string_week_completed)))
  )

  (:durative-action participate-in-masterclass
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (masterclass_signup_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (masterclass_participated)))
  )
)