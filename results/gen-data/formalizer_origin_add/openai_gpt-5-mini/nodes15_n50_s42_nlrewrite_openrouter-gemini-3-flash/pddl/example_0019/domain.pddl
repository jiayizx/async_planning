(define (domain gather_friends)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (created_invitation)
    (finalized_headcount)
    (researched_venues)
    (sent_date_poll)
    (groupchat_setup)
    (emailed_invitations)
    (called_venue)
    (collected_poll_responses)
    (shared_album_created)
    (date_confirmed)
    (drafted_list)
    (reminder_sent)
    (rsvp_wait_done)
    (transport_coordinated)
    (theme_decided)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step1)) (at start (drafted_list)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (created_invitation)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step2)) (at start (sent_date_poll)) (at start (transport_coordinated)) (at start (rsvp_wait_done)) (at start (date_confirmed)) (at start (collected_poll_responses)) (at start (emailed_invitations)) (at start (created_invitation)) (at start (drafted_list)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (finalized_headcount)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step3)) (at start (theme_decided)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (researched_venues)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (sent_date_poll)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step5)) (at start (drafted_list)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (groupchat_setup)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step6)) (at start (created_invitation)) (at start (drafted_list)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (emailed_invitations)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step7)) (at start (researched_venues)) (at start (date_confirmed)) (at start (theme_decided)) (at start (collected_poll_responses)) (at start (sent_date_poll)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (called_venue)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step8)) (at start (sent_date_poll)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (collected_poll_responses)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step9)) (at start (theme_decided)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (shared_album_created)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step10)) (at start (collected_poll_responses)) (at start (sent_date_poll)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (date_confirmed)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (drafted_list)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step12)) (at start (rsvp_wait_done)) (at start (emailed_invitations)) (at start (created_invitation)) (at start (drafted_list)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (reminder_sent)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step13)) (at start (emailed_invitations)) (at start (created_invitation)) (at start (drafted_list)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (rsvp_wait_done)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step14)) (at start (date_confirmed)) (at start (collected_poll_responses)) (at start (sent_date_poll)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (transport_coordinated)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (theme_decided)))
  )
)
