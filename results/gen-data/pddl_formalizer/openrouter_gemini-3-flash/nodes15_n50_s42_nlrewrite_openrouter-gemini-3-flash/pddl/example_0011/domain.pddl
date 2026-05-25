(define (domain notice_me)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (fragrance_applied)
    (outfit_selected)
    (spots_researched)
    (profile_curated)
    (conversation_started)
    (at_cafe)
    (shower_done)
    (recommendations_received)
    (photo_posted)
    (body_language_practiced)
    (candid_photos_taken)
    (contact_exchanged)
    (text_sent)
    (haircut_done)
    (mixer_attended)
  )

  (:durative-action step14_book_haircut
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (haircut_done)))
  )

  (:durative-action step7_shower_skincare
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shower_done)))
  )

  (:durative-action step8_ask_friends
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (recommendations_received)))
  )

  (:durative-action step11_take_photos
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (candid_photos_taken)))
  )

  (:durative-action step4_curate_profile
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (haircut_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (profile_curated)))
  )

  (:durative-action step2_select_outfit
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (shower_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outfit_selected)))
  )

  (:durative-action step10_practice_body_language
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (shower_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (body_language_practiced)))
  )

  (:durative-action step3_research_spots
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (recommendations_received)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spots_researched)))
  )

  (:durative-action step1_apply_fragrance
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (outfit_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fragrance_applied)))
  )

  (:durative-action step6_head_to_cafe
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (spots_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_cafe)))
  )

  (:durative-action step15_attend_mixer
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (profile_curated)) (at start (body_language_practiced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixer_attended)))
  )

  (:durative-action step5_start_conversation
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (at_cafe)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (conversation_started)))
  )

  (:durative-action step9_post_photo
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (profile_curated)) (at start (at_cafe)) (at start (candid_photos_taken)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (photo_posted)))
  )

  (:durative-action step12_exchange_contact
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (mixer_attended)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (contact_exchanged)))
  )

  (:durative-action step13_follow_up_text
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (contact_exchanged)) (at start (mixer_attended)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (text_sent)))
  )
)