import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

flatpickr(".datepicker", {
    dateFormat: "Y-m-d",
    enableTime: true,
    dateFormat: "H:i",
    time_24hr: true
 })

flatpickr(".timepicker", {
    dateFormat: "H:i",
    enableTime: true,
    noCalendar: true,
    time_24hr: true
})

flatpickr(".date", {
    dateFormat: "Y-m-d",
 })
