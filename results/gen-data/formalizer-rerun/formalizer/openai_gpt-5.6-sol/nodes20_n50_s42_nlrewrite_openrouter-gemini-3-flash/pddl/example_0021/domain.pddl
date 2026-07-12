(define (domain newborn-play)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step)
    (is_step3 ?s - step) (is_step4 ?s - step)
    (is_step5 ?s - step) (is_step6 ?s - step)
    (is_step7 ?s - step) (is_step8 ?s - step)
    (is_step9 ?s - step) (is_step10 ?s - step)
    (is_step11 ?s - step) (is_step12 ?s - step)
    (is_step13 ?s - step) (is_step14 ?s - step)
    (is_step15 ?s - step) (is_step16 ?s - step)
    (is_step17 ?s - step) (is_step18 ?s - step)
    (is_step19 ?s - step) (is_step20 ?s - step)
    (baby_on_play_mat)
    (toy_box_located)
    (rattle_shaken)
    (plush_animals_hung)
    (picture_book_selected)
    (room_temperature_checked)
    (safe_space_cleared)
    (mirror_positioned)
    (background_music_playing)
    (hands_sanitized)
    (bottle_warmed)
    (power_nap_completed)
    (baby_under_gym)
    (tummy_time_completed)
    (clean_diaper_on)
    (teething_rings_cleaned)
    (coffee_table_moved)
    (feeding_timer_set)
    (nursery_rhyme_sung)
    (overhead_lights_dimmed)
  )

  (:durative-action place_baby_on_mat
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (safe_space_cleared))
      (at start (coffee_table_moved)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (baby_on_play_mat))))

  (:durative-action locate_toy_box
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (toy_box_located))))

  (:durative-action shake_rattle
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (picture_book_selected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rattle_shaken))))

  (:durative-action hang_plush_animals
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (plush_animals_hung))))

  (:durative-action select_picture_book
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (power_nap_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (picture_book_selected))))

  (:durative-action check_room_temperature
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (room_temperature_checked))))

  (:durative-action clear_safe_space
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (coffee_table_moved)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (safe_space_cleared))))

  (:durative-action position_mirror
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (baby_under_gym)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mirror_positioned))))

  (:durative-action play_background_music
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (hands_sanitized)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (background_music_playing))))

  (:durative-action sanitize_hands
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hands_sanitized))))

  (:durative-action warm_bottle
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bottle_warmed))))

  (:durative-action wake_from_power_nap
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (power_nap_completed))))

  (:durative-action lay_baby_under_gym
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s))
      (at start (plush_animals_hung))
      (at start (teething_rings_cleaned)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (baby_under_gym))))

  (:durative-action perform_tummy_time
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s))
      (at start (mirror_positioned))
      (at start (baby_under_gym))
      (at start (overhead_lights_dimmed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tummy_time_completed))))

  (:durative-action change_diaper
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s))
      (at start (plush_animals_hung))
      (at start (room_temperature_checked))
      (at start (hands_sanitized)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (clean_diaper_on))))

  (:durative-action clean_teething_rings
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step16 ?s))
      (at start (toy_box_located)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (teething_rings_cleaned))))

  (:durative-action move_coffee_table
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step17 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (coffee_table_moved))))

  (:durative-action set_feeding_timer
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step18 ?s))
      (at start (bottle_warmed))
      (at start (teething_rings_cleaned)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (feeding_timer_set))))

  (:durative-action sing_nursery_rhyme
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step19 ?s))
      (at start (rattle_shaken)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (nursery_rhyme_sung))))

  (:durative-action dim_overhead_lights
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step20 ?s))
      (at start (background_music_playing)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (overhead_lights_dimmed))))
)