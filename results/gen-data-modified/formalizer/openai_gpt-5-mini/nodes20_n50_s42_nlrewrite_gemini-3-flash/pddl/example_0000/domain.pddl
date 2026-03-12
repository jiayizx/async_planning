(define (domain turn_on_computer_corrected)
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
  )

  (:durative-action step1_plug_power_strip_into_wall
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action step2_connect_hdmi_to_monitor
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step2_pending)) (at start (step3_done)) (at start (step16_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action step3_toggle_master_power_on_psu
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step3_pending)) (at start (step8_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action step4_locate_surge_protector_in_storage
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step4_pending))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action step5_untangle_monitor_power_cord
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step5_pending)) (at start (step17_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action step6_flip_power_strip_switch_on
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step6_pending)) (at start (step1_done)) (at start (step3_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action step7_adjust_monitor_brightness
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step7_pending)) (at start (step9_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action step8_position_computer_case_for_airflow
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step8_pending)) (at start (step16_done)) (at start (step20_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action step9_press_monitor_power_button
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (step9_pending)) (at start (step18_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action step10_press_main_power_button_on_pc
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step10_pending)) (at start (step6_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )

  (:durative-action step11_clear_off_desk_surface_for_keyboard
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step11_pending)) (at start (step4_done)))
    :effect (and (at start (not (step11_pending))) (at end (step11_done)))
  )

  (:durative-action step12_plug_monitor_into_power_strip
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step12_pending)) (at start (step2_done)))
    :effect (and (at start (not (step12_pending))) (at end (step12_done)))
  )

  (:durative-action step13_connect_mouse_to_usb
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step13_pending)) (at start (step1_done)))
    :effect (and (at start (not (step13_pending))) (at end (step13_done)))
  )

  (:durative-action step14_check_cpu_fan_spinning
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step14_pending)) (at start (step3_done)))
    :effect (and (at start (not (step14_pending))) (at end (step14_done)))
  )

  (:durative-action step15_wait_for_os_login_screen
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step15_pending)) (at start (step10_done)) (at start (step19_done)))
    :effect (and (at start (not (step15_pending))) (at end (step15_done)))
  )

  (:durative-action step16_inspect_power_cables_for_damage
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step16_pending)) (at start (step5_done)))
    :effect (and (at start (not (step16_pending))) (at end (step16_done)))
  )

  (:durative-action step17_plug_monitor_power_adapter_into_cable
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step17_pending)) (at start (step1_done)) (at start (step19_done)))
    :effect (and (at start (not (step17_pending))) (at end (step17_done)))
  )

  (:durative-action step18_remove_protective_plastic_from_monitor
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step18_pending))
    :effect (and (at start (not (step18_pending))) (at end (step18_done)))
  )

  (:durative-action step19_connect_keyboard_to_usb
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step19_pending)) (at start (step13_done)))
    :effect (and (at start (not (step19_pending))) (at end (step19_done)))
  )

  (:durative-action step20_place_surge_protector_under_desk
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step20_pending)) (at start (step4_done)))
    :effect (and (at start (not (step20_pending))) (at end (step20_done)))
  )
)
