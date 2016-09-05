import { BOOKING_CONSTANTS } from '../actions/booking_actions';
import { merge } from 'lodash';

let defaultState = {bookings: [], guests: [], errors: []}

const BookingReducer = (state = defaultState, action) => {
  let newState;
  switch (action.type) {
    case BOOKING_CONSTANTS.RECEIVE_BOOKINGS:
      newState = {bookings: action.bookings.bookings, guests: action.bookings.guests, errors: []};
      return newState;
    case BOOKING_CONSTANTS.RECEIVE_BOOKING:
      newState = merge({}, state);
      newState.bookings.push(action.booking);
      return newState;
    case BOOKING_CONSTANTS.RECEIVE_BOOKING_ERRORS:
      newState = merge({}, state);
      newState.errors = action.errors;
      return newState;
    default:
      return state;
  }
};

export default BookingReducer;
