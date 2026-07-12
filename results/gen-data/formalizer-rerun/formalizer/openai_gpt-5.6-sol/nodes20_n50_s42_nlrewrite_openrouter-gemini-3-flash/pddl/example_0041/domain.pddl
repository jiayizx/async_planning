(define (domain party-invitations)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step)
    (is_step4 ?s - step) (is_step5 ?s - step) (is_step6 ?s - step)
    (is_step7 ?s - step) (is_step8 ?s - step) (is_step9 ?s - step)
    (is_step10 ?s - step) (is_step11 ?s - step) (is_step12 ?s - step)
    (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step)
    (is_step16 ?s - step) (is_step17 ?s - step) (is_step18 ?s - step)
    (is_step19 ?s - step) (is_step20 ?s - step)
    (graphic_designed) (directions_printed) (email_spreadsheet_compiled)
    (subject_line_written) (rental_companies_researched) (venue_finalized)
    (guest_list_drafted) (venue_capacity_confirmed) (graphic_uploaded)
    (save_date_sent) (theme_selected) (catering_booked)
    (bounce_settings_verified) (contacts_gathered) (party_favors_ordered)
    (party_vibe_brainstormed) (venue_availability_confirmed)
    (invitations_sent) (rental_prices_compared) (venue_agreement_signed)
  )

  (:durative-action design_graphic
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (party_vibe_brainstormed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (graphic_designed))))

  (:durative-action print_directions
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (venue_finalized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (directions_printed))))

  (:durative-action compile_email_spreadsheet
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (graphic_designed)) (at start (venue_capacity_confirmed)) (at start (contacts_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (email_spreadsheet_compiled))))

  (:durative-action write_subject_line
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (graphic_designed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (subject_line_written))))

  (:durative-action research_rental_companies
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rental_companies_researched))))

  (:durative-action finalize_venue
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (venue_availability_confirmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (venue_finalized))))

  (:durative-action draft_guest_list
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (guest_list_drafted))))

  (:durative-action confirm_venue_capacity
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (venue_agreement_signed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (venue_capacity_confirmed))))

  (:durative-action upload_graphic
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (graphic_designed)) (at start (subject_line_written)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (graphic_uploaded))))

  (:durative-action send_save_date
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (party_vibe_brainstormed)) (at start (rental_prices_compared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (save_date_sent))))

  (:durative-action select_theme
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (graphic_designed)) (at start (guest_list_drafted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (theme_selected))))

  (:durative-action book_catering
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (contacts_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (catering_booked))))

  (:durative-action verify_bounce_settings
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (email_spreadsheet_compiled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bounce_settings_verified))))

  (:durative-action gather_contacts
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (contacts_gathered))))

  (:durative-action order_party_favors
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (venue_agreement_signed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (party_favors_ordered))))

  (:durative-action brainstorm_party_vibe
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (party_vibe_brainstormed))))

  (:durative-action contact_venue_owner
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (guest_list_drafted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (venue_availability_confirmed))))

  (:durative-action send_invitations
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (email_spreadsheet_compiled)) (at start (venue_finalized)) (at start (theme_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (invitations_sent))))

  (:durative-action compare_rental_prices
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (rental_companies_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rental_prices_compared))))

  (:durative-action sign_venue_agreement
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (venue_availability_confirmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (venue_agreement_signed))))
)