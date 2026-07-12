(define (domain peruvian-fish-ceviche)
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
    (knife_sharpened)
    (plate_garnished)
    (fish_tossed_in_marinade)
    (fish_cured)
    (cilantro_and_chilies_washed)
    (aromatics_and_peppers_minced)
    (sea_bass_sourced)
    (red_onions_sliced)
    (ceviche_plated)
    (fish_cleaned_and_diced)
  )

  (:durative-action sharpen_knife
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (knife_sharpened)))
  )

  (:durative-action garnish_plate
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (sea_bass_sourced))
      (at start (ceviche_plated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (plate_garnished)))
  )

  (:durative-action toss_fish_in_marinade
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (aromatics_and_peppers_minced)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fish_tossed_in_marinade)))
  )

  (:durative-action cure_fish
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (fish_tossed_in_marinade)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fish_cured)))
  )

  (:durative-action wash_cilantro_and_chilies
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cilantro_and_chilies_washed)))
  )

  (:durative-action mince_aromatics_and_peppers
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (cilantro_and_chilies_washed))
      (at start (red_onions_sliced)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (aromatics_and_peppers_minced)))
  )

  (:durative-action source_sea_bass
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sea_bass_sourced)))
  )

  (:durative-action slice_red_onions
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (cilantro_and_chilies_washed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (red_onions_sliced)))
  )

  (:durative-action plate_ceviche
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (fish_cleaned_and_diced)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ceviche_plated)))
  )

  (:durative-action clean_and_dice_fish
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (knife_sharpened))
      (at start (sea_bass_sourced)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fish_cleaned_and_diced)))
  )
)