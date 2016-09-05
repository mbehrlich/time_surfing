export const BOOKING_CONSTANTS = {
  REQUEST_BOOKINGS: "REQUEST_BOOKINGS",
  RECEIVE_BOOKINGS: "RECEIVE_BOOKINGS",
  DELETE_BOOKING: "DELETE_BOOKING",
  CREATE_BOOKING: "CREATE_BOOKING",
  RECEIVE_BOOKING: "RECEIVE_BOOKING",
  RECEIVE_BOOKING_ERRORS: "RECEIVE_BOOKING_ERRORS"
};

export const requestBookings = () => ({
  type: BOOKING_CONSTANTS.REQUEST_BOOKINGS
});

export const receiveBookings = (bookings) => ({
  type: BOOKING_CONSTANTS.RECEIVE_BOOKINGS,
  bookings
});

export const deleteBooking = (id) => ({
  type: BOOKING_CONSTANTS.DELETE_BOOKING,
  id
});

export const createBooking = (booking) => ({
  type: BOOKING_CONSTANTS.CREATE_BOOKING,
  booking
});

export const receiveBooking = (booking) => ({
  type: BOOKING_CONSTANTS.RECEIVE_BOOKING,
  booking
});

export const receiveBookingErrors = (errors) => ({
  type: BOOKING_CONSTANTS.RECEIVE_BOOKING_ERRORS,
  errors
});
