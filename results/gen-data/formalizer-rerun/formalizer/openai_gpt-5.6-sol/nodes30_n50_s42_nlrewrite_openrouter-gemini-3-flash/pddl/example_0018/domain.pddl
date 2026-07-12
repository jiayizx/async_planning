(define (domain dance-team-tryout)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step)
    (is_step4 ?s - step) (is_step5 ?s - step) (is_step6 ?s - step)
    (is_step7 ?s - step) (is_step8 ?s - step) (is_step9 ?s - step)
    (is_step10 ?s - step) (is_step11 ?s - step) (is_step12 ?s - step)
    (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step)
    (is_step16 ?s - step) (is_step17 ?s - step) (is_step18 ?s - step)
    (is_step19 ?s - step) (is_step20 ?s - step) (is_step21 ?s - step)
    (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step)
    (is_step25 ?s - step) (is_step26 ?s - step) (is_step27 ?s - step)
    (is_step28 ?s - step) (is_step29 ?s - step) (is_step30 ?s - step)
    (packet_downloaded) (dance_shoes_purchased) (routine_video_recorded)
    (audition_video_submitted) (garage_space_cleared) (receipt_email_received)
    (orientation_attended) (bridge_memorized) (forms_completed)
    (processing_fee_paid) (basic_steps_practiced) (pirouette_perfected)
    (dance_style_researched) (freestyle_song_selected) (physical_exam_completed)
    (flexibility_stretching_completed) (headshot_uploaded) (recommendation_obtained)
    (outfit_washed) (dance_shoes_broken_in) (choreography_learned)
    (accessories_purchased) (eligibility_reviewed) (portal_account_registered)
    (outfit_ironed) (high_jump_split_practiced) (transcript_requested)
    (dance_clinic_attended) (headshot_taken) (code_of_conduct_signed)
  )

  (:durative-action download_packet
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (packet_downloaded))))

  (:durative-action purchase_dance_shoes
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dance_shoes_purchased))))

  (:durative-action record_routine_video
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (garage_space_cleared)) (at start (bridge_memorized)) (at start (pirouette_perfected)) (at start (dance_shoes_broken_in)) (at start (code_of_conduct_signed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (routine_video_recorded))))

  (:durative-action submit_audition_video
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (routine_video_recorded)) (at start (physical_exam_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (audition_video_submitted))))

  (:durative-action clear_garage_space
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (garage_space_cleared))))

  (:durative-action receive_confirmation_email
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (processing_fee_paid)) (at start (headshot_uploaded)) (at start (headshot_taken)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (receipt_email_received))))

  (:durative-action attend_orientation
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (portal_account_registered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (orientation_attended))))

  (:durative-action memorize_bridge
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (basic_steps_practiced)) (at start (code_of_conduct_signed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bridge_memorized))))

  (:durative-action complete_forms
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (packet_downloaded)) (at start (recommendation_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (forms_completed))))

  (:durative-action pay_processing_fee
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (audition_video_submitted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (processing_fee_paid))))

  (:durative-action practice_basic_steps
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (flexibility_stretching_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (basic_steps_practiced))))

  (:durative-action perfect_pirouette
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (portal_account_registered)) (at start (dance_clinic_attended)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pirouette_perfected))))

  (:durative-action research_dance_style
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dance_style_researched))))

  (:durative-action select_freestyle_song
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (dance_style_researched)) (at start (accessories_purchased)) (at start (eligibility_reviewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (freestyle_song_selected))))

  (:durative-action get_physical_exam
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (forms_completed)) (at start (code_of_conduct_signed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (physical_exam_completed))))

  (:durative-action stretch_for_flexibility
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flexibility_stretching_completed))))

  (:durative-action upload_headshot
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (headshot_uploaded))))

  (:durative-action obtain_recommendation
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (transcript_requested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (recommendation_obtained))))

  (:durative-action wash_outfit
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (outfit_ironed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outfit_washed))))

  (:durative-action break_in_dance_shoes
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (dance_shoes_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dance_shoes_broken_in))))

  (:durative-action learn_choreography
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (dance_style_researched)) (at start (eligibility_reviewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (choreography_learned))))

  (:durative-action buy_accessories
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (accessories_purchased))))

  (:durative-action review_eligibility
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eligibility_reviewed))))

  (:durative-action register_portal_account
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (portal_account_registered))))

  (:durative-action iron_outfit
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (choreography_learned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outfit_ironed))))

  (:durative-action practice_high_jump_split
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (choreography_learned)) (at start (eligibility_reviewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (high_jump_split_practiced))))

  (:durative-action request_transcript
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (portal_account_registered)) (at start (headshot_taken)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (transcript_requested))))

  (:durative-action attend_dance_clinic
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (eligibility_reviewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dance_clinic_attended))))

  (:durative-action take_headshot
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (headshot_taken))))

  (:durative-action sign_code_of_conduct
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (orientation_attended)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (code_of_conduct_signed))))
)