(define (problem join-chess-club)
  (:domain chess-club-membership)
  (:objects
    step1 - step1type
    step2 - step2type
    step3 - step3type
    step4 - step4type
    step5 - step5type
    step6 - step6type
    step7 - step7type
    step8 - step8type
    step9 - step9type
    step10 - step10type
    step11 - step11type
    step12 - step12type
    step13 - step13type
    step14 - step14type
    step15 - step15type
    step16 - step16type
    step17 - step17type
    step18 - step18type
    step19 - step19type
    step20 - step20type
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
    (step_pending step6)
    (step_pending step7)
    (step_pending step8)
    (step_pending step9)
    (step_pending step10)
    (step_pending step11)
    (step_pending step12)
    (step_pending step13)
    (step_pending step14)
    (step_pending step15)
    (step_pending step16)
    (step_pending step17)
    (step_pending step18)
    (step_pending step19)
    (step_pending step20)
  )
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (step_done step6)
    (step_done step7)
    (step_done step8)
    (step_done step9)
    (step_done step10)
    (step_done step11)
    (step_done step12)
    (step_done step13)
    (step_done step14)
    (step_done step15)
    (step_done step16)
    (step_done step17)
    (step_done step18)
    (step_done step19)
    (step_done step20)
    (application_filled)
    (chess_set_purchased)
    (rulebook_read)
    (documentary_watched)
    (application_submitted)
    (advisor_signature_obtained)
    (meeting_room_located)
    (approval_form_printed)
    (orientation_attended)
    (president_approval_obtained)
    (hobby_shop_browsed)
    (newsletter_received)
    (membership_credentials_received)
    (gpa_verified)
    (flyers_checked)
    (membership_fee_processed)
    (safety_briefing_attended)
    (id_photo_taken)
    (etiquette_quiz_completed)
    (discord_server_joined)
  ))
  (:metric minimize (total-time))
)