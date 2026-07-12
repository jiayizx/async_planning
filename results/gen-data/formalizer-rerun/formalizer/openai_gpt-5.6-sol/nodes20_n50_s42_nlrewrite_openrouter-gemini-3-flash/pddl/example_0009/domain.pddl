(define (domain chess-club-membership)
  (:requirements :typing :durative-actions)
  (:types
    step - object
    step1type step2type step3type step4type step5type
    step6type step7type step8type step9type step10type
    step11type step12type step13type step14type step15type
    step16type step17type step18type step19type step20type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
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
  )

  (:durative-action fill-application
    :parameters (?s - step1type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (meeting_room_located))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (application_filled))
    )
  )

  (:durative-action purchase-chess-set
    :parameters (?s - step2type)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (hobby_shop_browsed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (chess_set_purchased))
    )
  )

  (:durative-action read-rulebook
    :parameters (?s - step3type)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rulebook_read))
    )
  )

  (:durative-action watch-documentary
    :parameters (?s - step4type)
    :duration (= ?duration 5400)
    :condition (and
      (at start (step_pending ?s))
      (at start (flyers_checked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (documentary_watched))
    )
  )

  (:durative-action submit-application
    :parameters (?s - step5type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (application_filled))
      (at start (id_photo_taken))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (application_submitted))
    )
  )

  (:durative-action obtain-advisor-signature
    :parameters (?s - step6type)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (approval_form_printed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (advisor_signature_obtained))
    )
  )

  (:durative-action locate-meeting-room
    :parameters (?s - step7type)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (flyers_checked))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (meeting_room_located))
    )
  )

  (:durative-action print-approval-form
    :parameters (?s - step8type)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (approval_form_printed))
    )
  )

  (:durative-action attend-orientation
    :parameters (?s - step9type)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (chess_set_purchased))
      (at start (rulebook_read))
      (at start (hobby_shop_browsed))
      (at start (membership_fee_processed))
      (at start (etiquette_quiz_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (orientation_attended))
    )
  )

  (:durative-action obtain-president-approval
    :parameters (?s - step10type)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (approval_form_printed))
      (at start (gpa_verified))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (president_approval_obtained))
    )
  )

  (:durative-action browse-hobby-shop
    :parameters (?s - step11type)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hobby_shop_browsed))
    )
  )

  (:durative-action receive-newsletter
    :parameters (?s - step12type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (membership_fee_processed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (newsletter_received))
    )
  )

  (:durative-action receive-membership-credentials
    :parameters (?s - step13type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (safety_briefing_attended))
      (at start (etiquette_quiz_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (membership_credentials_received))
    )
  )

  (:durative-action verify-gpa
    :parameters (?s - step14type)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (advisor_signature_obtained))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (gpa_verified))
    )
  )

  (:durative-action check-recruitment-flyers
    :parameters (?s - step15type)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (flyers_checked))
    )
  )

  (:durative-action process-membership-fee
    :parameters (?s - step16type)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (application_submitted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (membership_fee_processed))
    )
  )

  (:durative-action attend-safety-briefing
    :parameters (?s - step17type)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (president_approval_obtained))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (safety_briefing_attended))
    )
  )

  (:durative-action take-id-photo
    :parameters (?s - step18type)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (id_photo_taken))
    )
  )

  (:durative-action complete-etiquette-quiz
    :parameters (?s - step19type)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (etiquette_quiz_completed))
    )
  )

  (:durative-action join-discord-server
    :parameters (?s - step20type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (membership_fee_processed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (discord_server_joined))
    )
  )
)