(define (domain cite-annual-report-apa)
  (:requirements :typing :durative-actions)
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
    (corporate_author_identified)
    (apa_string_arranged)
    (organization_spelling_verified)
    (reference_entry_proofread)
    (publication_year_located)
    (report_title_noted)
    (report_archive_found)
    (report_pdf_downloaded)
    (direct_url_copied)
    (document_number_checked)
    (database_status_determined)
    (citation_software_opened)
    (report_entry_created)
    (stable_permalink_located)
    (computer_and_browser_ready)
  )

  (:durative-action identify_corporate_author
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (corporate_author_identified))))

  (:durative-action arrange_apa_string
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (report_pdf_downloaded))
      (at start (database_status_determined)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (apa_string_arranged))))

  (:durative-action verify_organization_spelling
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (corporate_author_identified)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (organization_spelling_verified))))

  (:durative-action proofread_reference_entry
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (apa_string_arranged))
      (at start (report_entry_created)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (reference_entry_proofread))))

  (:durative-action locate_publication_year
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (report_entry_created)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (publication_year_located))))

  (:durative-action note_report_title
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (publication_year_located)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (report_title_noted))))

  (:durative-action search_report_archive
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (report_archive_found))))

  (:durative-action download_report_pdf
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (report_title_noted))
      (at start (report_archive_found))
      (at start (citation_software_opened)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (report_pdf_downloaded))))

  (:durative-action copy_direct_url
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (stable_permalink_located)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (direct_url_copied))))

  (:durative-action check_document_number
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (report_title_noted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (document_number_checked))))

  (:durative-action determine_database_status
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s))
      (at start (report_title_noted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (database_status_determined))))

  (:durative-action open_citation_software
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (citation_software_opened))))

  (:durative-action create_report_entry
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s))
      (at start (computer_and_browser_ready)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (report_entry_created))))

  (:durative-action locate_stable_permalink
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s))
      (at start (report_title_noted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (stable_permalink_located))))

  (:durative-action power_on_computer_and_open_browser
    :parameters (?s - step)
    :duration (= ?duration 90)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (computer_and_browser_ready))))
)