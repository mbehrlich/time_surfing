export const fetchBookings = (success, error) => {
  $.ajax({
    url: "api/bookings",
    method: "GET",
    success,
    error
  });
};

export const createBooking = (booking, success, error) => {
  $.ajax({
    url: "api/bookings",
    method: "POST",
    data: {booking},
    success,
    error
  });
};

export const deleteBooking = (id, success, error) => {
  $.ajax({
    url: `api/bookings/${id}`,
    method: "DELETE",
    success,
    error
  });
};
