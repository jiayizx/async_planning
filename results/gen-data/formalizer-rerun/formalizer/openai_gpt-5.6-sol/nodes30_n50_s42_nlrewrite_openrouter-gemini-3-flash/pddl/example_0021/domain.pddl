(define (domain crazy-stunt)
 (:requirements :typing :durative-actions)
 (:types step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (is1 ?s - step) (is2 ?s - step) (is3 ?s - step) (is4 ?s - step) (is5 ?s - step)
  (is6 ?s - step) (is7 ?s - step) (is8 ?s - step) (is9 ?s - step) (is10 ?s - step)
  (is11 ?s - step) (is12 ?s - step) (is13 ?s - step) (is14 ?s - step) (is15 ?s - step)
  (is16 ?s - step) (is17 ?s - step) (is18 ?s - step) (is19 ?s - step) (is20 ?s - step)
  (is21 ?s - step) (is22 ?s - step) (is23 ?s - step) (is24 ?s - step) (is25 ?s - step)
  (is26 ?s - step) (is27 ?s - step) (is28 ?s - step) (is29 ?s - step) (is30 ?s - step)
  (jumpsuit_rented) (paint_loaded) (canisters_attached) (permit_obtained)
  (cinematographers_hired) (blueprint_drafted) (sponsorship_secured) (altimeter_bought)
  (briefing_held) (flight_plan_filed) (fitness_exam_completed) (sensors_calibrated)
  (landing_zone_scouted) (bracket_fabricated) (insurance_purchased) (wind_tests_completed)
  (countdown_streamed) (parachutes_packed) (smoke_machine_installed) (camera_rig_set_up)
  (communications_synced) (aluminum_sourced) (plane_chartered) (radio_license_obtained)
  (tracking_cameras_rented) (dye_mixed) (signal_tested) (public_notice_posted)
  (aircraft_boarded) (landing_zone_cleared))

 (:durative-action rent_jumpsuit
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (is1 ?s)) (at start (permit_obtained)) (at start (fitness_exam_completed)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (jumpsuit_rented))))

 (:durative-action load_paint
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is2 ?s)) (at start (canisters_attached)) (at start (dye_mixed)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paint_loaded))))

 (:durative-action attach_canisters
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is3 ?s)) (at start (bracket_fabricated)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (canisters_attached))))

 (:durative-action obtain_permit
  :parameters (?s - step) :duration (= ?duration 259200)
  :condition (and (at start (step_pending ?s)) (at start (is4 ?s)) (at start (signal_tested)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (permit_obtained))))

 (:durative-action hire_cinematographers
  :parameters (?s - step) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (is5 ?s)) (at start (wind_tests_completed)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cinematographers_hired))))

 (:durative-action draft_blueprint
  :parameters (?s - step) :duration (= ?duration 18000)
  :condition (and (at start (step_pending ?s)) (at start (is6 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (blueprint_drafted))))

 (:durative-action secure_sponsorship
  :parameters (?s - step) :duration (= ?duration 604800)
  :condition (and (at start (step_pending ?s)) (at start (is7 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sponsorship_secured))))

 (:durative-action buy_altimeter
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (is8 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (altimeter_bought))))

 (:durative-action hold_safety_briefing
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is9 ?s)) (at start (cinematographers_hired)) (at start (sponsorship_secured)) (at start (flight_plan_filed)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (briefing_held))))

 (:durative-action file_flight_plan
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?s)) (at start (is10 ?s)) (at start (landing_zone_scouted)) (at start (smoke_machine_installed)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flight_plan_filed))))

 (:durative-action complete_fitness_exam
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is11 ?s)) (at start (plane_chartered)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fitness_exam_completed))))

 (:durative-action calibrate_sensors
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is12 ?s)) (at start (altimeter_bought)) (at start (plane_chartered)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sensors_calibrated))))

 (:durative-action scout_landing_zone
  :parameters (?s - step) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?s)) (at start (is13 ?s)) (at start (wind_tests_completed)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (landing_zone_scouted))))

 (:durative-action fabricate_bracket
  :parameters (?s - step) :duration (= ?duration 21600)
  :condition (and (at start (step_pending ?s)) (at start (is14 ?s)) (at start (blueprint_drafted)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bracket_fabricated))))

 (:durative-action purchase_insurance
  :parameters (?s - step) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (is15 ?s)) (at start (sponsorship_secured)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (insurance_purchased))))

 (:durative-action conduct_wind_tests
  :parameters (?s - step) :duration (= ?duration 28800)
  :condition (and (at start (step_pending ?s)) (at start (is16 ?s)) (at start (aluminum_sourced)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wind_tests_completed))))

 (:durative-action stream_countdown
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (is17 ?s)) (at start (camera_rig_set_up)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (countdown_streamed))))

 (:durative-action pack_parachutes
  :parameters (?s - step) :duration (= ?duration 2400)
  :condition (and (at start (step_pending ?s)) (at start (is18 ?s)) (at start (sensors_calibrated)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parachutes_packed))))

 (:durative-action install_smoke_machine
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (is19 ?s)) (at start (landing_zone_scouted)) (at start (insurance_purchased)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (smoke_machine_installed))))

 (:durative-action set_up_camera_rig
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is20 ?s)) (at start (dye_mixed)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (camera_rig_set_up))))

 (:durative-action sync_communications
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is21 ?s)) (at start (sensors_calibrated)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (communications_synced))))

 (:durative-action source_aluminum
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?s)) (at start (is22 ?s)) (at start (bracket_fabricated)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (aluminum_sourced))))

 (:durative-action charter_plane
  :parameters (?s - step) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?s)) (at start (is23 ?s)) (at start (cinematographers_hired)) (at start (landing_zone_scouted)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plane_chartered))))

 (:durative-action obtain_radio_license
  :parameters (?s - step) :duration (= ?duration 345600)
  :condition (and (at start (step_pending ?s)) (at start (is24 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (radio_license_obtained))))

 (:durative-action rent_tracking_cameras
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (is25 ?s)) (at start (cinematographers_hired)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tracking_cameras_rented))))

 (:durative-action mix_dye
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is26 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dye_mixed))))

 (:durative-action test_signal
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is27 ?s)) (at start (radio_license_obtained)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (signal_tested))))

 (:durative-action post_public_notice
  :parameters (?s - step) :duration (= ?duration 43200)
  :condition (and (at start (step_pending ?s)) (at start (is28 ?s)) (at start (insurance_purchased)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (public_notice_posted))))

 (:durative-action board_aircraft
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (is29 ?s)) (at start (paint_loaded)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (aircraft_boarded))))

 (:durative-action clear_landing_zone
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is30 ?s)) (at start (landing_zone_scouted)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (landing_zone_cleared))))
)