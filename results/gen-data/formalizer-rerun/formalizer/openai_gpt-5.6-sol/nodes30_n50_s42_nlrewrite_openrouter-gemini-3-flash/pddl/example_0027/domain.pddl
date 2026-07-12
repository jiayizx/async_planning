(define (domain make-friend-call)
  (:requirements :typing :durative-actions)
  (:types
    step - object
    step1type step2type step3type step4type step5type
    step6type step7type step8type step9type step10type
    step11type step12type step13type step14type step15type
    step16type step17type step18type step19type step20type
    step21type step22type step23type step24type step25type
    step26type step27type step28type step29type step30type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (voicemail_left)
    (local_time_checked)
    (speakerphone_enabled)
    (contact_selected)
    (contacts_opened)
    (phone_plugged_in)
    (awake_status_confirmed)
    (smartphone_picked_up)
    (conversation_completed)
    (call_button_pressed)
    (favorites_opened)
    (screen_unlocked)
    (volume_adjusted)
    (signal_checked)
    (screen_cleaned)
    (friend_searched)
    (case_found)
    (battery_checked)
    (notifications_cleared)
    (phone_cased)
    (phone_rang)
    (dnd_disabled)
    (number_checked)
    (friend_chosen)
    (contact_details_viewed)
    (phone_at_ear)
    (cable_located)
    (hands_washed)
    (microphone_unmuted)
    (call_connected)
  )

  (:durative-action leave_voicemail
    :parameters (?s - step1type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (phone_rang)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (voicemail_left)))
  )

  (:durative-action check_local_time
    :parameters (?s - step2type)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (local_time_checked)))
  )

  (:durative-action enable_speakerphone
    :parameters (?s - step3type)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (phone_cased)) (at start (friend_chosen)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (speakerphone_enabled)))
  )

  (:durative-action select_contact
    :parameters (?s - step4type)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (contacts_opened)) (at start (friend_searched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (contact_selected)))
  )

  (:durative-action open_contacts
    :parameters (?s - step5type)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (screen_unlocked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (contacts_opened)))
  )

  (:durative-action plug_in_phone
    :parameters (?s - step6type)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (cable_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (phone_plugged_in)))
  )

  (:durative-action confirm_friend_awake
    :parameters (?s - step7type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (local_time_checked)) (at start (favorites_opened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (awake_status_confirmed)))
  )

  (:durative-action pick_up_smartphone
    :parameters (?s - step8type)
    :duration (= ?duration 2)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (smartphone_picked_up)))
  )

  (:durative-action engage_conversation
    :parameters (?s - step9type)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (screen_unlocked)) (at start (call_connected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (conversation_completed)))
  )

  (:durative-action press_call_button
    :parameters (?s - step10type)
    :duration (= ?duration 2)
    :condition (and (at start (step_pending ?s)) (at start (screen_unlocked)) (at start (dnd_disabled)) (at start (microphone_unmuted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (call_button_pressed)))
  )

  (:durative-action open_favorites
    :parameters (?s - step11type)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (smartphone_picked_up)) (at start (friend_chosen)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (favorites_opened)))
  )

  (:durative-action unlock_screen
    :parameters (?s - step12type)
    :duration (= ?duration 3)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (screen_unlocked)))
  )

  (:durative-action adjust_volume
    :parameters (?s - step13type)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (battery_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (volume_adjusted)))
  )

  (:durative-action check_signal
    :parameters (?s - step14type)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (smartphone_picked_up)) (at start (phone_cased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (signal_checked)))
  )

  (:durative-action clean_screen
    :parameters (?s - step15type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (hands_washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (screen_cleaned)))
  )

  (:durative-action search_friend
    :parameters (?s - step16type)
    :duration (= ?duration 15)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (friend_searched)))
  )

  (:durative-action find_case
    :parameters (?s - step17type)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (case_found)))
  )

  (:durative-action check_battery
    :parameters (?s - step18type)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (smartphone_picked_up)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (battery_checked)))
  )

  (:durative-action clear_notifications
    :parameters (?s - step19type)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (hands_washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (notifications_cleared)))
  )

  (:durative-action put_phone_in_case
    :parameters (?s - step20type)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (case_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (phone_cased)))
  )

  (:durative-action wait_for_ring
    :parameters (?s - step21type)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (signal_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (phone_rang)))
  )

  (:durative-action disable_dnd
    :parameters (?s - step22type)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (friend_searched)) (at start (notifications_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dnd_disabled)))
  )

  (:durative-action double_check_number
    :parameters (?s - step23type)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (contact_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (number_checked)))
  )

  (:durative-action choose_friend
    :parameters (?s - step24type)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (friend_chosen)))
  )

  (:durative-action view_contact_details
    :parameters (?s - step25type)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (favorites_opened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (contact_details_viewed)))
  )

  (:durative-action hold_phone_to_ear
    :parameters (?s - step26type)
    :duration (= ?duration 3)
    :condition (and (at start (step_pending ?s)) (at start (phone_cased)) (at start (number_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (phone_at_ear)))
  )

  (:durative-action locate_charging_cable
    :parameters (?s - step27type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (screen_unlocked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cable_located)))
  )

  (:durative-action wash_hands
    :parameters (?s - step28type)
    :duration (= ?duration 40)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hands_washed)))
  )

  (:durative-action ensure_microphone_unmuted
    :parameters (?s - step29type)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (battery_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (microphone_unmuted)))
  )

  (:durative-action wait_for_connection
    :parameters (?s - step30type)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (call_button_pressed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (call_connected)))
  )
)