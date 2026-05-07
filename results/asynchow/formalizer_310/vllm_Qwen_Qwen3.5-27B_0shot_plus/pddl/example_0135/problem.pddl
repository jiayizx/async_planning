(define (problem download_psp_games)
    (:domain psp_games_download)
    
    (:init
        (purchase_memory_stick_pending)
        (format_memory_stick_pending)
        (check_firmware_pending)
    )

    (:goal (and
        (purchase_memory_stick_done)
        (format_memory_stick_done)
        (check_firmware_done)
    ))
)
