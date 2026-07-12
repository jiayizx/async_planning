(define (domain valentines-planning)
  (:requirements :typing :durative-actions)
  (:types
    step
    s1 s2 s3 s4 s5 s6 s7 s8 s9 s10
    s11 s12 s13 s14 s15 s16 s17 s18 s19 s20
    s21 s22 s23 s24 s25 s26 s27 s28 s29 s30
    s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 - step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
    (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
    (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
    (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40))

  (:durative-action purchase_table_confetti
    :parameters (?s - s1)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d4)) (at start (d29)) (at start (d30)) (at start (d33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d1))))

  (:durative-action print_reservation_confirmation
    :parameters (?s - s2)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (d15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d2))))

  (:durative-action buy_red_roses
    :parameters (?s - s3)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (d4)) (at start (d7)) (at start (d35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d3))))

  (:durative-action brainstorm_date_ideas
    :parameters (?s - s4)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d4))))

  (:durative-action select_steakhouse
    :parameters (?s - s5)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d5))))

  (:durative-action research_jewelry_stores
    :parameters (?s - s6)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (d32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d6))))

  (:durative-action check_florist_delivery_schedule
    :parameters (?s - s7)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d7))))

  (:durative-action assemble_gift_basket
    :parameters (?s - s8)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d3)) (at start (d38)) (at start (d39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d8))))

  (:durative-action place_everything_in_car
    :parameters (?s - s9)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d8)) (at start (d27)) (at start (d40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d9))))

  (:durative-action write_heartfelt_message
    :parameters (?s - s10)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d10))))

  (:durative-action look_up_playlist_suggestions
    :parameters (?s - s11)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (d32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d11))))

  (:durative-action confirm_table_booking
    :parameters (?s - s12)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d13)) (at start (d32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d12))))

  (:durative-action search_restaurant_slots
    :parameters (?s - s13)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d13))))

  (:durative-action iron_dress_shirt
    :parameters (?s - s14)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d18)) (at start (d24)) (at start (d30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d14))))

  (:durative-action book_table_online
    :parameters (?s - s15)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d4)) (at start (d11)) (at start (d29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d15))))

  (:durative-action pick_out_necklace
    :parameters (?s - s16)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d6)) (at start (d31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d16))))

  (:durative-action ask_flower_preferences
    :parameters (?s - s17)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d17))))

  (:durative-action take_suit_to_dry_cleaners
    :parameters (?s - s18)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d18))))

  (:durative-action get_haircut
    :parameters (?s - s19)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (d21)) (at start (d24)) (at start (d31)) (at start (d37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d19))))

  (:durative-action pay_for_jewelry
    :parameters (?s - s20)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d20))))

  (:durative-action wrap_jewelry_box
    :parameters (?s - s21)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d16)) (at start (d27)) (at start (d28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d21))))

  (:durative-action polish_dress_shoes
    :parameters (?s - s22)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (d6)) (at start (d14)) (at start (d20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d22))))

  (:durative-action review_dinner_menu
    :parameters (?s - s23)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d4)) (at start (d5)) (at start (d12)) (at start (d39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d23))))

  (:durative-action order_artisan_chocolates
    :parameters (?s - s24)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d3)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d24))))

  (:durative-action drive_to_date_location
    :parameters (?s - s25)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (d40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d25))))

  (:durative-action buy_premium_gift_bag
    :parameters (?s - s26)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d26))))

  (:durative-action withdraw_tip_cash
    :parameters (?s - s27)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d27))))

  (:durative-action buy_greeting_card
    :parameters (?s - s28)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d28))))

  (:durative-action check_weather
    :parameters (?s - s29)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (d27)) (at start (d36)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d29))))

  (:durative-action choose_silk_tie
    :parameters (?s - s30)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d4)) (at start (d27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d30))))

  (:durative-action charge_camera_battery
    :parameters (?s - s31)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (d35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d31))))

  (:durative-action decide_budget
    :parameters (?s - s32)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (d4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d32))))

  (:durative-action buy_scented_candles
    :parameters (?s - s33)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d33))))

  (:durative-action fill_gift_bag
    :parameters (?s - s34)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (d24)) (at start (d26)) (at start (d38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d34))))

  (:durative-action check_florist_availability
    :parameters (?s - s35)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d35))))

  (:durative-action verify_partner_schedule
    :parameters (?s - s36)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (d17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d36))))

  (:durative-action select_vintage_wine
    :parameters (?s - s37)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (d14)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d37))))

  (:durative-action pick_up_dry_cleaning
    :parameters (?s - s38)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (d30)) (at start (d33)) (at start (d39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d38))))

  (:durative-action buy_heart_cookies
    :parameters (?s - s39)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (d4)) (at start (d35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d39))))

  (:durative-action sign_greeting_card
    :parameters (?s - s40)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (d4)) (at start (d10)) (at start (d20)) (at start (d28)) (at start (d38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d40))))
)