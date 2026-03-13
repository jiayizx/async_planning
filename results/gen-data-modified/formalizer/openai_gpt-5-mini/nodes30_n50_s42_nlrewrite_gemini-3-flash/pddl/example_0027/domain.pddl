(define (domain make_call)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
    (step6_pending) (step6_done)
    (step7_pending) (step7_done)
    (step8_pending) (step8_done)
    (step9_pending) (step9_done)
    (step10_pending) (step10_done)
    (step11_pending) (step11_done)
    (step12_pending) (step12_done)
    (step13_pending) (step13_done)
    (step14_pending) (step14_done)
    (step15_pending) (step15_done)
    (step16_pending) (step16_done)
    (step17_pending) (step17_done)
    (step18_pending) (step18_done)
    (step19_pending) (step19_done)
    (step20_pending) (step20_done)
    (step21_pending) (step21_done)
    (step22_pending) (step22_done)
    (step23_pending) (step23_done)
    (step24_pending) (step24_done)
    (step25_pending) (step25_done)
    (step26_pending) (step26_done)
    (step27_pending) (step27_done)
    (step28_pending) (step28_done)
    (step29_pending) (step29_done)
    (step30_pending) (step30_done)
  )

  (:durative-action do_step1_discuss_dates
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step1_pending)) (at start (step21_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action do_step2_check_personal_calendar
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action do_step3_confirm_call_time_shared_calendar
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step3_pending)) (at start (step20_done)) (at start (step24_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action do_step4_charge_phone_full
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step4_pending)) (at start (step5_done)) (at start (step16_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action do_step5_locate_charging_cable
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step5_pending)) (at start (step12_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action do_step6_research_restaurant
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step6_pending)) (at start (step27_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action do_step7_set_reminder
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step7_pending)) (at start (step2_done)) (at start (step11_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action do_step8_unlock_smartphone
    :parameters ()
    :duration (= ?duration 2)
    :condition (at start (step8_pending))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action do_step9_followup_voicemail
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step9_pending)) (at start (step12_done)) (at start (step30_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action do_step10_press_call_button
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (step10_pending)) (at start (step12_done)) (at start (step22_done)) (at start (step29_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )

  (:durative-action do_step11_navigate_contacts_list
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step11_pending)) (at start (step8_done)) (at start (step24_done)))
    :effect (and (at start (not (step11_pending))) (at end (step11_done)))
  )

  (:durative-action do_step12_take_phone_out_of_pocket
    :parameters ()
    :duration (= ?duration 2)
    :condition (at start (step12_pending))
    :effect (and (at start (not (step12_pending))) (at end (step12_done)))
  )

  (:durative-action do_step13_update_contact_email
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step13_pending)) (at start (step18_done)))
    :effect (and (at start (not (step13_pending))) (at end (step13_done)))
  )

  (:durative-action do_step14_check_local_time_friend_city
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step14_pending)) (at start (step8_done)) (at start (step20_done)))
    :effect (and (at start (not (step14_pending))) (at end (step14_done)))
  )

  (:durative-action do_step15_clean_phone_screen
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step15_pending)) (at start (step28_done)))
    :effect (and (at start (not (step15_pending))) (at end (step15_done)))
  )

  (:durative-action do_step16_connect_phone_power_outlet
    :parameters ()
    :duration (= ?duration 15)
    :condition (at start (step16_pending))
    :effect (and (at start (not (step16_pending))) (at end (step16_done)))
  )

  (:durative-action do_step17_decide_which_friend
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step17_pending))
    :effect (and (at start (not (step17_pending))) (at end (step17_done)))
  )

  (:durative-action do_step18_open_phone_app
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (step18_pending)) (at start (step8_done)))
    :effect (and (at start (not (step18_pending))) (at end (step18_done)))
  )

  (:durative-action do_step19_put_on_wireless_headset
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step19_pending)) (at start (step28_done)))
    :effect (and (at start (not (step19_pending))) (at end (step19_done)))
  )

  (:durative-action do_step20_look_up_phone_number
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step20_pending)) (at start (step17_done)))
    :effect (and (at start (not (step20_pending))) (at end (step20_done)))
  )

  (:durative-action do_step21_wait_for_friend_pickup
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step21_pending)) (at start (step14_done)))
    :effect (and (at start (not (step21_pending))) (at end (step21_done)))
  )

  (:durative-action do_step22_adjust_call_volume
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step22_pending)) (at start (step16_done)) (at start (step19_done)))
    :effect (and (at start (not (step22_pending))) (at end (step22_done)))
  )

  (:durative-action do_step23_wait_battery_safe_level
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step23_pending)) (at start (step4_done)))
    :effect (and (at start (not (step23_pending))) (at end (step23_done)))
  )

  (:durative-action do_step24_scroll_recent_calls
    :parameters ()
    :duration (= ?duration 15)
    :condition (at start (step24_pending))
    :effect (and (at start (not (step24_pending))) (at end (step24_done)))
  )

  (:durative-action do_step25_verify_contact_profile_picture
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step25_pending)) (at start (step11_done)))
    :effect (and (at start (not (step25_pending))) (at end (step25_done)))
  )

  (:durative-action do_step26_say_hello_start_conversation
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step26_pending)) (at start (step20_done)) (at start (step23_done)))
    :effect (and (at start (not (step26_pending))) (at end (step26_done)))
  )

  (:durative-action do_step27_open_note_taking_app
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step27_pending)) (at start (step12_done)))
    :effect (and (at start (not (step27_pending))) (at end (step27_done)))
  )

  (:durative-action do_step28_pick_up_phone_case
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (step28_pending))
    :effect (and (at start (not (step28_pending))) (at end (step28_done)))
  )

  (:durative-action do_step29_check_signal_strength
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step29_pending)) (at start (step18_done)))
    :effect (and (at start (not (step29_pending))) (at end (step29_done)))
  )

  (:durative-action do_step30_listen_ringing_tone
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step30_pending)) (at start (step10_done)))
    :effect (and (at start (not (step30_pending))) (at end (step30_done)))
  )
)
