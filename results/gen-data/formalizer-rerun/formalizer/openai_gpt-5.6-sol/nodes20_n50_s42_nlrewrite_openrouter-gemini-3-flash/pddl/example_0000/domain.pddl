(define (domain turn-on-computer)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (is_step11 ?s - step)
    (is_step12 ?s - step)
    (is_step13 ?s - step)
    (is_step14 ?s - step)
    (is_step15 ?s - step)
    (is_step16 ?s - step)
    (is_step17 ?s - step)
    (is_step18 ?s - step)
    (is_step19 ?s - step)
    (is_step20 ?s - step)
    (power_strip_plugged)
    (hdmi_connected)
    (psu_switch_on)
    (wireless_devices_retrieved)
    (cmos_battery_inserted)
    (chassis_power_pressed)
    (login_screen_visible)
    (surge_protector_on)
    (post_completed)
    (splash_screen_visible)
    (keyboard_on)
    (monitor_on)
    (ups_active)
    (cpu_fan_spinning)
    (desktop_accessed)
    (tower_power_connected)
    (wall_socket_verified)
    (system_ready_beep_heard)
    (motherboard_leds_lit)
    (mouse_on)
  )

  (:durative-action plug_power_strip
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (power_strip_plugged))))

  (:durative-action connect_hdmi
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (psu_switch_on)) (at start (tower_power_connected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hdmi_connected))))

  (:durative-action toggle_psu_switch
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (surge_protector_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (psu_switch_on))))

  (:durative-action retrieve_wireless_devices
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wireless_devices_retrieved))))

  (:durative-action insert_cmos_battery
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (wall_socket_verified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cmos_battery_inserted))))

  (:durative-action press_chassis_power
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (power_strip_plugged)) (at start (psu_switch_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chassis_power_pressed))))

  (:durative-action wait_for_login_screen
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (post_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (login_screen_visible))))

  (:durative-action enable_surge_protector
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (tower_power_connected)) (at start (mouse_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (surge_protector_on))))

  (:durative-action complete_post
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (system_ready_beep_heard)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (post_completed))))

  (:durative-action display_splash_screen
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (chassis_power_pressed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (splash_screen_visible))))

  (:durative-action turn_on_keyboard
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (wireless_devices_retrieved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (keyboard_on))))

  (:durative-action turn_on_monitor
    :parameters (?s - step)
    :duration (= ?duration 3)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (hdmi_connected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (monitor_on))))

  (:durative-action activate_ups
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (power_strip_plugged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ups_active))))

  (:durative-action check_cpu_fan
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (psu_switch_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cpu_fan_spinning))))

  (:durative-action enter_password
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (splash_screen_visible)) (at start (motherboard_leds_lit)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (desktop_accessed))))

  (:durative-action connect_tower_power
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (cmos_battery_inserted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tower_power_connected))))

  (:durative-action verify_wall_socket
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (power_strip_plugged)) (at start (motherboard_leds_lit)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wall_socket_verified))))

  (:durative-action listen_for_ready_beep
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (surge_protector_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (system_ready_beep_heard))))

  (:durative-action check_motherboard_leds
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (ups_active)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (motherboard_leds_lit))))

  (:durative-action turn_on_mouse
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (wireless_devices_retrieved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mouse_on))))
)