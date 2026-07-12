(define (domain melt-almond-bark)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (bark_retrieved)
    (microwave_bowl_on_counter)
    (first_microwave_interval_complete)
    (bark_broken_into_chunks)
    (chunks_transferred_to_bowl)
    (bowl_temperature_checked)
    (knife_set_aside)
    (island_space_cleared)
    (large_bowl_selected)
    (spatula_located)
    (parchment_laid_out)
    (scale_plugged_in)
    (hands_washed_and_dried)
    (dipping_tray_prepared)
    (toppings_organized)
    (preparation_surface_wiped)
    (microwave_timer_set)
    (bark_wrapping_opened)
    (bark_weighed)
    (bowl_centered_in_microwave)
    (apron_put_on)
    (counter_cleared)
    (cutting_board_placed)
    (board_and_knife_cleaned)
    (bark_stirred)
    (bark_inspected)
    (bowl_dried)
    (chunks_organized_on_parchment)
    (apron_strings_tightened)
    (microwave_checked)
  )

  (:durative-action retrieve_bark
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bark_retrieved))))

  (:durative-action place_microwave_bowl
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (large_bowl_selected)) (at start (microwave_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (microwave_bowl_on_counter))))

  (:durative-action microwave_first_interval
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (bark_broken_into_chunks)) (at start (bark_inspected)) (at start (chunks_organized_on_parchment)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (first_microwave_interval_complete))))

  (:durative-action break_bark
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (bark_wrapping_opened)) (at start (apron_strings_tightened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bark_broken_into_chunks))))

  (:durative-action transfer_chunks_to_bowl
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (microwave_bowl_on_counter)) (at start (board_and_knife_cleaned)) (at start (bowl_dried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chunks_transferred_to_bowl))))

  (:durative-action check_bowl_temperature
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (bark_broken_into_chunks)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bowl_temperature_checked))))

  (:durative-action set_aside_knife
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (cutting_board_placed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (knife_set_aside))))

  (:durative-action clear_island_space
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (island_space_cleared))))

  (:durative-action select_large_bowl
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (hands_washed_and_dried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (large_bowl_selected))))

  (:durative-action locate_spatula
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spatula_located))))

  (:durative-action lay_out_parchment
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (counter_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parchment_laid_out))))

  (:durative-action plug_in_scale
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (counter_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scale_plugged_in))))

  (:durative-action wash_and_dry_hands
    :parameters (?s - step)
    :duration (= ?duration 40)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hands_washed_and_dried))))

  (:durative-action prepare_dipping_tray
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (bark_inspected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dipping_tray_prepared))))

  (:durative-action organize_toppings
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (microwave_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (toppings_organized))))

  (:durative-action wipe_preparation_surface
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (island_space_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (preparation_surface_wiped))))

  (:durative-action set_microwave_timer
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (chunks_transferred_to_bowl)) (at start (bowl_temperature_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (microwave_timer_set))))

  (:durative-action open_bark_wrapping
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (bark_retrieved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bark_wrapping_opened))))

  (:durative-action weigh_bark
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (scale_plugged_in)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bark_weighed))))

  (:durative-action center_bowl_in_microwave
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (chunks_transferred_to_bowl)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bowl_centered_in_microwave))))

  (:durative-action put_on_apron
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (apron_put_on))))

  (:durative-action clear_counter
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (counter_cleared))))

  (:durative-action place_cutting_board
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cutting_board_placed))))

  (:durative-action clean_board_and_knife
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (preparation_surface_wiped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (board_and_knife_cleaned))))

  (:durative-action stir_bark
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (first_microwave_interval_complete)) (at start (spatula_located)) (at start (microwave_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bark_stirred))))

  (:durative-action inspect_bark
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bark_inspected))))

  (:durative-action dry_bowl
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bowl_dried))))

  (:durative-action organize_chunks_on_parchment
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (bark_broken_into_chunks)) (at start (parchment_laid_out)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chunks_organized_on_parchment))))

  (:durative-action tighten_apron_strings
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (apron_put_on)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (apron_strings_tightened))))

  (:durative-action check_microwave
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (microwave_checked))))
)