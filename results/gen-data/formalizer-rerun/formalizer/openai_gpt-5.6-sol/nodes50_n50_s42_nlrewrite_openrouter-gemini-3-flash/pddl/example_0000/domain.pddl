(define (domain meet-sofia-carson)
 (:requirements :typing :durative-actions)
 (:types
  step - object
  s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20
  s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38
  s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 - step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (met_sofia) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50))

 (:durative-action purchase_vip_ticket
  :parameters (?s - s1) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d40)) (at start (d45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d1))))
 (:durative-action renew_passport
  :parameters (?s - s2) :duration (= ?duration 2419200)
  :condition (and (at start (step_pending ?s)) (at start (d18)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d2))))
 (:durative-action pack_formal_outfit
  :parameters (?s - s3) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (d9)) (at start (d13)) (at start (d27)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d3))))
 (:durative-action research_film_projects
  :parameters (?s - s4) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (d5)) (at start (d36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d4))))
 (:durative-action join_fan_club
  :parameters (?s - s5) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d16)) (at start (d18)) (at start (d22)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d5))))
 (:durative-action book_flight
  :parameters (?s - s6) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (d21)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d6))))
 (:durative-action select_gift
  :parameters (?s - s7) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (d14)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d7))))
 (:durative-action buy_camera
  :parameters (?s - s8) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (d10)) (at start (d13)) (at start (d17)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d8))))
 (:durative-action buy_autograph_pen
  :parameters (?s - s9) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d9))))
 (:durative-action book_hotel
  :parameters (?s - s10) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (d11)) (at start (d14)) (at start (d21)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d10))))
 (:durative-action compare_hotels
  :parameters (?s - s11) :duration (= ?duration 7200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d11))))
 (:durative-action arrange_house_sitter
  :parameters (?s - s12) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (d13)) (at start (d29)) (at start (d45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d12))))
 (:durative-action request_time_off
  :parameters (?s - s13) :duration (= ?duration 259200)
  :condition (and (at start (step_pending ?s)) (at start (d33)) (at start (d45)) (at start (d46)) (at start (d47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d13))))
 (:durative-action hire_stylist
  :parameters (?s - s14) :duration (= ?duration 604800)
  :condition (and (at start (step_pending ?s)) (at start (d4)) (at start (d13)) (at start (d39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d14))))
 (:durative-action haircut_and_manicure
  :parameters (?s - s15) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (d41)) (at start (d43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d15))))
 (:durative-action subscribe_newsletters
  :parameters (?s - s16) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d13)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d16))))
 (:durative-action practice_introduction
  :parameters (?s - s17) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (d13)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d17))))
 (:durative-action save_trip_money
  :parameters (?s - s18) :duration (= ?duration 15552000)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d18))))
 (:durative-action download_rideshare_app
  :parameters (?s - s19) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d19))))
 (:durative-action order_fan_merchandise
  :parameters (?s - s20) :duration (= ?duration 1209600)
  :condition (and (at start (step_pending ?s)) (at start (d16)) (at start (d41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d20))))
 (:durative-action check_tour_schedule
  :parameters (?s - s21) :duration (= ?duration 900)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d21))))
 (:durative-action create_social_account
  :parameters (?s - s22) :duration (= ?duration 600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d22))))
 (:durative-action print_confirmation_tickets
  :parameters (?s - s23) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d1)) (at start (d2)) (at start (d21)) (at start (d24)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (met_sofia))))
 (:durative-action exchange_currency
  :parameters (?s - s24) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (d30)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d24))))
 (:durative-action iron_gala_outfit
  :parameters (?s - s25) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (d18)) (at start (d20)) (at start (d35)) (at start (d37)) (at start (d39)) (at start (d43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d25))))
 (:durative-action buy_scrapbook
  :parameters (?s - s26) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (d5)) (at start (d20)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d26))))
 (:durative-action locate_dry_cleaners
  :parameters (?s - s27) :duration (= ?duration 600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d27))))
 (:durative-action print_signing_photos
  :parameters (?s - s28) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (d16)) (at start (d21)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d28))))
 (:durative-action arrange_airport_transport
  :parameters (?s - s29) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (d9)) (at start (d13)) (at start (d35)) (at start (d40)) (at start (d45)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d29))))
 (:durative-action withdraw_cash
  :parameters (?s - s30) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d36)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d30))))
 (:durative-action watch_interviews
  :parameters (?s - s31) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?s)) (at start (d4)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d31))))
 (:durative-action buy_phone_charger
  :parameters (?s - s32) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d22)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d32))))
 (:durative-action check_weather
  :parameters (?s - s33) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d6)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d33))))
 (:durative-action charge_devices
  :parameters (?s - s34) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (d4)) (at start (d10)) (at start (d16)) (at start (d50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d34))))
 (:durative-action buy_autograph_folder
  :parameters (?s - s35) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d35))))
 (:durative-action check_security_policy
  :parameters (?s - s36) :duration (= ?duration 1200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d36))))
 (:durative-action identify_red_carpet
  :parameters (?s - s37) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (d6)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d37))))
 (:durative-action wrap_gift
  :parameters (?s - s38) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (d7)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d38))))
 (:durative-action confirm_event_time
  :parameters (?s - s39) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d5)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d39))))
 (:durative-action buy_walking_shoes
  :parameters (?s - s40) :duration (= ?duration 3600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d40))))
 (:durative-action buy_toiletries
  :parameters (?s - s41) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d41))))
 (:durative-action setup_digital_wallet
  :parameters (?s - s42) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d19)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d42))))
 (:durative-action schedule_makeup_artist
  :parameters (?s - s43) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (d14)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d43))))
 (:durative-action memorize_song_lyrics
  :parameters (?s - s44) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?s)) (at start (d4)) (at start (d33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d44))))
 (:durative-action find_travel_agent
  :parameters (?s - s45) :duration (= ?duration 7200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d45))))
 (:durative-action map_hotel_to_venue
  :parameters (?s - s46) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d36)) (at start (d45)) (at start (d47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d46))))
 (:durative-action read_safety_guidelines
  :parameters (?s - s47) :duration (= ?duration 3600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d47))))
 (:durative-action pack_carry_on
  :parameters (?s - s48) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (d16)) (at start (d41)) (at start (d45)) (at start (d47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d48))))
 (:durative-action label_gift
  :parameters (?s - s49) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d49))))
 (:durative-action buy_camera_battery
  :parameters (?s - s50) :duration (= ?duration 900)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d50))))
)